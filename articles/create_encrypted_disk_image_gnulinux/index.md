---
nid: '3849'
title: 'Create an encrypted disk image in GNU/Linux'
authors: 'Tony Mobily'
published: '2015-06-10 9:20:55'
tags: 'encryption,privacy'
license: verbatim_only
section: hacking
main_image: main_25.jpg
listed: 'true'

---
In my previous article about [creating a "mountable" disk image in GNU/Linux](http://www.freesoftwaremagazine.com/articles/create_mountable_disk_image_gnulinux), I explained how to create a file that effectively mimics the functionality of a disk: I explained how to create a file which will then be used, in turn, to contain directories and files. In this article I will explain how to make the next natural step: encrypt that file.

<!--break-->

# A summary of the previous article.

My previous article could be summarise like this:

1. Make a file with `fallocate -l 512M image.iso`
1. Create a file system on it with `mkfs.ext4 -j image.iso` or `mkfs.fat image.iso`
1. Mount the file right-clicking on it

This bets for the question: is it possible to change things so that the information on the file is encrypted?

# Creating an encrypted container

The first step is to install the dm-crypt tools, which will give you the commands to create an encrypted file. In Ubuntu, just type `sudo apt-get install cryptsetup`. Note that `cryptsetup` tends to be already installed on CentOs by default.

You will still need to create an empty file:

=CODE_START=
$ fallocate -l 512M enc.iso
=CODE_END=

An empty file like this is like an empty shell; rather than putting the file system on top with `mkfs`, we will use the `cryptsetup` command to put a `LUKS container` in it:

=CODE_START=
$ sudo cryptsetup -y luksFormat enc.iso
=CODE_END=

You will be asked to enter a password to encrypt the file:

=CODE_START=
$ sudo cryptsetup -y luksFormat enc.iso
[sudo] password for merc: 

WARNING!
========
This will overwrite data on enc.iso irrevocably.

Are you sure? (Type uppercase yes): YES
Enter passphrase: 
Verify passphrase: 
$
=CODE_END=

A quick note about the password: the `-y` option is there so that `cryptsetup` will ask you to confirm the password. You must remember that if you lose that password, there is nothing you can do to get it back; there is no master password, and there is no way to recover it (unless you decide to brute force it, by trying passwords from a dictionary).

After this command, the `enc.iso` file will be a "LUKS container". There is no trace of a file system on it yet: it's just en empty, encrypted shell.

# Opening the LUKS encypted container

At this point, it's time to create a file system on the container. You cannot simply run `mkfs.ext4 image.iso`: if you do, you will overwrite the LUKS container data you just created (and will replace it with a plain, unencrypted file system).

In order to open the LUKS container, you will need to use the `cryptsetup luksOpen` command like so:

=CODE_START=
$ sudo cryptsetup luksOpen enc.iso encVolume
=CODE_END=

It's the same command as before, `cryptsetup`, but with a `luksOpen` option rather than `luksFormat`.

In order to open the LUKS container, you will be asked to enter a password. What you enter will need to match what you set.

The command above will _map_ the file `enc.iso` to the volume `encVolume`. What this means, is that it will _decrypt_ `enc.iso` and will make it available, unencrypted, as the volume `encVolume`. The volume `encVolume` will be available as `/dev/mapper/encVolume`. 

So:

*  `/dev/mapper/encVolume` is the exact same size as `enc.iso`;
* Changing information in `/dev/mapper/encVolume` will imply that the same information will change in `enc.iso` -- however, the information in `enc.iso` is _encrypted_
* Changing the file `enc.iso` directly will result in immediate, complete data loss as the information on it is completely encrypted
* `/dev/mapper/encVolume` is only available after opening `enc.iso` with `cryptsetup lukOpen` (and providing the correct password)

# Write a file system on the open LUKS volume

While you are free to write anything you like on `/dev/mapper/encVolume`, if you think about it for a second, the most useful thing to store on it is... a file system.
This is easily done with:

=CODE_START=
$ sudo mkfs.ext4 /dev/mapper/encVolume
=CODE_END=

Once again: this command will write information on `/dev/mapper/encVolume`, which is only an "decrypted view" of the file `enc.iso`.

At this point, you can mount `/dev/mapper/encVolume` as you would do.

# It's a Linux tool

LUKS stands for Linux Unified Key Setup. As the name says, it _is_ a Linux tool. It's difficult to open volumes encrypted with LUKS in Windows or Mac. So, if your goal is to exchange files, LUKS might not be the best solution.

This is the same reason why it doesn't _really_ make sense to create a file system like `vfat` on a LUKS container: the container will most likely be opened by a Linux machine, able to read ext4 file systems.