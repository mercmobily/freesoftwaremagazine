---
nid: '3149'
title: 'Xorg''s X Window innovation - it''s not ALL about the graphics (but there''s quite a lot of it)'
authors: 'Mitch Meyran'
published: '2009-05-30 5:47:46'
tags: 'xorg,llvm'
license: verbatim_only
section: hacking
listed: 'true'

---
In my [last article about Xorg](/articles/the_new_xorg_features/), I touched upon several points that have been in a state of continual flux in Xorg. Here's a follow-up on that article, as it seems to have generated quite a lot of interest. However, I didn't expand much on some features and their implications, so I will do so here.

I will, also, touch upon a few improvements other than pure graphics.

<!--break-->

# DRI/DRM: let's add another layer!

Currently, X can make use of 3 types of hardware access: indirect access, DRI1 and DRI2. I covered how and when each of them appeared. Here, I'll give more detailed explanations.

## Indirect access

In order to not reprogram each and every driver every time X changes, an ABI was created (then superseded) to allow X to communicate with every DDX driver in the same way.

To perform an operation, say, draw an ellipse, fill it with a colour, X issues a command under XAA (originally, now it's more often EXA/UXA) format, to the DDX driver; said driver translates the command in a way the hardware can understand.

* If the hardware supports an instruction to display an ellipse, then fill it, the driver creates the command, sends it to the kernel that then copies it to the memory space the card reads from; the card reads the instruction and does what it's instructed to do.

* If there is no hardware support for this operation, the driver breaks down the command into more simple functions that the card can understand, down to re-drawing the whole screen, and sends it to the card: this would happen with, for example, the VESA generic driver.

As you can see, in cases where a card has extensive 2D acceleration, the amount of data for the kernel to copy can be very small, and thus the issue of indirect rendering isn't that much of a bother. Even unaccelerated functions, if the card can do fast reads directly from central RAM, can be very fast. If some of you remember how fast MS-DOS games could get when your VESA VBE 1.2 card got a VESA 2.0 BIOS (UniVBE, anyone?), then you'll understand why the VESA driver can sometimes outperform bad 'accelerated' drivers.

Another feature cards used to include was video overlays: these worked well without direct rendering, as a card could read directly from central RAM and 'dump'the result on screen after a single instruction that got copied through the kernel (there could be colour space conversions and stretching applied). So, for quite some time, indirect rendering was kept as-is because, well, it wasn't exactly slow, and it was also safe: you couldn't crash the kernel and issuing a reset to the video hardware in case of a crash was enough to get your system back up and running.

'Good' 2D accelerators would accelerate fills, ellipses, rectangles, lines, partial update to the screen, and glyph kerning/rendering (this was at a time when anti-aliasing didn't really take place: most limited themselves to point sampling/nearest neighbour).

3D, which required lots of copies (many textures and vertices, full-screen, many times per second), forced X (then still Xfree86) to implement a 'better' solution for these cases in order not to hinder performance.

## Direct Rendering Interface/Module (DRI/DRM)

Not to be confused with Digital Restrictions Mangling, DRI defines an optional, additional driver for X to load, which works with a kernel module to provide direct access to a card, without going through a kernel copy. Notice how it's not a radical shift in driver structure, merely an addition: when a DDX driver is made aware of a direct access to the card, instead of passing a command string to the kernel so that the kernel could then send it to the hardware, it can now pass a command directly to the hardware. If no DRI is available, then the DDX driver can issue the same command to the kernel which will then be passed to the card.

Since, as we saw previously, indirect 2D acceleration could already be fast, nobody really worried about improving things: DDX drivers had already been extensively tested, and since with DRI a display driver crash could bring down the whole system, changes were conservative. No, the only thing DRI really saw was 3D acceleration: 3D functions were sent directly to the hardware, removing all speed limitations that, previously, made Free gaming difficult. The Xorg/Xfree86 split happened after DRI/DRM got started.

In practice, you have a DDX driver, which is hardware-specific, that loads a generic DRI X extension; this extension looks for DRM support in the kernel, where most hardware-agnostic functions are located in the drm module (drm.ko for Linux), which are then translated by a hardware-specific kernel module into hardware-specific commands. Later on, some other extensions which relied upon DRI appeared to accelerate some specific functions: notably AIGLX and RENDER.

So, here you have it: be it with indirect rendering or with DRI the DDX driver is still the same, and a card gets the same instructions one way or another; these instructions start at mode setting/initializing, and go up to moving a block of RAM in their internal frame buffer or reading data from a central RAM address to a set destination in their frame buffer. Simple, short instructions.

## DRI2, the revenge

Why did I mention overlays? Because they were, for a long time, the only way for you to have decent video under X and copying 24/25/30/50/60 full frames per second through the kernel is prohibitively slow, while giving an instruction for the card to read from memory and display this content directly to the front buffer allowed fully hardware-accelerated video display: most cards were able to convert YUV-type data to RGB on the fly (no need to perform colour space conversion in software), and several could sync a frame to a screen refresh (no tearing) Perfect.

However, overlays are tricky to implement in hardware (most cards only included one) and new card functionalities could easily replace them, such as blitters (these allow fast RAM-to-VRAM copies) and, more recently, generic 3D acceleration (frame-to-YUV texture) made overlays completely redundant on systems that supported all of these methods and most card makers dropped them to reduce costs. Some proprietary drivers emulate overlays, but for that to work they have to run in kernel space anyway; so, in the case of video, 2D acceleration became worse with time. And currently, on recent chips, 2D acceleration is emulated through the card's 3D core via its firmware. The day when even this emulation goes bye-bye, 2D acceleration won't exist - period.

At the same time, stuff like desktop compositing and subpixel-hinted font rendering make managing a card's memory problematic: the DDX driver has to work harder to keep central RAM and video RAM in sync, and so what used to be very simple memory operations that didn't require lots of optimizations became insufficient; most DDX driver writers thus started to improve their drivers to add a 'real' memory manager (I mentioned that previously as being the reason behind UXA's existence over EXA: well, EXA can deal with video RAM and system RAM independently, but both at once is a performance nightmare; UXA removes those limitations, while keeping EXA's overall structure). And that, for every different driver.

Talk about code duplication.

The redesign is extensive, as it hits across three (or more) different, sizeable projects:

* the Xorg project
* Freedesktop.org's DRI project
* the kernel (Linux, BSD, etc.)

Linus Torvald, who dislikes code duplication and likes a fast desktop, had more than a word to say about the design.

On the kernel's side, it was therefore decided that:

* a central memory manager for graphics card would now be found inside a kernel module; since there's already a generic drm kernel module, the memory manager would be stuck inside drm.ko.

* since the memory manager needs access to the hardware in order to work, hardware initialization should be done in the kernel too; since kernel frame buffer drivers already do that. They should be removed but please don't forget to allow their replacement solution to initialize terminals, thanks!

How about 3D? Previously, cards were 'dumb' command processors: draw a polygon at these coordinates, add a light source here, this surface's properties are thus... rather dumb. While the massive amount of commands required to render a single scene made indirect rendering inefficient, each operation could be self-contained. The same, when 'basic', fixed function shaders (they could be programmed, but they had fixed-length parameters) were introduced, the way an image was rendered was still pretty much like this: X sends task, GPU executes, announces it's ready for next task, X sends next task.

Now, however, programmable shaders have unlimited command length and can return results otherwise than graphically; they can even start to process instructions before they've finished receiving them and so, the above schema no longer works. And because OpenGL and Mesa followed the above schema, the 3d structure has to be heavily modified: a card isn't a "press switch, get result" system, it's almost like another, different computer: it needs a translator.

DRI2 intends to widen the "pipe" between the CPU and the GPU; the new DRI2/DRM structure tries to remove as much code complexity as it can from hardware drivers, which should allow for more time spent on optimizing CPU to GPU communication. But they don't speak the same language (apart from, maybe, Intel's Larrabee), so they need a translator.

And how do you call a translator in computer languages? Yup, a compiler.

# Hardware support

Last time, I said it was difficult to mention any card-specific improvements, because of the state of flux the whole X universe is in. In a not so distant future, you may not even care.

Here's why.

## A graphics code compiler: LLVM

The Low Level Virtual Machine is a language-independent, low-level object code optimizer: based upon a RISC-like set of virtual instructions, it can be coupled to many front-ends in order to translate pretty much any language into pretty much any other language, while optimizing it (this is a VERY short and oversimplified description). It can work as a Just-In-Time compiler as well as a static machine code compiler, provided it has a proper front-end. One such ability, for example, is the capacity for LLVM to compile core BSD packages from C to executable binary files and such compiled code runs fast.

Right now, LLVM is being developed, and a front-end made, to become a hardware-agnostic shaders compiler that will be part of Gallium. Currently, it works as an advanced prototype, and experiments are being made to support fully programmable shaders on cards that only support fixed function shaders without resorting to 'pure' software emulation: LLVM compiles shader fragments down to instructions that fixed function cards can render in an accelerated manner (it's VERY experimental for now: it may be a dead end, so don't bet on your Geforce3 card rendering current games in any usable way tomorrow!).

Some may object that it won't be as fast as, say, AMD/Ati's shaders compiler that can be found in their proprietary driver, because a generic compiler will never be as fast as a dedicated one. True. However, current experiments show it to be fast enough, and if it can work with Intel, AMD, Nvidia and whatever card you may find, at 70 to 90% efficiency, then it's already very good and much better than no acceleration at all. Moreover, once a backend is done, the hardware is supported: so, instead of having to create a shaders compiler (which involves a backend) for every new GPU generation, programmers will only need to create the backend: once finished, compilation (and support) will be all there.

## Forget about xorg.conf!

Users of recent Ubuntu releases must have noticed: your /etc/X11/xorg.conf file is almost empty! Actually, you can delete it, X will still start flawlessy. Why? Well, hardware autodetection got so good X doesn't need its config file any more, except in very weird cases. Other distributions may retain it (I know my Mandriva systems do, even though they use the most recent stable Xorg release), but only to make user settings easier to enter: you can destroy file, X still starts. Not only does it starts, it also autodetects all of you inputs, loads appropriate drivers, all available extensions that detected hardware can support (and drops those that don't/can't load), sets up your native screen's resolution, and lo!, your desktop awaits you.

Personal preferences can be set at compile time, and it will usually use instructions (more like, overrides now) that it finds in xorg.conf and affiliates. But, it starts. I tried it on several different systems, be they old or recent, it worked every time.

Next up: display hotplugging on all hardware. This is maybe the most glaring example of missing functionality, and it's next on the list. For now, you'll need to restart X on display changes.

## It's not all about graphics, man: don't forget the inputs!

Evdev has become the default input driver for keyboards, mice, tablets, touch screens etc. and it works. USB mouse hotplugging works, keyboards too, numeric keypads too, joysticks... So, what's left? Well, work is under way to allow X to deal with multiple inputs under a single session: X input 2 should come with the next X server release (1.7). It's been postponed to iron out improved input support.

Tablet support has got much better: I used to have trouble getting my Wacom Intuos tablet recognized and set up properly. Now it's an afterthought.

# Conclusion

As you can see, there's more coming our way than 'mere' graphical goodness: Xorg developers are about to unleash upon us more performance and ease of use than X ever knew before. Not only that, the work being done now will allow older hardware to perform better and new hardware to be supported faster.

I hope this article helps you to see the bigger picture; unfortunately, as interesting as developer's blogs can be, they are technically very advanced, and quite fragmented. I wrote the current article in the hope that it will be found useful, but don't hesitate to post comments if you have questions or corrections.
