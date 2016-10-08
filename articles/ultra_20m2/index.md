---
nid: '1806'
title: 'Sun Ultra 20 M2 review'
authors: 'Martin Brown'
published: '2007-06-06 6:30:00'
tags: 'hardware,workstations,sun,solaris,ultra-20m2'
issue: issue_18
license: verbatim_only
section: hacking
main_image: hide.jpg
listed: 'true'

---
When you are looking for a workstation or new desktop there are a seemingly infinite number of potential solutions available. So where do you start? Well if you are after a powerful AMD based computer then you might want to take a look at the Sun Ultra 20 M2, a workstation based around AMD Opteron 1200 dual-core CPU, and available at a surprisingly reasonable price.


# Workstation or desktop?

Historically from a Unix vendor like Sun, the workstation was the desktop equivalent of the big server (or servers) you had in the server room. Workstations were typically of two types. At the lower end of the scale was the workstation that was designed to operate on the same CPU and platform type as the rest of your Unix hardware and was designed as developer’s workstations so that they could build and test the software that would ultimately be executed on the company servers.

At the other end of the scale, the high-end workstations were designed to be used in environments where the real power was required, for example in engineering environments, computer aided design, fluid dynamics and 3D modeling (including many of the computer generated animated films we’ve seen recently).

For Sun, workstations of any type were based on the SPARC processor—I cut my teeth on a Sparc2 and later a Sparc10 and over the years have owned an IPC, Ultra5, Ultra1, and currently own an Ultra60, while having an Ultra 3 Mobile Workstation on test from Sun for more than the last year now (and I still love it, I don’t care how noisy it can be). SPARC was the standard, at least up until recently.

Today the market and environment have changed, the “big iron” servers are not always based on specialized CPUs like the SPARC series used by Sun. Today a number of the servers that run our internet systems and companies operate on the Intel/AMD platform, and the role of the desktop PC now stretches from the requirements of the typical desktop right through to the advanced workstation style environments that were the preserve of the custom Unix workstation.

SPARC is still a big part of the Sun hardware environment, and still powers their servers. With CPUs like the T1, which provides a higher number of cores and more simultaneous thread executions but at a lower clock cycle.


=ZOOM=When Sun started selling AMD based servers, it made sense for them to develop a workstation=

When Sun started selling AMD based servers, it made sense for them to develop a workstation that could solve the problem of the standard desktop PC and be scalable up to the workstation.


# The hardware

This is where the Ultra 20 fits in, and it manages to suit from the low-end, where the developers will appreciate the high power and low price, right up to providing support for professional level 3D graphics. The Ultra 20 M2 is the new incarnation that includes a dual-core AMD Opteron 1200 CPU. The unit I’ve had on test consists of a dual-core Opteron at 2.8GHz, 4GB of ECC RAM, a 250GB SATA hard drive and the top of the range NVidia Quadra FX video card.


=IMAGE=u20m2f1.jpg=Figure 1: The Ultra 20 M2’s clean design=

The Ultra 20 M2 will support up to 8GB of ECC RAM, and with a suitable 64-bit OS you’ll have full access to all the memory for your applications. Having that much memory on tap can be incredibly useful for applications like database development and 3D graphics, where the amount of RAM can be used to hold much more data in memory.

They were also kind enough to loan me a 20" LCD panel (a rebadged NEC unit—I already have one attached to the MacBook Pro). By using an AMD CPU, Sun have produced an interesting machine. Unlike SPARC based workstations which are limited in their operating system choices (basically Solaris or GNU/Linux), the AMD workstations are able to run a whole host of OS, including Solaris, GNU/Linux (SuSE and Red Hat are certified) and, of course, Windows.

With either of these latter two choices you could run your alternative OS at the same time as your host OS. Alternatively, you could just multi-boot into whatever you needed at the time. This makes the Ultra 20 M2 a wonderful choice if you are a developer who needs to develop on one these platforms, but still needs access to the corporate email service or applications.

The box itself is a full size tower case (see figure 1), but is quite a clean design, with only the CD drive, power button, headphone and some USB (six in total) and Firewire ports (two). There are also a full complement of high definition audio in/out ports, both on the front and back of the case.

Support is provided on the motherboard for one PCI Express x16 (taken up by the graphics card), an x16 slot wired as an x8 (and therefore suitable for a second graphics card, at a reduced rate), plus three conventional PCI slots. Two SATA hard disks are supported and you can take advantage of RAID 0/1 support (currently only in Microsoft Windows).

Finally, the motherboard provides two Gigabit ethernet interfaces. I’ve used these ports simultaneously, first to provide connectivity to the network, and provide a test interface to the T1000 I currently have on test. I’ve been able to keep both ports at full capacity with various tests.

Inside the case (see figure 2) you’ll find a similar clean design to the outside—there’s a massive amount of space in the case, which means you could add a couple of full size PCI cards and fill up on hard drives and still the case wouldn’t feel cramped. Right in the middle of the motherboard is one of the largest heatsinks I’ve ever seen on a commercial PC system from a mainstream vendor. It’s small compared to the heatsinks on the T1000 or T2000 CPU, but still impressive.

All that space in the case means that the airflow is efficient. There are a number of fans on the case, and at full blast the workstation is almost as noisy as the T1000. In normal use though, it’s hard to identify among the other noises in the room whether the machine is on or not. Given that fan noise can be one of the more annoying aspects of the modern computer, it’s nice to see that Ultra 20 M2 is both quiet and effective.


=ZOOM=Right in the middle of the motherboard is one of the largest heatsinks I’ve ever seen=


=IMAGE=u20m2f2.jpg=Figure 2: Inside the Ultra 20 M2=


<!--pagebreak-->


Just don’t expect that peace to last if you provide it with a big complicated processing job, those fans can kick in with a jolt that wakes you up.


# Operating system support

As with any Intel/AMD based PC the range of operating systems supported is suitably large, including Sun’s own Solaris 10 or OpenSolaris, GNU/Linux, BSD and many others. Sun officially provide drivers for the Red Hat Enterprise Linux, SUSE Linux Enterprise Server/Desktop and Microsoft Windows. I tried Solaris, Red Hat, SUSE and Windows on this machine.

It should be fairly self-evident that Sun’s own Solaris is the preferred solution for the machine. The unit came installed with everything working, but I’ve had to wait for a few revisions of the driver CD to replicate this situation on later installations. Version 1.5 of the CD seems to work fine.

I’m a big fan of Solaris, and have been since I started using it 15 years ago. The latest incarnation, Solaris 10, includes some significant improvements, including improved network performance (a feature I’ve been able to take advantage of during testing), support for Solaris Containers (virtualized operating system units), and a host of improvements in the desktop environment for those people using Solaris as their main computer.

Using Solaris also enables you to take advantage of the bundled software, which includes Sun Java Studio Creator 2, Sun Java Studio Enterprise, the NetBeans IDE and Sun Studio 11. This is a rich combination, ideal for those users developing Java applications, and, with Sun Studio 11, C/C++ and Fortran applications. I’ve been using Sun Studio 11 for a while now and have found it a excellent alternative to GNU gcc.

Of course, since Solaris is one of the oldest Unix variants, you can download and install a host of other applications, including all the GNU tools, Firefox, Thunderbird, MySQL, PostgreSQL, and many others. Some of these are provided as standard, and others are available on a CD provided with the machine. I haven’t had any trouble manually building any of the typical free software solutions for use on Solaris either, and there are many sites, such as SunFreeware and Blastwave that will provide these solutions for you if you want them.

Beyond Solaris, I was impressed with the level of support when using both the Red Hat and SUSE Linux variants. The drivers that Sun supplied provide enhanced video driver support that make X fly. I have to admit to not being a regular user of either distribution—I use Gentoo or Kubuntu by choice—but I ran both distributions for over a month while doing a variety of tasks, from software development, through web site developing (including testing a deployment that uses the LAMP stack) and more general web browsing and writing duties.


=ZOOM=Beyond Solaris, I was impressed by both the Red Hat and SUSE Linux variants=

The only issue I came across was a small problem with Red Hat not always shutting down properly. SUSE didn’t seem to exhibit the same problem, so I don’t take this as an indication of a fault with the box.

Running Microsoft Windows was also impressive, especially when taking full advantage of the fast graphics card and trying out some 3D software and the occasional game. The ability to run Windows, especially as a dual- or multi-boot system with your other OS of choice is a big advantage.


# Performance

Measuring performance is an art of course, and I decided to look at the performance in two different ways. The first is by using a standardized performance measuring tool (GeekBench), and the second is just to look at the machine in terms of how it feels and runs in use.


## Geekbench results

The Geekbench performance measuring tool has a key advantage over many of the other tools available in that it is designed to test a range of functionality and is able to do this in a standardized method across many different operating systems. This can be useful, not only to compare different machines, but also to compare different operating systems on the same machine.

I decided to try the Ultra 20 M2 with Windows XP, Solaris and Red Hat Enterprise Linux. I also compared this to a 24” iMac (with the T7600, 2.33GHz CPU) running Mac OS X.

I ran the tests 10 times and then took an average of the results. The overall scores were as follows:


 | | | | |
-|-|-|-|-|
Machine | Platform | Avg. Score | Low | High | 
Ultra 20 M2 | Solaris | 272.08 | 270.1 | 273.1 | 
Ultra 20 M2 | Red Hat EL | 252.35 | 250.73 | 253.51 | 
Ultra 20 M2 | Windows | 289.68 | 282.3 | 291.7 | 
iMac | OS X | 245.75 | 243.0 | 249.4 | 

=TABLE_CAPTION=GeekBench results=


<!--pagebreak-->


Basically, pretty quick. If you use the Geekbench Results Browser you can see the Windows result is right up there at the top, even beating out a Pentium D, and, in fact, even the iMac beats the Pentium D on the overall tests. If you want the full results, use the GeekBench Results Browser to get an idea.


=ZOOM=Basically, pretty quick=

What is interesting is the performance difference between the different operating systems. The GeekBench team will tell you that this is due to differences in the way each OS handles different elements.

All the results are within 7% of each other overall, and the basic impression you should get from these results is that the machine is very quick.


## General use

Hard numbers and statistics aside, what is really important with a workstation like this is what it feels like in general use. I’ve been working with the machine now for more than 4 months and I’ve used it for everything from writing documentation (using OxygenXML, an entirely Java based XML editor), as a development environment for a Perl/Apache based web project, and using Eclipse and Sun’s own Java Studio.


=IMAGE=u20m2f3.jpg=Figure 3: Ultra 20 M2 and Monitor=

I tried the same systems and operations in all the operating systems I tried and not once experienced any problems. Building and compiling applications is quick, whether they are Java or C/C++ based, and the dual cores mean that the machine stays responsive throughout.

In some of the more detailed experiments I tried running two different compilations simultaneously (running both MySQL 5.0 and 5.1 builds at the same for example), and I was still able to continue web browsing, email and even writing documentation without any problems.

In all other situations it’s hard to find fault with the machine on a performance perspective.


# Conclusion

Sun have managed to produce a very good machine in the Ultra 20 M2. It’s fast and capable, and has a good range of hardware ports and support. As a full 64-bit workstation it is hard to fault, especially when you consider that prices start just US$845 for a basic dual-core model.

With support for the four main operating systems, including Sun’s own Solaris, two GNU/Linux variants (with full driver support) and Windows (with added RAID support), this machine would be a great workstation for the typical developer or engineer who wants to use their OS of choice and the modern required alternatives like Windows. Not one of the OSes I tried had any problems, and although it’s targeted as a Solaris workstation, it would be just as happy running GNU/Linux or Windows all day.

That’s not to say that there aren’t some faults and room for improvement. With only four DIMM slots, and RAM officially limited to 8GB, some users will be frustrated by the limitations. Also, the limited PCI express expansion could be an issue, especially if you wanted to take full advantage of dual graphics card solutions.

These are really niggles though, rather than serious faults, and don’t let these be reasons for you to rule out purchasing what is otherwise a very capable solution to 64-bit computing.
