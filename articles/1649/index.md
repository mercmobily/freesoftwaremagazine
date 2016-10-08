---
nid: '1649'
title: 'Free networks (part 2)'
authors: 'Jeremy Turner'
published: '2006-06-28 12:56:05'
tags: 'routers,openwrt'
license: verbatim_only
section: hacking
listed: 'true'

---
In [my last blog post](http://www.freesoftwaremagazine.com/node/1602), I started writing about [OpenWRT](http://www.openwrt.org), a free software firmware replacement for many off-the-shelf home broadband routers. I received an email last week from a reader who had some of the very same questions I had about the whole process of installing a new firmware. I’ll address some of his points here.


<!--break-->


OpenWRT is one of several alternative firmwares that can be loaded onto a compatable router. Two other main projects are DD-WRT, and Sveasoft. Sveasoft seems to be a fork of the Linksys firmware code that has been released under the GPL. The author of Sveasoft charges some sort of rate for the firmware, and some releases include source code with them. But as I’ve already paid for a shiny new Linksys WRTSL54GS (and the Linksys firmware too), I don’t want to pay again. [DD-WRT](http://www.dd-wrt.com) is a free firmware replacement which includes a lot of [features](http://www.dd-wrt.com/wiki/index.php/What_is_%22DD-WRT%22%3F#Feature_List) that you probably wouldn’t find in the Linksys (or other brand) original firmware. Of course, the main ability is to run custom applications on your router, such as asterisk, a print server, VPN, etc. More about these features later.

The reader that wrote to me questioned the reliablity of the router firmware. I don’t think there is any hard, independent data on this, just very anecdotal evidence from personal experience. I’ll share mine. The only time my router has rebooted was when I had some power issues at my house last week. Up until that point, it had run nearly a month since I bought it. My experience aside, OpenWRT has not released version 1.0 yet, so it probably is experiemental. Of course, if you are hacking your router, you probably realize that this is all experimental anyway. If you want someone to call up for support, by all means, put the Linksys (or whatever) firmware back on the router. If you have some GNU/Linux skills and don’t mind sitting at a command-line with busybox utilities, you will be fine.

What kind of hardware runs OpenWRT? The OpenWRT wiki has a nice long [table of compatable hardware](http://wiki.openwrt.org/TableOfHardware) which includes details such as processor and platform, RAM, storage, wireless chipset, ethernet chipset, and additional features, such as a USB or serial port, or the default boot_wait status (used for flashing the firmware remotely with TFTP). I actually used this list to make my purchase of the Linksys WRTSL54GS. Also, this table links to the product on the manufacturer’s website along with a wiki page of gotchas with OpenWRT.

From visiting the OpenWRT website today, it looks like they are undergoing a design change, so information might be a little hard to dig up. I’m also hoping that they put some screenshots of the web interface. The web interface is pretty plain and self-explanatory, but works well.

Well, that’s all for this installment. Next post I plan to write about how to install OpenWRT and how to put some cool applications on it!

