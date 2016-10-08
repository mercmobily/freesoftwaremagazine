---
nid: '3145'
title: 'The X Window innovation: welcome to the new Xorg'
authors: 'Mitch Meyran'
published: '2009-05-12 11:31:35'
tags: 'linux,nvidia,xorg,amd'
license: verbatim_only
section: hacking
listed: 'true'

---
Over time, many people have complained about the X Window system; the X Window system, or Xorg in its current most popular implementation, is the layer between applications and the graphics adapter. It has some fantastic features (like the ability to run application over the network) and some shortcomings (it really looks like it's been put together backwards).

One thing is sure: it has evolved over the last year or so, immensely, especially as far as 3D and hardware acceleration go.

In this article I will explain has X Window has changed, and what to expect in the near future.

<!--[break]-->

Several significant things happened, and they all depended on one another. But first, some background.

# Xorg's acceleration methods

Traditionally, Xorg drivers include several parts, with one being actually required:

* the DDX driver is the part that allows X to draw stuff on screen: setting up resolution and pixel buffer depth, and writing it on-screen. This driver is normally hosted entirely in user space, and traditionally included some accelerated functions such as fills. These acceleration methods were originally used through an API called XAA, which was later simplified and rewritten for most drivers to become EXA. This is the 'required' component.

* the DRI/DRM dual component is a later addition, dating back to Xfree86 4.0, which allowed X to talk to the graphics hardware directly: a kernel component (the DRM module) and an X component (the X DRI driver) will interact, following strict methods, and bypassing kernel memory copies for most functionalities. This is where extensions such as RENDER and Composite get interesting because they allow X to directly manipulate video RAM. EXA, coupled with RENDER, will make use of this kind of access to further accelerate some drawing operations.  However, this component was never originally made to deal with massive amounts of data, and a memory manager had to be programmed specifically for each driver.

* the GLX ([Open]GL for/in X) driver sits on top of the previous two components. Usually calling upon Mesa, it will either make use of hardware-accelerated functions (if DRI/DRM are enabled) or fallback to software rendering mode to draw stuff on screen through the DDX driver. This system is limited however, in that it requires a specific driver for each graphics adapter.

There is an external component to X graphics: the kernel's console driver interacts with the very same hardware that X uses, and needs in fact to be "switched off" then back on again when X takes the lead or the user switches to a virtual terminal.

# What changed

When Compiz came out, it relied upon a minimalist X11R6-compatible server that worked entirely through a card's GLX driver: you had a server inside a server, known as XGL. Each graphics component was thus written as a texture, mapped to polygons running inside a single application. It actually worked quite well, but was severly limited:

* no accelerated video: any video decoding was done through the CPU and each frame copied as a texture to the GPU. Colour space conversion, motion compensation etc. had to be done CPU-side, which is expensive.

* no more networkable X: the X client/server model allows an application to run on a machine, and to display the output on another. While not directly useful on a standard desktop computer, it could still pause problems in some cases, like user switching.

So, a 'better' solution emerged e to integrate 3D functions in the 'base' X server: this led to the development of AIGLX and the requirement on GL_EXT_texture_from_pixmap from each driver. At that time, only Free drivers implemented this extension at all and closed source ones like Ati's, Intel's or Nvidia's didn't. On the other hand, due to the lack of documentation and developers, Free drivers had only rudimentary/unstable/low performing 3D support.

We saw several things happen:

* a project, drawing upon scattered resources across the Web, started implementing accelerations on Nvidia hardware. This project, named Nouveau, reached a milestone after one year of development by running a limited Quake 3 in accelerated 3D mode on a purely Free driver on a specific Nvidia card. This was, however, scrapped (we'll see why later).

* Intel, then later Ati/AMD, freed up documentation on their graphics hardware and provided assistance to external developers to develop full-featured, complete 2D and 3D drivers for most of their current and legacy hardware.

* Compiz didn't remain for long the only 3D compositing window manager, and saw forks, experiments etc., with developers trying more exotic stuff all the time. This led to encountering bottlenecks in Xorg's internal structure, and the development of several extensions like randr1.2/1.3 or Xorg's hardware autodetection.

* Ubuntu made desktop GNU/Linux very commonplace.

* OpenGL 2.1 and 3.0 came out, proposing a complete programming language for shaders: the time when an extension mapped to a specific chip's capability (what we used to call fixed function shaders), on which Mesa is based, is over.

# The challenges it posed

First, there was a comparative surge in development in all desktop-related applications: better window managers, new UI toolkit (or revisions), rewritten desktop environments (KDE 4) and a much deeper interest in font rendering technologies: desktop Linux looked drop-dead cool in 3D, but seeing badly kerned/hinted glyphs in these snazzy flaming windows looked strange.

Font rendering was therefore strongly improved, but started pushing up against Xorg limitations: drawing antialiased/subpixel-rendered glyphs on screen was expensive when done without hardware acceleration.

Then, even those people not using 'groovy' Compiz had to recognize that windows moving without redrawing themselves or their background continualy was nice, and pure 2D compositing became all the rage. Yet, this hit a raw nerve in Xorg: to conserve memory, EXA works directly in video RAM, doing writes mostly (which is very cheap) and sometimes reads (more expensive, but with a few tricks, not too bad). However, a fully composited desktop requires LOTS of RAM to work properly: so, X has to swap data frequently from VRAM to RAM - which EXA can't do cheaply.

Let's add to that the problems caused by switching back and forth from a running X display to a virtual terminal (managed by the kernel's independent console driver), or something like Suspend to RAM and/or Suspend to Disk, and you get a headache: who deals with graphics memory?

And, to add insult to injury, since a GPU is now able to do a lot of stuff previously done by the CPU and isn't limited to fixed functions, who feeds it data to process, and how? A GPU is no longer a one-trick-pony!

# What was decided

A complete rewrite of the X infrastructure was agreed on and initiated with some very promising features to come.

Tungsten Graphics proposed a memory manager that all cards/drivers could use: to be hosted in kernel. The Nouveau project started using it, as did the Radeon and RadeonHD projects, but Intel's developers decided to write a simpler one called GEM. Other projects decided that Intel's approach was actually a little better, and started improving Intel's original project. GEM was first included in Linux 2.6.29, and supports only Intel hardware for now; experimental branches of Radeon, Radeonhd and Nouveau still use TTM internally, but communicate with the kernel through a GEM-ified interface.
 
Along with GEM, a rewrite of DRI/DRM was decided, to take advantage of GEM: since the kernel can set up a graphic card's memory space, it should be able to initialize and set its display mode up too: DRI2 was created for X and DRM now includes mode setting. Kernel console drivers now seem doomed to go the way of the dodo. This allows boot up processes that don't flash when setting different display modes, and should ease suspend modes. A planned improvement is finer power management for those GPUs that can deal with it.

With the memory manager no longer a driver-specific issue, driver writers can now work on improving performance across the board. This came with support for randr1.2 across several drivers, RENDER acceleration, much improved speed on font rendering and better stability. For now, most 'release' drivers rely upon the older manager but development snapshots see new features added weekly, if not actually on a daily basis. New hardware is also supported faster in Free drivers.

This process is not over. If you're lucky enough to own a tested combination, you'll enjoy silky smooth windows movements and resizes, unflashing boot and resume and 3D support.

Recent achievements:

* Ati/AMD dropped support for R300-R500 in their proprietary fglrx driver; indeed, these adapters are now fully supported by the Free drivers (2D, 3D, video). While performance in 3D is still behind, 2D is much better than fglrx ever was. All Ati/AMD cards are supported in accelerated 2D, up to and including the just released HD4xxx cards.

* Ubuntu 9.04 shipped with Nouveau available for Nvidia cards; while still not of 'release' quality, most Nvidia cards can now enjoy, at the very least, accelerated 2D, RENDER and randr1.3.

* Gallium3D, the component supposed to replace Mesa GL, has seen polygons rendered on screen (yeah...!) but also shaders being compiled and rendered in development snapshots for several Free drivers for example: Radeon/RadeonHD and Nouveau at least (groovy!).

# Conclusion

Right now, comparing what card supports what, and how, is very difficult: the X world is in a state of flux where shiny 3D isn't the main concern anymore. 2D and 3D are increasingly intermingled and considered at a higher level than before, and a graphics card is considered more as an auxiliary CPU and RAM that needs to be dealt with differently; the massive overhaul that the Xorg project and its affiliates have undertaken does currently cause support problems, performance drops and a lot of woes now, but what they have planned for us is more than worth it.
