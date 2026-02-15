---
nid: '2199'
title: 'Using VirtualBox to run Ubuntu and any other operating system'
authors: 'Andrew Min'
published: '2007-07-02 6:30:00'
tags: 'virtualbox,virtualization'
issue: issue_18
license: cc-by
section: hacking
listed: 'true'

---
GNU/Linux can be scary to a new user. After all, what if you mess up? What if you end up corrupting your hard drive so badly that you need to format it to get rid of GNU/Linux? The solution is to use virtualization technology. A virtual machine creates a virtual hard drive as well as a virtual computer, so you can install and run it from within another operating system. If you want to get rid of the virtualized (also known as the guest) operating system, just delete the virtual hard disk from the real (host) computer’s hard drive.


# Introduction

First, choose which virtualization tool to use. Right now, there are four big ones: [Parallels](http://www.parallels.com/), [VMWare](http://www.vmware.com/), [QEMU](http://fabrice.bellard.free.fr/qemu/), and [VirtualBox](http://virtualbox.org/). Parallels is commercial at US$49.99 for Windows and GNU/Linux. For me, that is way too expensive. That leaves us with VMWare, QEMU, and VirtualBox. VMWare has two freeware versions.  One (called a player) runs pre-built operating systems (known as appliances). The other one (called a server) will make machines, but isn't as fast as the professional version. The problem with QEMU is that it is completely command-line (there are GUIs made for it, but they never worked for me). Therefore, it is extremely complicated to create a new virtual machine with it. Besides, it just can’t do some basic things that the others can (like pause a virtual machine, for example). That leaves us with VirtualBox.

VirtualBox is free software. It is cross-platform (runs on Windows and GNU/Linux, with an Intel Mac version in beta). It runs Windows, OS/2, GNU/Linux, BSD, Netware, Solaris, and L4 guests. And on certain guests, you can install VirtualBox Guest Additions, which lets you share files and more between the guest and the host. The next version, coming soon, will include support for running the pre-built VMWare appliances [1]. It simply works.


# Getting VirtualBox

Getting VirtualBox varies from platform to platform. There are binaries on the download [site](http://virtualbox.org/wiki/Downloads) for Windows, Ubuntu 6.06-7.04, Debian 3.1-4.0, openSuSE 10.2, Mandriva 2007.1, Red Hat Enterprise 4, and the Univention Corporate Server 1.3-2. The SimplyMEPIS site has a guide to installing VirtualBox [here](http://www.mepis.org/docs/en/index.php/VirtualBox). If you run Ubuntu or MEPIS, you can install [Automatix](http://www.getautomatix.com/), which will install VirtualBox for you. Lastly, there is also a generic installer for GNU/Linux on the download page. Unfortunately, there are two versions of VirtualBox: one is freeware and one is free software. These binaries are for the _freeware_ version, rather than the _free software_ version. For some reason, Innotek (the company behind VirtualBox) hasn’t released open-source edition binaries. I’m not really sure why hackers haven’t released any binaries using the source code (the exception is one by a Macintosh programmer, who created an unofficial free software OS X 10.4 binary [here](http://ciderhouse.ivory.ne.jp/mac/vbox/vbox_e.html)). However, I am sure binary versions of this fantastic piece of software will eventually appear for many different distributions.To compile, visit the [Build_instructions page](http://virtualbox.org/wiki/Build_instructions) at the VirtualBox wiki. GNU/Linux and Windows are supported, with Macintosh OS X (Intel-only) and OS/2 in testing.


# Setting up your first virtual machine

Now that VirtualBox is installed, create your first virtual machine. Your first guest will be the well-known Ubuntu. Download the 7.04 Desktop edition CD image [here](http://www.ubuntu.com/getubuntu/download). When it finishes downloading, open VirtualBox (on GNU/Linux, `LD_LIBRARY_PATH=. ./VirtualBox`, on Windows, run `VBoxSDL.exe` in the folder you compiled it in).

Select the “New” button (or hit `Ctrl + N`). A “New Machine Wizard” window should pop up (figure 1).


=IMAGE=figure_1.jpg=Figure 1: New Machine Wizard=

Click “Next”. Then, type a name for the virtual machine (I typed Ubuntu). Choose Linux 2.6 (the standard for most modern Linux distros) for the OS type, then hit “Next”. You will be asked how much memory to give. Choose 256MB. For most GNU/Linux distros, you’ll need at least 256MB of RAM to be comfortable (you’ll also need to make sure you have at least 512MB of total physical RAM and have all possible programs closed). Next, you will be confronted with an option to create a hard disk (figure 2).


=IMAGE=figure_2.jpg=Figure 2: New Virtual Disk Wizard=

Click “New”, and yet another window opens. Click “Next”. Now, you have an option to create a dynamically expanding image (hard drive) or fixed-size. Fixed size stays a certain size, while a dynamically expanding one gets bigger or smaller depending on what’s on it. For now, choose dynamically expanding. The next dialog asks you how big you want the hard drive to pretend to be (actual size will vary as mentioned before). Choose 5GB. Next, make sure all details are correct, then click “Finish” to exit the virtual disk wizard. Hit “Next”, confirm everything is correct, then “Finish” to exit the new machine wizard.

Now, click “Ubuntu” _once_, then click “Settings” (figure 3).


=IMAGE=figure_3.jpg=Figure 3: Adding a CD/DVD-Rom=

Select “CD/DVD-ROM”. Then, check the “Mount CD/DVD Drive”, select “ISO Image File”, then click the folder icon. The Virtual Disk Manager will pop up. Click “Add”, browse to the place where you saved the Ubuntu file, then highlight it and click “Open”. Now, click “Select” to assign the Ubuntu CD to the Ubuntu virtual machine. You may also want to make sure the “Enable Audio” under the Audio section is checked, so your audio is working.

You are now ready. Click “Okay” and then double-click the “Ubuntu virtual machine”. A new window should launch (figure 4).


=IMAGE=figure_4.jpg=Figure 4: The Ubuntu installer=

Select “Start or Install Ubuntu”, with the arrow keys, then hit “Enter”. Clicking inside of the window will capture the mouse so you can use it in the virtual machine. To release it hit the right control (Ctrl) key. Wait for Ubuntu to load the desktop. Then, double-click on the “Install” icon. Select a language, then a city, then a keyboard layout, and give some personal info. When you are asked to prepare disk space, choose to erase the whole disk, then hit “Next”. Verify everything is correct, then hit “Install”. Wait for Ubuntu to finish installing (this will take a very long time). Then, restart when it prompts you to. It will tell you to remove the CD. Click the “Devices” menu at the top of the window, and click “Unmount CD/DVD-ROM”. Then, hit “Enter”. Ubuntu will finish restarting. Now, you are done! You can delete the CD image by taking the following steps: first stop the virtual machine by shutting it down (click the power button in the top right corner in Ubuntu). Then click on the Virtual Disk Manager (“File→Virtual Disk Manager” in the main VirtualBox window), then the CD/DVD Images tab, then click “Release”, then “Remove”. Then, delete the actual CD image.


# More advanced usage

Now that Ubuntu is up and running, do some more advanced things with it. You can integrate the mouse (in other words, you won’t have to keep hitting the right Ctrl key to release it) by installing Guest Additions. Guest Additions will also improve your video support and synchronize your time with the virtual machine’s time. Here’s how to install it: open the Ubuntu virtual machine, click “Devices” at the top of the window, and then “Install Guest Additions”. Then go to “Accessories→Terminal”, type `cd /media/cdrom0`. Then type `sudo sh ./VBoxLinuxAdditions.run` and hit “Enter”. Follow the on screen instructions. Then, restart (hit the power icon in the top right corner). Now, the cursor isn’t trapped inside the virtual machine!

Another powerful tool that VirtualBox offers is the pause feature. If you close the virtual machine, it will pop up a message asking whether to power off or save machine state. Powering off is the equivalent of unplugging the power cord to the virtual machine. Saving the virtual machine state basically pauses it. It is sort of like hibernating. When you open up a saved machine, it will automatically pick up from where it left off. This is particularly useful when you are installing a new operating system, and want to turn it off without messing up the install.


# Where to go from here

Ubuntu isn’t the only GNU/Linux distribution (or operating system) that VirtualBox can run. It can run Windows, SuSE, Linspire, and much more (see the [Guest OSes page](http://www.virtualbox.org/wiki/Guest_OSes) at the VirtualBox wiki for more). It’s a great way to test out GNU/Linux distros before you install them for real. It’s great for security: getting viruses in the virtual machine doesn’t affect the host machine. And GNU/Linux users can run it and Windows at the same time without paying a cent. All in all, VirtualBox is a powerful program that is worth the download.


# References

1. [Open source at CeBIT 2007](http://community.linux.com/community/07/03/22/1955255.shtml)
