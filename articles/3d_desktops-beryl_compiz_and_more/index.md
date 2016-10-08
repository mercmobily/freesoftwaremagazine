---
nid: '2239'
title: '3D desktops&#x2014;Beryl, Compiz and more'
authors: 'Mitch Meyran'
published: '2007-06-25 6:30:00'
tags: '3d,beryl'
issue: issue_18
license: verbatim_only
section: end_users
listed: 'true'

---
Some would say 3D desktops are useless fluff; some swear by them. This article gives you an overview of today’s 3D desktop options, and how they can help you be more productive.

Barring that, you can still brag about your top-notch computer in front of those poor Aero Glass-limited friends of yours.


<!--break-->


Beryl and Compiz are two sides of the same coin: in fact, Beryl is a fork of Compiz, headed towards glitz and shiny stuff, while Compiz tries to become as stable as possible.


=ZOOM=Beryl and Compiz are two sides of the same coin=

Recently though, Compiz reached a stage where it was stable enough to start adding nice stuff; since Beryl hasn’t progressed that far away from Compiz yet, the two projects are currently attempting to merge back together. The core system will be a modified Compiz, some basic plugins will be linked to it, but stuff like Beryl’s plugin manager, themes manager, several plugins and the configuration panel may remain.


# What hardware do you need?

Essentially, any video card that has working 3D under Xorg may work. I’ll give you some details, manufacturer by manufacturer.


## ATI

There are two drivers for ATI/AMD cards: the free Xorg `radeon` driver, and the proprietary `fglrx` one.

**radeon—free, default**


* supports all r100 and r200 chip families fully; r300 is very well supported too. r400 and more recent are touchy at best
* performance is best when using the latest Mesa CVS snapshot, and a kernel version 2.6.18 or better.
* AIGLX supported—preferred option.

**fglrx—proprietary, extra install**


* latest version supports r300, r400 and r500 chip families.
* XGL is the only option.
* `Option "Composite" "disabled"` needs to be set manually in `xorg.conf`.


## NVIDIA

Basically, the same as ATI/AMD’s offer: free and proprietary

**nv and nouveau—free**

No 3D yet, plain and simple.


* The nv driver is maintained by NVIDIA and supports their whole range of hardware on all platforms, but it’s 2D only.
* The _nouveau_ driver is based on nv for 2D, but has seen EXA and DRI support added and is adding 3D support. However, it doesn’t support textures yet; it is still very much experimental.

**nvidia—proprietary**

96.xx and 100.x: for Geforce2MX (96.xx up to Geforce 4, 100.x from Geforce FX up) to Geforce8, support for AIGLX, Xorg ABI 1.0 and accelerated `GL_EXT_texture_from_pixmap`. The different driver versions may indicate a focus on programmable shaders depending on the hardware.

There is an annoying bug under Beryl with drivers 96.xx and more recent: when you fill up the frame buffer, all subsequent windows (or dialogues) will appear black. This is caused by Beryl’s use of an NVIDIA specific rendering method; forcing Beryl to use AIGLX will fix the bug, at least on driver versions 97.55 and 100.14.03, with the price of a slight reduction in performance depending mainly on frame buffer size:


* 32MB: forget about this fix, it’s slow as molasse.
* 64MB: with a screen that isn’t too big (1024x768), you can consider it. You may want to disable triple buffering too.
* 128MB or more: go for it.

As far as I know, Compiz doesn’t use the NVIDIA rendering method and thus doesn’t fall for the bug.

Options for `xorg.conf` in the “Screen” section:

`Option "AddARGBGLXVisuals" "true"` makes window borders work.

`Option "TripleBuffer" "true"` gives more fluid graphics


## Intel

Driver is in Xorg, Mesa and Linux DRM trunks, supported directly by Intel; it works out of the box. No notable bugs, full support—except for the long forgotten i740. i810 to i965 work well now.


## Matrox

There are two sources: Matrox-published source code for g100 to g550, and rewritten Xorg code. The latter is usually preferred.

3D should work, and AIGLX is supported; however, both drivers are quite buggy and your experience may vary. My advice: try AIGLX then XGL on the free driver first, before you attempt to compile the Matrox sources.


## Others

Except the 730 Sis family which has a working free 3D driver, they are not worth mentioning. This may change, but don’t hold your breath.


# The software itself: Compiz or Beryl?

Compiz is essentially the basis of Beryl, the latter being supplemented with plugins; as it stands though, most of the plugins developed for Beryl are either extensions upon Compiz’s set, or brand new ones. Since studying Compiz’s plugin means looking at a “cut-rate” but much more stable subset of Beryl’s own set, we’ll study Beryl’s plugins and say how they are common with Compiz’s when needed.


## The standard package

Essentially, Beryl is a compositing window manager—meaning that clients (applications) connected to it send full windows to it and Beryl does what it can to display them on screen. Beryl alone merely handles windows, that’s it. The first subset of plugins are windows movement, positioning, and resizing. Can be added, border snapping, window switcher, window attributes, scaling. This set of plugins bring it up to par with the best “classical” WM out there.

Now that you can move your windows, you need to decorate them: add borders, a window title, buttons... That’s a job for the window decorator. Beryl comes with its own, called Emerald, which allows you to choose whatever theme you want; these usually come as mock-ups of other OSes’ interfaces, with added transparencies, gradients, etc., or completely new ones. It allows the use of Compiz themes too.

However, you can make use of your native environment’s themes with window decorators such as Aquamarine for KDE or Heliodor for GNOME, which replace your environment’s decorator while retaining its themes—with improvements such as linear gradients in translucency applied to inactive windows, and drop shadows. This makes it much less jarring when switching Beryl on and off too (figures 1 and 2).


=ZOOM=You can make use of your native environment’s themes. This makes it much less jarring when switching Beryl on and off=


=IMAGE=no-beryl.jpg=Figure 1: Detail of a GNOME desktop without Beryl...=


=IMAGE=beryl.jpg=Figure 2: ... and now with Beryl. Notice the translucent window titles on inactive windows=

The most well-known thing about Compiz and Beryl is the cube. Essentially replacing virtual desktops for GNOME or making a single desktop 4 times larger than before, the Cube plugin is probably the core of most further plugins (figure 3).


=IMAGE=spincube.jpg=Figure 3: Details of a rotating cube; notice the added depth given by Beryl with windows distanced from the desktop=

Other plugins include “fade to desktop” which allows fast access to the desktop, and cube cloning.

Lastly, a trigger (some distributions use F12, others use a small screen area) allows all windows to be arrayed in a mosaic on the desktop, allowing you to choose the new active window in a snap (figure 4).


=IMAGE=mosaic.jpg=Figure 4: Mosaic window chooser in action=


# Differences with Compiz

The following plugins are very specific to Beryl:

The window switcher has a secondary mode, called ring mode (figure 5), that displays small captures of opened windows in a 3D carousel. The window scaling and snap to border may not be part of Compiz’s standard array of plugins either.


=IMAGE=ring.jpg=Figure 5: One Ring to see them all=

Beryl adds upon it by increasing windows sense of depth (figure 3 again): you can set all windows to stack “closer” to you, giving a better view of them—you can even make them thick instead of paper thin. It is useful when the desktop is cluttered and you use free rotation to see what’s behind on top of giving a better “feel” for the desktop, but other than that it’s pure glamour.

Animations allow you to apply different effects to different actions made to a window: minimize like a genie getting back in its bottle (figure 6), or fold the window, fade it out (several variants)...


=IMAGE=magiclamp.jpg=Figure 6: The Magic Lamp effect. Notice the small snapshot of the window in the Taskbar=

Deformations are common with Compiz’s “jelly” window behaviour. Funny at first, it gets really annoying really fast.

Blur effects are also available. Pure glamour, it allows you to emulate some of Vista’s AeroGlass effects. Heavy in resources and pretty useless, I recommend you deactivate these.


=ZOOM=Some extra plugins allow you to doodle on screen, water effects, splash screens..=

A very useful accessibility is the interactive zoom plugin: with it, you can instantly magnify a portion of the screen. Content stays editable. Another useful thing when, say, typing a document, is the ability to see in transparency what is under the window. This is, for example, priceless when describing a full-screen image in a text editor without having to switch from one to the other all the time.


=IMAGE=transparent.jpg=Figure 7: Several translucency settings=

Some extra plugins allow you to doodle on screen (figure 8), make a screen copy, give water effects, get a splash screen, window previews (useful for minimized apps—see figure 6) and a benchmark.


=IMAGE=doodle.jpg=Figure 8: Doodling on your screen? Bad, bad you!=

Image management allows you to decide what images will be supported by Beryl: PNG, JPEG and SVG support allow you to put images on the top or bottom of the cube.


# Differences between Beryl and Compiz

The nicest thing added to Beryl compared with Compiz, is the Beryl manager—which allows you to change stuff such as operational modes for Beryl, what WM is in use, what window decorator is used, what plugins are active, and allows you to start the Emerald theme manager. You can also import Compiz’s options; Beryl can either store its data in GNOME’s gconf “hive” or in a flat file. On Compiz’s side, you need to use `gset-compiz`—which is quite a bit less entertaining—to set it up, on top of a GNOME hive.


=ZOOM=On Compiz’s side, you need to use `gset-compiz`—which is quite a bit less entertaining—to set it up on top of a GNOME hive=

The Beryl manager allows you to do away completely with command lines such as `compiz --replace` and also allows a backup WM to be loaded if Beryl crashes (this can be done through a plugin too). It is also quite handy to disable 3D use when starting a full-screen game, when the 3D driver won’t allow hardware video overlays (making video a tad choppy) or to start the theme manager without having to hunt for it. It, moreover, dispenses you with configuring start-up scripts to engage 3D mode, as it will start with the latest WM active when it was shut down—starting Beryl-manager can thus start Beryl automatically too.

Most (if not all) of these plugins have several options that are activated by triggers (usually, key sequences, but also screen areas or timers) that can be set up in Beryl Setting manager (figure 9).


=IMAGE=settings.jpg=Figure 9: The Beryl Settings manager=

Personally, I prefer to associate most of them with the “Super” key plus a sequence (the “Super” key is usually the Windows logo key in the keyboard, but could be the Apple or Command key on a Mac) such as:


* Super + mouse wheel: interactive zooming
* Super + mouse click (hold): free cube spinning
* Super + left/right/up/down: snap to cube face
* Super + Alt: doodle mode
* Super + Tab: ring window chooser
* Alt + mouse wheel: window transparency

These don’t normally interfere with GNOME’s hotkeys, but you are free to choose.


# What else?


## GNOME vs. KDE

While the two environments can be mixed and mashed to a great extend, due to Compiz having been developed primarily for use with GNOME, integration with KDE is a bit more troublesome. As such, you’ll have much more success making both Compiz and Beryl work nicely with GNOME than with KDE; note that due to its ability to store settings in a flat file, Beryl doesn’t need GNOME as much as Compiz does.

Under KDE, you won’t get virtual desktops anymore, only a very wide desktop split in four (default number of faces for the cube).

Graphical bugs may also occur more frequently under KDE than under GNOME—it is getting less frequent though.


## Limitations

While you can ask Beryl and Compiz not to redirect full screen applications to textures, the abundance of ways to get an application full screen often result in this setting being inefficient. In that case you frequently need to switch off Compiz/Beryl.

Hardware video overlays are the best way to get video on screen flicker-free and save on CPU time; such an overlay allows the card to receive a YUV chain of images and does the YUV to RGB conversion on the fly. The overlay doesn’t use the frame buffer but has a dedicated share of memory—this is why making screen capture of a video overlay results in a black or solid colour-keyed rectangle—and this also causes the video to not follow the cube’s rotation or windows scaling.

Note: NVIDIA binary drivers do software redirection; when an overlay is created in 3D mode, said overlay becomes virtual and is sent as a texture—making those following the cube’s rotation, at the price of a very slight flickering. Cards with programmable shaders can still accelerate the YUV to RGB conversion, as such CPU use doesn’t go up a lot.

Compiz and Beryl concentrate on the desktop; as such, window planes are always parallel to the cube’s face to which they are linked. Other 3D managers don’t always use the same philosophy, which leads us to...


# Some other compositing window managers

Project Looking Glass was the first such 3D desktop worth its name; it allowed you to stack windows, and to rotate them on their X, Y and Z coordinates.

More recently, a French project took up the same principle of acting on the windows: it is called Metisse (figure 10), and is right now available in Mandriva 2007.1 Spring and others such as Ubuntu and Fedora.

The interest is that the desktop gets a real depth in Metisse: windows are really in 3D, and you can interact with them when they are turned. The prerequisite are the same: some 3D hardware, the ability for the X server to do compositing. Metisse also provides a window manager and a decorator.


=ZOOM=Windows are really in 3D, and you can interact with them when they are turned=

Please note that for now, no extra plugins have been created: you have to turn and fold the windows yourself and set the transparency level manually. However, pre-recorded behaviours could include stacking the windows on a side of the screen, putting them in a real carousel for window switching, make them spin away, or even rolling them so as to see only a few lines at a time—or magnifying those same few lines.


=IMAGE=metisse.jpg=Figure 10: A little preview of Metisse (screen capture courtesy of Alessandro de Oliveira Faria)=


# Conclusion

While still very much eye-candy oriented, several uses can stem from the extended options a compositing window manager provides, and 3D acceleration makes it very smooth while at the same time unloading the CPU from window management tasks. As such, even if you end up using only a few options from the plethora available to you, there is still something to gain in tinkering with those environments.


# Bibliography

The [Beryl project website](http://www.beryl-project.org).

The [Compiz project website](http://compiz.org).

Mandriva’s [Metisse page](http://www.mandriva.com/projects/metisse/).

The latest version of my [3D driver matrix](http://www.freesoftwaremagazine.com/blogs/more_3d_desktops).

The NVIDIA [forum page](http://www.nvnews.net/vbulletin/showthread.php?t=84562&page=6) that yielded the black windows bug workaround.


