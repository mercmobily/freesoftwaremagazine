---
nid: '1804'
title: 'Configuring a Linux home internet gateway'
authors: 'John Calcote'
published: '2007-03-05 6:30:00'
tags: 'linux,gateway,router'
issue: issue_16
license: verbatim_only
section: hacking
listed: 'true'

---
My family is hooked on Windows. I’ve thought about trying to coerce them into switching to GNU/Linux, but the very thought of what I’d have to put up with for the next year just makes my head ache. I’m not talking about software maintenance issues. I’m talking about trying to defend my position time and time again as they complain that they can’t run their favorite games or applications. Telling them to change their favorites is like spitting into the wind—it’s sort of masochistic.

I love Linux though, and so this opposition doesn’t stop me from wanting to setup a Linux machine at home. I upgrade my wife’s computer in the study about once every couple of years, and often my kids’ machines get a parts upgrade from the old machine at the same time. Recently, however, I found I had enough spare parts to put together an entire machine, so I took the opportunity to replace my LinkSys router with a custom Linux router. In this article, I’d like to describe this process because it was more difficult for me than it probably should have been—mostly for lack of clear instructions.


# Internet packet routing basics

Routers are to computer networks as local post offices are to the mail system. Your local post office accepts mail destined for your entire city or region in large bundles. Postal workers sort letters and packages in those bundles into smaller bundles by neighborhood. Post men and women deliver those smaller bundles to individual homes. At the same time, they pick up outgoing mail from mail boxes and deliver it back to the local post office where it’s sorted into large bundles destined for specific regions. These bundles are sent to regional distribution centers where they’re divided up into smaller bundles and forwarded to local post offices. The entire process starts over again. This system is very efficient, and works equally well with routers on the internet.

Much like letters routed through local and regional post offices, at the lowest level, all internet traffic takes the form of data packets routed from one machine to another through local and central internet packet routers. Like letters and packages, each packet has a single source address and an ultimate destination address. Along the route from source to destination, packets also pick up intermediate router addresses. Router software uses complex algorithms that analyze final destination addresses to determine the next router on the shortest path from source to destination. Each router adds a new address to the packet, and then forwards it to the next router along the path.


=ZOOM=At the lowest level, all internet traffic takes the form of data packets routed from one machine to another=

Want to try an interesting experiment? Open a terminal window and type this command (you may need to change to super-user mode with the “su” command on some GNU/Linux distributions):


=CODE_START=

$ traceroute www.freesoftwaremagazine.com

=CODE_END=

If you’re on a Windows machine you can type this command for a similar result:


=CODE_START=

c:\> tracert www.freesoftwaremagazine.com

=CODE_END=

On my Linux box at home, the output looks something like this (I’ve removed the DNS names and the usual third try timing column to make it fit the column width):


=CODE_START=

traceroute to 209.249.12.148, 30 hops, 40 bytes
 1  66.119.135.193   11.132 ms	 12.877 ms
 2  66.119.143.201   12.666 ms 	 22.760 ms
 3  66.119.143.254   35.802 ms   35.900 ms
 4  66.119.143.250   43.826 ms   42.775 ms
 5  66.119.132.129   43.261 ms   40.864 ms
 6  64.213.22.185    54.872 ms   52.741 ms
 7  67.17.67.154     62.346 ms   60.723 ms
 8  64.125.12.85     66.086 ms   94.429 ms
 9  64.125.30.169    63.305 ms   60.672 ms
10  64.125.30.178    82.155 ms   77.522 ms
11  64.125.29.46     99.565 ms   97.170 ms
12  64.125.29.190    92.608 ms   90.122 ms
13  64.125.28.69    114.682 ms  119.342 ms
14  64.125.28.130   126.578 ms  127.490 ms
15  209.249.9.126   124.585 ms  125.836 ms
16  209.249.12.148  122.755 ms  119.974 ms

=CODE_END=

The `traceroute` (or `tracert`) command causes each router in a complete path from source (your machine) to destination (the address you specified on the command line) to return a message to your machine, which is then interpreted and displayed. The millisecond values in the two columns following the router address are the round-trip timing values for each of two trips to that router. On Linux, a `-n` option will remove the DNS names, and a `-q` option allows you to specify a number of trips (the default is usually three). Using `-q1`, for instance will show only the DNS name, IP address and one round-trip timing value.

The `traceroute` command makes use of a routing protocol referred to as ICMP, which is an acronym that stands for Internet Control Message Protocol. It’s interesting to note that ICMP doesn’t provide direct support for this sort of trace functionality. Years ago, inventive network programmers, in an attempt to create debugging tools for IP networks, made use of ICMP error responses to essentially trick routers into returning enough information to the sender to learn the path taken from the local host to the specified destination, as well as the round trip time required for each router to return the test message.

This is the primary job of a router—to determine algorithmically the most efficient path to the final destination, and thus the next router or host in the path, and then address and forward data packets accordingly.


# Firewalls, physical and ethereal

When I was young, my father owned a shoe store in a small town in Iowa. One year, he moved down the street to a larger building and I was given the job of remodeling the old building in preparation for selling it. As I stripped the internal walls out from the building, I found that the brick and mortar walls that stood between my father’s old building and the buildings on either side were shared walls—the same wall was used by adjacent buildings. They were fairly thick—maybe 18 to 24 inches—but more interestingly, they rose well above the roofs of either building—about 2 to 4 feet higher. The building roofs were attached to beams set deep into the sides of these walls.

I asked the old carpenter working with me why these buildings were built this way, rather than just having the roofs built on top of the walls. He told me about firewalls. A firewall is designed to protect the buildings on either side of a burning building. If a fire breaks out in a building, the fire can’t (without great difficultly) get past the firewall to the buildings on either side. The wall itself is thick enough to provide protection from structural damage that might otherwise be caused by the heat of the fire, and high enough above the roofs of the buildings on either side to keep the flames from jumping from roof to roof.


=ZOOM=Network firewalls protect individual hosts or private networks from internet users with malicious intent=

Often routers closest to individual sending or receiving hosts provide additional functionality to protect local network resources from malicious attackers on the internet. It’s a statistical truth about humanity that the larger the group of people in a community, the more probable it is that someone will attempt to hurt or steal from others for selfish reasons. Since we can’t change the basic nature of humanity (at least not overnight), we have to protect the innocent, and that’s exactly the purpose of a network firewall. Like the literal firewalls between the store buildings in my home town, network firewalls protect individual hosts or private networks from internet users with malicious intent.


<!--pagebreak-->



# Public vs. private networks

Back in the day, everyone had a piece of the internet pie, so to speak. What I mean is that in the early days of the internet, when there were few users and even fewer hosts, each host was assigned a public IP address on the internet. This meant that any host on the internet could connect with or send data to any other host on the internet.

The trouble is there are too many computers on the internet today. Each computer—no each _network interface card_ (NIC) in each computer—must have a unique IP address. An IP address is commonly displayed as a 4-part number, where each numeric part holds an 8-bit value—enough space to hold any decimal values between 0 and 255, and the parts are separated by periods:


=CODE_START=

66.123.55.63

=CODE_END=

Ultimately, however, this is just a format for display, and underneath the covers computers just treat these addresses as single 32-bit values. With just a little math, we can see that the hard limit on the number of available addresses is 2 to the 32nd power, or about 4 billion addresses. I called it the hard limit—the fact, however, is that the IP addressing scheme involves breaking this 32-bit value into ranges designed for various other uses such as broadcast, multi-cast and address ranges that are simply unusable because of the semantics of the scheme.

Over the years, some additional infrastructure has been added to the original addressing scheme to allow address ranges to be allocated to large, medium and small governments, institutions and companies. To support this concept of address classes, a network mask specifies which bits of a 32-bit address are to be considered the network address, and which bits are to be seen as the host address within the specified network.

IP addresses are commonly divided into three classes: A, B, and C. Class A addresses use only the first 8 bits as the network number, giving the owner 24-bits of node number to play with—that’s a LOT of nodes—2 to the 24th power nodes is around 16 million nodes. As a result, very few class A addresses exist today. Class B addresses use the first 16 bits as the network number and the last 16 bits as the node number. This still leaves about 65000 node addresses. Only the largest companies own class B addresses, and often they are inherited by companies during corporate acquisitions—they become a very valuable asset at the bargaining table. Class C addresses use the first 24 bits as the network number, and the last 8 bits as the node number. This leaves only 256 node addresses, which is fine for small companies, and middle-sized companies can often obtain several class C addresses to meet their needs, because there are theoretically about 16 million class C addresses, minus a few million whose ranges are reserved for class A and B addresses.

Today, it’s quite common for Internet Service Providers (ISPs) to assign a class C address of say `45.119.145.37` to a customer, with a standard class C network mask of 255.255.255.0. This means exactly what you’d expect it to mean—that all 24 bits in the first three values of the address (`45.119.145`) specify the network number, while the last 8 bit value (`37`) indicates the host number within this network.

Later, the _Classless Inter-Domain Routing_ (CIDR) system was devised to allow network addresses and network masks to be specified in a single string value. The above network address and network mask would be displayed in CIDR format as:


=CODE_START=

45.119.145.37/24

=CODE_END=

Again, this means exactly what you’d expect—that the first 24 bits of the address indicate the network number, and the remaining 8 bits represent the node number. Simple, huh? But all of this overhead means that there are actually far fewer addresses available for general public consumption than a raw 32-bit value might suggest, and the fact is that around 1998, as public consumption of internet addresses began to explode the world started to run dangerously low on 32-bit addresses.

There have been several suggestions for how to solve this problem over the years. The first solution presented to the Internet Engineering Task Force (IETF) was a scheme where the entire addressing system for the internet was to be upgraded from 32 to 128 bits. This scheme is called IPv6, since it would be the 6th revision of the Internet Protocol to be designed and implemented (the currently implemented version is 4, sometimes called IPv4. Version 5 was an experiment that never really went anywhere). IPv6 was well designed and well implemented, but it’s been an uphill battle to get everyone to modify network software to work with an entirely new scheme—from the lowest framework components to the highest-level network-enabled applications.


=ZOOM=Network address translation expanded the usefulness of IPv4 well into the foreseeable future=

In the meantime, a new scheme was presented by hardware manufacturers. This scheme is called _Network Address Translation_ or NAT. Using NAT, router appliance manufacturers like Cisco designed into their hardware the ability to translate internet addresses into private network addresses. The people who invented this scheme then requested from the Internet Assigned Numbers Authority (IANA) a single class B address (`192.168.0.0/16`) to be reserved for private networks. This scheme allows a single host (the router) to represent, with just one public IP address potentially hundreds of hosts within the private network. And all private networks could share the `192.168.0.0/16` class B address. Network address translation expanded the usefulness of IPv4 well into the foreseeable future.


# So what’s that little blue box doing anyway?

With all of this background behind you, you’re now ready to understand what that little blue LinkSys, D-Link or other brand box is doing between your internet connection and your home network. In fact, it’s just a special kind of network router, sometimes called a gateway, because it not only provides routing functionality, it also provides a firewall and network address translation capabilities.

In addition, it often provides a small 4 or 8 port hub (sometimes called a concentrator or switch), as well as parallel or USB connections for your printers. Finally, these devices can also provide wireless network (WiFi) access. Wireless devices include palm-pilots and pocket PC’s, cell-phones, laptops, and even printers these days. It seems like everything has WiFi built in—even your son’s Nintendo DS has a built-in WiFi card so he can play with his friends over the internet from his pocket gaming device!

Finally, these appliances also generally provide filtering software so you can filter certain traffic to or from certain nodes on your network. In my home, I have a single wired computer with access to the internet—the one in my study. The kids’ computers don’t have internet access. They can access shared files and printers on the home network, but they can’t access the internet. Let’s face it—there’s a lot of garbage on the internet, and I want to protect them from this stuff till they’re old enough to make those decisions for themselves. I’m sure I’m not the only one who feels this way. They can use the internet for school research, emailing their friends and even for fun, but only in the most public place in the house, where I can monitor things.

Well, that’s a lot of potentially configurable stuff in a box with no switches or dials on it! How do you plug in your ISP provided network address, default gateway and domain name server (DNS) information? Why, these gateways even have a little web server built into them. You just connect your computer to one of its ethernet ports, open a browser and enter `http://192.168.x.y` (your product’s instructions will tell what values to use for ‘x’ and ‘y’) and presto! you’re looking at the firmware configuration pages for your router.


=ZOOM=What you really need is a router implemented entirely in software...=

Basically, these little appliances are sort of all-in-one devices. The problem is that while they may do almost everything, they don’t often do much of it really well—and sometimes the feature that’s missing or poorly implemented is the one you really wanted. They’re cheap enough (60 to US$100) that you can always go out and buy a different one if your current device doesn’t do exactly what you want, but there are two problems with this approach. First, the software services they provide are generally not advertised in detail on the specification sheets, so you really don’t know what you’re getting till it’s too late. And second, none of these gateways offer everything you probably want, so it’s always a compromise in one way or another.


<!--pagebreak-->


What you really need is a router implemented entirely in software, so you can program it the way you want without the limitations inherent in an appliance. Interestingly, the LinkSys appliances actually run an embedded version of Linux internally. Because Linux and GNU/Linux are released under the General Public License (GPL) LinkSys must, by law, release the source code for their Linux based operating system to the public. And in fact, they do just this. You can go to the [LinkSys website](http://www.linksys.com) and download the entire source code for the modified embedded Linux system they install in their routers. LinkSys also provides complete (albeit a bit cryptic, unless you’re in the know) instructions for compiling this source code into a ROM image that you can then upload into your LinkSys router through it’s web interface. Since Linux provides excellent router software, other vendors have also followed a similar path for their appliances.

Well, that’s one way of doing it, but let’s be honest here—you really have to know what you’re doing to program new features into your LinkSys router, and who has the time for this sort of activity anyway? Well, that’s the point of this article—to show you how to configure an old PC as a Linux router and firewall, so you can use the features of GNU/Linux to make your router and firewall do just what you want them to do—without a lot of programming.


# Collecting the hardware

First let me tell you what I had, and then I’ll tell you what I replaced it with. I had a LinkSys gateway with four 10/100 ethernet ports and a wide area network (WAN) port for connecting to my service provider—in this case, a broadband antenna on my roof. Your ISP connection might just as easily come from a cable modem connection provided by your local cable provider, or a DSL modem provided by the phone company.

The first thing you need is an old PC. Any Intel Pentium-class machine running 500 MHz or better is good enough. I found that my Linux distro of choice ([OpenSuSE](http://www.opensuse.org)) required at least 512M of RAM, as well—not to run, mind you (Linux can run in 32K of RAM), it’s the silly installation program that requires all the memory. The motherboard on my old PC had a built in 10/100 ethernet card—plenty of speed for my WAN connection. This card became my external interface—the card that I connect to the roof top antenna.

One thing to be aware of is that your broadband, DSL or cable modem device may look and feel to the network more like a computer than a concentrator. The physical difference between computers and concentrators is in the way the ports on these devices are wired. The 8-wire port used by ethernet is technically called an RJ-45 connector. There are two ethernet RJ-45 connector wiring standards in the US, commonly called types A and B. Type A is used by AT&T, and Type B is widely used by everyone else. These wiring standards are logical inverses of each other. That is to say, the transmit wires on one standard are the receive wires on the other. A type A device must be connected to a type B device in order for communication to happen properly—you can tell if you’ve connected two type A devices to each other if the green signal LED on the back of the ethernet card doesn’t light up. The orange transmit LED may blink if the computer is attempting to send on that card, but if the green LED is off, it’s a sure sign that the connection is incorrect.

Ethernet cables are wired straight through, such that each wire in the cable is connected to the same pin number on either end. This is sometimes called a _straight_ or _normal_ cable. Cables can also be wired such that one end is type A and the other end is type B. These are called “cross-over” cables, because they allow two devices of the same type to be connected directly together. If your broadband antenna, DSL or cable modem looks like a type A device (NIC) then you’ll need a cross-over cable to connect it to your Linux router’s WAN port. The simplest procedure is to just have a cross-over cable on hand as you hook up your new router, and pay attention to the green lights on the NICs. Swap cables as necessary to make everything work.

Most newer concentrators today are auto-sensing devices, which means you can plug either type A or type B devices into a concentrator port, and it’ll just figure out which standard you’re using. This feature allows you to cascade concentrators in order to expand the number of ports you have on your network without requiring a cross-over cable. Many older computers, NICs and concentrators, however, really do care which one you use. Older concentrators are wired as a type B connection, while older NICs (including those often built into motherboards) are of type A.

A router requires at least two network cards to be an effective firewall, so I bought another NIC. The network card in my main home computer is actually 1000Base-T—a gigabit card. Since I needed a new concentrator anyway (recall that my previous concentrator was built in to the LinkSys box) I now had an excuse to upgrade my home network from 100Base-T to 1000Base-T. Okay, I admit, I was just dreaming here. How often am I really going to need that kind of speed between any two of the three wired computers in my house? WiFi machines like my laptop don’t count—remember, they’re limited by the WiFi link speed, which is much slower—even by the fastest WiFi standards today. The fact is, I like to play, and hardware is fairly cheap these days. But if you have access to some free or almost free 10/100 equipment, you might want to stick with a 100Base-T concentrator. You can get concentrators in 4, 8, 12, 16, or 24 port configurations.

Four port routers are good enough for most home networks, but if you’ve wired your home the way I did with a port in every room, or if you’re setting up a small business network, you might want to consider at least an 8 port device just so you don’t have to swap wires when you decided to use a wall outlet you haven’t used for a while. I bought a NetGear 8-port 1000Base-T ethernet concentrator (US$69.00 at [Amazon](http://www.amazon.com)) and a NetGear 1000Base-T NIC (US$25.00 at Amazon)for the internal card in my Linux router. I also still needed WiFi in my home. I bought a NetGear WiFi antenna (US$110.00 at Amazon—you can get these for a lot less, but I had had WiFi “dead spots” in my house, and wanted to make sure a new unit would not have this trouble) that plugs into any slot in my concentrator. As an option, you can always buy a concentrator with WiFi built in. I chose to buy them separately because I like to be able to replace or upgrade things now and then, and I didn’t want to have to spend a lot on each upgrade to get all of the features of an all-in-one device. Besides, buying separate components allows me to place my WiFi antenna in a more central location in my house, rather than in the wiring closet in the basement where the router and concentrator are located.


=IMAGE=ethernet_mac_address.jpg=Figure 1: Ethernet card MAC address label=

You might want to write down the ethernet MAC address from your network cards before installing them. You can usually find this number printed on a sticker on the card itself, as shown in figure 1.

The generally accepted canonical format of this ethernet MAC address would be:


=CODE_START=

00:08:B5:B3:23:44

=CODE_END=

Hardware manufacturers tend to string the entire value together and remove any leading zeros. The reason for this is that the colon-delimited format is a nicety designed for human readability and data entry. As far as the hardware is concerned, it’s just one long number.

It becomes much more apparent why you want to make a note of the MAC address if you have two cards of the same make installed in your router. You won’t be able to tell them apart in the network device configuration dialog except for the MAC address. With one of them known, you’ll at least be able to determine which card is which. Even when the cards are significantly different externally, they might still use the same chip-set, and thus the same driver. The driver name and MAC address is what you’ll see in the dialog, not the brand or manufacturer name.


# Configuring the system

I installed Linux in the usual way. Make sure you add the “networking” category of packages to your software choices during installation. You’ll need a good chunk of the features in these packages, and you’ll want some of the others, such as the DHCP server.

After initial installation, you can configure services through the SuSE Linux configuration system—YaST. (Don’t ask me what that stands for—I’d guess “Yet Another...” something.) Fedora has its own methods, but all distributions use the network device configuration dialog paradigm. While our distributions of choice might be different, the concepts will be the same. Figure 2 shows the YaST main dialog with the Network Devices option highlighted.


=IMAGE=Screenshot-yastctrlnetdev.jpg=Figure 2: OpenSuSE YaST Network Devices panel=


<!--pagebreak-->


Both network cards were automatically detected and drivers for these cards were installed during the installation process. However, the way Linux detects hardware at each boot of the system, you could just as well install the operating system before installing the second network card. All detected network cards show up as either configured or not configured in the network device configuration dialog (see figure 3).


=IMAGE=Screenshot-netcardcfg.jpg=Figure 3: OpenSuSE YaST Network Devices configuration dialog=

OpenSuSE has a nice firewall package called SuSE Firewall. The firewall configuration option is found in OpenSuSE under the heading of security—not network services. The security option is shown in figure 4. Configuring a firewall is not as difficult as it may seem at first. Firewall software classifies each accessible segment of a network according to potential threat. Most firewalls have at least two classes: “Internal”—meaning trusted, and “External”, meaning untrusted.


=IMAGE=Screenshot-yastctrlsec.jpg=Figure 4: OpenSuSE YaST Security Services and Users configuration dialog=

A common third classification is referred to as “Demilitarized”, which is often used by gamers to get around common game connectivity issues caused by firewall security. Properly setting up a demilitarized zone generally requires a third network card in the router. Devices in the demilitarized zone (DMZ) exist outside of the firewall, and are thus unprotected. Nothing of value should be kept on these machines, as external users with malicious intent will be able to get into them with ease. Multiple machines can be installed into the demilitarized zone by connecting a multi-port concentrator to the router’s DMZ NIC.

Figure 5 shows the firewall configuration dialog with the interface configuration option selected. Configure the card connected to your external ISP connection as “external”. Initially, all inbound connection attempts will be stopped, keeping malicious attackers from gaining access to your network resources. Configure the card connected to your internal network concentrator as “internal”. This will allow computers on your home network to communicate freely with external public services. They can communicate freely with each other as well, but this is because they are connected to one another directly through the internal concentrator, and not because of any particular router configuration.


=IMAGE=Screenshot-fwifc.jpg=Figure 5: OpenSuSE YaST Firewall Interfaces configuration dialog=

While you’ve got this dialog open, select the “Masquerading” option from the option tree on the left. This will modify the dialog to look like the one in figure 6. Masquerading is a term used by GNU/Linux that refers to network address translation. Recall that this is the feature that allows the computers on your internal network to have private IP addresses on the reserved class B 192.168.0.0/16 network. You will want to enable masquerading so you don’t have to pay your ISP for multiple external addresses.


=IMAGE=Screenshot-fwmasq.jpg=Figure 6: OpenSuSE YaST Firewall Masquerading (NAT) option configuration dialog=

Figure 7 shows the YaST Network Services configuration panel. From here you’ll choose the “Router” option to configure the machine as a router. This produces a dialog similar to that shown in figure 8. The router configuration dialog allows you to specify your default gateway—this is the public IP address of another router on the external network, and is supplied by your ISP. Often, the last part of this IP address will be 1 or 254, though this is not a hard and fast rule. If your ISP insists that you use a DHCP provided public address, then the default gateway will be provided through DHCP, as well.


=IMAGE=Screenshot-yastctrlnetsrv.jpg=Figure 7: OpenSuSE YaST Network Services panel=

The router configuration dialog also allows you to specify one other significant item: IP Forwarding. IP Forwarding should be enabled because your machine is in fact a router. You want to allow packets to be forwarded from one network interface card to another within your machine (subject to the firewall rules, of course).


=IMAGE=Screenshot-routecfg.jpg=Figure 8: OpenSuSE YaST Router configuration dialog=

Configure your external network card with the IP address, network mask and default gateway provided to you by your ISP, as shown in figure 9. Your ISP will also provide you with two or three DNS server addresses. Make sure you configure these DNS addresses here as well by clicking on the “Hostname and Name Server” button under “Detailed Settings”. This will open a sub-dialog like that shown in figure 10.


=IMAGE=Screenshot-netaddrcfg.jpg=Figure 9: OpenSuSE YaST Network Address Setup dialog=

You may need to configure the external card to use _dynamic host configuration protocol_ (DHCP) on your provider’s network. This works just as well, but will disable your ability to configure public services on your router. I’ll cover these in more detail later. For now, just be aware that there are two ways to configure your public network card, dynamically using DHCP, or statically with a public or private IP address given to you by your ISP. Generally, when you are using DHCP, you will not have to configure DNS server addresses, as DNS server addresses can also be configured through DHCP.


=IMAGE=Screenshot-nethostcfg.jpg=Figure 10: OpenSuSE YaST Hostname and Name Server dialog=

Configure your internal network card with a static private address. I used 192.168.2.1, but any pair of values will do after the 192.168 portion. Whatever the third, or subnet value (1, 2, 10, 15, etc), I like to use 1 or 254 as the last value so I can remember it easily. (Why 254 and not 255—the last valid 8-bit value? Zero and 255 are reserved for special purposes in IP networks. Zero can’t be used because it confuses router software looking for CIDR specifications and network masks—it actually works sometimes, but it’s not worth the trouble of debugging the problem when it doesn’t work. The value 255 is reserved for broadcast address values.)

You might also want to configure a DHCP server at this time, and set it up to hand out additional private addresses to the machines on your internal network. Configuring a DHCP server is not always the smooth process that it probably should be, so just be aware that you don’t need to do this. You can configure each machine on your private network with static IP addresses also. Since my LinkSys gateway provided this feature for me, and I was trying to duplicate this functionality, I added a DHCP server, but you may want to do things differently.


<!--pagebreak-->



=ZOOM=By setting up remote administration, you will be able to disconnect the keyboard, mouse and monitor from your router once you have it configured the way you like=

Now would also be a good time to configure remote desktop administration on your router. Modern GNU/Linux remote administration is implemented with VNC (Virtual Network Computing), which allows you to open a window on another machine that contains a virtual desktop for your router. By setting up remote administration, you will be able to disconnect the keyboard, mouse and monitor from your router once you have it configured the way you like. You can just put the box in the wiring closet or basement and forget about it. Later, when you want to change configuration options on your router, just connect to it using VNC and it’s like you’re sitting in front of it. Remote administration is found under “Network Services” category in OpenSuSE YAST. Basically, you just need to turn it on. If you’re using Windows on the machine you’ll be using to access your router’s VNC desktop, then you’ll need to download a VNC client for Windows. The [Real VNC](http://www.realvnc.com) free package is as good as or better than any I’ve found, and is written by the folks who invented the VNC protocol.


# Filtering

The discussion of DHCP brings us to the last feature of my LinkSys gateway that I wanted to emulate—filtering. I don’t mean web content filtering as much as internet access filtering, although content filtering packages are available for installation on a Linux box, and this is one possible way to allow the kids access to the web, without worrying too much about what they see. I still worry however, even with content filtering because I know how content filters work—they’re either too restrictive, making the web experience frustrating at best, or they’re too loose, which is worse than useless because it provides users with a false sense of security, and they become cavalier about what they enter into search dialogs.

But back to access filtering. The primary reason I wanted to use Linux as my gateway was because my LinkSys box allows me to turn on or off the ability for specified computers to access the internet through my router—either all the time or during specified time periods. It even allows me to block certain sites. But it doesn’t allow me to deny all access _except_ certain sites. As I mentioned earlier, my kids’ machines are Windows machines. Windows tends to die slowly if constant downloadable updates are not applied to the operating system. Basically, I would like to grant access to microsoft.com for system updates, and to apple.com for my kid’s iTunes programs, but then deny access to everything else.

With GNU/Linux as your router, this sort of thing can be done. It’s fairly complicated, and can’t generally be done with graphical tools from the desktop, so I’ll leave it as an exercise for you to figure out machine-specific filtering by IP address or domain. Here’s a hint—checkout the iptables package, which is the standard Linux 2.6 kernel IP filtering package. It’s very powerful, and is used internally for many reasons by both Linux kernel and user-space programs. The iptables filtering package can be configured to filter internet access through the router based on the machine’s hardware MAC address, so you can still use DHCP to assign IP addresses dynamically, while ensuring that your kids’ machines don’t end up with too much internet freedom.


# Adding services to a publicly visible router

If your ISP is kind enough to give you a publicly visible external static IP address, then you can really begin to play with your router. I setup a mail server on my router. This allows me to use my own registered domain in my email address at home. For instance, if your name is Fred Saberhagan, you might acquire the saberhagan.com domain (often you can buy this service from your ISP for a minimal fee, but if not, then go to `http://www.whois.com` for more information on purchasing a domain name). Then your email address could be fred@saberhagan.com.

Another benefit of a publicly visible IP address is a web server. If you would like to administrate your own web server, you can enable Apache2 on your GNU/Linux router. Don’t forget, that your firewall is blocking nearly all inbound connections through the external network card on your router. You’ll have to go back into your firewall configuration dialog, and specifically add “smtp” for your mail server to the list of allowed connection types (smtp—simple mail transfer protocol—is actually a Unix service name, that implies a particular port number, in this case 25—the standard port number for email servers using the smtp protocol).


=ZOOM=Opening a port in a firewall need not be viewed with fear if you understand the potential dangers=

You can also add “http” and “https” for your web server. But be careful, the more ports you open up, the more vulnerable to attack you make yourself. Don’t take this to mean that you shouldn’t open these ports. They provide access to the services you want to make available to the public. Opening a port in a firewall need not be viewed with fear if you understand the potential dangers. If you want to provide a public service such as a web server, the idea is to find out how web servers can be attacked and protect yourself with proper access control management, not to fear it like you might fear some unknown virus strain. Every public web server on the internet has the potential to be hacked. But the owners of (most of) these sites are well aware of what attackers can do to their web site, and they’ve configured security for their site such that they are comfortable with the risk level. The Apache manual will help you out with the security learning curve.

Another service that can be opened in your firewall is remote desktop management—you can get at your VNC connection from an external site also. This is a bit more risky, and so you should only do it if you really need to. Furthermore, VNC is fairly bandwidth intensive, and you may find the experience a bit slow from outside your fast home network. For my part, I use SSH (Secure SHell) to access my router remotely, but you will need to become very familiar with the GNU/Linux command line in order to appreciate this form of access.


# Summary

This is a lot of stuff to remember, and I had to discover it all the hard way—one Google search at a time. You can keep this article around as a quick reference guide. If nothing else, at least it gives you a list of topics, a set of keywords, and a starting point for each critical feature on your router. Like all fairly complex software configuration procedures, the devil, as they say, is in the details, and you’ll likely have your share of issues specific to the hardware and GNU/Linux distribution you’ve chosen, but at least you’ll have the advantage of knowing the direction you should face when you fire your guns.

