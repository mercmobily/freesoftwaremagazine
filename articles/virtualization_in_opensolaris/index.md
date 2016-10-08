---
nid: '2450'
title: 'Virtualization in OpenSolaris'
authors: 'Rami Rosen'
published: '2007-10-29 10:46:35'
tags: 'virtualization,opensolaris'
issue: issue_20
license: verbatim_only
section: hacking
listed: 'true'

---
Recently there’s been a lot of news about OpenSolaris, more specifically in reference to the great progress made by virtualization technologies in it. In this article, I will exam some of these technologies, and compare them with the state of the art on other platforms. 


# Zones

OpenSolaris’ Zones is a mechanism that provides isolated environments with a subset of the host operating system’s privileges, allowing applications to run within the zone without any modifications (Xen is also capable of this). This makes zones useful for server consolidation, load balancing and much more.

Each zone has a numeric ID and a unique name; the global zone has ID 0, is always running and cannot be halted. There are two user space tools for zone configuration, creation and management: `zonecfg` and `zoneadm`; these tools use a lightweight IPC (Inter Process Communication) mechanism called _doors_ to communicate with the kernel, which is implemented as a virtual file system (`doorfs`). When using _doors_, context switches are executed using a unique synchronization mechanism called _shuttle_, instead of through the kernel dispatcher; this allows faster transfer of control between kernel threads.

I should mention that Linux does not have a doors IPC system, though there was an attempt to write one by Nikita Danilov in 2001; this project can be found on [sourgeforge.net (Doors for Linux)](http://sourceforge.net/projects/ldoor/).

Some operations are not allowed in a zone: `mknod` from inside a zone, for example, will return `mknod: Not owner`; the creation of raw sockets is also prohibited, with the one exception of `socket(AF_INET,SOCK_RAW,IPPROTO_ICMP)` (which is permitted in order to allow zones to perform ping). It’s worth noting that zones can modify the attributes of a device (such as its permissions) but can not rename it.

All zoneadmd daemons run in the global zone, and each zone has a zoneadmd process (used for state transitions) assigned to it. When dealing with zones other than the global zone, processes running in one zone cannot affect or see processes in other zones: they can affect or see only processes within their own zone.

A zone can be in one of the following states: configured, installed, ready, running, shutting down or down.


* Configured: configuration was completed and committed
* Installed: the packages have been successfully installed
* Ready: the virtual platform has been established
* Running: the zone booted successfully and is now running
* Shutting down: the zone is in the process of shutting down
* Down: the zone has completed the shut down process and is down


=IMAGE=ZonesStateMachine.jpg=Figure 1: Zones State Machine=

Another interesting feature of zones is that they can be bound to a resource pool; _Solaris Containers_ is the name for zones which use resource management.


# Branded Zones

Branded Zones enable you to create non-global zones which contain foreign operating environments. The _lx_ brand provides a Linux environment under Solaris, which can be created with zonecfg using the `set brand=lx` option when configuring with the zonecfg command.

The lx zone only supports user level applications; therefore, you cannot use Linux device drivers or kernel modules–including file systems—in an lx zone. Implementing lx zones required a lot of additions and modifications: for example, executing an ELF binary in an lx zone is performed by the lx brand ELF handler. In Linux, system calls are made by calling `interrupt 0x80`, whereas Solaris usually uses `sysenter` or `syscall` instructions for a system call on x86, while in earlier versions it was done with `lcall` instructions (in Sparc, system calls are initiated by traps). Since Solaris did not have a handler for `interrupt 0x80`, the Brandz project was started to add such a handler; this handler, in fact, simply delegates the call to the handler in the brand module, where it is eventually executed. The lx brand is available only for i386/x86_64 systems: you cannot run Linux applications on SPARC using the lx brand. You will often encounter the term “Solaris Containers for Linux Applications” or the acronym “SCLA” as a synonym to branded lx zones.

The branded zone was integrated into the mainline Solaris tree in December 2006 ([OpenSolaris brandZ project](http://www.opensolaris.org/os/community/brandz/).)


<!--pagebreak-->



# CrossBow and IP Instances

CrossBow is a new OpenSolaris virtualization networking project that allows you to create multiple virtual NICs (VNICs) from a single physical nic. It also enables you to control QoS parameters making it possible to assign specific bandwidth allocations and provide different priorities to each virtual nic, protocol, or service. This can be done by a system administrator (with the `dladm` and `flowadm` commands) or by an application using `setsockopt()`. CrossBow is ideal for server consolidation, the isolation of Solaris Zones, tuning a system’s network resources, enhancing security (in the case of a distributed denial of service attack, for example, only the attacked vnic will be impacted instead of the entire system), and much more.

Here is an example for setting vnic bandwidth:


=CODE_START=

dladm create-vnic -d bge0 -m 00:01:02:03:04:05 -b 10000

=CODE_END=

`dladm` is a utility which administers data links.

The network virtualization layer in CrossBow was implemented by changes made to the MAC layer, and by adding a new VNIC pseudo driver. The VNIC pseudo driver appears in the system as if it were a regular network driver, allowing you to run the usual commands (i.e. `plumb` and `snoop`). The VNIC pseudo driver was implemented as a Nemo/GLDv3 MAC driver and it relies on hardware-based flow classification.

IP instances are part of the CrossBow project that uses the flow classification feature of NICs, but also has a solution for NICs without this feature; in the future, almost all 1GB and 10GB NICs will support flow classification. With IP instances, each zone can have its own instance of the kernel TCP/IP stack: each zone will also have its own ARP table and its own IP routing table, IP filter rules table and pfhooks (pfhooks is the OpenSolaris equivalent of Linux’s nfhooks or Netfilter hooks). IP instances also enable zones to use DHCP, IPMP and IPSec (IP Security protocol, which is used in VPNs), with each zone having its own IPSec Security Policy Database (SPD) and Security Association (SA). In order to implement IP instances, all global data in the kernel TCP/IP stack which might be modified during runtime, was made non-global. For example, a new structure named ip_stack was created for the IP kernel layer, (layer 3 in the 7 layer model, the network layer); a new structure named `udp_stack` was created for the UDP kernel layer (layer 4 in the 7 layer model, transport layer) and so on. Using IP instances, non-global zones can apply IP filter rules (IP filter is the OpenSolaris equivalent of IP tables in Linux); prior to the CrossBow and IP instances project, this was impossible. IP instances are enabled with `set ip-type=exclusive` when creating a zone with zonecfg. A non-global zone created without this option will, of course, share its IP instance with the global zone (as was the case before the integration of the IP Instances project). See [OpenSolaris Crossbow project](http://www.opensolaris.org/os/project/crossbow/) for more information.


# Xen

Xen in OpenSolaris is a port of the Linux Xen project. It enables us to run OpenSolaris as domain 0 or OpenSolaris as a guest (domU). The last update to the Xen project, as for today, was in July 2007. There is HVM support in OpenSolaris Xen; this means that if you have processors with virtualization extensions, you can run unmodified operating systems as guests.

The Xen project uses virtual NICs from the CrossBow Project, which is discussed in the previous section. There is also support for management tools (`virt-manager`, `virt-install` and `virsh`). For more information about Xen, see:


* [OpenSolaris Xen project](http://www.opensolaris.org/os/community/xen/)
* [Linux Xen project](http://www.cl.cam.ac.uk/research/srg/netos/xen/)
* [Virtual Machine Manager project](http://virt-manager.et.redhat.com/)

A new platform called i86xpv was prepared for Xen; You can verify that you booted into Xen by running `uname -i` (you should get i86xpv)

New features include PAE for 32 bit Solaris, Xen crash dumps for dom0, better integration with other Solaris network virtualization projects, and more.


=IMAGE=virtmanager.jpg=Figure 2: virt-manager in solaris=


# Conclusion

In this article, I showed the current state of the art of some interesting virtualization techniques in OpenSolaris, many of which enable you to use our hardware more efficiently. It seems that OpenSolaris made a great effort in this field, and is now the same abilities to other modern OSes, along with some nice extras.

