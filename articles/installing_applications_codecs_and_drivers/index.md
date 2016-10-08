---
nid: '2374'
title: 'Using third party schemes to install applications, codecs and drivers in GNU/Linux'
authors: 'Phil Thane'
published: '2007-09-19 11:17:32'
tags: 'software,install,package-management'
issue: issue_19
license: verbatim_only
section: hacking
listed: 'true'

---
A common criticism levelled at GNU/Linux and free software by proprietary software companies is that installing applications, drivers and media codecs is made difficult. Well, it isn’t.

While there can be problems installing software in GNU/Linux, these difficulties also exist on other systems and are rarely show-stoppers. And, to be fair, many companies are still struggling to get their products working properly on Vista. A common issue with any operating system is that different versions of a program often need different drivers and supporting applications. Naturally, similar problems can occur with GNU/Linux, and the variety of distributions (distros) and rapid upgrade cycle can seem confusing to newcomers and outsiders, but a new crop of installers are making things really quite simple.


# The problems

Assuming you are running one of the mainstream distros such as Mandriva, Ubuntu, Fedora or SUSE, your GNU/Linux system will come prepackaged with a graphical desktop such as KDE or GNOME and a lot of applications. If you are the least bit adventurous, there will come a time when you will want to add more.

In the early days of GNU/Linux the only way to install anything was to compile from source and manually move the compiled “binary” into the directory of your choice. Then various companies and collectives started to produce ready-compiled selections (known as packages) and distribute them (hence “distros”). To make life easier, package management systems were created to automate the installation. The most common are the Red Hat Package Manager (RPM) originally developed by Red Hat, but also used by Mandriva and SuSE; Advanced Package Tool (APT) originally developed by Debian, but also used by Ubuntu, Xandros and others; and pkgtool, developed by Slackware.


=ZOOM=Just using the same package management system doesn’t necessarily make distros’ packages compatible=

Just using the same package management system doesn’t necessarily make distros’ packages compatible. An RPM package (`.rpm`) for Open Office as supplied by SuSE may not be the same as a `.rpm` supplied by Fedora or Mandriva. Each may have modified the software to take account of their unique file system or to fit in better with their “look and feel”. There is even conflict within individual distros—a SuSE 9.0 `.rpm` may not install correctly on SuSE 10.0. Debian based distros tend to be more consistent. Many `.deb` files meant for Debian will install and work on Ubuntu.

Then, as if that wasn’t enough, there are “dependencies”. Because many applications have a great deal in common, it makes sense to put common features into “libraries”, where they can be accessed by different applications. Microsoft does this with .dll files, but it is much more pervasive in the free software world. Unfortunately, making sure your PC has the correct library files to enable a specific application to run can be a problem. Providing you only use the applications supplied by your distro, either via .iso files (CD or DVD) or on-line via APT, then the dependencies are solved for you. Once you step outside of that comfort zone, tracking down the right versions of each library can be a pain, rightly known as “dependency hell”.


# The solutions

If you have installed one of the mainstream GNU/Linux distros from a DVD or collection of CDs, then it is very unlikely that you actually installed more than a quarter of the apps that are on there. The first port of call when looking for an application you don’t have is your distro’s DVD or CD set. Each of these distros has an “Add new software” feature somewhere in the menu options.


=IMAGE=synaptic.jpg=Figure 1: Synaptic is an APT GUI used by many distros=

Some distros take a different approach, such as Ubuntu. Instead of providing a DVD’s worth of applications, the basics come on a single CD (or CD `.iso`) and anything you want to add is done via APT, generally using a graphical “front end” such as Synaptic or Adept. APT has the happy knack of resolving dependencies on the fly; if you request an application that requires a library file you don’t already have, APT will add it to the selection.


=ZOOM=Applications for `.deb` based distros are stored in on-line repositories=

Applications for `.deb` based distros are stored in on-line repositories. The default set up on Ubuntu only connects to their “Officially supported” repositories, but both Synaptic and Adept have a menu option to add others (read the warnings first, though).


# Alternatives

There comes a time, though, when most GNU/Linux users want a piece of software not supported by their distro. It may be an application not considered sufficiently stable or too esoteric for inclusion, or a proprietary driver or codec, which the distro team won’t include in case it causes all manner of legal problems for them. Whatever it is, you need a way to install it, and there are several to look at.


## Autopackage


=IMAGE=Auto_packGUI2.jpg=Figure 2: Autopackage is almost the Install Shield for GNU/Linux=

[Autopackage](http://autopackage.org) aims to do for GNU/Linux what “Install Shield” does for Windows. It uses a completely new package format, which includes a pointer to where required library files can be found. From a user’s perspective it just works, but in the background Autopackage checks dependencies and resolves them automatically.

To install software with Autopackage, choose from the [list of available autopackages](http://autopackage.org/packages/) and then click on the “Download File URL”. You will find dozens of packages available, but Autopackage’s most visible weakness is a relative lack of selection.


=IMAGE=Auto_permi.jpg=Figure 3: Make your Autopackage script executable=

The actual download is a small “script”, not the package itself. Save it somewhere convenient, then make it “executable” (In Konqueror right click, choose Properties→Permissions then check “Is executable”). Now double-click the file to start the installer and follow the on-screen instructions.


=IMAGE=Auto_packGUI3.jpg=Figure 4: Installation complete, the easy way=

Autopackage does automatically what a GNU/Linux expert would do manually—check dependencies and install all the right libraries to make an application work. It works on most distros, but it isn’t completely perfect and some packages don’t install on some distros. For example, Xara Xtreme would not install on Kubuntu Fiesty running on my AMD64 machine. In any case, it doesn’t do any harm to try.


<!--pagebreak-->



## klik

[klik](http://klik.atekon.de) is close to install heaven, though in the normal sense it doesn’t “install” software at all. klik is a packaging tool that enables developers to create ready-to-run packages that can be launched from anywhere. You can install packages to your home directory without needing a root password. Put one on a portable drive or USB flash memory and you can run an app on any PC you visit.

klik puts the responsibility for dependencies on the developers, not the users. As a humble user, I think this makes sense. The developer knows what it takes to make his or her program work and can make sure the compiled klik package includes everything.


=IMAGE=klik.jpg=Figure 5: Don’t install at all, just klik=

To install the klik client, use the command `wget klik.atekon.de/client/install -O - | sh`. If you’re unfamiliar with the GNU/Linux command line, all you need to do is copy and paste this command into a terminal and press `Enter`. The shortcut `Alt + F2` will open a terminal or command dialog on most distros.

Follow the instructions that pop up on your screen and you’ll be taken to the klik “store”. It’s that simple. (Ubuntu users, please note [instructions on the klik site about installing libstdc](http://klik.atekon.de/ubuntu.php) before using klik)


=ZOOM=klik has a wider range of packages than Autopackage and is simpler to use=

klik has a wider range of packages than Autopackage and is simpler to use. The single-file installation means klik packages will not interfere with anything else on your system and can be safely removed by deleting that single file.


## Automatix2

[Automatix](http://www.getautomatix.com/) is a graphical package manager for the installation, uninstallation and configuration of commonly requested applications. Currently it supports variations on Ubuntu, Debian, and Mepis 6. Automatix has no qualms about offering free-as-in-beer, proprietary or even commercial packages such as CrossOver Linux, though it does start with a splash screen warning users in the US that some codecs they make available may infringe US laws. **You have been warned.**


=IMAGE=Automatix1.jpg=Figure 6: Read the warning=

To install Automatix, browse Automatix’s very informative site, then click on Installation. There are a couple of options: downloading a `.deb` file to suit your system and installing it using your usual GUI, or using APT on the command line. Normally I’d recommend the graphical method, but trying it on a new PC with very little in the way of development packages installed threw up a host of dependency problems, and it turns out to be easier using APT. Follow the relevant links on the Automatix site, then follow the instructions step-by-step. Copy each command (highlight then `Ctrl + C`) and insert each into a terminal with `Shift + Insert` followed by `Enter`.

The final command will throw up the same error message you would get using a graphical installer, but APT suggests a solution: the command `sudo apt-get -f install` which will compel APT to install all the supporting packages.


=IMAGE=Automatix2.jpg=Figure 7: Choose and click in Automatix2=

Once installed, you can run Automatix from the Kmenu and grab a tremendous range of codecs, drivers and applications very easily. If you are tempted to try out the proprietary Nvidia 3D drivers, do make a note of the command line instruction for restoring the basic Xorg setup in case things go wrong: `automatix-nvidia-restore`.


## Looking to the future: Click’n’Run (CNR)

These three systems represent the cream of the crop of the present GNU/Linux package management field, outside of those schemes defaulted to by each distribution. If you find that it supports the particular package that interests you, any one of these options will be a simple and effective solution for software installation. However, there is one more competitor on the horizon.


=IMAGE=CNR.jpg=Figure 8: CNR Coming Soon=

Back in January, Linspire announced that they would be making their CNR Warehouse system available to users of other versions of GNU/Linux in the second quarter of 2007. At the time of this writing, the quarter has yet to end and the [CNR site](http://www.cnr.com/) still says “Coming Soon”. If it works properly, its “one-click delivery service” could revolutionise installing new software on GNU/Linux. Time will tell. Check the CNR site for the latest details.

