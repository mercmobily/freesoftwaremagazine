---
nid: '1722'
title: 'AIGLX, XGL, DRI, MesaGL... sort it out'
authors: 'Mitch Meyran'
published: '2006-08-18 1:23:00'
tags: 'aiglx,xgl,nvidia,ati,dri,mesagl,compiz,opengl'
license: verbatim_only
section: hacking
listed: 'true'

---
Seeing SuSE’s new desktop—the one using XGL and Compiz—one may be tempted to try and get it working on his own system... Good luck.


<!--break-->


Personally, I use Mandriva’s GNU/Linux distribution. They decided to follow Red Hat/Fedora’s impulse by using Xorg 7.1, which has AIGLX (Accelerated Indirect GL X) built in.

Now, AIGLX and XGL use complementary methods to display a 3D desktop, and in fact have very similar requirements—and can run the same window managers.

However, while XGL can run on pretty any OpenGL 1.5 compatible hardware, AIGLX isn’t there yet: right now, only Intel and older ATI hardware (those with open-sourced 3D drivers) can make it run... Because they require the driver to follow the 1.0 ABI specification

Now, since I was always told that NVIDIA is the way to go for OpenGL hardware under GNU/Linux, I tried to find a way to make AIGLX and a 3D desktop on my favourite distribution... And I tried to find out anything I could about a free 3D driver for NVIDIA hardware.

Here’s what I found out:

The Utah-GLX project had a semi-working 3D accelerated driver, which has never been ported to Mesa/DRI. In fact, the last person to work on it was working on a BeOS driver... And has made some progress. However, his work hasn’t seen any echo—that I could find—in the GNU/Linux world.

Too bad.

I can understand that it takes some time to develop a driver from scratch. I can also understand that companies like NVIDIA and ATI, who have today’s most powerful 3D hardware, would not want to share those secrets with others. However!

Seeing that there already are some available code on both parts, that it merely requires someone’s time to reverse engineer those hardware pieces—it can arguably be easily covered with one or two people’s salaries—to discover those secrets, I don’t think that either ATI or NVIDIA would have much to lose by disclosing at least part of the specs required, but at least there would probably be MUCH more activities on the free software side.

