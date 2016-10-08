---
nid: '1358'
title: 'A screen shot tour of Red Hat Enterprise Linux 4.0'
authors: 'Saqib Ali'
published: '2004-09-15 10:37:00'
issue: ''
license: verbatim_only
section: hacking
listed: 'true'

---
All major Linux distributions include a lot of free software applicationsand libraries, which turn Linux into a powerful desktop or server.

Red Hat in particular has done a great job in including numerous applications and libraries which work right out of the box, without much tweaking required.

This is a screenshot tour of Red Hat Enterprise Linux 4.0.

Enjoy!


# Terminal Server Client


=IMAGE=TerminalServerClient.jpg=Terminal Server Client for connecting to Windows Servers=

Red Hat Enterprise Linux 4.0 comes with a free Terminal Server Client available from the [GnomePro site](http://www.gnomepro.com/tsclient/), which lets you connect to an MS Windows Terminal Server. In addition to supporting multiple resolution and full screen mode, it supports multiple protocols like RDP, RDPv5, VNC, XDMP, and ICA. The Terminal Server Client is a front end for [rdesktop](http://www.rdesktop.org/).


























# Citrix Client 8.0 for Linux


=IMAGE=CitrixClient80.jpg=Citrix Client 8.0 for Linux=

[Citrix Client 8.0](http://www.citrix.com/download/) is another free client that allows Linux users to connect to Citrix Sessions. The client installed smoothly on the default install on Red Hat Enterprise Linux 4.0. However, it was not able to read proxy settings from Firefox. So I had to launch Mozilla once, which created the settings file ~/.mozilla. After that, Citrix Client 8.0 worked flawlessly, and I was able to connect to a Citrix Metaframe 3.0 Presentation Server.


































# CD and DVD burning application – K3b


=IMAGE=K3b.jpg=K3b – CD & DVD burner=

Red Hat Enterprise Linux 4.0 came with [K3b](http://www.k3b.org), which is a CD and DVD burning application. It required no configuration, and was able to detect CD Writer without any issues. On the default install of Red Hat Enterprise Linux 4.0, K3b is available under Applications Sound & Video -> K3b






















# Accessing network storage


=IMAGE=ConnectToServer_Options.jpg=The default server options =

When it comes to accessing files from network storage, Red Hat Enterprise Linux 4.0 offers a multitude of selections, including SSH, Public FTP, FTP, Windows, [WebDAV](http://www.webdav.org) and Secure WebDAV. All of these options come with the default install on Red Hat Enterprise Linux 4.0.






















# Music encoder – Sound Juicer


=IMAGE=SoundJuicer.jpg=Sound Juicer=


<!--pagebreak-->


[Sound Juicer](http://www.burtonini.com/blog/computers/sound-juicer) is a free software application that rips and encodes CDs as compressed music files. It supports file format such as Ogg Vorbis, MP3, FLAC, and Wave. It comes with the default installation of Red Hat Enterprise Linux 4.0.






















# Web browser – Firefox 


=IMAGE=Firefox.jpg=Firefox =

Red Hat Enterprise Linux 4.0 came with [Mozilla Firefox 1.0.1](http://www.mozilla.org/products/firefox/) Web Browser. The browser worked fine right out of the box. I had to manually install the JRE plug-in.






















# FileRoller


=IMAGE=FileRoller_CreateArchive.jpg=FileRoller - Archiving=


=IMAGE=FileRoller_ArchiveViewer.jpg=FileRoller – Extracting=

Red Hat Enterprise Linux 4.0 comes with [FileRoller](http://fileroller.sourceforge.net/), a free software application that provides the same functionality as Winzip on Windows. You can create an Archive by right clicking on a folder,

and view or extract files from the archive using a GUI.


# WebEX


=IMAGE=WebEX.jpg=WebEx=

[WebEX](http://www.webex.com)worked fine on the Firefox browser with JRE plug-in installed. WebEx is a web based conferencing tool.


# Crossover Office

[Crossover Office](http://www.codeweavers.com/products/) allows you to run many popular office productivity software applications, such as Microsoft Office, Lotus Notes, Microsoft Project and Visio, graphics applications like Macromedia Dreamweaver MX, Flash MX, and Adobe Photoshop. Crossover, though a commercial application, is based on [Wine](http://www.winehq.org/) - a free software implementation of Windows API on top of X.


# Lotus Notes in Crossover Office


=IMAGE=LotusNotes651_Crossover.jpg=Lotus Notes 6.5.1 on Crossover Office=

Lotus Notes 6.5.1 ran fine on CrossOver Office, available from the [Code Weavers](http://www.codeweavers.com/) site. The installation of the Notes client was pretty straight forward, and after that, it worked just like running Notes on a Windows machine. In fact, it operated much faster in the CrossOver environment compared with running natively in Windows. However, I was unable to make the integrated SameTime Client work on Linux. It wasn’t even able to connect to the SameTime server.


# Internet Explorer in Crossover Office


=IMAGE=InternetExplorer_Crossover.jpg=Internet Explorer on 6.x Crossover Office=

Internet Explorer 6.x also ran fine on CrossOver Office. The installation of IE was pretty straight forward, and after that it worked just like running IE on a Windows machine.


























# PrepLogic Test Engine in Crossover Office


=IMAGE=PrepLogic.jpg=PrepLogic=

[PrepLogic's](http://www.preplogic.com/) computer based Practice Exam Engine runs fine in Crossover Office.


# Server Applications

Red Hat Enterprise Linux 4.0 comes with many free software applications that make it a powerful operating system for servers. At the time of installation, the server administrators can choose to install Apache, mySQL, PHP, OpenLDAP, SAMBA, FTP server, and lots of other very capable server applications.

Red Hat Enterprise Linux 4.0 includes Apache 2.0.x, PHP 4.x and mySQL 4.x . 

mod_auth_ldap (LDAP Authentication Module for Apache) came with the default install of Apache that came with RH 4.0 ES. mod_auth_ldap worked without any issues, and I was able to connect to my LDAP server. Getting the mod_auth_ldap to work on Apache has always been a pain, but the pre-configured version of Apache that comes with Red Hat Enterprise Linux 4.0 ES makes using the LDAP authentication module a breeze.

mod_dav ([WebDAV Module for Apache](http://www.webdav.org)) was pre-installed as well.

I installed Netegrity’s Siteminder plug-in for Apache on Red Hat Enterprise Linux 4.0 to test the compatibility of the libraries with commercial software. The siteminder plug-in installed without any issues. I was able to connect to the Siteminder Policy server as well.

If you are a Microsoft shop, and have implemented Active Directory, you can make your Red Hat box join the AD domain as well. Check out the [Centrify site](http://www.centrify.com) for more information. With Centrify you can use your Active Directory accounts to login into the Linux workstation.


# Complaints

No JRE came pre-installed with Red Hat Enterprise Linux 4.0. I had to download and install the JRE from [Java's site](http://www.java.com). After install I had to create a symbolic link to the Java Plug-in (libjavaplugin_oji.so) in the Mozilla Plug-ins directory. Easy enough, but it took some time to get everything running. 

No DVD player with Red Hat Enterprise Linux 4.0. Why? I don’t know. [Xine](http://xinehq.de/) looks like a decent DVD, CD, and VCD player for Linux. For more discussion on why Xine is not included, please read: [here](https://www.redhat.com/archives/nahant-list/2005-March/msg00279.html) and [here](https://www.redhat.com/archives/nahant-list/2005-March/msg00072.html).



