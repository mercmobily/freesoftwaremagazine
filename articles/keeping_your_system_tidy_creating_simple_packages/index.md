---
nid: '1964'
title: 'Keeping your system tidy: creating simple packages'
authors: 'Wouter Verhelst'
published: '2006-12-26 22:38:02'
tags: 'debian,howto,packaging'
license: verbatim_only
section: opinions
listed: 'true'

---
Installing software on a GNU/Linux system is often as simple asopening a package management interface, selecting with the mouse whichpackages you want installed, and letting the package management systeminstall the wanted packages—plus, any dependencies required forthe package to run. But what can you do if you want to install softwarewhich is not already packaged in your distribution of choice, and youstill want it to be registered in your package management system foreasy maintenance?

Create your own package, of course. Which doesn't have to be all thathard.


<!--break-->


As most people know, there are two main package management systems:the Red Hat Package Management system, or RPM, and the packages used forDebian and its derivatives, commonly known as .deb files. Since I'm aDebian developer, my experience with the latter format is obviouslyquite a bit higher than the experience I have with the RPM format, andso this post will focus on Debian packages; but it should be noted thatmost of the concepts explained here will apply equally well to self-madeRPM packages.


# Package management concepts

Before I can go ahead and explain how to create a simple package,it's important to understand a few things about packages and packagemanagement systems in general.

Any decent package management system understands the concept of"dependencies", that is, the ability for one package to declare that itneeds another package in order to be properly used. Additionally,package management systems usually also have the ability to run scriptsupon installation and/or removal of packages, which will for exampleallow one to clean up any files that may have been created by use of the software, or to detect a few bits about the system the package is being installed on and change the configuration accordingly. Once a package is installed, package managers keep track of the files that a package contains, so that they can be removed automatically afterwards; and they can optionally also maintain checksums of these files.

Apart from the technical implementation, the Debian package manager is accompanied by the [Debian Policy Manual](http://www.debian.org/doc/debian-policy), a document that explains in detail how a package should behave; for instance, it makes clear that no package should ever blow away local configuration modifications upon upgrade, and that it should not muck with another packages' files without following the right procedure (i.e., use `dpkg-divert`). If you're indeed going to create a package for use on just one system—your own—then following the Policy Manual to the letter isn't really required. However, if you want to create packages for others to use, then I do recommend that you have a look at it, and at the other documentation for beginning packagers, such as the [Debian New Maintainers' Guide](http://www.debian.org/doc/manuals/maint-guide/).


# Myths and rumours

For the uninitiated, creating a Debian package seems like a very complex thing, with many files in a `debian/` directory inside the unpacked source package. However, it really all simply boils down to this:


1. `dpkg-buildpackage`, the program used to compile a source package into a binary package, runs `debian/rules build`. This command is supposed to ensure that any source files are compiled into their binary versions. Running `debian/rules build` must not exit with an error code (or the build will be aborted). Obviously, if there are no sources to be compiled (because only binaries have been given to you, or because the package is written in an interpreted or scripting language such as perl), then it's okay if this target does nothing at all.
1. `dpkg-buildpackage` then runs `debian/rules binary`. This command may be wrapped in a command so that it is run as root, or so that it may _appear_ as though it is run as root. Doing this is required to allow for a package to set the proper permissions on the files it wants to get into the package; but it is not necessary for `debian/rules binary` to _actually_ be run as root; using `fakeroot`, a program that wraps a number of system calls to make it appear as though its children are running as root without this actually being the case, will suffice.The `binary` call is supposed to copy files into their temporary destination; usually a subdirectory of the `debian` directory in the unpacked source package. This subdirectory will have a lay-out that will resemble the final on-disk lay-out as used by the package itself; e.g., if I want to install a file `/usr/bin/xterm` using my Debian package `myxterm`, then I could install it into `debian/myxterm/usr/bin/xterm`. Additionally, files that have a special meaning for the Debian package management system, such as the control file and any maintainer scripts, will be installed in a special directory DEBIAN in the temporary destination; that is, `debian/myxterm/DEBIAN` in the above example.
1. Finally, `dpkg` is called with the proper arguments that point it to the temporary destination, so that the files in that temporary destination are actually packaged up as a Debian package. This call is actually part of the above step, but it's significant enough for me to call it a separate step.

It's really that simple. Of course, it is true there are a number of other things going on as well; but, if all you want to do is create a simple package, then you need not concern yourself with that.


# Getting your hands dirty

Even if those three steps are fairly small, it's still quite a lot if you need to do it manually every time. Additionally, there is one file which you _must_ create for `dpkg` to even _want_ to create a debian package out of your temporary destination: the control file, which contains metadata on your package (its name, the description, any dependencies you wish to declare, etc). If you're going to do everything yourself, then having to do all this can become quite tedious.

Luckily, there's no need for you to do everything yourself. There is a script called `dh_make`, in the `dh-make` package, which will help you creating a pretty standard Debian source package. It is optimized for software that comes with source, but even if you have a piece of software for which you do not have the source, then `dh_make` is still a good starting point.

You could try running it. Go ahead, put a few files in a separate directory, `cd` to that directory, and run `dh_make`. You can also use a few source files you've written yourself, or perhaps unpack a source tarball you've gotten from somewhere which you want to install. That's up to you.

As you'll see, running dh_make will ask you a few questions and create a `debian/` directory. For your first time, it's easiest if you ask it to create a single package.


# Files in the `debian/` directory

The `debian/` directory will now contain a number of files. The most important ones are:


* the `debian/rules` file, which is a `Makefile` with instructions on how to turn the source package into a binary package, as you'd have seen above. You can edit this file so that it copies the right files into the right directory, if required. The `dh_*` command you see in this prepared file are from the `debhelper` suite, which will allow you to more easily and quickly maintain your package. Read the `debhelper` man pages and the man pages of the individual `dh_*` commands if you want more details on them.
* The `debian/control` file, which will contain, as explained above, metadata on your package; e.g., it will contain its name, any dependencies it needs, and a description of your package. Note that the `debian/control` file is not the final control file that will end up in your `.deb` file; rather, it is a _template_ that will be used to generate that final control file (amongst others, the final control file will be updated to contain the correct version number and perhaps some additional dependencies found by the `shlibs` system—see below)
* The `debian/changelog` file, which is supposed to contain a changelog. An official package that will be uploaded to the Debian archive must have a good changelog that explains every change done between one version and another; therefore, this file is not optional. However, for your own packages it is enough if the file exists, and has the right format (it will be parsed as part of the build process; amongst others, the version number will be extracted from this file).
* The `debian/copyright` file should be updated to contain the actual copyright statement that applies to the program you're packaging. However, if it does not exist, then the build will proceed as normal.
* The `debian/compat` file contains the `debhelper` API version that's being used. It's best not to touch this file (depending on the version of `dh_make` you're using, it could also be that the API version is declared in an environment variable called `DH_COMPAT` in the `debian/rules` file; similarly, it's best not to touch this variable).

Most of the other files are optional. Some contain examples on how to register plug-ins for common software; e.g., the file `debian/emacsen-install.ex` shows how you would install an `emacs` mode. Others contain examples on how to improve the package itself; e.g., the files `debian/manpage.1.x` and `debian/manpage.1.sgml.ex` contain examples on how to write a man page directly in roff or by using a DocBook SGML file, respectively. It may be of interest to you to have a look through the files, and edit what you think you'll need, or remove the files you're sure you won't need.


# Automatic library dependencies: the `shlibs` system


=ZOOM=The `shlibs` system will generate appropriate `Depends:` lines for your package so that it depends on the right libraries=

It may be the case that the software in your package is going to use shared libraries. Because manually tracking whatever libraries your package needs is a tedious job, Debian maintainers long ago invented the `shlibs` system to automatically do this. Explaining in detail how the shlibs system works would go beyond the focus of this article; suffice to say that, if you call `dh_shlibs` near the end of your `debian/rules binary` target and keep a variable `${shlibs:Depends}` in your `debian/control` file (the example `debian/rules` and `debian/control` files provided by `dh_make` will do this correctly for you), then the `shlibs` system will use `objdump` to figure out which libraries you need, and will generate appropriate `Depends:` lines for the control file so that your package depends on the right libraries.


# Wrapping up

After you've edited the files that are generated by the `dh_make` command, try running `dpkg-buildpackage -rfakeroot` to build your package. You will need to install the packages that are dependencies of the `build-essential` package to do so. If you've done everything correctly, this should produce your package, and you should be able to install it by using `dpkg -i`. Go ahead, try it!

If you want more information, then you should go read the [New Maintainers' Guide](http://www.debian.org/doc/maint-guide/), and/or the [Developers' Reference](http://www.debian.org/doc/developers-reference/), which contains more information on Debian Development in general (though much there is not specifically targetted to maintaining packages). Or you could, of course, leave a comment...

Finally, note that following the above instructions will render you a functional package that will allow you to keep your system tidy; however, it will _not_ help you create a package which is bug-free enough to be uploaded to the Debian archive, or to be shared with other people! If you want that, I highly recommend you read the documents referenced above and get familiar with the less fun bits in Debian packaging.

