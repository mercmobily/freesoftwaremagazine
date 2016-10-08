---
nid: '1233'
title: 'Jump to Debian GNU/Linux!'
authors: 'Arturo Fernández Montoro'
published: '2006-01-25 11:03:07'
issue: issue_10
license: gfdl
section: end_users
listed: 'true'

---
There are hundreds of GNU/Linux distributions around, each with its strengths and weaknesses. One that stands out from the masses is Debian. It is the only major distribution not developed (or even backed) by commercial vendors, but by a group of volunteers around the world. Its main features are robustness, great software package management, a huge software collection consisting of more than 15,000 pre-compiled packages ready to install and run, and a transparent and always helpful support system based on mailing lists and a bug tracking system. 

But, there is something else that makes Debian special: No other distribution has seen as many offspring distributions as Debian has. Among them you’ll find customized Linux distributions for regional markets like LinEx (a government-driven project in Spain), or the shooting star Ubuntu (developed by a commercial vendor). The reason for this popularity is obvious: The Debian distro is not only free, but boosts flexibility and transparency.

If you use another Linux distribution and you are interested in changing, after you read this article you should install Debian for sure.


# Introduction

Debian/GNU Linux is a universal operating system. You can install and run it not only on Intel- and AMD-based 32 and 64 bit PC systems, but also on different computer architectures like Compaq’s and Digital’s Alpha systems, ARM, Motorola 680x0 processors (_m68k_), SGI’s big-endian MIPS systems and Digital’s DECstations, Sun’s SPARC and UltraSPARC systems, the PowerPC (using IBM and Motorola processors), IBM S/390 mainframe systems and Hewlett Packard’s PA-RISC machines (_hppa_). 

The Debian project doesn’t only produce a free (as in freedom, not only of charge) distribution, but is itself a strong supporter of free software. While many people spend hours discussing the differences between “free software” and “open source software”, Debian explicitely explains its position in two documents: “The Debian Free Software Guidelines” (DFSG), which defines what constitutes free software according to the Debian project; and the “Social Contract” with the free software community which positions the project itself and defines its links to the outside world:


* Debian will remain 100% free
* The project will give back to the free software community
* The project will not hide problems
* It prioritizes its users and free software
* It describes how to deal with work that does not meet its free software standards

You can read this document at [Debian Social Contract](http://www.debian.org/social_contract).


=ZOOM=The reason for this popularity is obvious: The Debian distro is not only free, but boosts flexibility and transparency=

Differing from other Linux distributions, you’ll find not just one Debian version at a time, but three different releases: “stable”, “testing” and “unstable”. These are three different distributions. Each one ships with its own software packages which may or may not stem from the same original source-code version. For example: Debian “stable” at the time of writing shipped with a gimp package tagged 2.2.6, while “testing” at the same time included version 2.2.7. The “unstable” release uses the most recent software versions.

There is, however, only one official release: “stable”. Debian recommends it for production environments. The “testing” distribution contains packages that haven’t been accepted for the “stable” release yet, but after extensive testing will eventually move over. The “unstable” tree is the Debian developers’ working ground. At times this distribution can show problems like broken dependencies. Nevertheless, this distribution is usually completely functional since quality assurance (QA) is a task the Debian project takes serious. Packages in “unstable”, however, simply have not been tested in depth. If you wish to run a system equipped with the latest software versions “testing” is a good bet, but if you need a robust server you should choose “stable”. 

Each of these distributions has a codename which (apart from “unstable”) changes with every release. The codename of the most recent “stable” distribution is “Sarge”, also known as Debian GNU/Linux 3.1. It was released June, 6th, 2005. The current “testing” distribution is nicknamed “Etch”, and “unstable” always remains “Sid”. All codenames are taken from Pixar’s movie “Toy Story” since a Debian project leader worked for this company. Obsolete releases are “Woody” (3.0), “Potato” (2.2), “Slink” (2.1) and “Hamm” (2.0). 

Each distribution groups its packages by their software licenses:


* _Main_: includes all software compatible with the DFSG, for example the GNOME web browser “epiphany”
* _Contrib_: you’ll find free software that depends on non-free (according to Debian) software to run. “ant” (a Java development tool) is an example for this
* _Non-Free_: consists of software with a DFSG-incompatible license like “doom-wad-shareware”, a package that includes shareware game files for the 3D game DOOM


=IMAGE=source.jpg=/etc/apt/sources.list configuration=


=ZOOM=The codename of the most recent “stable” distribution is “Sarge” also known as Debian GNU/Linux 3.1=


# Advantages and disadvantages on the technical level

Debian’s different approach becomes visible not only formally but also in technical details. It ships with a unique and robust package management system, centering around the APT tools and the “dpkg” utility, that Debian developers and users are especially proud of. It is the best way to install software quickly and easily on your machine—even as a newbie you’ll appreciate and love it. The package management system uses “dependencies” between packages to ensure correct software installation. Pre-compiled packages are distributed in a specific archive format with “.deb” file extension. While utilities like “dpkg” and “apt-get” are pure command-line tools, Debian also provides a set of package management front-ends to choose from like “dselect”, “aptitude” and “synaptic”. Most tools access software repositories via FTP or HTTP, provided the user wishes so. You type a single command, and Debian will download, install and configure the software for you. You don’t need to worry about where the software resides—as long as the configuration file _/etc/apt/sources.list_ contains the repository’s proper URL. Each repository entry looks like the following line:


=CODE_START=

deb http://www.debian.org/debian sarge main contrib non-free


=CODE_END=

This means that the tools will download and install software belonging to the “Sarge” distribution from the main Debian web site. To install the GNU Image Manipulation Program (GIMP) the “root” user will now type e.g. the following command line:


=CODE_START=

#apt-get install gimp


=CODE_END=

The “apt-get” program will download the GIMP package and all packages it depends on (i.e. all software needed to run the GIMP). 

Debian does not hide errors and bugs. Users can to send bugs using the _bug tracking system _and the Debian developers can quickly access them by web or e-mail. Bugs are accessible to everybody because of the importance Debian places on _Quality Assurance_. “The Debian Policy” is a specification for the standards of quality using by Debian.

On the other hand, Debian also has some disadvantages when compared with other distributions: its hardware auto detection is still way behind the appropriate functionality in SuSE or Mandriva, and the installation process doesn’t make it easy for beginners.


<!--pagebreak-->



# Installing Debian/GNU Linux

To install Debian you need at least a little patience. To give you a headstart, a short summary of the Debian “Sarge” installation process for a desktop machine follows. The official Debian installation page at

[Debian installation page](http://www.debian.org/releases/stable/installmanual.en.html) provides more detailed information.

First you have to choose an install method:


* _Network:_ you can install Debian via the internet or using a partition that one of the other machines in your LAN provides by means of NFS (Network File System)
* _CDs or DVDs_: books, magazines and independent software vendors will provide you with Debian installation media. You can also download the appropriate images from the Debian web-site and burn them yourself. To boot from the installation DVD is the easiest way for newbies. Check your BIOS to ensure your system will do so!

Before you start make sure you have as much information about your hardware as possible, because during the install process the installation program will request the information. 

“Sarge” allows you to use the 2.4.17 or the 2.6.8 kernel. To choose the latest Linux version, type “linux26” at the “lilo” prompt when booting from the install media and press “Enter”. 

The Debian installer program asks you about your language, country and keyboard layout. If possible it configures your network and loads appropriate kernel modules for the hardware it auto-detects. 


=ZOOM=“Sarge” allows you to use the 2.4.17 or the 2.6.8 kernel=

Now it’s time to partition your disk. Be careful. After you have selected the installation partition the next step is to install the base system. To be able to boot your system you need to install a boot loader like GRUB or LILO. When done, reboot your machine. Now Debian starts some post-boot configuration routines: you’ll be asked to:


* Configure your time zone
* Choose a name for your machine
* Set up users and passwords. During this stage you must choose the password for the “root” user
* Create an ordinary user for your day work
* Set up PPP or PPPOE for dial-up connections with the internet
* Configure the APT system in charge of the package management
* Install some software packages. To do this you first have to choose the relevant software. On a desktop machine you’ll probably want the office-suite OpenOffice, the Mozilla Firefox web browser, the e-mail client Kmail, the instant messenger client Gaim, the image manipulation program GIMP, Totem (a video player) and a desktop environment like GNOME or KDE
* Configure your Mail Transport Agent. This is optional but useful since internal system notification depends on e-mail

After these steps you’ll be presented with the login prompt. Your system is now ready to use.


=IMAGE=debian_site.jpg=Debian official web site=


# International example

Back in 1998, the government of Extremadura, a small region of Spain, launched an educational project for technological alphabetization. The success of this educational project depended totally on the chosen software, and access to source code was a very important issue. The government developed a new Linux distribution based on Debian GNU/Linux 2.0 called “Linex” (_Linux + Extremadura_).


=IMAGE=linex.jpg=Linex web site =

Currently, Linex has an installation base of over 10,000 computers, mainly in government offices and schools. 

Another region of Spain (Andalucía) follows the example and makes their own distribution called “GuadaLinex” based on Linex.


=IMAGE=guadalinex.jpg=GuadaLinex web site =

Countries like China, Italy and Brazil have been studying the success of the project.


# Conclusion

Debian GNU/Linux as a distro is different due to its technical details and for its philosophy. Freedom is a very important concept for the Debian Project and it is a non-commercial distro.

Due to its  robust, flexible and highly configurable nature, some governments have chosen Debian upon which to base the development their own Linux distro and the project has been a success.

If you use other Linux distributions, I recommend you give Debian a try. Debian is not only for _geeks_—everybody can install and use it. Don’t doubt it, jump to Debian!


=ZOOM=Due to its robust, flexible and highly configurable nature, some governments have chosen Debian upon which to base the development their own Linux distro and the project has been a success=


# Acknowledgements

The author would like to thank Patricia Jung for her comments and grammatical revision.


# Bibliography

[The Debian web site](http://www.debian.org)

[The Linex distro web site](http://www.linex.org)

[The GuadaLinex distro web site](http://www.guadalinex.org)


