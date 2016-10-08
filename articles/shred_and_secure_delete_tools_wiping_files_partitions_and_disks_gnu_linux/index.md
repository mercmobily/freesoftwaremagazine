---
nid: '3063'
title: 'Shred and secure-delete: tools for wiping files, partitions and disks in GNU/Linux'
authors: 'Gary Richmond'
published: '2008-11-29 22:59:20'
tags: 'wipe,shred,delete,ext2,journal'
license: verbatim_only
section: end_users
listed: 'true'

---
I carry a small, laminated card indicating my subscription to the IUSP (International Union of the Super Paranoid, tin hat division). Well, you can't be too careful. After all, we live in a dangerous world and computers are just an extension of that. After you've installed the right operating system--GNU/Linux, of course--secure browsers, rootkit and virus scanners, you might just start to feel secure--and smug. Don't be. Until you have understood and mastered some of these GNU core utilities to securely delete, shred and wipe files, directories, partitions and whole disks you're not in the clear. Why not?

In the last year or so the British press has been full of stories about Government departments and individual employees who have lost laptops and flash sticks. Lost in the post, left on train seats, you name it. Not password protected, not encrypted. Nothing, and you can bet they were all running Windows. A wet dream for anyone trading in identity theft or blackmail. This cavalier approach to computer security should come as no surprise. Most people just want to switch computers them on and use them. Security is usually an afterthought--if at all.

<!--break-->

=ZOOM="I'm using GNU/Linux mate, I'm alright", you say smugly=


"I'm using GNU/Linux mate, I'm alright", you say smugly. Well, you're certainly in a better place than the average non-professional Windows user, that's for sure, but you shouldn't be too complacent. We all know about deleting files, directories or dragging them to the trash can/recycle bin. Gone? Think again. That is only the beginning. If you knew what was really going you might not sleep so well. I will look at what is going on and how to _really_ destroy any offending data from the humblest file to a whole hard disk. You might want to wipe a whole disk prior to a re-install, giving to someone else or donating to a charity and you want to be sure that no trace of incriminating data remains. The British press has carried stories of such donated disks being scanned and revealing all manner of unspeakable beastliness. Corporate donations are especially vulnerable. Don't believe me? In 2003, two students at MIT bought 158 disks on eBay and proceeded to discover 5,000 credit card numbers, personal medical details, records of financial transactions, e-mails and yes, inevitably, pornography, to name a few. And many of these disks had been "wiped". So, let's take at look at the GNU tools you can use to avoid tears before bedtime.

# Shred

Shred is part of the GNU Core utilities so it should be in any distro you are using. I noticed when writing an [last article on Kruasder](http://www.freesoftwaremagazine.com/columns/krusader_one_file_manager_rule_them_all) that the right context menu contained an option to shred files/directories but of course it is pre-eminently a command-line tool as a simple `man shred` in a console will demonstrate. It is possible to add `shred` as a [KDE service menu](http://www.kde-apps.org/content/show.php/Secure+Delete+Servicemenu?content=75734) and `Wipe` as a [Nautilus script](http://www.mopedia.co.uk/2007/12/wipe-filesfolders-using-nautilus.html). The GNU/Linux GUI implementation of Pretty Good Privacy (PGP), KGpg, when first used launches a setup wizard which gives you the option to install a desktop shredder icon. You can drag and drop files onto the icon and securely delete them. (This works on my version, 1.2.2, but later ones have discontinued this feature. If using a later versions without this feature then try a KDE service menu called [Qwipe.](http://www.kde-apps.org/content/show.php/Qwipe+-+secure+file+delete?content=91031)

=ZOOM=A file is no more deleted than if you had walked into a library and removed a book's catalogue card=

So, what's wrong with just deleting a file or directory? Nothing, except for the fact that you haven't actually removed if from your hard drive. All that has happened is that the pointer to the file has been removed. The original file is still there, waiting to blabber to anyone with the forensic skills to locate it. Using the `rm` command won't help either because it only marks a file's data block as free. A file is no more deleted than if you had walked into a library and removed a book's catalogue card. The book is still there on the shelf. 

## Shred and Journaled file systems. A warning

One of the selling points of GNU/Linux, amongst many, is that you won't be faced with the indignity of running a defragmentation program because files have become progressively more and more non-contiguous or because your system crashed. `ext3` GNU/Linux file systems are journaled. Simply put, in order to avoid tedious defrags in file systems like `ext3`, `ReiserFS`, `XFS`, `JFS` and `ext4`, changes are logged to a journal so that in the event of a crash data is subject to less corruption and restored in a consistent state. There are of course performance hits to be endured for this facility (as data is written twice). There are three types of journaling: journal, ordered and writeback. Using `shred`, with an `ext3` file system presents the user with the problem of secure deletion because it can only really be effectively used with ordered and writeback journals.

The solution as far as `ext3` is concerned is to convert it to a non-journaled system like `ext2`, run `shred` and then convert back to `ext3`. This can be done on the fly. If you are not sure what file system you are running just type `/etc/fstab` in the location bar of Konqueror to find out. If it is `ext3` you can convert it to `ext2` using the following method.

Open a console, as root, convert `ext3` to `ext2`:

`tune2fs -O ^has_journal /dev/hda1`

and then:

`e2fsck /dev/hda1`

You will also need to amend `/etc/fstab` (as root) in your favourite text editor to change the entry to `ext2`. Once you have used the `shred` command you need to re-convert the file system back to `ext3`:

`tune2fs -j /dev/hda1`

That seems like a lot of trouble to go to to shred files securely and it is but at least you can be sure that nothing escaped. There is another way. Edit the mount options in `/etc/fstab` (as root) to change the _type_ of journal mode to one of the two types listed above, use shred and revert the journal type once again by the same method.

You need to be aware that there are similar potential problems with Raid devices and compressed file systems too. Finally, if there are any files with strange names which include control or special characters it might be necessary to securely [delete them by identifying by their inode number](http://www.cyberciti.biz/tips/delete-remove-files-with-inode-number.html). If you want a quick alternative to Shred consider `chattr` which you use to change a file or directory's attributes. Use the `-s` option to securely delete the block they occupied with a series of zeros but this is pretty basic (though at least using the `+i` switch will protect a file from deletion my marking it as "immutable" should you run amok with Shred). Failing that, try [`libtrash.`](http://articles.techrepublic.com.com/5100-10878_11-5034918.html)

# The shred options

So, how do you use the command? The first port of call, as always, should be to run `man shred` and `shred --help`. Shred will overwrite files a number of times and that number can be specified on the command line: appending `-n 5` will, for example overwrite a chosen file five times (the default is twenty five) You've shredded the file now but you want to delete it and what's more you want to conceal the fact that you've deleted it. As with many GNU/Linux commands you can combine them all. So, to shred, overwrite and delete a file called `confidential stuff.txt` just type `shred -u -z -n confidential stuff.txt`. If you need re-assurance that the file is being shredded and deleted you can view progress by adding `-v` as well although the `shred` command will always output a zero or non-zero value (as Kpackage does) to indicate success or failure respectively. 

One final thing: you can append is `-f`. That will allow you to use shred on files for which you do not have permissions. Incidentally, if you want to see how Shred actually works call it without any parameters, and the garbage in a shredded file can be viewed. So, type `shred confidential stuff.txt` and then follow it with `cat confidential  stuff.txt` and the konsole will output what `shred` has done to the file. You can then proceed to use options like `-u -v` to finish the job.

If you doubt the manufacturer's claims for Shred you can test its efficacy by using yet another command line tool: `debugfs` (part of the e2fsprogs utilities). As ever, try `man debugfs` before you take it out for a spin. So, for example, if you have deleted files without using Shred on a particular partition `debugfs` will list them: `debugfs /dev/hda2` (obviously, replace that last part with the name of your own partition) will open a prompt. Type `lsdel` and debugfs will list them with their inode numbers and deletion dates which can be used to try and recover them using the `dump` command.

It is important to note that this command works better with partitions rather than individual files as some file systems make backups. Re-installing your distro or reformatting the hard drive looks secure but competent forensic tools can sniff out stuff so it good to know that `shred` can do for partitions too--with one proviso. You can't shred the partition from where you are running this command. You will need to do it with a live CD and since you will be deleting an entire partition or a whole hard drive, it makes sense to limit the number of passes; otherwise it might be a good idea to re-read _War and Peace_ to pass the time.

# How many passes?

You can go with the defaults or set your own. The US Government standard is seven passes but there are apocryphal tales of files being recovered after fourteen passes.  Shred's default is twenty five but secure-delete, below, uses thirty eight.

# Put shred on steroids

`Shred` is a powerful command for sure but it doesn't cover all the angles. For that you need something even more powerful; here Ubuntu users are in luck because they have at their disposal a tool that can deal with data in RAM, free space and in swap. Other distros can [download the tarball](http://sourceforge.net/project/showfiles.php?group_id=3297&package_id=3226&release_id=612697). Just `apt-get install secure-delete` in a console (as root--`su`) and issue any of the following commands:

* `srm confidential.txt` (securely deletes files and directories)
* `smem` (wipes data from memory to combat [data remanence](http://en.wikipedia.org/wiki/Data_remanence))
* `sfill mountpoint/` (wipes the free space on a disk) Use with a live CD, possibly as root
* `sswap` (wipes swap partitions  used when RAM is full. Use in conjunction with `smem`)

The last command requires you to turn off swap first. Just open `/etc/fstab` or type `cat /proc/swaps` to see where swap is mounted and then disable it with `sudo swapoff/dev/hda2` (insert your own detail here). Swap can now be wiped with `sudo sswap /dev/hda2` and swap re-enabled again with `sudo swapon/dev/hda2`.

=ZOOM=If it is good enough for the Royal Canadian Mounties, it's probably good enough for me=

One of the biggest advantages of Secure-delete over Shred is that the former not only uses random data _and_ zeros but also deploys cryptographic techniques developed by Peter Gutmann (who describes himself as "a professional paranoid"). The [Gutmann method](http://en.wikipedia.org/wiki/Gutmann_method) is an algorithm for securely deleting files and hard drives base on his [paper on secure deletion of data on magnetic and solid-state memory](http://www.cs.auckland.ac.nz/~pgut001/pubs/secure_del.html). If you prefer you can download and burn a copy of [DBAN](http://www.dban.org/download) which includes the Gutmann method and the [Mersenne twister](http://en.wikipedia.org/wiki/Mersenne_twister). This is _the_ tool for securely wiping whole drives. If it is good enough for government agencies, including the Royal Canadian Mounties, it's good enough for me. If you can't get a binary for your particular distro you can always [get a compressed tarball of SRM (secure delete) over at Sourceforge.](http://sourceforge.net/projects/srm)

Of course you could always deploy the basic `dd` command more associated with [backing up Master Boot Records (MBR)](http://www.freesoftwaremagazine.com/columns/backing_up_your_master_boot_record) and imaging partitions or whole disks. It really is as simple as `dd if=/dev/zero of=/dev/hda` to overwrite a drive with a series of zeros or `dd if=/dev/urandom of=/dev/hda` which overwrites a drive with random data (though some will claim it is only really pseudo-random). However, if you think this is pretty basic and can't compete with the relative granularity of Shred or Secure-delete there are those who disagree. The people at 16 Systems have issued the ["Great Zero Challenge"](http://16systems.com/zero/index.html) to established recovery businesses to retrieve one file and one folder from a hard drive wiped with the `dd` command. So far the prize has remained unclaimed.


# If all else fails

Regardless of how or why you are trying to wipe a hard drive or delete partitions, directories or files it pays to use the powerful built-in commands supplied as standard by virtually all GNU/Linux distros. Like Oddball's souped up tank engine and gun barrel extension in Kelly's Heroes these commands may get you out of trouble faster than you got into it. Woof woof.

If none of the above takes your fancy or you are clinically, incurably paranoid then I'm afraid there is nothing else for it but a trip down to the shed at the bottom of the garden. Clear a space for some heavy-duty destruction (yes, just relocate your collection of "rare" magazines for the discerning gentlemen (cough)) and fetch out that tungsten-tipped drill bit, sandpaper and a vat of Sulphuric acid and pulverize those platters. Even then...

