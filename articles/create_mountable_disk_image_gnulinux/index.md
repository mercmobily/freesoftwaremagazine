---
nid: '3845'
title: 'Create a "mountable" disk image in GNU/Linux'
authors: 'Tony Mobily'
published: '2015-06-05 4:11:38'
license: verbatim_only
section: hacking
main_image: main.jpg
listed: 'true'

---
In this article I will explain how to create a file that works like a USB drive -- without the "physical" side of a USB disk. The advantage of making such a file is that you can make it encrypted; as a result, nobody will ever be able to see what's in it unless they know the passphrase.

<!--break-->

# The first step: creating a simple image

As a first step, simply create a file that acts as a plain, un-encrypted container of information.

First of all, create an empty file:

=CODE_START=
fallocate -l 512M image.iso
=CODE_END=

This will simply create an empty 512Mb file. In Ubuntu, if you right click on it and select "Open with", and then select "Disk image mounter", nothing will happen: it's still just a file!

The next step, is to turn this file into a "virtual disk" by adding a _file system_ to it; doing so is really simple:

=CODE_START=
$ mkfs.ext4 -j image.iso
=CODE_END=

This will prompt you the question: "image.iso is not a block special device. Proceed anyway? (y,n)". The question is there because you would normally create a file system onto a physical disk, rather than a file.

If you wonder, `ext4` is a common file system used by GNU/Linux, but it's not the only option: you will see why in a minute.

Once the command is run, you can finally "mount" your file: right click on it, select "Open with", and then select "Disk image mounter". You will see that your file is "mounted", just like it happens with USB keys when you plug them into your computer.

## Wait... what's going on?

What's actually going on here is that you are treating a file (in this case `image.iso`) just like a disk. When you copy a file onto the mounted disk, you are actually changing the `image.iso` file. You can (and should) "eject" the disk when you're done, just like you would do with an external disk.

=IMG=1.png=The file was "mounted", just like it happens with a USB disk=

The magic happened when you ran `mkfs.ext4` onto the file: you installed a _file system_ on it, and therefore turned it into something able to hold information.

# Making it compatible, and better

You are now able to take your image.iso file anywhere you like: people will be able to _mount_ it, and see its contents... as long as they use GNU/Linux. If you want to turn it into something more universal, you will need to create a file system that every system out there will understand. The most universal file system out there is Microsoft's old `fat`. So the last command would look lke this:

=CODE_START=
$ mkfs.fat image.iso
=CODE_END=

_Warning:_ since you are creating a new file system onto the file, anything stored in it before will be zapped. 
Your `image.iso` file can now be mounted on Windows, OS X or GNU/Linux. There is only one problem: the FAT file system doesn't like big fat files bigger than 4Gb (as ironic as that sounds). This is resolved with the new file system called `ExFat`.

If that's an issue for you, first of all install `exfat-utils` (in Ubuntu, simply type `sudo apt-get install exfat-utils`) and then run:

=CODE_START=
$ mkfs.exfat image.iso
=CODE_END=

Again, watch out: every time you write a file system onto a file, you will delete anything stored on it; well, technically speaking the information is still there, but it's no longer accessible since the file system, which was used as a index to find it, is gone.

# What's next?

The next step is to create an _encrypted_ file system, making your virtual disk safe and unbreakable. This will be covered in tomorrow's article. Stay tuned!
