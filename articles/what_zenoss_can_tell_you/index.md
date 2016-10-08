---
nid: '2931'
title: 'What Zenoss can tell you'
authors: 'Terry Hancock'
published: '2008-07-15 5:28:49'
tags: 'nfs,zenoss,cpu,load-average'
license: verbatim_only
listed: 'true'
book: network_monitoring_with_zenoss
book_weight: '-2'
layout: book.html

---
Zenoss is extremely configurable, so it can probably be set up to tell you just about anything you want to know about the computers you are monitoring. I'm just going to go through some of the things I personally was most interested in for my LAN computers, and then for my web server.

<!--break-->

## How are those NFS mounts holding up?

My Network File System (NFS) mounts have always been a little shaky: partly because the network itself is a bit slow, and partly because it appears that the servers are underpowered to do the job. One oddity you may have noticed is that two NFS mounts (in fact, the largest ones) are on the kids' computer. This is because it is a newer system and supports the 500 GB hard drive they are on, while the older file server doesn't. Oops. A commercial admin would fix this by buying new hardware, but we can't afford it, so for the present, it stays like this. This creates some problems, for example, when we are trying to access a multimedia file on the `/art` partition while my son is trying to play `bzflag` (which is a big hit on both the network and the CPU).

## Ack! No disk space!

There are few things more disturbing to users than to attempt to log into the computer and be bounced right back out to the login prompt. Yet, this is precisely what happens if the `/home` partition fills up: with no space left on the drive, the shell can't write temporary files it normally does on login, and the result is that you can't log in (unless you're `root`).

So, obviously it would be good to get a warning about systems where this is about to happen. Similar failures of the `/`, `/var`, `/tmp`, or `/usr` drives are not as catastrophic, but are by the same token more insidious. As a result, I long ago adopted the practice of doing a `df` to check disk usage as a first step whenever _anything_ mysterious goes wrong on a system. Surprisingly often, this leads right to the source of the problem.

So I have configured SNMP on my LAN machines to report nearly-full disks, particularly on the `/home` and `/var` drives where this is most likely to happen. The `/home` drive usually fills due to user activities, like excessive downloading; while `/var` most often fills due to runaway log files or cache directories. Whatever the reason, disk fill warnings are useful. Figure 15 shows what a disk warning looks like on one of my computers.

=IMAGE=dumbledore_events_freespace_warning_20080704.jpg=Figure 15: Dumbledore events, showing disk fill warnings=

If you want to look at the trend in the fill of a given drive, Zenoss can also generate graphics for that, such as the one in Figure 16.

=IMAGE=dumbledore_home_fill_graph.jpg=Figure 16: Fill status of a /home partition over time=

## Are we going to need new computers?

Somewhat more subtle is the question of how hard the computers are working: do we have enough CPU power for the job, or do we need to upgrade to handle the workload? The best way to monitor this is probably to look at the performance graphs, particularly the "load averages". These are measures of how much of a backlog the CPU has to get through at a given time. Figure 17 shows some of the performance graphs on one of my computers.

=IMAGE=dumbledore_perf_graphs_1_20080704.jpg=Figure 17: System performance graphics provides a view on CPU and memory use=

## Is my web server working?

Looking at the OS tab of the device page for my web server, I can see at a glance whether HTTP service is up and running. Figure 18 shows the OS report for my service with the HTTP daemon working properly. The SMTP daemon was showing a problem because it was running somewhat slowly, resulting in timeouts (I later fixed this by using the zProperties tab mentioned earlier to increase the `zCommandCommandTimeout` setting).

=IMAGE=narya_net_os_report.jpg=Figure 18: OS Report for remote web host, based on the SSH/Command model=

Additionally, Figure 19 shows the CPU utilization report for the web server. It's the same information as was gathered by SNMP for the same report for my LAN computers.

=IMAGE=narya_net_performance_data_viassh_zenplugins.jpg=Figure 19: Performance data from web server=

## Eye candy

If you have a flash animation plugin in your browser, Zenoss can generate a graphical network topology diagram for your network. For large networks this is probably of some practical use, although it qualifies as little more than eye candy for a network as small as my LAN. Still, it does look nice (Figure 20).

=IMAGE=network_map_flash_dwg.jpg=Figure 20: Flash animated representation of LAN=

