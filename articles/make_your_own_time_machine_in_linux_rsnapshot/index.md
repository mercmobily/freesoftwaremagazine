---
nid: '3201'
title: 'Make your own Wayback Machine or Time Machine in GNU/Linux with rsnapshot'
authors: 'Terry Hancock'
published: '2009-09-02 7:00:00'
tags: 'debian,gnu/linux,backup,rsnapshot,time-machine'
license: verbatim_only
section: hacking
listed: 'true'

---
<!--Do It Yourself Wayback Machine with rsnapshot (for Debian or Ubuntu)-->

A good backup system can help you recover from a lot of different kinds of situations: a botched upgrade (requiring re-installation), a hard drive crash, or even thumb-fingered users deleting the wrong file. In practice, though I've experienced all of these, it's the last sort of problem that causes me the most pain. Sometimes you just wish you could go back a few days in time and grab that file. What you want is something like the Internet Archive's "Wayback Machine", but for your own system. Here's how to set one up using the `rsnapshot` package (included in the Debian and Ubuntu distributions).

<!--break-->

# What you can expect

In practice, you can expect to need a backup drive approximately twice the size of the system you are backing up. Once fully established, the backup system will not continue to grow, because old data will eventually be retired and deleted automatically.

With the configuration options in `rsnapshot` it will be possible to create just about any tiered backup arrangement you want. For my system, I keep daily snapshots for 30 days, weeklies for just over a year, and finally, monthly backups for ten years. Presumably, I will have set up a new system long before any of the monthlies get deleted.

Using a script, I have set up my system to work like the Wayback Machine in that each backup incorporates the date in its file path. So, I can browse the available dates and pick one I think is most likely to have the data I want. Thus if today is August 20, 2009, and I've accidently deleted my Mozilla bookmarks file (I've known Sea Monkey to destroy this file if it crashes badly), I can recover it by copying from yesterday's backup:

=CODE_START=
$ cp /backup/auto/date/2009-08-19/myclient/home/terry/.mozilla/Terry/8ufwbbkq.slt/bookmarks.html /home/terry/.mozilla/Terry/8ufwbbkq.slt/
$
=CODE_END=

If I want to see for what dates I have backups, I can simply list the date directory:

=CODE_START=
myclient:/backup/auto/date$ ls
2009-06-23  2009-08-04  2009-08-12  2009-08-20  2009-08-28
2009-06-29  2009-08-05  2009-08-13  2009-08-21  2009-08-29
2009-07-08  2009-08-06  2009-08-14  2009-08-22  2009-08-30
2009-07-17  2009-08-07  2009-08-15  2009-08-23  2009-08-31
2009-07-25  2009-08-08  2009-08-16  2009-08-24
2009-08-01  2009-08-09  2009-08-17  2009-08-25
2009-08-02  2009-08-10  2009-08-18  2009-08-26
2009-08-03  2009-08-11  2009-08-19  2009-08-27
=CODE_END=

# Installation of `rsnapshot`

Installing `rsnapshot` couldn't be much easier in Debian or Ubuntu, where the package is part of the main package repository (and has been for several releases):

=CODE_START=
myserver:~# apt-get install rsync rsnapshot
=CODE_END=

If you're going to keep your backups on the same computer (from one disk drive to another, for example), then this is all you will need. For a Local Area Net (LAN) installation, though, you'll most likely have a "backup server" on which the backup disk is mounted, and several "backup clients" whose data you want to back up onto the server.

For this you will need to set up remote login access for the backup user. In this article, we'll set up the backup user to be `root`. Although this may be a security risk in a vulnerable commercial network, it's good enough for a home or small-business LAN where you can expect to trust the people with physical access to your computers. It also has the advantage of allowing you to keep correct user identities and permissions on the backed up files.

### Password-less SSH access

Probably the worst part of the install is correctly setting up password-less SSH logins on your systems. This is a potential security hole for publicly-open local area networks, although on most home networks this should be no problem. In any case, it does have to be done right for `rsnapshot` to work.

We will set up two-way password-less SSH access for the `root` users on both client and server machines. For some configurations, this is not strictly necessary, but it is very useful for intermittently-connected machines, as I'll soon show.

#### Client configuration for SSH access

First of all, you should use your real host names. In my examples, I will use  `myclient` for a client computer and `myserver` for my backup server. On each client computer and on the server, you will need to generate a public/private key pair, using OpenSSH:

=CODE_START=
$ su
myclient:~# cd /root
myclient:~# ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/root/.ssh/id_rsa): .ssh/myclient
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /root/.ssh/myclient.
Your public key has been saved in /root/.ssh/myclient.pub.
The key fingerprint is:
        . . .
=CODE_END=

Don't type anything for the passphrase! For password-less access, you will need an empty passphrase.

The ellipsis (`...`) omits a representation of the key provided for confirmation.

If you look in the `.ssh` directory, you will now see your two keys:

=CODE_START=
myclient:/root/.ssh# ls
myclient myclient.pub  known_hosts
=CODE_END=

Use `scp` ("secure copy" from OpenSSH) to transfer the `myclient.pub` file to the backup server (and also copy the server's `myserver.pub` file to the client machine). When you have all of the necessary keys, you will then create (or append to) a file called `/root/.ssh/authorized_keys2` in order to make the machines accessible:

=CODE_START=
myserver:/root/.ssh# cat *.pub >> authorized_keys2
=CODE_END=

Of course, you will do the same thing on each client to set up two-way access:

=CODE_START=
myclient:/root/.ssh# cat myserver.pub >> authorized_keys2
=CODE_END=

### Configuring `rsnapshot` on the server

The default configuration file for `rsnapshot`, is, unsurprisingly, `/etc/rsnapshot.conf`. We'll configure this file to handle local backups for filesystems that are mounted on the server, and also on one reliably-connected client (for example, you might use this for a separate file server, called `myfileserver` here). This is also appropriate for a stand-alone computer.

There are lots of comments in the `/etc/rsnapshot.conf` that comes with the standard install on Debian, but I'll omit those in the listings I show here.

First, let me show the final result for my example setup:

=CODE_START=
config_version  1.2
snapshot_root   /backup/auto/
cmd_cp          /bin/cp
cmd_rm          /bin/rm
cmd_rsync       /usr/bin/rsync
cmd_ssh         /usr/bin/ssh
cmd_logger      /usr/bin/logger
cmd_du          /usr/bin/du
interval        daily   30
interval        weekly  52
interval        monthly 120
verbose         2
loglevel        3
logfile         /var/log/rsnapshot
lockfile        /var/run/rsnapshot.pid
one_fs          1
sync_first      1
backup          root@myfileserver:/project/     myfileserver/
backup          /home/                          myserver/
backup          /etc/                           myserver/
=CODE_END=

Now let's break that down. The first line (`config_version`) is basically boilerplate, it just tells rsnapshot what format to expect in this file (copy it exactly). The next line, `snapshot_root` tells where the backup volume is mounted on the server. I have a large hard drive mounted as `/backup`, but I use parts of it for other kinds of backup jobs, so I let `rsnapshot` use the `/backup/auto` directory on it.

The next few lines (`cmd_*`) are essentially more boilerplate. They tell rsnapshot what sort of utilities it has available to do its work (without them, it can fall back on internal methods -- but on any GNU/Linux system, all of these are available).

The next lines (`interval`) are much more interesting:

=CODE_START=
interval        daily   30
interval        weekly  52
interval        monthly 120
=CODE_END=

This is where I decide on what sort of backup schedule I want to keep. Many configurations are possible here, but in my case I've chosen to keep one backup per day for a month, weekly backups for a year before that, and monthly backups "indefinitely", here defined as 10 years (plenty of time to make permanent archives of anything I'm going to need longer than that!).

By the way, the names "daily", "weekly", and "monthly" used here have no special meaning to `rsnapshot`, you can use any interval name you find useful. You'll give these names meaning yourself when you set up the `cron` (or `anacron`) jobs to call rsnapshot. You're perfectly entitled to set up a "fortnightly" or "every10days" job if you want to.

On the other hand, it is critical that the intervals are listed in order from most-frequent to least-frequent. This is because `rsnapshot` will actually make the longer-interval backups by simply rotating an appropriate shorter-interval backup (so for example, the last daily backup will become the first weekly backup when the time comes, and the last weekly backup will become the first monthly one). This may seem a little confusing at first, but it really does work out correctly.

Following this are some more minor details: how much to include in my logs should be (`verbose`, `loglevel`), where to put them (`logfile`), and where to keep a lockfile to avoid collisions if I should (accidentally) attempt to run two instances of the program at once (`lockfile`).

The next line (`one_fs`) prevents backup sets from following symlinks onto other drives. This could be a problem if you make a lot of use of symlinks to aide command-line navigation on your system, and is otherwise fairly harmless.

Somewhat more arcanely, the `sync_first` line tells `rsnapshot` to operate a little differently than it normally does. Instead of making each backup and rotating backups all in one operation, it will do them in two operations: first synchronizing its backup copy, and _then_ rotating into the daily backup set. This is extremely useful for backing up computers which are not reliably available to your network, as we will see a little later.

Finally, the `backup` lines tell what data should be backed up:

=CODE_START=
backup          root@myfileserver:/project/     myfileserver/
backup          /home/                          myserver/
backup          /etc/                           myserver/
=CODE_END=

In this case, I'm making backups of my `/home` directory (user data) and the `/etc` directory (configuration data) on my backup server (which also happens to be a workstation in this example). These are local backups, so no login information is required on the source column (the first argument).

For `myfileserver`, I have set up password-less SSH login (see the previous section), and the source column includes the login ID and hostname as well as the directory.

In all of the lines, I include a target column which is a relative path. This will be interpreted relative to the `snapshot_root` defined earlier. So for example, a user named `joe` on `myserver` will find yesterday's backup data beneath `/backup/auto/daily.0/myserver/home/joe`.

On `myfileserver`, I need to make sure that `rsync` is installed and that I have correctly set up password-less SSH login for the `root` user on `myserver`. Nothing else is required on the backup client (`myfileserver`).

#### The cron job

The final step is to set up a job in the "crontab" on the backup server (`myserver`) to run the `rsnapshot` program at the appropriate intervals to make the backups:

Cron tables are handled differently on different GNU/Linux distributions, so you may encounter a different approach on your system. However, on Debian-derived distributions, there is actually a directory, `/etc/cron.d`, with this information. This makes it easier to keep separate tables for different purposes. The Debian `rsnapshot` package creates a file here for `rsnapshot`, predictably named `/etc/crond.d/rsnapshot'.

It is in this file that you will define the meaning of your `rsnapshot` backup intervals. Omitting comments, here's my sample setup:

=CODE_START=
30  4   * * *           root    /usr/bin/rsnapshot daily
0   4   * * 1           root    /usr/bin/rsnapshot weekly
30  3   1 * *           root    /usr/bin/rsnapshot monthly
=CODE_END=

The syntax at the beginning of each line is unique to `cron`. For a more complete understanding, I'll just refer you to the man page (type `man 5 crontab` to find "`crontab(5)`" which documents this format). In this case, the lines say to run the program with the argument `daily` at 4:30 AM every day, to run with `weekly` at 4:00 AM each Monday morning, and to run with `monthly` at 3:30 AM on the first day of each calendar month.

The reason the times are spaced as they are is to avoid collisions between the different invocations (e.g. whenever Monday falls on the first of the month -- `rsnapshot` will be called three times in succession in that case, and you want it to have enough time to finish each rotation before beginning the next).

# Dealing with intermittent clients

Now I mainly use `rsnapshot` to back up personal workstations, not servers. These machines are not necessarily always turned on or always connected to my LAN (a couple of them are laptops, for example). If rsnapshot attempts to run when one of them is down, it will simply crash during the backup process and no further backups will be made. This is ungraceful and results in missed daily backups (not just for the machine that is off, but for any others that follow it in `/etc/rsnapshot.conf`).

So for these machines, I use the two-way SSH password-less login that I have set up, in combination with the `anacron` package, to create a call-back system. Instead of having the backup server try to back up these machines on its own schedule, these machines run a script that allows them to ask for a backup whenever they are ready. The resulting backups get collected along with the others into the daily/weekly/monthly backup rotation.

#### Setting up the server for intermittent clients

For each intermittent client, we'll use a separate `/etc/rsnapshot_myclient.conf` configuration file. These are essentially just copies of the main configuration file, with a few minor changes. Here's an example for a host named `myclient`:

=CODE_START=
config_version  1.2
snapshot_root   /backup/auto/
cmd_cp          /bin/cp
cmd_rm          /bin/rm
cmd_rsync       /usr/bin/rsync
cmd_ssh         /usr/bin/ssh
cmd_logger      /usr/bin/logger
cmd_du          /usr/bin/du
interval        daily   30
verbose         2
loglevel        3
logfile         /var/log/rsnapshot
lockfile        /var/run/rsnapshot.pid
one_fs          1
sync_first      1
backup          root@myclient:/home/     myclient/
backup          root@myclient:/etc/      myclient/
=CODE_END=

Note that for the intermittent case, the "`sync_first`" option is _mandatory_. Since the backup synchronization will be _asynchronous_ to the rotation process, they need to happen as separate steps. This file obviously only deals with the backups from this one client. Any other clients will have their own files.

#### Setting up the `anacron` job on intermittent clients

The `anacron` package was made with the idea of intermittently operating computers in mind. It's the usual choice for laptop or desktop computers that aren't always running. Instead of being invoked at rigid, regular intervals, it is simply invoked according to a set of constraints: so many minutes after the computer has been turned on, provided that the last time it was run exceeded some given interval. Again, if you want to know more about how `anacron` works, I'll just refer you to its man page.

The invocation of the backup is run from the client computer, using its anacron table. A command will be executed which in turn makes a remote call to the backup server and runs `rsnapshot` there. After that, the job runs essentially as it does for normal server-initiated backups.

To do this, we simply add the following line to `/etc/anacrontab`:

=CODE_START=
1       60      backup  ssh root@myserver /usr/bin/rsnapshot -c /etc/rsnapshot_myclient.conf sync
=CODE_END=

This command will be executed no more than once per day, no sooner than one hour after the computer is turned on. The command is called `backup`, and the actual command to run is a secure-shell connection to the server, which remotely executes `rsnapshot`, with a switch telling it to use the correct configuration file for this client, and the argument `sync`.

The `sync` argument for `rsnapshot` does the data synchronization step _only_. It does not initiate backup rotations. This is because we simply want this script to get the client's data into the correct directory (which, by the way, is `/backup/auto/.sync` in this example) along with the other daily backups.

The `rsnapshot daily` command (which will actually move this backup data into the correct backup directory, `/backup/auto/daily.0`) will be run by the server's normal server-driven cron job (the client requires no special treatment for this to work, except that `sync_first` must be set to `1` for all of the `rsnapshot` configurations used).

#### Some caveats about backups for intermittent clients

It's worth pointing out a couple of details about how the intermittent system will work in practice.

First of all, note that no backups will get made if the machines are not left on longer than the specified limit in `/etc/anacrontab` (60 minutes in the example above). This is handy, because it means that if you just turn on your laptop to check something quickly, it won't spontaneously get tied up with the backup right away. On the other hand, it means that if you want backups to happen, you need to leave your system on now and then so that the scripts will have a chance to run.

Second, unless the system is left on for backup every day, you won't really get daily backups. This is generally harmless, since if it's not on, the data is not being changed, so you aren't missing anything.

Nevertheless, daily backups for the system will appear in the backup system for days when the system was off or disconnected. They will simply be (hardlinked) copies of the last real daily backup. So the datestamps on directories in the backup may be incorrect. If you look closely, however, you'll see that the modification dates on the files are correct.

# Creating a date index

There's really only one thing missing from this set up to make it really usable, and that is a better index. For me at least, trying to figure out what backup to check for a missing file would be a lot easier if I could look things up by date. Trying to do the math and figure out if that was `daily.29` or `weekly.2` is just way too much trouble.

The `rsnapshot` package unfortunately does not provide for a date-based index. However, it's not that hard to make one, and I wrote my own Python script to do it. To use the following script, save it as `/usr/local/bin/datestamp_backups.py` on the `myserver` machine:

=CODE_START=
#!/usr/bin/env python
# Copyright (C) 2009 by Terry Hancock
#---------------------------------------------------------------------------------------
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#---------------------------------------------------------------------------------------

#-- Datestamp Index for Backups --

from datetime import date
import os, glob

RSNAP_ROOT = '/backup/auto'
RSNAP_INTS = 'daily', 'weekly', 'monthly'

date_dir = os.path.join(RSNAP_ROOT, 'date')

# get the date
today = date.today()
stamp = today.isoformat()

# put date in the top level of the current backup (daily.0)
os.remove(os.path.join(RSNAP_ROOT, 'daily.0', 'DATE'))
open(os.path.join(RSNAP_ROOT, 'daily.0', 'DATE'), 'wt').write(stamp+'\n')

# delete the old index entries
os.system('rm -r %s' % os.path.join(RSNAP_ROOT, 'date'))
os.mkdir(os.path.join(RSNAP_ROOT, 'date'))

#for symlink in os.listdir(date_dir):
#    os.remove(os.path.join(date_dir, symlink))

# read dates in all backups and write out symlinks for them as new index
append = 'bcdefghijklmnopqrstuvwxyz'
for interval in RSNAP_INTS:
    for dirname in glob.glob(os.path.join(RSNAP_ROOT, '%s.*'%interval)):
        directory = os.path.join(RSNAP_ROOT, dirname)
        datestamp = open(os.path.join(directory, 'DATE'),'rt').read().strip()
        target = os.path.join(date_dir, datestamp)
        i=0
        while os.path.exists(target):
            target = os.path.join(date_dir, datestamp + append[i])
            i += 1
        os.symlink(directory, target)
=CODE_END=

I have (somewhat lazily, I admit) simply defined the `rsnapshot_root` and interval names as constants in this script. You'll have to change these two definitions (`RSNAP_ROOT` and `RSNAP_INTS`) to suit your system.

You will also need to add a line to the `/etc/cron.d/rsnapshot` file on `myserver` to make use of this script, resulting in this configuration:

=CODE_START=
30  4   * * *           root    /usr/bin/rsnapshot daily
0   4   * * 1           root    /usr/bin/rsnapshot weekly
30  3   1 * *           root    /usr/bin/rsnapshot monthly
0   5   * * *           root    /usr/local/bin/datestamp_backups.py
=CODE_END=

This causes the program to be run daily, 30 minutes after the backups are rotated. It simply builds a directory of symlinks, with date-based names, which point to the appropriate backups. Listing the resulting directory shows which backups are available:

=CODE_START=
myserver:/backup/auto/date# ls
2009-06-23  2009-08-04  2009-08-12  2009-08-20  2009-08-28
2009-06-29  2009-08-05  2009-08-13  2009-08-21  2009-08-29
2009-07-08  2009-08-06  2009-08-14  2009-08-22  2009-08-30
2009-07-17  2009-08-07  2009-08-15  2009-08-23  2009-08-31
2009-07-25  2009-08-08  2009-08-16  2009-08-24
2009-08-01  2009-08-09  2009-08-17  2009-08-25
2009-08-02  2009-08-10  2009-08-18  2009-08-26
2009-08-03  2009-08-11  2009-08-19  2009-08-27
=CODE_END=

An abbreviated long listing shows more explicitly how the symlinks relate to the actual directories created by `rsnapshot`.

=CODE_START=
myserver:/backup/auto/date# ls -l
total 0
lrwxrwxrwx 1 root root 21 2009-08-31 05:00 2009-06-23 -> /backup/auto/weekly.5
lrwxrwxrwx 1 root root 21 2009-08-31 05:00 2009-06-29 -> /backup/auto/weekly.4

   . . .

lrwxrwxrwx 1 root root 20 2009-08-31 05:00 2009-08-28 -> /backup/auto/daily.3
lrwxrwxrwx 1 root root 20 2009-08-31 05:00 2009-08-29 -> /backup/auto/daily.2
lrwxrwxrwx 1 root root 20 2009-08-31 05:00 2009-08-30 -> /backup/auto/daily.1
lrwxrwxrwx 1 root root 20 2009-08-31 05:00 2009-08-31 -> /backup/auto/daily.0
=CODE_END=

Note that this script doesn't interfere with the function of `rsnapshot` at all. It simply creates a new directory of symbolic links which refer to the directories `rsnapshot` makes.

# Making the backups available for recovery

In order for users to make use of the backup volume, it's a good idea to mount it as a read-only NFS filesystem. It's important to limit the ability to write to the system, because, due to the nature of hardlinks, it would be very easy to create unexpected problems (editing one version of a file which appears in many backup sets would edit them all!).

I simply made `/backup` available in this way. So anyone on the LAN who wants to fix a missing or corrupted file, can simply visit `/backup/auto/date/` and look for an appropriate date to find a saved copy of the file. Just like the "Wayback Machine" does for the internet.


=TEXTBOX_START=How the magic works=
This technique is originally due to Mike Rubel who suggested using the `rsync` mirroring tool and _hardlinks_ to create incremental backups with a minimum of space used. The magic here is that only files which have changed are stored in each backup, and yet from the users' point of view, it's exactly like browsing complete independent file systems for each backup.

The `rsync` program was designed to save bandwidth when making a mirror of a remote site. As such, it attempts to complete the copy while making (and communicating) the minimum amount of information. The client asks the server first for verification that files aren't changed (filesizes and checksums are compared to determine this). When files have changed, they are copied from the source to the target for the mirror.

That's the first part of the trick.

The second part is the use of "hardlinks". When you initially create a file on a Unix or Linux filesystem, you are storing data, but also a directory entry which links to that data. There is, however, no fundamental reason why there can't be more than one such link, possibly appearing in multiple directories.

Each of these links has _equal claim_ to the file data. The filesystem software will keep the data as long as _at least one_ link still points to it (when the last link is removed, the system will "garbage collect" the data blocks on disk, adding them to the available free space).

What `rsnapshot` does on each backup is to first create an entire directory system, entirely using such links to the previous backup data. At the beginning of the back up, there are therefore two directory structures pointing to the same data.

Then it runs `rsync` on the copied directory. Every time a file is encountered which has changed on the source filesystem (the directory you are backing up), a new data block will be created replacing the old data. Similarly, any new file appearing on the source system will be created in the new backup. However, any unchanged files will be unaffected (because of the lazy way that `rsync` conducts its backup), and as a result, will _still_ be hardlinked to the original data.

In the end, you wind up with two directory systems which _appear_ to be independent copies of the source at different times. In fact, however, you are only using the space of a _single_ copy, plus the space taken up by the files that have changed. In practice, this is usually only a few percent more than the size of the single copy.

Of course, all of this would break down if you needed to _write_ to the system (you'd appear to change both files at once, because actually they are the same file). However, when accessing a backup system, we aren't interested in writing, just reading. And for that, the `rsnapshot` approach is perfect!
=TEXTBOX_END=


# Your own Wayback Machine

This is a capability I've been wanting to set up ever since I read Mike Rubel's [original paper](http://www.mikerubel.org/computers/rsync_snapshots/) on the idea. The [`rsnapshot`  package](http://rsnapshot.org/) took care of everything except the date index, and that wasn't that hard to script.

I've been running this system for about six weeks now, without a hitch, so I think it's pretty solid. It should work on just about any GNU/Linux system, although I've only provided instructions for Debian derived systems (Including Ubuntu, for example).

I hope it improves your peace of mind as much as it did mine!

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)".
=TEXTBOX_END=
