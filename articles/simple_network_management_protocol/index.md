---
nid: '2928'
title: 'Simple Network Management Protocol'
authors: 'Terry Hancock'
published: '2008-07-15 4:37:44'
tags: 'zenoss,snmp,network-monitoring,lan'
license: verbatim_only
listed: 'true'
book: network_monitoring_with_zenoss
book_weight: '-8'
layout: book.html

---
The hardest part of the learning curve for me, was learning about SNMP, the "Simple Network Management Protocol". Zenoss, like most network monitoring services relies heavily on this technology, which apparently dates back to the late 1980s, even though I'd never heard of it.

The essence of SNMP is that it is a daemon that you install on all the computers you want to monitor (apparently some network appliances have SNMP already installed, though not mine). It provides a simple internet query service which can report status information about the computer to the monitoring computer (lots of stuff, ranging from how hard the CPU is working, to how much space is available on all the hard drives, to whether certain processes are running).

Or in fact, any other computer that knows the "community string"—a password-like value that is passed clear-text to the SNMP server, and as a result isn't terribly secure. This is SNMP version 1; there also have been SNMP versions 2, 2c, 2u, 2*, and lately there is a version 3. The most popular SNMP implementation for GNU/Linux is Net-SNMP, which supports the v1, v2c, and v3 protocols. Only the version 3 sets up user/password authentication, and it is trickier to set up (and remember, this is the part that has to be set up on each computer). So for those of us who are lazy, "community-based" authentication will probably have to do.

On my LAN computers, all of which are running Debian GNU/Linux, this was quite easy to install with `apt-get`:

=CODE_START=
# su root
...
# apt-get install snmp snmpd
=CODE_END=

I'm sure that most other distributions will also have appropriate packages for SNMP. These are very mature programs.

_Configuring_ SNMP to do what I wanted was a little trickier—I'll come back to that part.

=IMAGE=snmpconf_washuchan_01.jpg=Figure 4: Debian's snmp package includes a configuration program called snmpconf which I found helpful (even though the configuration file is simple enough to just edit by hand)=

For most application, Zenoss will essentially act as a client, accessing the SNMP servers to collect information and fit it to its own internal model of the computers' states. The Zenoss manuals call this fitting process "modelling" (although that is somewhat peculiar usage, since "modelling" usually means coming up with the model in the first place, not fitting an existing model to empirical data). For the most part, it is assumed that this modelling is based on data from SNMP queries.

## Setting Up LAN Computers for Monitoring (Configuring SNMP)

As part of the `snmp` package, Debian includes a utility called "`snmpconf`" which can be used to generate the `snmpd.conf` file which the `snmpd` SNMP daemon uses for configuration. In Debian, this file will be located at `/etc/snmp/snmpd.conf`. There may be slight variations on this in other distributions (`/etc/snmpd.conf' is another likely location, for example).

This script is probably the easiest way to generate your first configuration file, although you could probably just edit it in a text editor and get very similar results, as the file itself is not complex (in fact, in my Debian install it is mostly comment text explaining the various options). The script will keep things simple by asking you a series of questions via a series of menus. Figure 5 shows what the script looked like for one of my systems.

=IMAGE=snmpconf_washuchan_03.jpg=Figure 5: Configuring SNMP with snmpconf=

## Things to monitor

[Load averages](http://en.wikipedia.org/wiki/Load_%28computing%29) are a useful way of seeing how busy the CPU is. I set up this system to generate an error condition if the load rises above 2.0 for fifteen minutes (meaning the CPU schedule is backlogged by about 50%), above 3.0 for five minutes, or above 5.0 for one minute.

A common problem on systems with limited disk space (or whose users consume disk space very aggressively), is that the `/home` partition fills up. This makes it impossible to log in, which can result in much screaming from the aforementioned users. So, another useful thing to monitor is the disk fill—I'd like to get a warning whenever a system's `/home` partition has less than 5% of its space remaining (being somewhat of a traditionalist when it comes to filesystem partitions, I always put the `/`, `/home`, `/usr`, `/var`, and `/tmp` drives on separate logical partitions so as to maintain a "separation of concerns" with file storage—so it's very rare that `/home` fills up due to any system processes, which typical run into their ceiling on the `/var` partition).

Problems with `/var`, `/usr`, or `/` generally result in more subtle, but still undesirable behavior. In fact, you could argue that, since they are less likely to result in a catastrophic failure, they are more likely to go unnoticed, so they are even more important to monitor. So I put watches on those as well.

In the end, I wound up with a very simple `snmpd.conf` file (minus the extensive comment blocks):

=CODE_START=
syslocation  Bedroom
rocommunity  FSM_ZenOSS
disk  /home 10%
disk  /var 10%
disk  /tmp 2%
disk  / 1%
disk  /usr 1%
load  5.0 3.0 2.0
=CODE_END=

The most important thing here, and the only one we strictly need is the `rocommunity` line which specifies the community identification string that will be used to get information from my SNMP servers (rest assured, I changed it after writing this article!). Everything else is configuration information for what SNMP should report: disk fills, load average, and a string identifying the system's physical location (I suspect this isn't quite what it was intended for, but it'll do for me).
