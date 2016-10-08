---
nid: '3325'
title: 'OpenSolaris and its killer features. Coming to a GNU/Linux near you?'
authors: 'Gary Richmond'
published: '2010-05-19 7:39:17'
tags: 'debian,gnu/linux,fedora,opensolaris,snapshots,rollback,aptget,gpl-ccdl'
license: verbatim_only
section: opinions
listed: 'true'

---
When we think of free operating systems we tend to think overwhelmingly of the big hitters (all GNU/Linux) like Debian, Ubuntu, Fedora and Mandriva and then of those niche distros that have been designed for low end systems or for specialist purposes like security and forensics. But Oranges are not the only fruit. There is a hinterland out there called Unixland, populated by other less well known systems whose roots are firmly Unix too. BSD for example, famed for its rock-like security. OpenSolaris is another one, perhaps less well known, but it has features that are well worth a punt. This article will look at those kernels and if porting them to mainstream distros is technically possible and permissible in terms of the perrenially thorny issue of licencing.

# An OS with pedigree

OpenSolaris is an operating system with its roots in Sun's Solaris (though they have been taken over by Oracle). This symbiosis is similar to the relationships  between Fedora/Redhat and SUSE/OpenSuse. Initially, Sun software was tied to the SPARC platform but with the advent of OpenSolaris, the kernel was made available for the X86 architecture too. Think Sun and you tend to think Servers, but when they hired Ian Murdock (the founder of Debian) in 2007 they signaled that they were serious about OpenSolaris on the desktop. He duly produced a friendly and very familiar Gnome-based desktop ([and many other community-based versions](http://hub.opensolaris.org/bin/view/Community+Group+distribution/links)) which could be booted as a live CD with the option to install to a hard drive.

=ZOOM=when any distro comes up with a killer app or feature there's usually something of a goldrush to port it to other popular platforms=

Having tried it out I can vouch for general ease of use but it simply cannot compete with the likes of Ubuntu or Fedora when it comes to available software. Ubuntu/Debian users have 20,000 plus packages from which to choose. OpenSolaris can barely manage 2,000. A killer feature it is not. There's no possibility whatsoever of OpenSolaris becoming a serious challenger to mainstream GNU/Linux distros in the desktop area. So, why bother with it at all? Because it has features that deserve that much hyped and overused cliche "killer". Usually, when any distro comes up with a killer app or feature there's usually something of a goldrush to port it to other popular platforms. 

So, why hasn't this happened? Well, it has. Sort of. To answer that question fully let's first look at what exactly those killer features are and why porting them would be problematic--and why this reveals the critical importance of licencing in software and operating systems. The next time you encounter yet another flame war about the GPL and the accusations that the FSF suffers from digital tunnel vision, you'll understand why they and Stallman take such a strong stand in defense of the purity of the GPL and similar licences.


# Show me the killer features

What has OpenSolaris got that you won't (currently) find in mainstream GNU/Linux distros? Here's a quick list: 

* ZFS (the file system)

* snapshots (utilizing copy-on-write)

* checksums on data

* bootable clones

* Timeslider (snapshots integrated into a GUI Nautilus file manager frontend)

* storage pools (zpools)


GNU/Linux file systems are in a constant state of evolution and variety: Reiser FS, Reiser4, Ext3 and Ext4. OpenSolaris has ZFS (Zettabyte File System). A Zettabyte is equal to one sextillion bytes (or one billion Terabytes, so you won't be running out of space anytime soon). ZFS is both a 128-bit file system and a logical volume manager. This means that it can address 18 Quintillion times more data than a 64-bit file system. The feature set is large and technically complex and beyond the scope of this article so [pop over to Wikipedia for a peek at the innards](http://en.wikipedia.org/wiki/ZFS). You don't need permission from Sun/Oracle to use ZFS. This has already been done and [StormOS](http://www.stormos.org/) is a good example (it is derived from [Nexenta](http://www.nexenta.org/os/NexentaCore)), where ZFS has been ported and combined with Ubuntu and Apt to give the best of three worlds: ZFS, extensive software repositories (13,000 packages) and easy package management through Apt, Getdebi and something called apt-clone.


# ZSH: It's a licence thing

At the present time however, ZFS cannot be incorporated into the Kernel of GNU/Linux due to licence incompatibility. The former is licenced under the [CCDl](http://en.wikipedia.org/wiki/CDDL) whilst the latter is of course running under the GPL. The CCDL (Common Development and Distribution Licence) is derived from the MPL (the Mozilla Public Licence) familiar to users of Firefox, a licence, which, incidentally, is also incompatible with the GPL. The FSF regard them as incompatible but there is nothing to stop anyone combining them. In fact, the [Open Source Initiative (OSI)](http://opensource.org/) has given ZFS its blessing. The OSI of course is the other principal party of FOSS advocacy alongside the FSF and its (founding) names --Bruce Perens, Eric Raymond, Jon "maddog" Hall--indicate that it was and remains a good friend to free and open source.

=ZOOM= Linus Torvalds is aware of the incompatibilities but is more concerned about the logistical problems in porting the code=

The [FSF retains an extensive list](http://www.fsf.org/licensing/licenses/index_html) of compatible and non-compatible licences on its website and describes the CCDL as a free software licence but one that they do not endorse because it exhibits the same copyleft scope as the MPL as uses the term "intellectual property". Sun has always denied claims that OpenSolaris was released intentionally under the CCDL precisely because it was derived from the MPL and was incompatible with the GPL. If you want to know more about the CCDL then [read their FAQ on it](http://hub.opensolaris.org/bin/view/Main/licensing_faq). Nexenta (see above) believes there is no problem [its FAQ](http://www.nexenta.org/os/FAQ) and even invoked the FSF's legal enforcer, Eben Moglen, to support the mixing of GPL software and the CCDL Solaris core. Linus Torvalds is aware of the incompatibilities but is more concerned about the logistical problems in porting the code and thinks that it is better to write code from scratch. This tends to offend the NIH (not invented here) purists who think that borrowing/porting ideas from elsewhere is a Bad Idea.

The truth of the matter is that the philosophical, legal and technical quagmire that is software licencing is always going to be in a state of perpetual flux. The sheer multiplicity of licences is both a strength and an Achilles Heel. Navigating them is an acquired skill. If you try to adhere to the most ideologically pure path of the FSF you might just start cracking up. So, what's so hot about ZFS that you would be willing to risk your very mortal soul to use it?


# When it's gone, it's gone

ZFS has features guaranteed to make geeks sob with joy, yet the one that really catches the attention, both for reasons of simplicity and transparency, is safe delete. The average Windows user has enough difficulty understanding that their operating system is a hacker's wet dream. So, explaining to them that they haven't really deleted that file really confuses them--and perhaps a few users of free software too. When you "deleted" that file you only removed it from a table of contents. It is still there in the same way that a book is still on the library shelf even after the index card has been torn up. Any competent librarian (_aka_ system administrator) who knows the classification system can locate and retrieve the file. ZFS finds that "book" and destroys it. That's what I call safe delete.

# Snapshots: Say cheese

=ZOOM=unbreakable upgrades are a holy grail in computing. With ZFS and apt get integration it might just be on the horizon but I'll believe it when I see it=

Snapshots. This is probably _the_ feature of ZFS that gets the most publicity. That's snapshots, not backups. GNU/Linux has plenty of software for the latter, both GUI and the command line. Snapshots have been a feature of OpenSolaris for some time. This is a feature that was originally operated from the command line (and still can be) but now has a very impressive front end called Time Slider. Snapshots is integrated into the default Gnome file manager, Nautilus. This allows the user to create, delete and manage file (system) versions. In short, a versioning system that does not require the installation of software like Subversion, Git or CVS. Of course, Time Slider was not built with collaborative versioning in mind so it will not have the powerful granularity of that software, but for an individual desktop user it really is a killer feature. (Mind you, I'm not sure that I would have chosen Nautilus but as the OpenSolaris desktop is based on Gnome, the choice was hardly surprising.) Perhaps it's time for a Google Summer of Code project to design a point and click Time Slider GUI for OpenSolaris derivatives like Nexenta or StormOS. [They promise unbreakable upgrades](http://xercestech.com/unbreakable-upgrades-zfs-and-apt-get.geek). That's a holy grail in computing. With ZFS and apt get integration it might just be on the horizon but I'll believe it when I see it. 

For licence/patent purists, this is still problematical. Both distros may use Debian userland tools, extensive software repositories and Apt-get but ZFS is in the Solaris kernel and while most of it is free and open there are, allegedly, fifty six patents relating to it (ostensibly to prevent reverse engineering) plus a cross licencing deal with Microsoft. ZFS is a licencing minefield. So, in the insanity-inducing complexity of licencing and patents I tend to reach for the tranquilliser--or Groklaw, and sure enough she has provided the weary and the confused with a [clear analysis of issues surrounding the Oracle's CDDL](http://www.groklaw.net/article.php?story=20050121014650517). I wasn't entirely surprised to discover that Microsoft was mentioned and mentioned as being at the possible core of the problem.

Linux, via LVM, can do writeable snapshots (but you need to create a copy on write partition to do it) and when Grub2 arrives it will enable booting into snapshots (as well as the current capacity to boot into older kernels), but if you have a corrupted Xorg after an upgrade you're in trouble and you'll likely be dropped into a command prompt, requiring significant expertise to fix. With OpenSolaris, that problem doesn't arise. If your upgrade _has_ broken Xorg you can revert to a previous configuration.


# Btrfs, the truly free answer to ZFS?

It's ironic that Sun, which gave us OpenSolaris, has been taken over by Oracle and Btrfs was originally developed by them and released under a GPL licence and it is likely to be the next GNU/Linux file system, obviating the need to either use non-compatible alternatives like ZFS or the clunkier userland ZFS-fuse binary which gets around that problem. [A quick visit to the Btrfs kernel wiki](http://btrfs.wiki.kernel.org/index.php/Main_Page) reveals the planned feature set and it looks like a rerun of ZFS. The good news is that Btrfs has already been merged into the mainline kernel and has been available for testing since version 2.6.29. In fact, Ext4 has been described by Theodore Ts'o as merely a "stopgap" on the way to Btrfs. Btrfs (pronounced "butter fs", for B-tree file system) has been designed primarily to answer the need for scaling in large storage systems but you will certainly benefit from it as an end user on a desktop. 

If your purist ideals can't endure the less than fully free and open ZFS and you want a full-on Btrfs experience it's useful to know that it has a utility to convert EXT3 to Btrfs. [Howtoforge has an excellent tutorial](http://www.howtoforge.com/boot-on-btrfs-with-debian) on how to boot Debian with Btrfs with a final section on doing this using a Ubuntu live CD. You won't be able to boot off Btrfs, but once you've booted you'll have access to its features. If you had Grub 2 installed Btrfs may show as an option, with all its options as described for ZFS. 

=ZOOM=Oracle may choose not to open the source code for any subsequent developments in order to create some clear blue water with non-commercial equivalents=

During the course of writing this article Oracle announced that Solaris would only be available with a ninety-day trial licence. After that users who want to continue using it will need to purchase a licence (although it should be pointed out that the devil is in the detail and that, originally, Sun/Oracle's licence only restricted you to a ninety day trail if you _failed_ to register the product but the new terms explicitly mean that it is a ninety day trial licence _only_ if you sign on the dotted line.)  What effect this will have on OpenSolaris is hard to guess but it is sure to have some detrimental downstream effect. 

Negatively, Oracle may choose not to open the source code for any subsequent developments in order to create some clear blue water with non-commercial equivalents. Positively, this may spur OpenSolaris derivatives like Nexenta and StormOS  but it does reveal something of their mindset. Besides, you don't even have to be using GNU/Linux to get access to the best of Solaris. If you want Dtrace and ZFS take a look at FreeBSD or Apple Mac (not free or open of course), or the FUSE (binary) module in GNU/Linux itself. 

# Licences, thick from coast to coast

Unixland is a fair and pleasant land but it is planted thick from coast to coast with licences. To paraphrase Robert Bolt's Sir Thomas More, I give the GPL the benefit of the doubt--not to protect the licence but to protect myself. Same thing really. There is great software out there and much of it is proprietary and much is released under GPL-like licences where much but not all code is free and open or links to other licences that are more restrictive. The internet is awash with articles that overuse terms like "killer app", "cool" and "fifty Firefox addons you just can't live without" but in the case of OpenSolaris the hype is not without justification. The features of ZFS almost tempt you to turn a blind eye to licence restrictions. Porting it to the Kernel in GNU/Linux with the patented code excluded and replaced with GPL-compliant source code would be technically fraught and essentially reinventing the (square) wheel. 

As an interesting aside, technical problems nothwithstanding, I think you _could_ take ZFS source code and use it in your own bespoke version of the Kernel, patented code and all, tinker to your heart's content to get all those mouth watering features--with _one_ proviso: that you do for exclusively for your own personal use. It only becomes an issue if or when you attempt to _redistribute_ your masterpiece. Then you can expect a call from the lawyers for the FSF and Oracle. Of course, as free and open source software lives or dies by the ability to "reproduce" this would rather partially defeat one of the purposes of writing code in the first place. 

The real solution (ignoring the Not-Invented-Here-lobby) will be to wait for Btrfs to succeed Ext4 and for it to become the default file system, unencumbered by patent or any licencing issued. Clean and clear. It will be interesting to see what impact this will have on Oracle's attitude to making the ZFS source code fully open. What would be the point of retaining its restrictive nature when there is no commercial advantage to doing so when Btrfs is available without restriction and moreover available with the added advantage of GNU/Linux userland tools and repositories that dwarf Soalris/OpenSolaris? None. Of course Oracle's product is directed at the high end server market and technical support, so it probably won't be too put out unless GNU/Linux with Btrfs starts making serious inroads. The real threat would be to community editions like OpenSolaris. When all its "killer" features are available elsewhere, why stick with a distro which is hobbled by partial closed source, patents and, ultimately, the fickle largesse of Oracle? No, the distro I'm waiting for is Nexenta with apt-get, apt-clone, Btrfs and the promise of unbreakable upgrades. Now, _that's_ a distro I'd go a long way to see. 

# Or fiddle with Fedora

=ZOOM=If these features arrive in Fedora 14 and are mature and stable, then Ubuntu will have some very serious competition=

If you can't wait for that (and you don't want to follow the Debian howto above) and you want to get a flavour of it [try out the DVD version of Fedora 13 Beta (codenamed Goddard)](http://fedoraproject.org/get-prerelease). The default file system is Ext4 but the DVD install version (not the live version) has the option in the Grub boot menu to overide it and install Btrfs on the root partition (or, convert Ext3 or Ext4 to Btrfs). With this, Fedora will support system rollbacks but at this stage in the development of this file system it will only do so for the entire file system, not directories, so rollbacks would also rollback a Home directory too. The Home directory should therefore be on a separate partition under Ext4. 

Additionally, a post-install piece of software is required to enable Btrfs fully: `yum-plugin-fs-snapshot`. This clever piece of software will enable `Yum`, Fedora's package management tool, to take a file system snapshot when installing, upgrading or removing RPM packages. This, at present, is the limit of Btrfs implementation in a GNU/Linux distro but there are plans to extend it and mirror the really mouthwatering features of OpenSolaris: snaphots available at boot time via the Grub2 boot loader and a time slider GUI in Nautilus to manage snapshots. If these features arrive in Fedora 14 and are mature and stable, then Ubuntu will have some very serious competition. 

I predict that in the next two years Btrfs will be _the_ file system for most, if not all, GNU/Linux distros. Fully GPL compatible, stable, mature and fully featured. It's adoption will demonstrate once again the strengths of diversity, forking and the politics of software licencing. Sometimes, the technical and legal complexity of software licencing can be off putting and scare off newcomers to the world of free and open source but time and time again it has proved its worth in protecting freedoms and encouraging innovation untrammeled by commercial proprietary licences and interests. 