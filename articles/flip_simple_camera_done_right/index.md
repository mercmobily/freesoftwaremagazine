---
nid: '3394'
title: 'Flip: A Simple Camera Done Right'
authors: 'Terry Hancock'
published: '2010-08-31 15:02:03'
tags: 'open-standards,hardware,camera'
license: verbatim_only
section: end_users
listed: 'true'

---
<!-- Flip: A Simple Camera Done Right -->

Sometime back I gave a pretty strong pan review of a couple of "toys" that were not compatible with GNU/Linux -- with _open standards_ really, since the community ensures that free software is compliant -- and were therefore nothing more than a disappointment to my kids. Recently, I fully expected to repeat this depressing experience when my brother-in-law gave my son a "Flip" digital video camera, but I was pleasantly surprised: it works exactly as it should. That seemed worth a column in itself.

<!--break-->

Too often, I've found that low-budget hardware -- especially items sold largely as toys for kids -- have Windows-dependency built into them at a very low level. For some reason, low-end manufacturers think that it will serve them better to build in rigid dependencies rather than just sticking to open standards.

=IMAGE=fig_flip_camera.jpg=My son's "Flip" video camera, given to him by his uncle. Will it work?=

I can't really understand this attitude personally, as it seems to me that open standards are the smart way to save money, since you can eliminate most of your support costs that way (but then again, maybe they just don't figure on being around long enough to have to support their products?).

=ZOOM=When I buy things myself, I unconsciously steer away from products I know are likely to be a problem=

When I buy things myself, I'm usually pretty careful about this, even when I don't think about it. I unconsciously steer away from products I know are likely to be a problem -- it's amazing in fact how easily this becomes a habit. It's not unlike the problem with programmers testing their own code -- since they know where the weak spots are, they unconsciously avoid them, and glaring problems often get overlooked.

Whereas, someone with less experience with the system will tend to find the problem right away. Since I have kids, and (not very free software savvy) relatives who like to buy them presents from time to time, I've had a _lot_ of experiences of trying to interface equipment I would never have bought myself.

# "Flip" Camera

So, I've gotten pretty cynical about this, and when I found out that my brother-in-law had bought my son a "Flip" video camera for his birthday, I braced myself for another disappointing spiral into incompatible systems. The first warning sign, of course, was the fact that the Flip (presumably in order to save money and complexity) does not have a flash memory card slot. Instead, it has on-board flash memory and a flip-out USB adapter (I'm guessing this is where the name comes from).

=IMAGE=fig_flip_out_usb.jpg=The "Flip" has no flash memory slot. Instead it has a flip-out USB plug that allows it to be plugged directly into your computer=

I hadn't heard of "Flip", but my wife identified it as a fad gadget from a year or two ago that is still quite popular. They are marketed by Cisco. Thus far, I feel I've got every reason to worry about it, but I did a search, and I found some encouraging notes from other GNU/Linux users. Apparently, the Flip actually does work as it should when you plug it into your system -- the USB interface follows the mass storage interface standard and makes all of the data on the camera available for upload.

=ZOOM=That's exactly what it should do, of course, but I've been so burned by past experiences, that I still doubt what I've read=

That's exactly what it should do, of course, but I've been so burned by past experiences, that I still doubt what I've read. So naturally, I have to try it out. And I'm happy to report that it "Just Works".

=IMAGE=fig_automount.jpg=Whoa. It automounts. Just like it should=

Plugging the camera into my standard Debian "Lenny" or "Squeeze" KDE-based desktop systems (that's with Linux kernel 2.6.26 or 2.6.32 and KDE 3.5.10 or 4.4 by the way) causes a simple auto-mount pop-up window, just as I get with other flash drives. Poking around on the camera's drive, I find that the video data is in a directory like "`DCIM/100VIDEO`" which is pretty typical of digital camera flash drives I've looked at before.

The data is in MP4 format. That's not as free-software-friendly as, say, Ogg Theora, but it is still a very widely-supported video container format. I consider the possibility that the data itself may still be in an proprietary codec, but the video loads and plays in VLC.

=IMAGE=fig_video_file.jpg=And there's the data -- the MP4 video plays just fine in VLC (VideoLAN Client), and I'm sure it works in most other free software players=

Now, I know that the Flip comes with some special "extras" software support for Windows. I'm not exactly sure what they do and they clearly don't work with GNU/Linux, but that's okay though, I don't really care. What's important is that the basic functionality is all there: my son can record video, plug the camera in, and upload his video for editing very easily (or at least he could if his USB ports were hooked up correctly -- sadly his motherboard has non-standard proprietary USB headers, but that's another story entirely. Until I get a chance to wire up an adapter, he can use mine!).

# See, It's Not That Hard!

So, if anyone thinking about the next fad gadget is out there among my readers, I want to hold this up as an example. This is how to do it right: simple reliance on open standards. No need for fancy adaptation or support for umpteen different operating systems. Just find the standard and follow it.

=ZOOM=This is how to do it right: simple reliance on open standards=

Congratulations to Cisco for this nice minimalist piece of engineering.

If manufacturers will start following this example instead of getting suckered into the Microsoft-only trap, the world will be a lot more fun place!

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=

