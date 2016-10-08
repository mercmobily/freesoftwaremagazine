---
nid: '2860'
title: 'Installing an all-in-one printer device in Debian'
authors: 'Ryan Cartwright'
published: '2008-05-05 1:08:58'
tags: 'debian,howto,all-in-one-printer,installation'
license: verbatim_only
section: hacking
listed: 'true'

---
Recently I had cause to buy a scanner. Being in a reasonably small home I was eager to save on desk-space, and so decided to upgrade my ageing inkjet printer at the same time. Having looked around I eventually went for an HP Photosmart C5180 device. This is my experience of installing it on Debian Lenny.

<!--break-->

# Interfaces

The C5180 is a scanner/ink jet printer with six-ink photo quality printout and the ability to print direct from various types of media card. It comes with a USB 2.0 and Ethernet RJ-45 socket as well. Either would have suited me and, in fact, I will eventually stick it on my home network. Tonight though I was not really in a position to do that, so I went for the USB install instead. In case you are wondering I went with this device for two reasons:

1. I knew HP provided free software drivers for their devices.
2. It was on special offer at the time and I saved around 30% of the regular price.

# A gripe

The HP drivers do not come on a CD-Rom, unlike for Mac and Windows. This is not my gripe--as you will see installing this printer did not require a CD because the drivers were as a Debian package. My gripe is that the packaging mentions both Windows and Mac support (although noting that not all features are available under Vista) but does not mention GNU/Linux at all. Come on HP: you've outshone a lot of manufacturers by releasing free drivers; so, how about giving all those newbie Ubuntu users a fighting chance and putting a penguin somewhere on the box? The install documentation is also devoid of a mention of GNU/Linux: again, for anew user it would have been nice to see something in there.

# Printing

As said HP provided free software drivers and these were available as Debian packages. A quick check of the excellent LinuxPrinting.org database revealed the the HPLIP/HPIJS drivers were what I needed. So `apt-cache search hplip` revealed the packages and `apt-get install hplip` installed them. I already have cups installed on this machine and HPLIP integrates with it seamlessly.

The installation restarted cups for me so I just needed to connect the USB port of the printer to my PC and add the printer to cups. I prefer to use the web interface for CUPS; so, pointing my browser at `http://locahost:631` brought this up. I then clicked the `Add printer` button and followed the steps. When it came to which model/driver to use, I chose "HP PhotoSmart C5100 Foomatic/hpijs, hpijs 2.8.2.10 - HPLIP 2.8.2" from the list: cups had this already recommended and selected, so it wasn't hard to find. Printing a test page after the installation proved all was well.

# Scanning

Scanning was a little more tricky. Most Linux scanning needs are met by SANE (Scanner Access Now Easy) so I installed that and the xsane frontend for it. Here I hit my first problem: SANE does not come with the relevant backend for the HP C5100 series. All was not lost though as a quick bit of Googling revealed I needed to add `hpaio` as a single line in the `/etc/sane.d/dll.conf` file. Once that was duly done, I fired up xsane to be told no devices were available. Running `scanimage -L` from a terminal revealed the device was there and being detected. Running `hp-check` (supplied with the hplip package) revealed the scanner was being detected. So why was xsane not finding it. I decided to manually pass the device URI to xsane. `scanimage -L` gives you the device URI so all I needed to run was ` xsane hpaio:/usb/Photosmart_C5100_series?serial=MY79IQ213604MK`. Don't worry about the the length of the parameter, normally you don't need to enter that in at all.

Xsane reported a permissions error trying to read the device. A-ha! A solution was in sight. At this moment I slapped my hand on my forehead a few times as I remembered that both `scanimage -l` and `hp-check` were run with root permissions (sudo). USB devices are stored under `/dev/bus/usb/` and so I ran `ls -lR /dev/bus/usb` and found the C5180 in there with an owner of `lp` and a group of `scanner`. So I added my user to the scanner group with  `groupadd -a -G scanner ryan`. The new group would not be present until I logged in again but as it happened I had to shut down the machine shortly afterwards anyway. If you want to refresh the current users' groups without ending the session have a look at the `newgrp` commnand. Upon logging in again I started xsane and it found the scanner and everything worked as expected.

# Conclusion

A lot of people say the learning curve for GNU/Linux is too difficult. My experience here showed that,  as far as scanner go, it could be made easier. But it was by no means a task beyond a bit of Googling and one of my reasons for writing this was to collate the information I gathered into one place. HP's drivers work like a charm and the printer itself is marvelous, I recommend it. My next task will be to setup scanning over the network/. I've seen a few useful HOWTOS on that, so I'll let you know how I get on.

#References
* [C5180 page at LinuxPrinting.org](http://www.linuxprinting.org/show_printer.cgi?recnum=HP-PhotoSmart_C5180)
* [HPLIP homepage](http://hplip.sourceforge.net/)
* [SANE website](http://www.sane-project.org/)
* [HPs C5180 page](http://h10010.www1.hp.com/wwpc/uk/en/ho/WF05a/5043-5527-7369133-7369133-12721008-12721116.html)