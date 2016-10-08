---
nid: '1602'
title: 'Free networks'
authors: 'Jeremy Turner'
published: '2006-06-12 0:31:52'
tags: 'routers,openwrt'
license: verbatim_only
section: opinions
listed: 'true'

---
I returned from [a wonderful vacation in Florida](http://disneycruise.linuxwebguy.com) to discover that my broadband cable service was no longer working. After some troubleshooting, replacing some coax lines and connectors, I ended up having to replace my Linksys cable modem/router combo unit. I ended up going with a D-Link DCM-202 cable modem and a [Linksys WRTSL54GS](http://www.linksys.com/servlet/Satellite?childpagename=US/Layout&packedargs=c=L_Product_C2&cid=1137028967848&pagename=Linksys/Common/VisitorWrapper), which is a router, firewall, 802.11g access point, 4-port switch, and even a USB port for external media storage. However, the best part about the WRTSL54GS is that it is supported by [OpenWRT](http://www.openwrt.org), a free software GNU/Linux distribution built to replace the standard Linksys firmware. Obviously, doing so will void your warranty. But in doing so, you will gain more functionality.

One of the biggest benefits is the ability to run applications on your router. The possibilities are endless. I chose the WRTSL54GS (or “SL” model) because it also features a USB port. As I mentioned earlier, the Linksys firmware allows you to attach a USB memory stick or external hard drive. While that is a nice feature, I don't have a USB external hard drive, and ironically, my USB flash drive died right after I finished [my article on booting USB memory sticks with GRUB](http://www.freesoftwaremagazine.com/articles/grub_intro). However, I do have a nice Samsung ML-1740 laser printer which has a USB host port. The WRTSL54GS runs on a MIPS Broadcom 4707 266 MHz processor, with 8 MB of storage and 32 MB of RAM, so CUPS would be a little too large. OpenWRT includes a package named p910nd, which passes the actual print job to the printer directly.

There are so many possibilities with a small-power, GNU/Linux computer with wireless, ethernet, USB, and a very small footprint. Over the next few posts, I'll discuss some of my adventures with my WRTSL54GS! Not only can the software running on our conventional computers be free, but on our routers as well!

