---
nid: '1983'
title: 'The Nouveau Project'
authors: 'Mitch Meyran'
published: '2007-01-03 20:57:13'
tags: 'linux,gnu/linux,nvidia,3d,nouveau'
license: verbatim_only
section: opinions
listed: 'true'

---
It’s been mentioned in one of my previous posts. Now, I’m putting it forward due to some progress...


<!--break-->



# Nouveau, or how to make new free stuff


## NVIDIA and their love/hate relationship with Linux

Yes, I am referring to the kernel itself here. Why love and hate? Let’s take the reasons one by one.

Love: GNU/Linux uses OpenGL extensively; the default 3D API on this system is Mesa, which is an SGI-approved free implementation of the OpenGL language. NVIDIA like OpenGL.

Love:


1. Linux likes clusters. It allows 3D rendering jobs to be done very efficiently. Applications running on Linux based systems will make use of OpenGL’s strength of being able to do real time, visual rendering, or batch processed, CPU only rendering indifferently. It is, Flexible.
1. Due to the multi-user, multi-context environment, doing 3D on GNU/Linux systems stretches the software and the hardware to its utmost limits. Let’s just say, bragging rights without having to reinvent the wheel.
1. The clients will usually bring up problems and possible solutions faster than you’d believe it possible.

Hate:


1. Linux doesn’t offer (yet) a way to say when the graphics subsystem is in use (for example, when the CLI framebuffer is used), thus initializing the driver may be risky if, say, the kernel’s NVIDIA-optimized framebuffer is loaded (this should be fixed soon).
1. In graphics, the driver is as important as the hardware (Matrox proved how much a sucking driver could drive great hardware into the ground, see Matrox Mystique and G100/G200); freeing the source is dangerous.
1. You have to recompile the driver for any new kernel compilation.
1. The libraries paths (and sometimes, names) change from one version of GNU/Linux to the other.

These reasons explain:


* why NVIDIA publishes new Linux drivers almost as fast as it does Windows drivers,
* why the source code they provide for the free driver is so uncool and obfuscated.


## The Nouveau project

Nouveau is French for “New”; it came from an IRC discussion where one of the original authors said he wanted to rewrite and improve the current X11 nv driver, and his IRC client automatically replaced “nv” with “nouveau”—it stuck.

Current goals:


* De-obfuscate the nv source
* Implement EXA
* Fix outstanding nv bugs
* Implement DRM in kernel (Direct Rendering Module, not Digital Restriction Management)
* Support all cards from the Riva128 to the Geforce 8800
* Initialize the card’s 3D engine (texels or shaders depending on generation)
* Implement accelerated software 3D rendering
* Implement accelerated hardware 3D rendering

Right now, they:


* make cards from Riva128 to Geforce 6 work well,
* make their driver work in 32-bit, 64-bit, x86 or PPC,
* have EXA working in the 2D driver (and they wonder when to get rid of XAA),
* have a working (but no fixed API) DRM,
* have DRI merged in Mesa,
* are able to generate accelerated coloured triangles,
* can make glxgears work with correct back buffer and double buffering coordinates; depth buffer also works,
* implement hardware based context switching.

They would like to see solved:


* Multiple screen configuration.
* Software mode context switching not figured out yet for older cards—IRQ allow a new context to be created in software in the driver, but content copy doesn’t work.
* Lights still need some work—source is figured out, target lacks 3 out of 7 parameters.
* You still need NVIDIA’s proprietary blob to initialise the card’s 3D functions.
* Still no knowledge of how to use textures loaded in memory (loading them seems known, though).
* Some Geforce7s crash in 2D, Geforce8s don’t show anything.
* Part of nv is still obfuscated.


## Conclusion

The project is aiming at a working driver by fall 2007; they look like they’re on track, but the more help they get, the better the project will get.

Due to drastic interface changes, the driver will require modular Xorg 7.1 or later. While it’s aimed to be used on all POSIX systems, right now the main platform is GNU/Linux.

Please inform me of any incorrect info my article may contain, and I’ll update it week by week if need be.

