---
nid: '2104'
title: 'Backup your workstation with Backup Manager'
authors: 'Ken Leyba'
published: '2007-05-23 6:30:00'
tags: 'howto,backup,backup-manager'
issue: issue_17
license: cc-by-nc
section: hacking
main_image: b.jpg
listed: 'true'

---
Backing up is one of those tedious jobs that has to be done but is usually relegated to the end of the To Do list. Enter Backup Manager, which is a set of Bash and Perl scripts that alleviate the tediousness of performing backups. Taking away some of the complexity of backup tools and combining others, Backup Manager brings simplicity to backing up. Obtaining a higher level view of backups also allows easier management of archives including retention. What follows is a method of backing up a single workstation daily and managing those backups.

# Conceptual View

The concept behind Backup Manager is elegant, backups or archives are stored in a repository. The repository is a sub-directory or preferably a dedicated partition to hold the archives. Archives are built using backup methods. There are several backup methods, each defined by configuration options known as keys. These keys are stored in one or more configuration files. Each configuration file can define its own repository, backup methods and other options. Multiple instances of Backup Manager can be run in parallel, each with its own configuration file, although the same configuration file cannot run twice at the same time. Since Backup Manager is a command line tool it is simple to schedule archiving with a Bash script and cron.


=ZOOM=Since Backup Manager is a command line tool it is simple to schedule archiving with a Bash script and cron=


=IMAGE=bumanagerdiag.jpg=Figure 1: Conceptual View of Backup Manager=

There are multiple types of backup methods used by Backup Manager. The most common are referred to as tarball methods, archives created with the _tar_ command. The `tar` command, initially named for Tape ARchival, creates archives that do not necessarily reside on tape and are often stored on disk or other removable media. These tarballs can be compressed with several different compression types: `zip`, `gzip`, `dar` or `bz2`. To save disk space tarballs can also use a method to create full and incremental backups. With incremental backups, Backup Manager keeps track of files that have changed and only archives changed files, thus saving storage space. Other methods include the ability to archive MySQL databases, subversion repositories and customizable generic methods.

Storing of archives on the host system is not a preferred strategy of disaster recovery. There are a series of methods that allow remote storage of archives to other servers or removable media, i.e. CD/DVD. Upload methods consist of `ftp`, `ssh`, `rsync` and use of Amazon Simple Storage Service (Amazon S3). Each of these methods, with the exception of the burning method, requires a destination server with additional services and configuration. The destination servers will accept the uploading of archives, which is beyond the scope of this article. The burning method, currently the only export method, transfers archives from the repository to writable CD or DVD media via the _cdrecord_ utility.


# Installation and configuration

The example system is Kubuntu Edgy which uses version 0.7.2 of Backup Manager. Version 8.0 is promised to be available soon, so check the Backup Manager web site for updates. Since Backup Manager is a command line tool, installation and use will be performed from the command line. Installation is done with the `apt-get` command. Since there are a few things that need to be done as root and typing `sudo` for every command gets tiresome, becoming root will save some keystrokes.


=CODE_START=

$ sudo su -
Password:
# apt-get install backup-manager backup-manager-doc

=CODE_END=

For non-Ubuntu or -Debian based systems, check your distributions repositories for Backup Manager packages or install from source. The source tarball includes simple instructions in the included `INSTALL` file. The installation places several scripts in `/usr/share/backup-manager`, installs the configuration file `/etc/backup-manager.conf`, installs the man pages, the main executable script saved as `/usr/sbin/backup-manager`, a cron script `/etc/cron.daily/backup-manager` is setup and some documentation placed in `/usr/share/doc/backup-manager`.


=ZOOM=Since Backup Manager is a command line tool, installation and use will be performed from the command line=

The default configuration file is well laid out and documented, though reading the User Guide gives a better understanding of the keys and their values. Several changes to the keys in the default configuration file are made to configure daily backups and setting up the burn method. Using a favorite text editor (for example `vi` or `nano`), the following keys are changed. The `BM_TARBALL_BLACKLIST` key value lists sub-directories or files that will be excluded from the archive. Since I have ripped some music CD’s I have excluded the `ogg` files from being backed up using a Bash style wildcard. Directories and Bash style wildcards are appended to the key value and delimited with spaces. The key for the number of days an archive is kept is `BM_ARCHIVE_TTL` or archive time to live. The default value is ‘5’, five days, change the value to ‘7’ for full daily backups.


=CODE_START=

BM_TARBALL_BLACKLIST="/var/archives *.ogg"
BM_ARCHIVE_TTL="7"

=CODE_END=

The next set of keys relate to the burning method of exporting archives to CD/DVD media. The `BM_BURNING_METHOD` value is set according to the media that is to be burned to. In this case, CDR media is being used. Other options include DVD, CDRW and DVD-RW. The device that is being used is set with the `BM_BURNING_DEVICE` key, which is the device name found in the `/dev` directory. The final value is the size of the media that is being used, with the CDR media the values are normally 650, 700 or 800. In this example 700MB media is being used.


=CODE_START=

BM_BURNING_METHOD="CDR"
BM_BURNING_DEVICE="/dev/cdrw"
BM_BURNING_MAXSIZE="700"

=CODE_END=


# Testing the backup

Command line options allow specific methods that are part of the configuration file to run independently. In the modified configuration file two methods are configured: the tarball method and the burn method. By using command line options one or the other method can be performed. Remaining as root user the `--no-burn` command line option is used to only create the archives in `/var/archives`. If `/var/archives` doesn’t exist it will be created after the first run.


=CODE_START=
 
# backup-manager --no-burn 

=CODE_END=


<!--pagebreak-->


After a successful archive using the tarball method, the `/var/log/messages` log file can be viewed to see what messages were generated. Logging is accomplished with the `BM_LOGGER` key set to “true”, the default.


=CODE_START=

# tail /var/log/messages
Mar  5 15:37:08 host backup-manager[19432]: info \
     * Getting lock for backup-manager 19432 with\
      /etc/backup-manager.conf
Mar  5 15:37:08 host backup-manager[19432]: info \
     * The repository /var/archives does not \
     exist, creating it.
Mar  5 15:37:08 host backup-manager[19432]: info \
     * Cleaning /var/archives
Mar  5 15:37:08 host backup-manager[19432]: info \
     * Using method "tarball".

=CODE_END=

The next test is burning the repository to CD/DVD media. This is also accomplished with a command line option to perform only the burn method. When prompted for new media press the _ENTER_ key. If the archives will not fit onto a single media a prompt will appear for additional blank media. If the size of the repository is larger than a single media, performing an interactive burn method will allow additional media to be used. If the burn method is run non-interactively, i.e. through a cron script, then Backup Manager will first try to burn the complete repository. If the repository is larger than the media, then the archive created the same day will be attempted. If the days archive is larger than the media, then no burn method is performed.


=CODE_START=

# backup-manager --burn
Please insert a new media in /dev/cdrw

=CODE_END=

Again, the process can be checked by looking at the messages log file.


=CODE_START=

# tail /var/log/messages
Mar  5 15:46:39 host backup-manager[24927]: info \
     * Getting lock for backup-manager 24927 with\
      /etc/backup-manager.conf
Mar  5 15:46:39 host backup-manager[24927]: info \
     * Burning the whole archives.
Mar  5 15:46:39 host backup-manager[24927]: info \
     * Number of files to burn: 3.
Mar  5 15:46:39 host backup-manager[24927]: info \
     * Trying to burn /var/archives (242 MB) in \
     interactive mode.
Mar  5 15:46:40 host backup-manager[24927]: info \
     * The burning process will need 1 media(s).
Mar  5 15:46:40 host backup-manager[24927]: info \
     * Burning content of \
     /var/archives/index-20070305-1
Mar  5 15:46:43 host backup-manager[24927]: info \
     * Redirecting burning logs into \
     /tmp/bm-burning.log.V25664
Mar  5 15:46:43 host backup-manager[24927]: info \
     * Burning data to /dev/cdrw.
Mar  5 15:48:59 host backup-manager[24927]: info \
     * Releasing lock

=CODE_END=


=ZOOM=The process can be checked by looking at the messages log file=

When archives are created an MD5 sum is generated. Another command line option will compare the generated MD5 sum with what was written to CD.


=CODE_START=

# backup-manager --md5check
Checking MD5 sum for host-20070305.md5: ok
Checking MD5 sum for host-etc.20070305.tar.gz: ok
Checking MD5 sum for host-home.20070305.tar.gz: ok
Archive given does not exist in the repository: \
     /var/archives/index-20070305-1

=CODE_END=

Note that the index file is created during the burn method and is not part of the repository, thus a message indicating the same is displayed. An alternate method for checking the MD5 sums—convenient for checking exported media on systems that do not have Backup Manager installed—is to use the `md5sum` command directly.


=CODE_START=

$ cd /media/cdrom
$ ls
host-20070305.md5  host-etc.20070305.tar.gz \
     host-home.20070305.tar.gz  index-20070305-1
$ md5sum -c host-20070305.md5
host-etc.20070305.tar.gz: OK
host-home.20070305.tar.gz: OK

=CODE_END=


# Final tweaks

To complete the workstation archive configuration, the daily cron job is modified to prevent the burn method from running daily with the `--no-burn` command line option.


=CODE_START=

#!/bin/sh
# cron script for backup-manager
test -x /usr/sbin/backup-manager || exit 0
# Add the --no-burn option
/usr/sbin/backup-manager --no-burn

=CODE_END=

Daily full archives are now configured and exporting archives to CDR are accomplished interactively. Exporting must be done as the root user, for Ubuntu users this can now be done using `sudo`. An interesting key is the `BM_ARCHIVE_PURGEDUMPS` key which, when set to its default “true”, will create a symbolic link to the previous day’s archive if no files have changed. This will save storage space by not creating duplicate archives on consecutive days. What is being archived? The `BM_TARBALL_DIRECTORIES` key, by default, archives the `/etc` and `/home` directories, archiving the workstation configuration files and user data. The `BM_REPOSITORY_ROOT` key defines the location of the repository. The default repository is `/var/archives`, which, ideally, is a partition large enough to hold seven days worth of archives.


=ZOOM=The `BM_TARBALL_DIRECTORIES` key, by default, archives the `/etc` and `/home` directories, archiving the workstation configuration files and user data=


# Conclusion

Backup Manager as configured here is a simple and transparent technique for creating archives on a GNU/Linux workstation. Hiding the details of `tar` and `cdrecord` and automating daily backups insures some sense of data protection. Manually exporting archives to removable media allows the data to be archived and stored in a safe off-site location for disaster recovery. Beyond backing up a single workstation, Backup Manager also has the ability to archive server and database data and automate remote storage of the repository.
