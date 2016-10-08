---
nid: '3686'
title: 'Backup your data in Linux with Deja Dup'
authors: 'Tony Mobily'
published: '2012-01-16 12:21:01'
license: verbatim_only
section: end_users
main_image: main.jpg
listed: 'true'

---
Hard disks break. Really, they do. When it happens, most people are sadly unprepared: even the most experienced computer person only recovers a (big?) portion of their data after a crash. Even today, with cloud computing. The reason? Backing up is tricky. If you use GNU/Linux or Ubuntu, it's easy enough to make an incremental backup using `rsync` and `gpg`. If you have no idea what this means, don't worry: yu will be able to use them without even knowing it.

Welcome to Déjà Dup, the best backup gem I have ever seen.

<!--break-->

Note that this article, which started as a comprehensive piece about this program, turned out to be quite short. The reason? Simple: the program is disarmingly easy to use and to explain. This article could be called "Déjà Dup: the definite guide".

# Running Déjà Dup

If you are using Ubuntu 11.10 or later, you don't have to install Déjà Dup. In fact, you don't even have to run it: it's straight in the configuration settings of your Ubuntu system.

=IMG=one.png=It doesn't get much more complicated than this!=

The first time you run Déjà Dup, you get a screen with a vault and two big buttons. This is a great start, and the good news is that it doesn't get much more complicated than this!

The basic settings all make a lot of sense (the Trash and the Downloads directories are not backed up).

=IMG=settings.png=The basic settings=

All you need to do, in the end, is decide what backup medium to use -- and there is a lot of choice: FTP, SSH, WebdAV, Windows Share, as well as Ubuntu One. (Note: Ubuntu One is based on a proprietary protocol, and should be avoided if possible. However, having it available as an option is definitely a good invitation to using it).

=IMG=choices.png=The possible backends. Beware of Ubuntu One, based on a proprietary protocol=

Once you feel that your settings are good enough, all you have to do is press the big "Backup now" button and you're set.

=IMG=backing_up.png=Backing everything up=

# Restoring from past (really!)

=IMG=restore.png=Restoring a file=

One of the most meaningful features is the ability to restore from the past. This is a good enough reason for me to use this software. For any file, it's possible to right click on and select "Restore from previous version...". Déjà Dup will fire up, and it will allow you to restore a particular file from a backup.

This kind of integration is what makes powerful software accessible to normal users.

# Is it safe?

Déjà Dup encrypts your data before sending it over. So, as long as you can remember your password, you are in safe hands -- even if the host you backup onto gets hacked.


# Periodic backups

With Déjà Dup it's very easy to configure periodic backups. Do do them, just click on "Schedule" and decide how often you want to run your backups, and how long for.

Yes, it's that simple. With Déjà Dup, there is really no excuse not to backup anymore.