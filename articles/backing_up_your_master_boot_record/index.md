---
nid: '2438'
title: 'How to back up your Master Boot Record (MBR): fail to prepare or prepare to fail '
authors: 'Gary Richmond'
published: '2007-08-05 6:30:00'
tags: 'backup,mbr,grub,partitions,master-boot-record'
license: verbatim_only
section: hacking
listed: 'true'

---
Backup, like security, is a well-worn mantra in the world of GNU/Linux—and even the most battle-hardened, street-wise user has, for whatever reason, thought about regular backups _after_ disaster has already struck. It is an all too familiar story. System Administrators, by the very nature of their work, will have that imperative carved on their headstones. For them it will be a way of life. Desktop users, being responsible only for themselves, can afford to be a little more louche about such things. If it all goes a bit “arms in the air” there is no one to reproach them but themselves.

You should backup many things: the files in your home directory, configurations files in `/etc`, (and there are many excellent graphical tools to do the job) but one of the simplest and best things you can do is to backup your boot master boot record (**MBR**). It’s one thing to experience lost or corrupted files, it’s quite another not to be able to bootup your computer at all. What follows may just get you out of a fix.


# Windows manners

It is highly unlikely that you came to GNU/Linux as a computing virgin. You almost certainly, like me, came via Windows and therefore either installed over it or decided to attempt to dual boot. Like Bill and Steve, Windows is a bit short on computing etiquette and if you installed GNU/Linux first on a blank hard drive and then followed up with an installation of some version of Windows you will have made a painful discovery. Windows will, without so much as a by-your-leave, stamp all over your GNU/Linux boot sector with great big hobnail boots. The first lesson is to **install Windows first**.

However, you don’t need to be dual booting with Windows to court disaster. Dual booting with several versions of GNU/Linux can lead to boot problems too. At best, only one version will boot—or worse, none and you may find yourself googling furiously to understand terse and cryptic GRUB error messages. Sometimes, boot sectors (including partition tables) can just get corrupted for no discernable reason at all. Whatever the reason, you need to prepare for all eventualities as GRUB (GRand Universal Bootloader) does not make a copy of the MBR during installation.


# Backing up

The MBR, as I will refer to it hereafter, is a 512 byte segment on the very first sector of your hard drive composed of three parts: 1) the boot code which is 446 bytes long, 2) the partiton table which is 64 btyes long, and 3) the boot code signature which is 2 bytes long. These numbers are **VERY** important. Any careless or impulsive fingering at the keyboard of these numbers could well render your machine unbootable or the partition table unreadable. The sight of a grown man crying is not pretty. You have been warned!

The core of the backup command is `dd`—which will be familiar to every system administrator, especially to those who intend to clone an entire hard disk. To see all the options type `man dd`. As we want to back up only the first 512 bytes we need to append some agruments to it. Here is the full command you need (and remember to run it as the root user, `su` (and `sudo` for Ubuntu users):


=CODE_START=

dd if=/dev/hda of=/home/richmondg/mbr_backup bs=512 count=1

=CODE_END=

Obviously, you will need to substitute the partition where your boot sector resides and also use your own username. Now let’s see just what we did there. `dd` just stands for disk dump, `if` means input file, `of` means output file, `bs` simply means bytes and `count=1` tells the command to do this just once. It makes sense to save this out to some removable device, usually a USB stick, in which case amend the file path to suit so that `/home/richmondg/mbr_backup` reads, say, `/dev/sda/mbr_backup` or just copy the original backup to the external device.


# Or, only copy the first 446 bytes. Why?

This could be a useful tip. If you change 512 to 446 in the above command you will only save the boot sector, but not the partition table. Why would you want to do that? The reason is that if you use 512 bytes and subsequently amend your partitons for any reason and then restore the MBR it will be out of sync. So, ensure that if you have made any partiton changes since your original MBR backup that you update that backup.


# Restoring the MBR

Not surprisingly, in order to restore the MBR it is only necessary to reverse that original command which saved it. If you managed to hose the MBR you will not be able to boot up, so you can use a live CD to access your hard drive and read the backup off any removable media such as a USB stick. Here is the command:


=CODE_START=

dd if=/dev/sda/mbr_backup of=/dev/hda bs=512 count=1

=CODE_END=

Again, amend `sda` to read where you saved the MBR and run the command as root. If you wish to kill the MBR altogether, including the partition table, then you can overwrite it with a series of zeros:


=CODE_START=

dd if=/dev/zero of=/dev/hda bs=512 count=1

=CODE_END=

If you want to kill the MBR but leave the partition table intact then simply change 512 to 446.

There are, of course, alternatives which involve using your install CD in rescue mode to reinstall GRUB which will have the same effect (with the added advantage of not overwriting the partition table) but that is another topic in its own right. In the meantime, using the `dd` command with arguments will help familiarise you with other linux commands and the file structure. Mastery of the command line is a learning curve but one that can repay huge dividends when things go wrong.

