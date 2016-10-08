---
nid: '3719'
title: 'Practical guide to TCP Syn Port scanner from SecPoint'
authors: 'Victor Christiansenn'
published: '2012-02-22 2:03:03'
tags: 'security,tcpscan'
license: verbatim_only
section: hacking
main_image: SecPoint.png
listed: 'true'

---
Do you know if your server or your home computer has unnecessary ports open to the internet? These days most of the people have multiple devices which are constantly connected to the internet;  each and every device comes with many services with open ports running quietly in the background. The user might not even have an idea of those services running, but the open ports often open new possibilities of threats from the outside world.

The tool [portscanner](http://www.secpoint.com/freetools/threaded-syn-port-scanner-4.0.zip) created by [Secpoint](http://www.secpoint.com) comes to the rescue: see how.

<!--break-->

# What's in a port

Every device connected to the internet can have multiple open ports.  What's a "device"? Well, it could be a desktop or a laptop computer, but it could also be your gaming console, smart phones, tablet computers, printers, routers, projector systems, televisions or even refrigerators these days.

Ports are the the gateway through which the network traffic flows through. Unfortunately if unnecessary ports are open then they might be used by others to get access to your devices (and steal, modify or even delete you valuable information stored on that device). The danger gets bigger if you have multiple ports open. So whenever you connect to the internet at home or when you visit public networks or even networks at friends/known places, then you can easily be at risk.

# The right tool

The good news that you can easily scan and find out if you have some unnecessary ports open in any of your devices. With the award winning, free tool TCP Syn Port scanner from SecPoint (released under a BSD license), you can easily scan your IP address or domains and find out if you have any open Ports which might be compromising the security of your data.

Features of TCP Syn Port scanner from SecPoint :

* It scans a full range of ports (1-65535 port range).

*  It identifies the hardware vendor of the netcard when you scan a device. This is useful while scanning as the system tells you which device you are scanning. (e.g. a printer, router, etc.) This gives information on the the actual device, rather that just It's IP address.  

For more information please check the  [training video with examples](http://www.youtube.com/watch?v=1Txj4LTrOus).

# Some practical examples

Command line examples:

*  Scans 192.168.1.1 in syn mode using default ports:  
`./portscanner 192.168.1.1 -s`

*  Scans 192.168.1.1 in connect mode using default ports and wait time 300 ms:  
`./portscanner 192.168.1.1 -w 300`

* Scans all ports of 192.168.1.1 in syn mode:  
`./portscanner 192.168.1.1 -p 1-65535 -s`

* Scans ports from 1250 to 3500 of 192.168.1.1 in syn mode; output to HTML file:  
`./portscanner 192.168.1.1 -p 1250-3500 -s -oh outfile.html`

* Scans default ports of the ip address in connect mode; uses 20 instances, wait time 300 ms., does MAC lookup, prints results at the end:  
`./portscanner 192.168.1.1 -n 20 -w 300 -M -h`

* Scans all ports of the ip address in connect mode; uses 20 instances, wait time 300 ms., MAC lookup, outputs results for all ports to a txt file:  
`./portscanner 192.168.1.1 -p 1-65535 -n 20 -w 300 -M -a -o outfile.txt`