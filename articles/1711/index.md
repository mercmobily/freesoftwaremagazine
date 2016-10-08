---
nid: '1711'
title: 'The new platform maze'
authors: 'Mitch Meyran'
published: '2006-08-09 7:45:15'
tags: 'gnu/linux,laptops,distros'
license: verbatim_only
section: opinions
listed: 'true'

---
I own an old, quite customised Thinkpad a21m laptop, which I still use intensively when I’m out of town: with 256 Mb of RAM, a 750 MHz Pentium 3 chip and a 1024x768 screen running off an ATI chip, I can run pretty much all recent GNU/Linux distros around. I also have built a nice living-room warmer based off an Athlon64 X2 3800+ with a big, fat hard disk and more RAM than you can shake a stick at (well, almost). Is there a problem here?

If I tell you that I need to download ten (10) different CD images to install both according to their specificities, maybe you’ll get it.


<!--break-->



# Of useless nitpickings and burnt CDs

You’ll tell me, why don’t you just download the i586 DVD, or even just an i586 LiveCD with Net install abilities?

Simply because, according to my tests and all other things being equal, if you install a generic i586 kernel on a P3 and compare it to the very same kernel but recompiled for P3, you get a net 10% performance difference. Significant, but hardly worth getting annoyed about it. Right.

However, when you see such a difference between 2 chip generations, what do you get when you compare chips separated by 3 generations—and a complete architecture upgrade from 32 to 64 bits? Some would say, 25%. I’d answer, yes, probably. Considering how much I paid for that system, would I want to waste a quarter of its capabilities? No, and you wouldn’t want to either.

But then, I may limit myself to 2 LiveCDs with Net install capabilities, you’ll tell me. True, but have you ever had the problem of an unrecognised network adapter not being recognised? Personally, it happens to me without fail when using an Nforce4 integrated NIC. Sometimes the forcedeth module will work flawlessly, then just plainly refuse to load on the very next boot—for no reason I can fathom.

Nvidia provides a proprietary driver that works—more or less: nvnet. When I can get forcedeth to load, I don’t use it. If forcedeth’s loading fails, I need to load nvnet. But then, to install it in the first place, I need gcc, kernel source headers, make and a few other development packages—which are typically not provided on a LiveCD.

I could burn a pair of DVDs, you’ll say. Right. But I don’t have a DVD drive on the thinkpad. Too bad.


## Brothers enemies?

When you consider architectures as different as PowerPC and x86, having completely separate repositories can be understood: due to endianness, not even purely data- or script-based packages can be easily shared.

But in the case of x86-32 and x86-64, endianness isn’t a problem, and in fact some applications that can’t be (yet) ported to x86-64 are essentially the same between the two flavours of a distribution (OpenOffice.org 2.0 doesn’t work in 64-bit mode yet and is, as a matter of fact, still only barely able to compile successfully).

But yesterday I discovered something quite interesting:

Mandriva 2007 beta 1 provides a 6-CD (or 1-DVD) distribution labeled i586-x86_64. It essentially merges the two repositories, detecting the CPU architecture at install time and installing those differing packages when required, and all the others no matter what architecture is detected.

Thus, I suddenly only have to download 6 CD images to install it on whatever machine I want it on, and use most of that machine’s capabilities. Now, frankly, that’s nice. And I don’t have to spend ten hours downloading images and burning them anymore: only half that time.

That’s even nicer.

