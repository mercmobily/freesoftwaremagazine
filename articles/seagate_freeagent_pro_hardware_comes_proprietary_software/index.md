---
nid: '2889'
title: 'Seagate Freeagent Pro: hardware that comes with proprietary software'
authors: 'Laurie Langham'
published: '2008-06-19 23:39:13'
tags: 'microsoft,kubuntu,ext3,seagate-freeagent-pro,ntfs,qtparted'
license: verbatim_only
section: opinions
listed: 'true'

---
Getting an external hard drive for my laptop seemed like such a good idea when I first thought about it. Seagate have got a dinky little 750 GB affair, called the Freeagent Pro, with lights that go up and down when it’s having a bit of a think to itself, so I got myself one of those. What I didn’t know when I bought it was that the hard drive came with all sorts of issues related to proprietary software.

<!--break-->

# The trouble

I plugged my new Freeagent Pro into my Thinkpad but the desktop icon wouldn’t let me into it; I couldn’t get in with Konqueror either.
Qtparted, and Kdiskfree freely admitted that there was a 750 GB NTFS partition connected by a USB, but rebuffed all right click efforts to mount it and responded with various “error” messages.

An NTFS partition. It was an NTFS partition!
I went on the net for a bit of an investigation, and discovered that there were numerous cries for help from the Free Software community.

Seagate, in all their wisdom, had concluded that there was only one operating system in all the world, and set this thing up in NTFS, to work exclusively for Redmond’s operating systems.
The other issue was that GNU/Linux couldn’t wake it up again after it decided to “hibernate”, as per its NTFS instructions. The forum advice was to go into Microsoft Windows and change the hibernate setting to “never”.
I originally thought to keep the NTFS on it and just let ntfs-3g sort everything out for GNU/Linux, so off I went to find someone with a Windows machine. I plugged it in and immediately set the the hibernate setting to “never”. I also set the read/write permissions to “everyone”. It then informed me that although there was about 15 GB of NTFS in a partition, the rest wasn’t formatted at all. “Aha”, I thought, “that’s probably the problem.”

I set it to format the rest into NTFS and somewhat over 2 hours later Windows had managed to perform this task. It then asked if I wanted to install the auto-backup feature, so I thought, “Why not?” Flaming shareware! You can’t even come within a mile of Microsoft without someone trying to slip their hand inside of your pockets.

I took the thing home and found I was still locked out. I found a further problem in that if NTFS figured it hadn’t been shut down cleanly, because it didn’t understand the system it was in, it would start screaming that its files were corrupted and then GNU/Linux would refuse to touch it. This meant a trip back to a Windows machine every time this happened, so Windows could then tell it that nothing was wrong.
I used Qtparted to re-format the disk to ext3, but then I couldn’t get it to remove the small NTFS partition.

I now found I could write to the drive, so I loaded about 10 GB of files and on they went, except NTFS refused to accept certain files in the typical Microsoft manner. I tried to load some more files, then, “Disk full”.
Back to Qtparted and sure enough, it had tried to load everything into the small NTFS partition.

I took a deep breathe, stopped tearing my hair out, and realised that with NTFS guarding the gate I was never going to get ext3 files onto that drive. When I checked the download, in the partition, I found that NTFS had preserved my folders, but there was nothing in them.
That NTFS partition just had to go, by hook or by crook.

# The solution

I put the Kubuntu 8.04 install-disk into my Thinkpad, and re-booted.
When partition time arrived I picked the “manual partition” option. Yes, the installer had located both the USB external drive and my local disk.
I took the external drive first and deleted the larger ext3 partition. This time it allowed me to go on and delete the NTFS partition as well. Then I re-formatted the whole thing as ext3, which took a fraction of the time that Microsoft Windows took to get it formatted into NTFS. I went on to format my local disk then finished the install.
There was still some sort of permissions problem so I went into the root-mode Krusader file manager, right clicked on the mount point to get “properties – permissions” and changed the ownership from root to my personal group. It’s been running like a steam train ever since.

Now all I need to find out is how to apply some power controls to an external hard drive so it doesn’t keep spinning around at 7,200 revs the whole time.

# My lesson

It is sad to see a great hardware manufacturer, like Seagate, pandering to the demands of a Convicted Monopolist, like Microsoft, to the extent that they are making life difficult for all their other customers.
It seems like Microsoft corrupts everything it touches. The free software community should maintain a complete apartheid from this corporation and with all those who attempt to collaborate with it, like Novell.
