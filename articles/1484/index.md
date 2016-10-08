---
nid: '1484'
title: 'Legacy hardware takes wings with GNU/Linux'
authors: 'David Sugar'
published: '2006-02-27 17:43:43'
license: verbatim_only
section: opinions
listed: 'true'

---
Having read of Microsoft’s white paper on the use of GNU/Linux on [legacy](http://www.eweek.com/article2/0,1759,1908908,00.asp) hardware, I had to laugh at the conclusions. But, to be fair, I thought it was time to update my own “legacy” laptop, a Toshiba 660CDT, with a Pentium 150, a 800x600 LCD panel, and a whole 80MB of ram installed.

I originally took this laptop with me when I [visited](http://www.linuxjournal.com/node/6336/print) the Republic of Macedonia in 2002. At the time I had installed Mandrake (7.2), which actually ran reasonably well with KDE. I chose Mandrake for this machine back then simply because it was compiled as Pentium optimized, and I thought it best to give the little machine whatever benefit it could have.

As with many older machines, the first challenge with using any "modern" GNU/Linux distribution is often CD booting. Many older distributions included floppy boot images, so if you found a machine with a bios unable to boot a CD, you could write the image to a floppy and use that to kick off the install. While Debian retains this tradition, many current distributions no longer do so.

Into this problem the excellent little [“Smart BootManager”](http://btmgr.webframe.org/index.php3?body=about.html) (sbminst) has appeared. This package is not meant to replace or compete with lilo or grub. This is simply a boot program that can boot a system track on any partition. More importantly, it can boot a bootable ISO cd-rom drive even where the bios cannot, and it can be installed either on the boot sector of a harddisk or a boot floppy.

I chose to try [DSL](http://www.damnsmalllinux.org/) (Damn Small Linux), which is a very tiny distribution that started life as a business card specific distro. DSL claims to require only 16MB of ram, and very little harddisk space, depending on how one chooses to install it to a harddisk. Current versions are based in part on [Knoppix](http://www.knoppix.org/), especially for hardware auto-detection.

Booting DSL as a live CD made it easy to determine that it does indeed support all my hardware on this laptop, including my old USR wireless card! Installing to the harddisk was a snap from a menu choice after partitioning. The only problem was that DSL initially believed the display was 1024x768, when in fact it is 800x600 on the laptop (easy to change from the DSL control center), and a slight battle over the odd soundcard hardware.

With the ability to use a minimum of 16MB of ram, a frugal harddisk install mode that needs very little disk space, and running reasonably snappy on even old hardware, DSL clearly makes even very old machines rather usable, and does so in a way that is accessible to anyone without specialized skills. Whether for browsing (firefox), email, word processing, or many other routine chores, this machine remains very usable.

Originally, and I am guessing, this machine came with an OEM version of Microsoft Windows 98. However, according to Microsoft, my little laptop is now broken and unusable. It is not that the hardware no longer functions, or that magically Microsoft Windows 98 no longer works, but rather that they choose to legally bar one from newly licensing and installing that product anymore, and they choose not to offer a product to replace it that will run on this hardware. Therefore although the hardware runs fine, this machine is no longer usable according to Microsoft.

Thankfully, this machine is running a free operating system, and that freedom to run GNU/Linux and use this fine machine is freedom that no selfish company can take away at its whim.

