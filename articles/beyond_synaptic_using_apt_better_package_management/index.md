---
nid: '2794'
title: 'Beyond Synaptic - using apt for better package management '
authors: 'Ryan Cartwright'
published: '2008-04-03 1:33:41'
tags: 'debian,administration,packaging,apt'
license: verbatim_only
section: end_users
listed: 'true'

---
I'm a Debian user and--like many--I use apt and its associated tools. If you haven't yet discovered apt here's a brief summary of some of it and some of its tools which can make your package management even more powerful.

<!--break-->

##History

I'll start with a brief history lesson. The '[Advanced packaging tool][]' was introduced in 1998 and first included in a [Debian][] release (2.1 or slink) in 1999. There is no single apt application to speak of, instead it's a series of tools and functions originally designed as a front-end to dpkg -- the software at the heart of Debian's package management (it now also support RPM backends). There are several front-ends to apt itself including: [Synaptic][], [aptitude][] and [Adept][] but I want to look specifically at the base command-line tools--not that there's anything wrong with the front-ends.

One of the advantages of apt is the repository management. Like most packaging systems, apt uses its repositories to find and retrieve packages. The way in which repositories are organised aids greatly with dependencies--where one package depends upon another in order to work properly. Apt repositories also make recommendations and suggestions of other packages which might prove useful. These are not dependencies as the original package will run without them but sometimes what you might think of as a dependency will be a recommendation because there is a choice involved. Debian policy is not to dictate.

Because of the nature of these tools the user running them needs certain privileges. Usually this would be done with sudo or--if you are confident--as root.

Anyway, on with the tools.

##apt-get update

=CODE_START=
:~$ sudo apt-get update
=CODE_END=

Apt makes use of a local cache of packages, detailing the available packages, their version, the files they contain, their dependencies and installation status. Because it's a local cache it needs to be updated with the central lists within remote repositories. This is the equivalent of Synaptic's reload command.

##apt-cache

=CODE_START=
:~$ sudo apt-cache search gnumeric
:~$ sudo apt-cache search spreadsheet
:~$ sudo apt-cache search show inkscape
:~$ sudo apt-cache depends python
=CODE_END=

Apt-cache is an interface with the local cache. With it you can search for a package by name or description. For example results for the first two commands above will both include the Gnumeric package but obviously the first one will be more accurate. There are a number of options for `apt-cache`, `search` is probably the most popular, `show` will give detailed information on a package, `depends` will--as it suggests--show the dependencies for a package.

##apt-get

=CODE_START=
:~$ sudo apt-get install gnumeric
:~$ sudo apt-get remove inkscape
:~$ sudo apt-get autoremove
=CODE_END=

`Apt-get` is the package management side of apt. Using a single command like the first one will retrieve the `gnumeric` package and all it's dependencies--and all _their_ dependencies--and install them, keeping you informed as it goes. Before this `apt-get` will ask you to confirm your choice, giving you such information and the download size and eventual storage space required after unpacking. The `remove` option will not remove dependencies but will prompt you regarding packages that depend upon the one(s) you are trying to remove. The `autoremove` option will clean up packages automatically installed as a dependency but not removed when the dependent package is removed.

Like `apt-cache`, there's much more to `apt-get` than I can cover here. Check out the man files for more on these powerful commands.

##Other useful tools

These tools do not come as part of a default Debian installation so you'll probably need to install them individually.

###apt-show-versions###

=CODE_START=
:~$ sudo apt-show-versions gnumeric
:~$ sudo apt-show-versions -u
=CODE_END=

`Apt-show-versions` is useful for comparing the versions of a package. Generally this will be the installed one and the one in the repository. Using `-u` switch will give a list of all installed packages for which a newer version is available.

###apt-listbugs

Once installed apt-listbugs is automatically called during an `apt-get install` process. Before downloading and installing the packages requested (and their dependencies) this will retrieve a list of the critical bugs for them. This is very useful if you are not running a stable version of Debian as you can see which bugs are open, pending or done and look them up before installing.

###apt-mirror

If you are running several Debian installations, you can use this to create a local mirror of some or all of a repository to save your internet bandwidth. This can be useful if you want to ensure all your machines are using particular versions of packages.


### apt-proxy

This can also be used to keep bandwidth down for multiple machines but instead it works on a proxy basis, caching repositories updates as clients call on them.

### apt-listchanges

This will list the most recent changes (from the changelog) to a package before you install it.

### apt-zip

If your machine is not-networked, keeping it up to date with apt can be awkward. `apt-zip` makes this easier by allowing you to store the packages the machine needs on removable media from another--networked--machine.

## Conclusion

Whilst Synaptic and Aptitude have their advantages--for example Aptitude will tidy up orphaned dependencies when removing a package--I think there's a lot to be said for the good old `apt` tools, particularly if you are on a minimal system or in circumstances where you need to conserve bandwidth etc. I don't claim to be anything like an expert on them and I fully expect others with greater experience to embellish what I've said here. If you've only been using Synaptic give apt a try as well.

[Advanced packaging tool]: http://packages.debian.org/etch/apt
[Debian]: http://www.debian.org
[Synaptic]: http://packages.debian.org/etch/synaptic
[aptitude]: http://packages.debian.org/etch/aptitude
[Adept]: http://packages.debian.org/etch/adept