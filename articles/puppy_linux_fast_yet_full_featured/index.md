---
nid: '2357'
title: 'This puppy rocks!'
authors: 'Howard Fosdick'
published: '2007-09-17 4:33:32'
tags: 'gnu/linux,distributions,puppy-linux,puppy'
issue: issue_19
license: verbatim_only
section: opinions
listed: 'true'

---
Fast, small, lightweight—and still a full-featured GNU/Linux: _Puppy Linux_ combines a complete set of applications with great flexibility, yet it requires minimal hardware. This article introduces this increasingly popular GNU/Linux distribution.


<!--break-->



# Which GNU/Linux?

The GNU/Linux operating system comes in [hundreds of flavors or distributions](http://www.distrowatch.com). All are essentially different packaging of the same base software, assembled and adapted for different purposes. Among the features that distinguish the many distros are the user interface, bundled applications, tools, system requirements, and the methods for installing the basic system and additional applications.

Each GNU/Linux distribution has its own personality and strengths. Puppy Linux offers a full-featured, high performance system that doesn’t require state of the art hardware. [Puppy’s goals](http://www.puppyos.com/) aim at creating a distribution that:


* contains all the applications needed for daily use
* has good performance
* requires minimal system resources
* is highly reliable—“it just works”
* is easy to install and boot from any allowable media (hard disk, flash drives, USB devices, CDs, DVDs, CD/RWs, Zip disks, the network card, et al)
* Easy to use

Read this list carefully and you’ll notice that the third goal directly conflicts with the first two. How can a system offer all the applications most users need, perform well, and still run on low end hardware? Puppy’s solution to this paradox underlies its success.

Puppy is not based on any other GNU/Linux distribution. It is not a “remastered” version of some other GNU/Linux. It was created, file by file, from scratch several years ago specifically to meet the goals above. And so it attains them.

I will discuss Puppy in terms of its goals. Before I start, one note: there are several versions of Puppy as well as a number of derivatives called _Puplets_. This discussion represents them all.


# Applications

Puppy’s primary goal is to include all the applications users normally require, be easy to use, and still perform well even on limited hardware. How can it do _that_?

Part of the answer lies in its selection of applications. Puppy includes [programs for every need](http://www.puppyos.com/)—but it carefully picks those that are the most resource efficient. These include everything from office applications to personal information management, from multimedia to web access, from networking to instant messaging. The sample Puppy screens in figures 1 and 2 show various apps being accessed.


=IMAGE=figure_1_puppy_apps_screen.jpg=Figure 1: Accessing Puppy’s Mulimedia Applications=


=IMAGE=figure_2_puppy_apps_screen.jpg=Figure 2: Some of Puppy’s Utilities=

At every turn, Puppy chooses small, lightweight applications. For example, for office work the system includes the _Abiword_ word processor, the _Gnumeric_ spreadsheet, and _GsView_ to display PDF and Postscript files. These applications meet the needs of most users, yet they are _way_ more resource efficient than their Microsoft Office and OpenOffice.org alternatives. Since they are file format compatible with these competing applications, they make reasonable replacements.

Here’s another example of this principle at work. The default browser Puppy uses, called [Dillo](http://www.dillo.org/), runs in only 350 kilobytes. Contrast this to current versions of Internet Explorer or Firefox, which can easily consume many megabytes of memory. Yet for most users’ needs Dillo works just fine. If for some reason you prefer some other browser, you can easily add Firefox, SeaMonkey, Mozilla, Opera, Flock, or almost any other browser. Get the idea?

The major difference between Puppy Linux and its derivatives are in the area of bundled applications. Various Puplets add specific applications like OpenOffice.org, Skype, Firefox, Apache, or many others. I sometimes configure PCs donated to charity, and I’ve found it easy to select a version or derivative of Puppy that bundles the required applications. Check out the apps included in the various Puplets [here](http://puppylinux.org/user/downloads.php?cat_id=2) and [here](http://puppylinux.org/user/downloads.php?cat_id=3).


# Adding applications

Beyond the included applications, a key difference among GNU/Linux distributions is how easy it is to add extra applications to the base system. Can applications be downloaded and installed automatically? Almost any GNU/Linux—including Puppy—allows you to download and compile applications from source code, but most users don’t have the time or the expertise for this. A _package manager_ makes installing additional applications infinitely easier.

Another important factor is how many easily-installed applications are available. A package manager is only as valuable as the apps it can install. A large pool of applications from which to select means greater value.

Puppy’s package manager is called [PETget](http://www.puppyos.com/development/package-management.htm). Figure 3 shows its main interface panel. Simply select the apps you want to install and tell whether you are installing them from the Puppy Live CD or from the internet. The software does the rest.


=IMAGE=figure_3_petget_package_manager.jpg=Figure 3: Adding applications with PETget=

PETget also installs many packages outside the official Puppy distribution. These packages are put together by the Puppy community and are often referred to as _DotPups_.

The official Puppy Live CD distribution includes over 500 packages. DotPups add another couple of hundred (see [here](http://www.puppylinux.org/wikka/DotPups) and [here](http://puppylinux.org/wikka/PuppyLinuxMainPage)). The result is that PETget easily installs any mainstream GNU/Linux application.

You can create your own customized version of Puppy Linux using a tool called [Puppy Unleashed](http://www.puppyos.com/puppy-unleashed.htm). With it you create your own Puppy _live CD_ (a bootable CD) with the applications you select from its 500 packages. This way you can quickly customize Puppy into your own version for your organization.


# Performance

One secret to Puppy’s performance is its careful selection of lean but mean applications. The other is that Puppy runs everything from memory. The operating system and applications reside in RAM and run from there. Memory access is orders of magnitude faster than disk access so running everything from RAM coaxes reasonable performance even from underpowered computers.

For example, [this web page](http://www.puppyos.com/olpc/) lists start-up times for Puppy running on a 433MHz PC. The PC has only 128MB of RAM and a 128MB compact flash card, and no hard drive (Puppy knows to minimize writes to the flash device to prolong its life). _Most applications start in less than a second on this PC._ Here are timings for some of the bigger, slower applications as listed on that web page:


 | | |
-|-|-|
Application | First start (seconds) | Subsequent starts (seconds) | 
Mozilla Seamonkey web browser  | 12(once installed)  | 6 | 
Inkscape graphics editor  | 10 | 8 | 
Abiword word processor  | 5 | 5 | 
Gnumeric spreadsheet  | 3 | 3 | 
Gxine media player  | 2 | 2 | 
Geany code editor/IDE  | 2 | 2 | 

=TABLE_CAPTION=Start-up times for applications=


<!--pagebreak-->


These statistics verify my experience with Puppy’s responsiveness on a variety of old systems. I’ve installed different Puppy releases on about a dozen older machines ranging down to Pentium IIs and all performed well. They were also easy for clients to use and included all the required applications.

For example, [this article](http://www.freesoftwaremagazine.com/articles/free_computing) describes my experience installing Puppy on a discarded 550MHz Pentium III. That old machine runs Puppy applications about as fast as my 2.6GHz Celeron runs many Windows XP and Red Hat Enterprise Linux apps. It makes you think, doesn’t it?

The complete Puppy download ranges from about 28MB up to 95MB, depending on the release. This is much less than GNU/Linux systems that are not optimized for low end hardware, which typically require at least a 700MB CD. Puppy achieves its small footprint both through its selection of small, space efficient applications and by compressing its files. Puppy’s automatic compression and expansion of its files is transparent to the user.

Puppy needs from 128MB to 320MB to run fully in memory, depending on the version. Puppy runs on computers with less memory but is slower because then disk access is required. So with only 128MB of memory you get a responsive system when using Puppy.


# Flexibility

A good way to try Puppy and see if it meets your needs is simply to [download the live CD software](http://puppylinux.com/download/downpage.htm), burn it to a CD disc, and then boot it. You can try out the product and it will not change anything on your system. When you burn the live CD software to CD disc, be sure to direct your CD burning software to create an “ISO disk”, “disk image” or “bootable disk”. (Options like “data disk”, “audio disk” or “video disk” will not boot.)

If you decide you like Puppy, you have many options for how to use it going forward. Continue to boot off the CD, and tell Puppy to save your session to a hard disk file. This saves your preferences across sessions. It even saves any new applications you installed during your session. Puppy saves the information in a file it writes to any existing Windows or GNU/Linux partition. (This includes Windows NTFS partitions.)

Alternatively, you can install Puppy to hard disk, USB device, flash drive, zip drive, CD, DVD, CD/RW, or whatever else your machine will boot from. The _Puppy Universal Installer_ makes this process simple.

The option I especially like is called a [frugal disk install](http://www.puppylinux.com/hard-puppy.htm). To do this you just copy four files from the Puppy Live CD to any existing disk partition. You can copy the files manually or let Puppy do it for you from a menu selection. Puppy’s files consume about 600MB of disk space.

Place these files in any Windows or GNU/Linux hard disk partition. Then you can run Puppy from there. No need to tangle with disk partitioning or risk your previously installed software. For example, on some machines I placed the Puppy files in a Red Hat Linux partition. Then I added a few simple lines to Red Hat’s boot loader file (the Linux GRUB utility) to include Puppy in the list of operating systems I can select from when the PC boots. I didn’t have to repartition the hard drive to set this up, and Puppy boots much faster off the hard drive than it did off the old slow CD drives.

Puppy is as flexible in booting and as generous in co-existence with other operating systems as anything you’ll find.


# Should you adopt a Puppy?

Every GNU/Linux distribution presents its own advantages and unique personality. Puppy is superior as a full-featured yet lightweight product. It doesn’t compete with the “large GNU/Linuxes” like Ubuntu, PCLinuxOS or Red Hat, but rather creates its own category of product. Neither is Puppy intended as a “business GNU/Linux” for IT customers who require support contracts, regular product upgrades, and a large development community. Puppy addresses the needs of millions of PC users who want an easy-to-use, reliable system with good online community and support.

Puppy brings new life to old PCs and makes them useful again. And it really flies on newer PCs that ship with bloated Windows systems! Puppy comes in several versions so you can pick the one that meets your needs, or you can download standard Puppy and easily add or delete apps via the PETget package manager. You can even master your own customized version with Puppy Unleashed.

Puppy’s default user interface will make anyone familiar with Windows feel right at home. Anyone can start using the product with minimal training.

Puppy features thorough online documentation, though it sometimes lags behind the fast-moving product. The keys to Puppy’s support are its two forums [here](http://www.murga-linux.com/puppy/) and [here](http://www.linuxquestions.org/questions/forumdisplay.php?f=71). Having participated in numerous online communities, I’ve found the Puppy forums exceptional. This community is enthusiastic, knowledgeable, and helpful.

Why not give Puppy a go? You can try it as a live CD without affecting any installed operating systems or their applications. Or install Puppy on that old PC you have in the basement collecting dust. You’ll be amazed at how useful it can become with the right software. Bring this little Puppy home and I guarantee it’ll put a smile on your face.


# More

For everything about Puppy Linux, including downloads, visit:


* [www.Puppylinux.com](http://www.Puppylinux.com)
* [www.Puppylinux.org](http://www.Puppylinux.org)
* [www.Puppyos.com](http://www.Puppyos.com)

This article was written with Puppy Linux and its tools the OpenOffice.org Writer word processor, the Composer and Bluefish HTML editors, mtPaint for creating the figures, and the Opera, Firefox, and Dillo web browsers—all running on an old Pentium II laptop. My productivity was as good with this setup as it is on my expensive new Windows Vista machine at my office. For more on how to revitalize old PCs by installing Puppy and other small Linuxes, see [this article](http://www.desktoplinux.com/news/NS3646121982.html).

