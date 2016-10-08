---
nid: '2029'
title: 'Do we need an Ubuntu installer for Windows?'
authors: 'Jon Peck'
published: '2007-01-26 4:01:41'
tags: 'ubuntu,windows,installer'
license: verbatim_only
section: opinions
listed: 'true'

---
If you haven’t heard yet, there’s a new Ubuntu-oriented project that’s been making waves: [install.exe](https://wiki.ubuntu.com/install.exe). In short, it’s a way to install Ubuntu onto the same file system as Microsoft Windows without repartitioning your drive. Justifications include minimizing the risk of data loss during repartitioning, a more user-friendly installation process, and eliminating the need of burning a CD to install. However, is there truly a need for an Ubuntu installer for Windows?

On the surface, it sounds like a good idea. Avoiding repartitioning? Bringing Ubuntu to a larger, less technologically inclined audience? Making the installation process even simpler than it already is? These are all excellent ideas. However, I feel that there are many flaws with the concept that need to be considered.

One of the scenarios from the documentation is installing on a laptop without a CD drive. Their solution is to use their installer’s built-in BitTorrent client to get the necessary files without burning a CD. However, this doesn’t take into account networks where BitTorrent traffic is regulated, limited, or completely blocked to preserve quality of service for other users. Also, I'm having a hard time thinking of anyone I know who has a laptop without an internal optical drive who doesn't have an external one instead.

Another official scenario contains phrases like “Josh and his coworkers are employees at Microshaft Corporation who would like to use their favorite OS, Ubuntu, at work”. Unprofessional, snarky descriptions like that won’t win anyone over; if anything, it’ll turn people away. I hope that passages like this will be cleaned up in the near future.

The example continues to describe how install.exe allows for a clean installation in a corporate environment as it doesn’t affect the existing operating system. This is fundamentally flawed; in many corporate environments, employees are actively discouraged from deviating from the standard set of software for uniformity, security and ease of support.

Is it productive to have one employee using one product, and another using a different product, then troubleshooting compatibility issues? While products like OpenOffice.org offer excellent support of other common document types, not all packages are as compatible. What if the employee spends all afternoon fiddling with his alternate operating system and non-standard applications instead of getting work done? That’s lost productivity.

Finally, if an employee is allowed to install an alternate operating system with no centralized control, then the employer has tacitly allowed circumvention of any desktop security that has been developed to protect the company and privacy. A system administrator in a tightly controlled and secure environment would not allow this under any circumstances.

I’m not saying that alternate and diverse installations and operating systems are a bad thing; I work in an University environment, and diversity is the norm. Also, when appropriate, I actively propose and implement solutions that utilize free software in place of commercial software—using software like FileZilla, PuTTY and Audacity. What I am saying is that from a corporate perspective, the good of the group outweighs the needs of a few, and that using weaseling and excuses to find ways around rules or limitations is not good practice.

An [Ubuntu Blog brings up a good point](http://ubuntu.wordpress.com/2007/01/17/about-the-ubuntu-installer-for-windows/); why not just use a Live CD if you want to test an alternate operating system? It’s a mature, stable product. In addition, if you’re looking for a read-write system without altering the file system, try [LiveCDPersistence](https://help.ubuntu.com/community/LiveCDPersistence) and install to a pen drive. Is install.exe a viable alternative to a Live CD? I think it’s too early to say.

Some blogs and forums have been touting install.exe as a ready-to-go solution, even though it’s still a [prototype](https://wiki.ubuntu.com/install.exe/Prototype). It’s not ready for full deployment or release at this time, and users need to be more aware of that. One of its core functionalities, NTFS support comes from ntfs-3g, a read-write driver which is itself experimental. Bringing the product to a large audience is a good thing, but people will be turned off if they use an incomplete product when they’re expecting maturity and stability. I don’t feel that the misperception of its readiness is the developer’s fault; they’ve clearly labeled it as an incomplete, experimental partially-functioning prototype.

When the product is complete, I’d be interested in conversion statistics. Out of the people who try a finished release of install.exe, how many fully switched to a “real” Ubuntu installation on its own partition? Currently, there’s no easy way to migrate settings and software from an install.exe installation, but that may change in the future.

If progress continues as the developers have outlined, then install.exe has the potential to be a positive addition in the array of marketing tools for free software. While it may not be the universal solution to a problem that doesn’t really exist, it is another voice and set of hands that will help the free software community grow.

