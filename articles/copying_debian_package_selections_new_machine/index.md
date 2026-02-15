---
nid: '3390'
title: 'Copying Debian package selections to a new machine'
authors: 'Ryan Cartwright'
published: '2010-10-04 9:46:10'
tags: 'debian,package-management,shell'
license: verbatim_only
section: hacking
listed: 'true'

---
Most of us will install our GNU/Linux system once or twice and then use the excellent package management systems to upgrade when new releases of our chosen distribution come out. Users of Debian and Debian-based systems (such as Ubuntu) will be quite used to the idea that you only need to install it once. But what happens when you want to replicate one Debian system on another machine? Do you use cloning tools? Yes you can but only if the hardware is similar on the two machines. What if one has an Intel Pentium-based processor and the other has an AMD64? In that case what you need is some way to replicate the package selection but use the appropriate ones for the new architecture. Enter dpkg.

<!--break-->

#dpkg?

dpkg is one of the core applications of Debian and essential to its package management. Whatever you use to manage packages will in fact use dpkg in the background to install, remove, upgrade and handle post-installation processes. So whether you use apt, aptitude, synaptic or one of the others, chances are dpkg is involved somewhere. It has some nice features but, to be honest, is cumbersome for day to day use which is why there are clients on top of it. In particular dpkg does nothing about dependencies - leaving that to apt or whatever you use. It's a shell-based tool so if you consider yourself to be part of what some people refer to as "the rest of us", you might have to get you hands onto the keyboard more than you are used to. I'm afraid there isn't really a point and click version of this but the process I'm describing is not complex. It just involves typing.

# The process

Simply put the process has four steps:

1. install and setup your first Debian system as you prefer
2. make a list of the packages installed
3. install a basic Debian system on the new machine
4. use the list of packages from step 2 to complete the process.

=ZOOM=There is also a step 0 which should go without saying: backup before you begin. I am not responsible if you hose your system trying this out and lose your data=

I'm going to describe the process from a Debian point of view. I am sure this can work on Debian-based systems such as Ubuntu but I don't have enough experience of installing those to speak about installing minimal systems etc. There is also a step 0 which should go without saying: backup before you begin. I am not responsible if you hose your system trying this out and lose your data.

## Step 1 - install and setup your first Debian system

I suspect many of you will have done the first step over time. Sometimes you will have removed some packages which are part of the base install but aren't crucial to your machine. For example I've often purged a lot of the additional `xserver-xorg-video-` packages as they are graphics drivers for hardware I don't have on that machine. Using this process will save me having to do that each time I setup a Debian box.

## Step 2 - make a list of the packages installed

The second step is where dpkg comes in. Fire up a terminal and switch to root using `su`. Then run this:

=CODE_START=
dpkg --get-selections
=CODE_END=

This command will present with a long list of installed packages. Obviously I'm not expecting you to write them down -- this is the shell we can redirect the output into a text file. Try this:

=CODE_START=
dpkg --get-selections > /tmp/package_list
=CODE_END=

This command gets the same list of installed packages and puts them into a file: `/tmp/package_list`. Note that custom configuration is not saved, so your new system will need those same setups applied. Save this file to a USB key/flash drive or similar as we'll be needing it later.

## Step 3 - install a basic Debian system on the new machine

I'm not going to go into how to install Debian on a new machine -- there's plenty of places describing how to do that, but you need to ensure you install the _most minimal system_ you can. This means not selecting *any* tasks during the installation. When you install a new Debian system, you are at one stage presented with a list of "tasks" which aid the installation of packages. For example there will be Desktop Environment, Mail Server, Print Server etc. This is one of the great things about Debian in that groups of packages required for a specific type of system are grouped and ready for you to install. In this instance we don't want any of those, so when you get to this stage deselect everything - including the Standard System one. This will result in a bare-bones Debian system.

=IMAGE=task_selection.jpg=Do not select any of the tasks during this step in the installation=

Incidentally when installing for this purpose I tend to use one of the Debian "business-card" .iso's. These are minimal (35Mb) iso's which then get the remaining required packages via a net connection.

## Step 4 - use the package list we created in Step 2

Once you have installed your new system and rebooted you should be looking at a login prompt. Login as root and perform an upgrade -- just in case:

=CODE_START=
apt-get update
apt-get upgrade
=CODE_END=

Now we need to tell our new system what packages we require. This again is where dpkg comes in. Put your USB key/flash drive into the new machine and mount it. Remember that as we have a minimal system automounting won't work. Again I won't go into details here about how to mount USB drives. Once the drive is mounted and you have found the packages_list file, run this:

=CODE_START=
dpkg --set-selections < /path/to/packages_list
apt-get -u dselect-upgrade
=CODE_END=

The first command uses dpkg to preselect the packages in the packages_list file. The second command tells apt-get to upgrade the system using the packages supplied by dpkg. It might take a while but by the end of the process you should have a new system with the same packages as the first one. The best part is that dependencies will be retrieved and installed as well.

This process is quite flexible and while it won't be the [`apt-get undo`](/articles/tales_front_search_apt_get_undo/) that Rosalyn Hunter longs for it might help. You could grab the package list of a hosed Sid system and then use that on a new Testing system. I wouldn't recommend going too far that direction though. Going from Testing to Stable might not work as well because some of the Testing packages may not exist in Stable. You could also have the `dpkg --get-selections > /tmp/package_list` command run as a cron job or run it immediately before an `apt-get dist-upgrade` and thus if your system gets really hosed you can backup your data and start afresh confident that you can install the same packages again easily.

As I said I wouldn't use this if I had a lot of identical machines to install -- that's where imaging and cloning comes into its own. But I would and do use this to setup similar machines or reinstall a Debian system after installing a new HDD for example particularly if I wanted to get the latest versions of the packages I was previously using.