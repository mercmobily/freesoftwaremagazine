---
nid: '2765'
title: 'Chapter 6: FLAIM: an Autotools example'
authors: 'John Calcote'
published: '2008-03-10 20:34:06'
license: verbatim_only
listed: 'true'
book: autotools_a_guide_to_autoconf_automake_libtool
book_weight: '5'
layout: book.html

---
In this book, I've taken you on a whirlwind tour of the main features of Autoconf, Automake and Libtool. I believe I've explained them in a manner that was not only simple to digest, but also to retain--especially if you had the time and inclination to follow my lead with your own copies of the examples. I've always believed that no form of learning comes anywhere close to the learning that happens while _doing_.

This chapter has [downloads](/files/nodes/2765/downloads.tgz)!

In this chapter, I'll continue this learning-by-doing pattern by converting an existing open source project to use the GNU Autotools. 

<!--break-->

The project I've chosen is called FLAIM, which is (what else?) an acronym that stands for FLexible Adaptable Information Management. FLAIM is actually a highly scalable database management system, written entirely in C++, and built on its own thin portability layer called the FLAIM Tool Kit (FTK).

# What's FLAIM?!

Some of you out there may recognize FLAIM as the database used by both Novell eDirectory and the Novell GroupWise server. Novell eDirectory currently uses this particular version of FLAIM today to manage directory information bases (DIBs) containing over a billion objects. GroupWise actually uses a much earlier spin-off of FLAIM.

Novell made the FLAIM source code available as an open source project licensed under the GNU General Public License (GPL) version 2 in 2006. [The FLAIM project](http://developer.novell.com/wiki/index.php/FLAIM) is hosted by [Novell's forge site](http://forge.novell.com/modules/xfmod/project/?flaim). As a side note, if you're interested in looking at FLAIM yourself, you'll need to set up a Novell account. This is simple to do, and costs nothing. You'll be given the opportunity to create a Novell account the first time you attempt to access the Novell forge site.

## Why FLAIM?

While FLAIM is not a mainstream OSS project, it has several qualities that make it the perfect choice of project to convert to GNU Autotools in this chapter. For instance, it's currently built using a hand-coded makefile--and a beast of makefile it is, too, containing well over 2000 lines of complex make script. The FLAIM makefile contains a number of GNU-make specific constructs, and thus can only be processed using GNU make. Individual (but nearly identical) makefiles are used to build the flaim, xflaim, and flaimsql database libraries, as well as the FLAIM tool kit (ftk) and several utility and sample programs on GNU/Linux, Unix, Windows and NetWare.

The existing FLAIM build system targets several different flavors of Unix, including AIX, Solaris, and HP/UX, as well as Apple's OS X. It also targets multiple compilers on these systems. These features make FLAIM ideal for my example conversion project, because I can show you how to handle differences in operating systems and tool sets in the new `configure.ac` files.

The existing build system also contains rules for many of the standard GNU Autotools targets, such as distribution tarballs. In addition, it provides rules for building binary installation packages, as well as RPMs for systems that can build and install RPM packages. Finally, it even provides targets for building doxygen description files, which it then uses to build source documentation. I'll spend a few paragraphs discussing how these types of targets can be added to the infrastructure provided by Automake.

The FLAIM tool kit is a portability library that can be built and consumed in its own right by third-party applications or libraries. This gives me the opportunity to demonstrate Autoconf's ability to manage separate sub-projects as optional sub-directories within a project. That is, if the FLAIM tool kit happens to already be installed on the end-user's build machine, then the installed version may be used, or optionally overridden with the local copy. On the other hand, if the FLAIM tool kit is not installed, then the local, sub-directory based copy will be used by default.

The FLAIM project also provides code to build both Java and CSharp language bindings, which allows me to delve a bit into those esoteric realms. I'll not go into great detail on building either Java or CSharp applications, but I will cover how to write a `Makefile.am` file that does.

The FLAIM project makes good use of unit tests, which are built as individual programs that run without command line parameters. Thus, I can easily show you how to add unit tests to the new FLAIM build system using Automake's trivial test framework. (Autoconf supplies a more extensive test framework called Autotest, but I'll not discuss Autotest at this time.)

The FLAIM project, and its original build system happen to use a reasonably modular directory layout, making it rather easy to convert to GNU Autotools, which simply run better in projects that follow such good design principles. As one of my goals is ultimately to submit this build system back to the project maintainers, it's nice not to have to rearrange too much of the source code. A simple directory tree diff should suffice.

Finally, I also chose FLAIM because I have some limited experience with it. Although I have been given check-in rights to the project, I'm not really a FLAIM developer, and my experience is pretty much limited to using it for simple database projects occasionally.

## Why hasn't FLAIM already been converted?

There are several good reasons why FLAIM hasn't already been converted to use the GNU Autotools.

1. FLAIM is still a fairly new open source project, having only been released a couple of years ago.
1. FLAIM's existing build system is well-understood by the developers, and they have limited experience with the GNU Autotools.
1. FLAIM's build system targets three different kinds of platform, Windows, Unix and NetWare, using only GNU makefiles. This makes it difficult to give up, because one makefile is used to build FLAIM for all target platforms.

But FLAIM's build system is _not_ well understood by the open source community. Since FLAIM's release into the "wild", several people have complained about FLAIM's "nasty" makefile on the FLAIM mailing lists. The GNU makefile that FLAIM uses is more or less an unmaintainable monstrosity, from the perspective of new developers. This negative attitude has an almost viral effect on the usefulness of the entire project within the community.

These community critics are accurate in their assessment of FLAIM's build system, with respect to an open source project. The FLAIM team recognizes this and has voiced the desire to establish an Autotools build system, at least for GNU/Linux and Unix platforms. This means that duplicate build systems would have to be created for NetWare and Windows (as per my personal philosophy with respect to using Autotools on non-Unix systems). But, as they say in the shoe business, "The customer is always right!".

# An initial look

Let me just start by saying that converting FLAIM from GNU makefiles to an Autotools build system is a non-trival project. It took me a couple of weeks. Much of that time was spent determining exactly what to build, and how to do it--in other words, analyzing the existing FLAIM build system. Another significant portion of my time was spent on converting aspects of the FLAIM build system that lay on the outer fringes of Autotools functionality. For example, I spent more time converting build system rules for building CSharp language bindings than I did for building the core C++ FLAIM libraries. 

Working on the outer fringes of Autotools capabilities can be a frustrating experience. I'll readily admit that this is where most people get disgusted with the GNU Autotools--especially with Automake. It's my hope that this Chapter will put you ahead of most others in this area. Once you learn a few tricks, working on the outer fringe is pretty simple.

The first step in this conversion project is to analyze the existing directory structure and build system. What components are actually built, and which components depend on others? Can individual components be built, distributed and consumed independently? These types of component-level relationships are important, because they'll often determine how you want to layout your project directory structure. 

The FLAIM project is actually several small projects, combined into one large umbrella project within its Subversion repository. There are three separate and distinct database products, flaim, xflaim and flaimsql. The flaim sub-project is the original FLAIM database library used by eDirectory and GroupWise. The xflaim project is a hierarchical XML database, optimized for node-based access. This version was developed for internal projects at Novell. The flaimsql project is FLAIM with integrated SQL semantics exposed through the FLAIM API. This was an experiment, which frankly isn't quite finished.

The point is that all three of these database libraries are separate and unrelated to each other; none of them depend on the others. Since they may easily be used independently of one another, they can actually be shipped as individual distributions. Each could be considered an individual project, in its own right. This, then will become one of my primary goals--to allow the FLAIM project to be easily broken up into smaller projects, which may be managed independently of one another.

The FLAIM tool kit is also an independent project. While it's tailored specifically for the FLAIM database projects, providing just the system service abstractions required for a DBMS, it depends on nothing but itself, and may easily be used as the basis for portability within another project, without dragging any unnecessary database baggage along. As you might guess, its file I/O abstraction is highly optimized.

The existing FLAIM project is laid out in its Subversion repository like this:

=CODE_START=
trunk
  flaim
    flaim
      sample
      src
      util
    ftk
      src
      util
    sql
      src
    xflaim
      csharp
      java
      sample
      src
      util
=CODE_END=

The complete tree is fairly deep and broad, and there are significant utilities, tests and other such binaries that are built by the existing FLAIM build system. At some point during the downward trek into this hierarchy, I have to simply stop and consider whether it's worth converting that additional utility or layer. If I don't, this chapter will be as long as all the others combined!

To this end, I've decided to convert:

* the libraries themselves
* the unit and library tests
* the utilities and other such high-level programs found in the various `util` directories
* the Java and CSharp language bindings.

I'll also convert the CSharp unit tests, but I won't go into the Java unit tests because (believe it or not), attempting to work within the Automake-provided Java framework is more painful than just writing the rules yourself. Since Automake provides no help for CSharp, I have to provide everything myself.

# Getting started

My first true design decision was centered around how to organize this one FLAIM project into sub-projects. As it turns out, the existing layout is perfect for what I've ultimately done. I've created a master `configure.ac` file in the top-level `flaim` directory--the one just under `trunk`. This `configure.ac` file acts as a sort of Autoconf control file for each of the four lower-level projects, ftk, flaim, flaimsql and xflaim.

I've managed the database library dependencies on the FLAIM tool kit (ftk) by treating it as a pure external dependency, defined by make variables `FTKINC` and `FTKLIB`. In this way, I've conditionally defined these variables to point to one of a couple of different sources, including installed libraries, or even user-specified configure options.

### Adding the `configure.ac` scripts

The directory structure under the Autotools build system won't change much. In the following directory layout, I've indicated where I've placed individual `configure.ac` files. You'll recall that each `configure.ac` file represents a separate and individual project, which may be packaged and distributed independently.

=CODE_START=
trunk
  flaim       configure.ac (master)
    flaim     configure.ac (flaim)
      sample
      src
      util
    ftk       configure.ac (ftk)
      src
      util
    sql       configure.ac (flaimsql)
      src
    xflaim    configure.ac (xflaim)
      csharp
      java
      sample
      src
      util
        java
=CODE_END=

After these design decisions were made, the next task was to create these `configure.ac` scripts. The top-level script was trivial, so I created it by hand. The project-specific scripts were more complex, so I allowed the `autoscan` utility to do the bulk of the work for me. Right now, take a look at that top-level `configure.ac` script:

=CODE_START=
#                 -*- Autoconf -*-
# Process this file with autoconf to produce a c...

AC_PREREQ([2.62])
AC_INIT([flaim-projects], [1.0])
AC_CANONICAL_SYSTEM
AM_INIT_AUTOMAKE([-Wall -Werror foreign])
LT_PREREQ([2.2])
LT_INIT([dlopen])

AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_SUBDIRS([ftk flaim sql xflaim])
AC_CONFIG_FILES([Makefile])
AC_OUTPUT
=CODE_END=

This file is short and simple, because it doesn't do much. Nevertheless, there are some new and important concepts in this file that I'd like to discuss. Since its only job is to configure several lower-level projects, I've taken some shortcuts. The project name and version number, for instance, are really rather unimportant, as this project will probably never be distributed in one large tarball. Regardless, _some_ values had to be used, so I invented the name `flaim-projects`, and the version number `1.0`. These are not likely to change unless really dramatic changes take place in the project directory structure in the future.

The most important aspect of this script is the use of the `AC_CONFIG_SUBDIRS` macro. This new macro, which I haven't yet covered in this book, lists the sub-projects to be built, along with the current project. This macro is effectively the Autoconf equivalent of the Automake `SUBDIRS` variable. It allows the maintainer to set up a hierarchy of projects, in much the same way that `SUBDIRS` configures the directory hierarchy for Automake within a single project.

Because the four sub-projects actually contain all of the functionality, this `configure.ac` script acts simply as a control file, passing all specified configuration options to each of the sub-projects successively, in the order that they're specified in `AC_CONFIG_SUBDIRS`. The ordering is important, because the FLAIM tool kit project must be built first, since the other projects depend on it.

Another important new concept in this file is the use of the `AC_CANONICAL_SYSTEM` macro. This macro causes the environment variables, `$host`, `$build` and `$target` to be defined. These variables contain canonicalized CPU, operating system and manufacturer values for the host, build and target systems. This information can easily be parsed later in the `configure.ac` file in order to configure system-specific options. I'll dive more deeply into this concept in the project-specific scripts below.

### Automake in the umbrella project

Automake usually requires the existence of several text files in the top-level project directory. These include the `AUTHORS`, `COPYING`, `INSTALL`, `NEWS`, `README`, and `ChangeLog` files. In the case of this umbrella project, it would be nice not to have to deal with these files, as they are rather redundant here. I could do this by not using Automake at all, but then I'd either have to create my own `Makefile.in` template for this directory, or use Automake once to generate one for me. I could then check this template into the repository as part of the project, along with the `install-sh` and `missing` scripts that are installed by `autoreconf -i`. Once I have these files in place, I could then remove the `AM_INIT_AUTOMAKE` macro from the master `configure.ac` file, and Autoconf will create the final `makefile` from the preserved template.

Another option would be to keep the `AM_INIT_AUTOMAKE` macro, and use the `foreign` option in the macro's optional parameter. The `foreign` option tells Automake that the project will not follow GNU standards, and thus Automake will not require the usual GNU project text files. This is the path I decided to take, because I might wish to alter the list of subordinate projects at some point in the future, and I don't want to have to hand-tweak the generated `Makefile.in` template.

The `AM_INIT_AUTOMAKE` parameter contains a string of white-space separated options that should be assumed by Automake. When Automake parses the `configure.ac` script, it notes these options, and enables them as if they'd been passed on the command line. I've also passed the `-Wall` and `-Werror` options, which indicate that Automake should enable all (Automake) warnings, and report them as errors. Note that these options have nothing to do with the compilation environment--only Automake processing.

### Why add the Libtool macros?

You may be wondering at this point why I've included those expensive Libtool macros. The reason is more complicated than I wish it were. Even though I don't do anything with Libtool in the umbrella project, the lower level projects expect that a containing project will provide all the necessary scripts, and the `LT_INIT` macro provides the `ltmain.sh` script.

If you don't initialize Libtool in the umbrella project, then tools like `autoreconf`, which actually look in the _parent_ directory to determine if the current project is itself a sub-project, will fail when it can't find scripts that _its_ `configure.ac` file requires. For instance, within the ftk project's top-level directory, `autoreconf` expects to find a file called `../ltmain.sh`. Note the reference to the parent directory--`autoreconf` noticed by examining the parent directory that ftk was actually a sub-project of a larger project. Rather than install all of the auxilliary scripts multiple times, it causes sub-projects to look in their parent project's directory for them, so they can be installed once in a multi-project package.

If I don't use `LT_INIT` in the umbrella project, then I can't successfully run `autoreconf` in the sub-projects, because the `ltmain.sh` file will not have been installed in the parent project's top-level directory.

_NOTE: For the rather small disk space savings it provides, I personally don't think it's worth breaking modularity in this manner just to manage this odd child-to-parent relationship._

### Adding a macro sub-directory

Another new construct used in the top-level `configure.ac` script is the `AC_CONFIG_MACRO_DIR` macro. This macro indicates the name of a sub-directory in which the `aclocal` utility can find all project-local M4 macro files. These files are ultimately combined into the `aclocal.m4` file used by Autoconf. The use of this macro replaces the original single `acinclude.m4` file with a directory containing `.m4` files.

_NOTE: This entire system of combining (one or more) M4 macro files into a single `aclocal.m4` file is a bit of a band-aid over a system that was never originally designed for more than one macro file. In my opinion, it could use a major overhaul, by doing away with `aclocal` entirely, and just having Autoconf read the macro files in the specified (or defaulted) macro directory, along with other macro files found in system locations._

I've indicated by the parameter to this macro that all of the local macro files to be added to `aclocal.m4` can be found in a sub-directory called `m4`. As a side benefit, when `autoreconf -i` is run, and then, when it subsequently executes the required Autotools with their respective "add missing" options, these tools will note the use of `AC_CONFIG_MACRO_DIR` in `configure.ac`, and add all missing required system macro files to the `m4` directory.

The actual reason for my choosing to do this is that Libtool will not add its additional macro files to the project if you haven't enabled the macro directory option in this manner. Instead, it complains loudly that _you_ should add these files to `acinclude.m4` yourself. I found that none of the macros in the Libtool system macro files were required by my project, but that didn't stop it from complaining, and it may not be the case for your projects. 

Since I wanted the Autotools to do the job for me, and this is a fairly complex project anyway, I decided to begin using this "macro sub-directory" feature. In point of fact, a future release of Autotools will require this form anyway, as it's considered the more modern way of adding macro files to `aclocal.m4`, as opposed to using a single user-generated `acinclude.m4` file.

### The top-level `Makefile.am` file

The only other point to be covered regarding the umbrella project is the top-level `Makefile.am` file. This file contains the following code:

=CODE_START=
ACLOCAL_AMFLAGS = -I m4

EXTRA_DIST = libflaim.changes libxflaim.changes

SUBDIRS = ftk flaim sql xflaim

rpms srcrpm:
        for dir in $(SUBDIRS); do \
          $(MAKE) -C $$dir $@; \
        done

.PHONY: rpms srcrpm
=CODE_END=

The `ACLOCAL_AMFLAGS` variable is a requirement of using a macro sub-directory. According to the Automake documentation, this variable should be defined in the top-level `Makefile.am` file of any project that uses `AC_CONFIG_MACRO_DIR` in its `configure.ac` file. These flags indicate to `aclocal` where it should look for macro files when it's executed by rules defined in `Makefile.am`.

I've used the `EXTRA_DIST` variable here to ensure that additional top-level files get distributed. This isn't critical to the umbrella project, since I don't intend to create distributions at this level, but I like to be complete.

The `SUBDIRS` variable is a duplicate of the information in the `configure.ac` file's `AC_CONFIG_SUBDIRS` macro.

I'll discuss the remaining code later, when I cover adding new make targets to your build system. These particular targets allow the end-user to build RPM packages for rpm-based GNU/Linux systems.

## The sub-projects

Each of the sub-projects, flaim, ftk, flaimsql and xflaim, are set up just as in the Jupiter project. I'll start with the FLAIM toolkit (ftk) project. Because all of the others are dependent on it, it will have to be built first, anyway. 

This `configure.ac` script was generated for me by `autoscan`. Autoscan is a bit finicky when it comes to where it will look for information. If your project doesn't contain a makefile file named exactly "`Makefile`", or if your project already contains an Autoconf `Makefile.in` template, then `autoscan` will not add any information about required libraries to the `configure.scan` output file. It has no other way of determining this information, except by looking into your old build system, and it won't do this unless conditions are just right. 

As mentioned earlier, the FLAIM project did contain a rather large makefile, and frankly I was quite impressed with `autoscan`'s ability to parse it for library information, given the complex nature of this multi-platform GNU makefile. Here's a snippet of the ftk project's `configure.scan` file:

=CODE_START=
...
AC_PREREQ(2.62)
AC_INIT(FULL-PACKAGE-NAME, VERSION,
  BUG-REPORT-ADDRESS)
AC_CONFIG_SRCDIR([util/ftktest.cpp])
AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_CXX
AC_PROG_CC
AC_PROG_INSTALL

# Checks for libraries.
# FIXME: Replace `main' with a function in `-lc':
AC_CHECK_LIB([c], [main])
# FIXME: Replace `main' with a function in...
AC_CHECK_LIB([crypto], [main])
...
AC_CONFIG_FILES([Makefile])
AC_OUTPUT
=CODE_END=

I substituted real values for the place-holder values left by `autoscan` in the `AC_INIT` macro. I added calls to `AM_INIT_AUTOMAKE`, `LT_PREREQ` and `LT_INIT`. I added a call to `AC_CONFIG_MACRO_DIR` here, as well. Why not? I'd already done it in the umbrella project above, and this, after all, is the new "UL Approved" method for managing project-local macro files. I then changed the `AC_CONFIG_SRCDIR` file that `autoscan` recommended, for one that made more sense to me. And I deleted the use of the `AC_PROG_CC` macro; this project is written entirely in C++.

Next, I deleted the comments above each of the `AC_CHECK_LIB` macro calls, and then I started to replace the `main` place-holders in these macros with actual library function names. I say I _started_ to do that, but I stopped because I wondered if all of those libraries were really necessary. Sometimes I've noticed, where hand-coded build systems are concerned, the author will often cut and paste sets of library names into the makefile until the program builds and runs correctly. (For some reason, this activity is especially prevalent when libraries are being built, although programs are not immune to it.) Also, since `autoscan` build this list by parsing the original makefile, I figured it probably tried to include everything that it thought might be a library.

Instead of blindly continuing this trend, I chose to simply comment out all of the calls to `AC_CHECK_LIB`, and see how far I was able to get in the build, and then add them back in one at a time, as required, in order to resolve missing symbols during the build. Unless your project consumes literally hundreds of libraries, this only takes a few extra minutes, but it can save you a lot of time later when builds are speedier than they otherwise might be. And personally, I like to be accurate in my build systems, using only those libraries that really are required. When used religiously, this ideology is also a good form of project-level documentation.

The `configure.scan` file contained 14 such calls to `AC_CHECK_LIB`. As it turned out, only three of them were actually required by the FLAIM tool kit on my 64-bit Linux system, `pthread`, `ncurses`, and `rt`. So I deleted the "cruft" and swapped out the place-holder parameters for real functions in the remaining three.

Finally, I added references to `src/Makefile` and `util/Makefile` to the `AC_CONFIG_FILES` macro, and then added the `echo` statement at the bottom, for some visual verification of my configuration status.

Note that I left all of the header file and library function checks in place, as originally specified by `autoscan`. I figure that `autoscan` is probably pretty accurate in noting the use of header files and functions in my source code. Who am I to argue?

Here's the final ftk `configure.ac` file (_slightly edited, as usual, to satisfy column width requirements_):

=CODE_START=
#                 -*- Autoconf -*-
# Process this file with autoconf to produce a c...

AC_PREREQ([2.62])
AC_INIT([FTK], [1.1], [flaim-users@forge.novell.com])
AM_INIT_AUTOMAKE([-Wall -Werror])
LT_PREREQ([2.2])
LT_INIT([dlopen])

AC_LANG(C++)

AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_SRCDIR([src/flaimtk.h])
AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_CXX
AC_PROG_INSTALL

# Checks for optional programs.
AC_PROG_TRY_DOXYGEN

# Configure options: --enable-debug[=no].
AC_ARG_ENABLE([debug],
  [AS_HELP_STRING([--enable-debug],
    [enable debug code (default is no)])],
  [debug="$withval"], [debug=no])

# Configure option: --enable-openssl[=no].
AC_ARG_ENABLE([openssl], 
  [AS_HELP_STRING([--enable-openssl], 
    [enable the use of openssl (default is no)])], 
  [openssl="$withval"], [openssl=no])

# Check for doxygen program.
if test -z "$DOXYGEN"; then
  echo "-----------------------------------------"
  echo " No Doxygen program found - continuing"
  echo " without Doxygen documentation support."
  echo "-----------------------------------------"
fi
AM_CONDITIONAL([HAVE_DOXYGEN],[test -n "$DOXYGEN"])

# Checks for libraries.
AC_CHECK_LIB([ncurses], [initscr])
AC_CHECK_LIB([pthread], [pthread_create])
AC_CHECK_LIB([rt], [aio_suspend])
if test "x$openssl" = xyes; then 
  AC_DEFINE([FLM_OPENSSL], [], 
    [Define to use openssl])
  AC_CHECK_LIB([ssl], [SSL_new])
  AC_CHECK_LIB([crypto], [CRYPTO_add])
  AC_CHECK_LIB([dl], [dlopen])
  AC_CHECK_LIB([z], [gzopen])
fi

# Checks for header files.
AC_HEADER_RESOLV
AC_CHECK_HEADERS([arpa/inet.h fcntl.h limits.h \
malloc.h netdb.h netinet/in.h stddef.h stdlib.h \
string.h strings.h sys/mount.h sys/param.h \
sys/socket.h sys/statfs.h sys/statvfs.h \
sys/time.h sys/vfs.h unistd.h utime.h])

# Checks for typedefs, structures, and compiler ...
AC_HEADER_STDBOOL
AC_C_INLINE
AC_TYPE_INT32_T
AC_TYPE_MODE_T
AC_TYPE_PID_T
AC_TYPE_SIZE_T
AC_CHECK_MEMBERS([struct stat.st_blksize])
AC_TYPE_UINT16_T
AC_TYPE_UINT32_T
AC_TYPE_UINT8_T

# Checks for library functions.
AC_FUNC_LSTAT_FOLLOWS_SLASHED_SYMLINK
AC_FUNC_MALLOC
AC_FUNC_MKTIME
AC_CHECK_FUNCS([atexit fdatasync ftruncate getcwd \
gethostbyaddr gethostbyname gethostname gethrtime \
gettimeofday inet_ntoa localtime_r memmove memset \
mkdir pstat_getdynamic realpath rmdir select \
socket strchr strrchr strstr])

# Configure DEBUG source code, if requested.
if test "x$debug" = xyes; then
  AC_DEFINE([FLM_DEBUG], [], 
    [Define to enable FLAIM debug features])
fi

# Configure global pre-processor definitions.
AC_DEFINE([_REENTRANT], [], 
  [Define for reentrant code])
AC_DEFINE([_LARGEFILE64_SOURCE], [], 
  [Define for 64-bit data files])
AC_DEFINE([_LARGEFILE_SOURCE], [], 
  [Define for 64-bit data files])

# Configure supported platforms' compiler and li...
case $host in
  sparc-*-solaris*)
    LDFLAGS="$LDFLAGS -R /usr/lib/lwp"
    if "x$CXX" != "xg++"; then
      if "x$debug" = xno; then
        CXXFLAGS="$CXXFLAGS -xO3"
      fi
      SUN_STUDIO=`"$CXX" -V | grep "Sun C++"`
      if "x$SUN_STUDIO" = "xSun C++"; then
        CXXFLAGS="$CXXFLAGS -errwarn=%all\
 -errtags -erroff=hidef,inllargeuse,doubunder"
      fi
    fi ;;

  *-apple-darwin*)
    AC_DEFINE([OSX], [], 
      [Define if building on Apple OSX.]) ;;

  *-*-aix*)
    if "x$CXX" != "xg++"; then
      CXXFLAGS="$CXXFLAGS -qthreaded -qstrict"
    fi ;;

  *-*-hpux*)
    if "x$CXX" != "xg++"; then
      # Disable "Placement operator delete
      # invocation is not yet implemented" warning
      CXXFLAGS="$CXXFLAGS +W930"
    fi ;;
esac

AC_CONFIG_FILES([Makefile
                 docs/Makefile
                 docs/doxyfile
                 obs/Makefile
                 obs/ftk.spec
                 src/Makefile
                 util/Makefile])

AC_OUTPUT

echo "
  ($PACKAGE_NAME) version $PACKAGE_VERSION
  Prefix.........: $prefix
  Debug Build....: $debug
  Using OpenSSL..: $openssl
  C++ Compiler...: $CXX $CXXFLAGS $CPPFLAGS
  Linker.........: $LD $LDFLAGS $LIBS
  Doxygen........: ${DOXYGEN:-NONE}
"
=CODE_END=

Note that I did _not_ use the `foreign` keyword in the `AM_INIT_AUTOMAKE` macro this time. This is a real project, and I expect it will be packaged as such. Thus, the developers will (should) want these files. I used the `touch` command to create empty versions of the GNU project text files.

Another new construct near the top of the file is the `AC_LANG` macro. This macro indicates which language should be assumed when executing compilation tests within the `configure` script. I've passed "`C++`" as the parameter, so that Autoconf will generate compilation tests using the C++ compiler via the `$CXX` variable, rather than the default C code using the `$CC` macro.

Moving down a few more lines will have you staring at a macro called `AC_PROG_TRY_DOXYGEN`. Try as you might, you won't find this macro in the Autoconf documentation, because I wrote it myself. Here's the source code, which can be found in `ftk/m4/ac_prog_try_doxygen.m4` in the sample code download archive:

=CODE_START=
AC_DEFUN([AC_PROG_TRY_DOXYGEN],[
AC_REQUIRE([AC_EXEEXT])dnl
test -z "$DOXYGEN" &&\
 AC_CHECK_PROGS([DOXYGEN], [doxygen$EXEEXT])dnl
])
=CODE_END=

The macro tests first to see if the end-user has already set the `DOXYGEN` environment variable. If not, it then uses the standard `AC_CHECK_PROG` macro to locate it on the host machine, if it's installed. If `AC_CHECK_PROG` finds it, it sets the `DOXYGEN` variable to the name of the program, allowing the build system to later locate the actual executable in the system path. If it's not found, it doesn't set the `DOXYGEN` variable. 

There are other more standard macros that check for specific programs. In fact, as simple as this macro is, I could have just used `AC_CHECK_PROGS` in the `configure.ac` file, instead of writing my own macro. I wanted to encapsulate the "test and check" construct:

=CODE_START=
test -z "$DOXYGEN" && AC_CHECK_PROGS...
=CODE_END=

Additionally, I knew I'd need this test in each of the four projects, so it was simpler to create a macro file that could just be copied into the individual projects' m4 directories. Besides, and probably most importantly for this chapter, it's more readable to see `AC_PROG_TRY_DOXYGEN`, than to see `test -z...`. 

Why `AC_PROG_TRY_DOXYGEN` and not simply `AC_PROG_DOXYGEN`? Because traditionally, the `AC_PROG_*` macros fail the configuration process if the associated program is not found. I wanted the DOXYGEN variable to be populated if the `doxygen` program was found on the system, but be left empty otherwise. That way I could conditionally build the doxygen documentation. 

In fact, if you look a bit farther down, you'll see some text that looks like this:

=CODE_START=
...
# Check for doxygen program.
if test -z "$DOXYGEN"; then
  echo "-----------------------------------------"
  echo " No Doxygen program found - continuing"
  echo " without Doxygen documentation support."
  echo "-----------------------------------------"
fi
AM_CONDITIONAL([HAVE_DOXYGEN],[test -n "$DOXYGEN"])
...
=CODE_END=

This tests whether or not my `AC_PROG_TRY_DOXYGEN` macro actually found a `doxygen` program, and acts on the results. If doxygen is not installed on the user's system, then the configure script prints out a large, hard-to-miss message stating that doxygen documentation will not be built. No big deal, really, unless the user was, in fact, counting on it. In that case, she can simply install doxygen and rebuild.

The `AM_CONDITIONAL` macro defines an automake variable called `HAVE_DOXYGEN`, which can be used in the project's `Makefile.am` files to do something conditionally, based on whether or not doxygen can successfully be called (via the `$DOXYGEN` variable). The first parameter is the Automake conditional variable to be defined, and the second parameter is the test to be run by the configure script in order to determine _how_ the variable should be defined in the makefile. Just one caveat: `AM_CONDITIONAL` must not be used conditionally (eg., within a shell `if` statement) in the `configure.ac` script.

Immediately following the `DOXYGEN` `AM_CONDITIONAL` statement, you'll find the library checks. The first three are the ones that autoscan told me about that I found I actually needed after experimenting a bit. The next four are checked within an `if` statement. Additionally, a preprocessor macro is defined using the `AC_DEFINE` macro:

=CODE_START=
...
if test "x$openssl" = xyes; then 
  AC_DEFINE([FLM_OPENSSL], [], 
    [Define to use openssl])
  AC_CHECK_LIB([ssl], [SSL_new])
  AC_CHECK_LIB([crypto], [CRYPTO_add])
  AC_CHECK_LIB([dl], [dlopen])
  AC_CHECK_LIB([z], [gzopen])
fi
...
=CODE_END=

These libraries are included conditionally based on the user's use of the `--enable-openssl` command-line argument defined in a previous call to the `AC_ARG_ENABLE` macro. The `openssl` variable is defined to either `yes` or `no`, based on the default value given to `AC_ARG_ENABLE`, and the user's command-line choices.

The `AC_DEFINE` macro call ensures that the C++ preprocessor variable, `FLM_OPENSSL` is defined in the `config.h` file, and the `AC_CHECK_LIB` macro calls ensure that `-lssl`, `-lcrypto`, `-ldl`, and `-lz` strings are added to the `$LIBS` variable. But _only_ if the `openssl` macro is defined as `yes`.

The last item I'll cover here is the conditional use of the `AC_DEFINE` macro, based on the contents of the `debug` variable:

=CODE_START=
...
# Configure DEBUG source code, if requested.
if test "x$debug" = xyes; then
  AC_DEFINE([FLM_DEBUG], [], 
    [Define to enable FLAIM debug features])
fi
...
=CODE_END=

This is another preprocessor definition, conditionally defined, based on the results of a command-line parameter given to `configure`. The `--enable-debug` option ultimately enables the definition of `FLM_DEBUG` within `config.h`. Both `FLM_OPENSSL` and `FLM_DEBUG` are consumed within the FLAIM project source code. Using `AC_DEFINE` in this manner allows the user to determine what sort of features are compiled into his binaries.

I'll cover the details of the platform-specific checks later in this chapter. This code is identical in all of the projects' `configure.ac` scripts, as the four original GNU makefiles contained identical such checks.

## The `ftk/Makefile.am` file

Discounting the code for doxygen and rpm targets, the `ftk/Makefile.am` file is fairly trivial:

=CODE_START=
ACLOCAL_AMFLAGS = -I m4

EXTRA_DIST = COPYRIGHT GNUMakefile netware

SUBDIRS = src util obs

if HAVE_DOXYGEN
  SUBDIRS += docs
endif

doc_DATA = AUTHORS ChangeLog COPYING COPYRIGHT INSTALL NEWS README

rpms srcrpm: dist
        $(MAKE) -C obs $(AM_MAKEFLAGS) $@
        rpmarch=`rpm --showrc | grep ^build\ arch | sed 's/\(.*: \)\(.*\)/\2/'`; \
        test -z $$rpmarch || ( mv $$rpmarch/* .; rm -rf $$rpmarch )
        -rm -rf $(distdir)

dist-hook:
        -rm -rf `find $(distdir) -name .svn`

.PHONY: srcrpm rpms
=CODE_END=

Here, you find the usual `ACLOCAL_AMFLAGS`, `EXTRA_DIST` and `SUBDIRS` variable definitions. But you can also see the use of an Automake conditional. The `if` statement allows us to append another directory (`docs`) to the `SUBDIRS` list, but only if you have access to the doxygen program. If you try to use such a conditional without a corresponding `AM_CONDITIONAL` in the `configure.ac` file, then Automake will complain about it.

Another new construct--at least in a top-level `Makefile.am` file--is the use of the `doc_DATA` variable. The FLAIM toolkit provides some extra documentation files in its top-level directory that I'd like to have installed. By using the `doc` prefix on the `DATA` primary in this manner, I'm telling Automake that I'd like to have these files installed as data files in the `$(docdir)` directory, which ultimately resolves to the `$(prefix)/share/doc` directory.

An interesting effect of the use of the `DATA` primary is that files mentioned in `DATA` variable are not automatically distributed, so you have to mention them in the `EXTRA_DIST` variable as well. You'll note that I did _not_ have to mention the standard GNU project text files in `EXTRA_DIST`. These are always distributed automatically. However, I _did_ have to mention the standard text files in the `doc_DATA` variable. This is because Automake makes no assumptions about the files that you want installed.

Once again, I'll defer a discussion of the RPM targets until later.

## Automake "-hook" and "-local" rules

At this point, I'd like to discuss the use of the `dist-hook` target. Automake recognizes two types of extensions. I call these `-local` targets and `-hook` targets. Both of these types of targets represent Automake extension points. Automake recognizes and honors `-local` extensions for the following standard Automake targets:

* `all`
* `info`
* `dvi`
* `ps`
* `pdf`
* `html`
* `check`
* `install-data`
* `install-dvi`
* `install-exec`
* `install-html`
* `install-info`
* `install-pdf`
* `install-ps`
* `uninstall`
* `installdirs`
* `installcheck`
* `mostlyclean`
* `clean`
* `distclean`
* `maintainer-clean`

Adding a `-local` version of any of these to your `Makefile.am` files will cause Automake to ensure that the commands associated with these rules are executed _before_ the associated standard target. Automake does this by generating the rule for the standard target such that the `-local` version is one of its dependencies (if it exists), thus the `-local` version is run before the commands for the standard target. Shortly, I'll show an example of this, using a `clean-local` target.

The `-hook` targets are a bit different in that they are executed _after_ the corresponding standard target is executed. Automake does this by adding another command to the end of the standard target command list that executes `make` (via the `$(MAKE)` variable) on the same `Makefile`, with the `-hook` target as the command-line target. Thus, the `-hook` target is executed at the end of the standard target commands.

The following standard Automake targets support `-hook` versions:

* `install-data`
* `install-exec`
* `uninstall`
* `dist`
* `distcheck`

In this example, I use the `dist-hook` target to "adjust" the distribution directory before Automake create a tarball from its contents.

=CODE_START=
...
dist-hook:
        -rm -rf `find $(distdir) -name .svn`
...
=CODE_END=

The `rm` command removes extraneous files and directories that become part of the distribution directory as a result of my adding entire directories to the `EXTRA_DIST` variable. When you add a directory name to `EXTRA_DIST`, _everything_ in that directory is added to the distribution--even hidden Subversion control files and directories. I certainly don't want this stuff in my tarball, so I use the `dist-hook` target to add commands that remove these unwanted files after the distribution directory has been created, but before it's "zipped" up into a tarball.

Here's a portion of the generated Makefile, showing how `dist-hook` is used by Automake:

=CODE_START=
...
distdir: $(DISTFILES)
        ... # copy files into distdir
        $(MAKE) $(AM_MAKEFLAGS) \
          top_distdir="$(top_distdir)" \
          distdir="$(distdir)" dist-hook
        ... # change attributes of files in distdir
...
dist dist-all: distdir
        tardir=$(distdir) && $(am__tar) | \
          GZIP=$(GZIP_ENV) gzip -c \
          >$(distdir).tar.gz
        $(am__remove_distdir)
...
.PHONY: ... dist-hook ...
...
dist-hook:
        -rm -rf `find $(distdir) -name .svn`
...
=CODE_END=

Don't be afraid to dig into the generated makefiles to see just exactly what Automake is doing with your code. While there's a fair amount of ugly shell code in there, most of it can be ignored. You're usually  more interested in the `make` rules that Automake is generating, and these are easily separated out. Once you understand the rules, you are well on your way to becoming an Automake expert.

## Designing the `ftk/src/Makefile.am` file

I've left the most difficult task for last. I now need to create appropriate `Makefile.am` files in the `src` and `utils` directories. I want to ensure that all of the original functionality is preserved from the old build system as I'm creating these files. Basically, this includes:

* properly building the ftk shared and static libraries;
* properly specifying installation locations for all installed files;
* setting the ftk library version information correctly;
* ensuring that all remaining unused files are distributed;
* ensuring that platform-specific compiler options are used.

Besides a few additions to ftk's `configure.ac` file, the following framework should cover most of the points above, so I'll be using it for all of the FLAIM library projects, with appropriate additions and subtractions, based on the needs of each individual library:

=CODE_START=
EXTRA_DIST = ...
lib_LTLIBRARIES = ...
include_HEADERS = ... 
xxxxx_la_SOURCES = ... 
xxxxx_la_LDFLAGS = -version-info x:y:z
=CODE_END=

The original GNU makefile told me that the library was named `libftk.so`. This is a bad name for a library on Linux, as most of the three-letter acronyms are already taken for other purposes within the file system, so I've made an executive decision here and renamed the `ftk` library to `flaimtk`. I added the libtool library name, `libflaimtk.la` to the `lib_LTLIBRARIES` list, and then changed the `xxxxx` portions of the remaining macros to `libflaimtk`.

To get the source files, I could have entered them all by hand, but I noticed while reading the original makefile that it used the GNU make function macro, `$(wildcard src/*.cpp)` in order to build the file list for the library from the contents of the `src` directory. This tells me that all of the `.cpp` files within the source directory are required by the library. To get the file list into `Makefile.am`, I used a simple shell command to concatenate the file list to the end of the `Makefile.am` file (assuming I'm in the `ftk/src` directory):

=CODE_START=
$ ls >> Makefile.am
=CODE_END=

This leaves me with a single column list of all of the files in the `ftk/src` directory appended to the bottom of the `ftk/src/Makefile.am` file. I deleted the `Makefile.am` file from this list, and then moved the list to just below the `libflaimtk_la_SOURCES =` entry. I added a BACKSLASH character after the EQUAL sign, and at the end of each of the files except the last one. This gives me a clean file list. Another formatting technique is to simply wrap the line every 70 characters or so with a BACKSLASH and a CARRIAGE RETURN. I prefer to put each file on a separate line--especially early on in the conversion process, so that I can easily extract or add files to the lists.

For the header files, I had to manually examine each one to determine its use in the project. There are only four header files in the `src` directory, and as it turns out, the only one _not_ used by ftk on Unix and GNU/Linux platforms is `ftknlm.h`. This file is specific to the NetWare build. I added this file to the `EXTRA_DIST` list.

The `ftk.h` file (now renamed to `flaimtk.h`) is the only public header file, so I moved that one into the `include_HEADERS` list. The other two are used internally in the library build, so I left them in the `libflaimtk_la_SOURCES` list.

Finally, I noted in the original makefile, that the last ftk library that was released to the public in a distribution sported an interface version of 4.0.0. However, since I change the name of the library from `libftk` to `libflaimtk`, I reset this value to 0.0.0 because it's a different library now, so I replaced `x:y:z` with `0:0:0` in the `-version-info` option within the `libflaimtk_la_LDFLAGS` variable. (_NOTE: Version 0.0.0 is the default, so I could have simply removed the `-version-info` argument entirely for the same effect.) Here's (most of) the final `ftk/src/Makefile.am` file:

=CODE_START=
EXTRA_DIST = ftknlm.h

lib_LTLIBRARIES = libflaimtk.la
include_HEADERS = flaimtk.h

libflaimtk_la_SOURCES = \
 ftkarg.cpp \
 ftkbtree.cpp \
 ftkcmem.cpp \
 ftkcoll.cpp \
 ...
 ftksys.h \
 ftkunix.cpp \
 ftkwin.cpp \
 ftkxml.cpp

libflaimtk_la_LDFLAGS = -version-info 0:0:0
=CODE_END=

That's it! You know--I don't know about you, but I'd much rather maintain this file, than a 2200 line GNU makefile! Granted, I'm not really done yet, but (trust me) it won't get much worse than this.

## Moving on to the `ftk/util` directory

Properly designing a `Makefile.am` file for the `util` directory requires examining the original makefile again for more products--those built from files in the `ftk/util` directory. A quick glance at the `ftk/util` directory showed that there was only one source file, `ftktest.cpp`. This appeared to be some sort of testing program for the ftk library, so I had a design decision to make here: should I build this as a normal program, or as a "check" program.

The difference, of course, is that normal programs are always built, but "check" programs are only built when `make check` is executed. Remember also that `check` programs are never installed. Thus, if I chose to always build `ftktest`, I'd then have to decided whether or not I want it to be installed. If I want it built all the time, but not installed, I'd have to specify the program using the `noinst` prefix, rather than the usual `bin` prefix.

In either case, I probably want to add the `ftktest` binary to the list of tests run during `make check`, so the two questions here are (1) whether or not I might wish to run `ftktest` manually at times after a build, and (2) do I want to install the `ftktest` program? Given that ftk is rather mature at this point, I opted to not install `ftktest` and only build it during `make check`. Here's my final `ftk/util/Makefile.am` file:

=CODE_START=
FTKINC=-I$(top_srcdir)/src
FTKLIB=../src/libflaimtk.la

check_PROGRAMS = ftktest

ftktest_SOURCES = ftktest.cpp
ftktest_CPPFLAGS = $(FTKINC)
ftktest_LDADD = $(FTKLIB)

TESTS = ftktest
=CODE_END=

Note that I could easily have left out the `FTKINC` and `FTKLIB` variables, replacing their references with the appropriate text in the `CPPFLAGS` and `LDADD` variables, but since this will be a pattern used quite often in the new FLAIM build system, because of the external dependency between the database projects and the tool kit, I've decided to start the habit right here and now.

I hope by now that you can see the relationship between `TEST` and `check_PROGRAMS`. To be blunt, there really is _no_ relationship between the files listed in `check_PROGRAMS` and those listed in `TEST`. `TEST` can refer to anything that can be executed without command line parameters, and these programs or scripts are executed during `make check` after all of the `check_PROGRAMS` are built (if any). This separation of duties makes for a very clean and flexible system.

# Designing the xflaim build system

Now that I've finished with the tool kit, I'll move on to the xflaim project. I'm choosing xflaim, rather than flaim, because it supplies the most build features that can be converted to GNU Autotools, including the Java and CSharp language bindings. After xflaim, covering the remaining database projects would be redundant, as the processes are identical (but simpler). However, you can find the other build system files in the attached source archive, as usual.

I generated the `configure.ac` script using `autoscan` again. It's important to use `autoscan` in each of the individual projects, because the source code of each project is different, and will thus cause different macros to be written into each `configure.scan` file. I then used the same techniques to create xflaim's `configure.ac` script as I used with the tool kit.

## The xflaim `configure.ac` script

After hand-modifying the generated `configure.scan` file and renaming it to `configure.ac`, I found this `configure.ac` script to be similar in many ways to ftk's `configure.ac` script. As it's fairly long, I'll only show you the most significant differences here:

=CODE_START=
...
# Checks for optional programs.
AC_PROG_TRY_CSC
AC_PROG_TRY_CSVM
AC_PROG_TRY_JAVAC
AC_PROG_TRY_JAVAH
AC_PROG_TRY_JAVADOC
AC_PROG_TRY_JAR
AC_PROG_TRY_DOXYGEN

# Configure variables: FTKLIB and FTKINC.
AC_ARG_VAR([FTKLIB], [where libflaimtk.la is at])
AC_ARG_VAR([FTKINC], [where flaimtk.h is at])

# Ensure that both or neither are specified.
if (test -n "$FTKLIB" && test -z "$FTKINC") || \
   (test -n "$FTKINC" && test -z "$FTKLIB"); then
  AC_MSG_ERROR([both or neither FTK variables])
fi 

# Not specified? Check for FTK in standard places.
if test -z "$FTKLIB"; then
  # Check for flaim tool kit as a sub-project.
  if test -d "$srcdir/ftk"; then
    AC_CONFIG_SUBDIRS([ftk])
    FTKINC='$(top_srcdir)/ftk/src'
    FTKLIB='$(top_builddir)/ftk/src'
  else
    # Check for flaim tool kit as a super-project.
    if test -d "$srcdir/../ftk"; then
      FTKINC='$(top_srcdir)/../ftk/src'
      FTKLIB='$(top_builddir)/../ftk/src'
    fi
  fi
fi

# Still empty? Check for installed flaim tool kit.
if test -z "$FTKLIB"; then
  AC_CHECK_LIB([flaimtk], [ftkFastChecksum], 
    [AC_CHECK_HEADERS([flaimtk.h])
     LIBS="-lflaimtk $LIBS"],
    [AC_MSG_ERROR([No FLAIM Took Kit found.])])
fi

# AC_SUBST command line variables.
if test -n "$FTKLIB"; then
  AC_SUBST([FTK_LTLIB], ["$FTKLIB/libflaimtk.la"])
  AC_SUBST([FTK_INCLUDE], ["-I$FTKINC"])
fi

# Check for Java compiler.
have_java=yes 
if test -z "$JAVAC"; then have_java=no; fi
if test -z "$JAVAH"; then have_java=no; fi
if test -z "$JAR"; then have_java=no; fi
if test "x$have_java" = xno; then
  echo "-----------------------------------------"
  echo " Some Java tools not found - continuing"
  echo " without XFLAIM JNI support."
  echo "-----------------------------------------"
fi
AM_CONDITIONAL([HAVE_JAVA], 
  [test "x$have_java" = xyes])

# Check for CSharp compiler.
if test -z "$CSC"; then
  echo "-----------------------------------------"
  echo " No CSharp compiler found - continuing"
  echo " without XFLAIM CSHARP support."
  echo "-----------------------------------------"
fi
AM_CONDITIONAL([HAVE_CSHARP], [test -n "$CSC"])

...

echo "
  ($PACKAGE_NAME) version $PACKAGE_VERSION
  Prefix.........: $prefix
  Debug Build....: $debug
  C++ Compiler...: $CXX $CXXFLAGS $CPPFLAGS
  Linker.........: $LD $LDFLAGS $LIBS
  FTK Library....: ${FTKLIB:-INSTALLED}
  FTK Include....: ${FTKINC:-INSTALLED}
  CSharp Compiler: ${CSC:-NONE} $CSCFLAGS
  CSharp VM......: ${CSVM:-NONE}
  Java Compiler..: ${JAVAC:-NONE} $JAVACFLAGS
  JavaH Utility..: ${JAVAH:-NONE} $JAVAHFLAGS
  Jar Utility....: ${JAR:-NONE} $JARFLAGS 
  Javadoc Utility: ${JAVADOC:-NONE}
  Doxygen........: ${DOXYGEN:-NONE}
"
=CODE_END=

First, you'll notice that I've invented a few more of my `AC_PROG_TRY` macros. In the first portion, I'm  checking for the optional existence of the following programs: a CSharp compiler, a CSharp virtual machine, a Java compiler, a JNI header and stub generator, a javadoc generation tool, a Java archive tool, and of course, doxygen. As before, I've written separate macro files for each of these checks, and added them to my `xflaim/m4` directory.

As with the `AC_PROG_TRY_DOXYGEN` macro, each of these macros attempts to locate the associated program, but doesn't go apoplectic if it's not found, because I want to be able to use the program if it's there, but not require my users to have them in order to build some of the most useful functionality of the FLAIM projects.

Next, you'll find a new macro, `AC_ARG_VAR`. Like the `AC_ARG_ENABLE` and `AC_ARG_WITH` macros, `AC_ARG_VAR` allows the project maintainer to extend the interface to the `configure` script. This variable is different, however, in that it adds a public variable to the list of variables that the configure script cares about. In this case, I'm adding two public variables, `FTKINC` and `FTKLIB`. These variables will show up in the `configure` script's help text under the section entitled "Some influential environment variables:".

These variables are also automatically substituted into the `Makefile.in` templates generated by Automake. However, I don't really need this substitution functionality, as I'm going to build other variables out of these variables, and I'll want these derived variables to be substituted, as you'll soon see.

These variables may be set by the user in the environment, or specified on the `configure` script's command line in this manner:

=CODE_START=
$ ./configure FTKINC='$HOME/dev/ftk/include' ...
=CODE_END=

The large chunk of code that follows the `AC_ARG_VAR` macros actually uses these variables to set other variables used in the build system:

=CODE_START=
...
# Ensure that both or neither are specified.
if (test -n "$FTKLIB" && test -z "$FTKINC") || \
   (test -n "$FTKINC" && test -z "$FTKLIB"); then
  AC_MSG_ERROR([both or neither FTK variables])
fi 

# Not specified? Check for FTK in standard places.
if test -z "$FTKLIB"; then
  # Check for flaim tool kit as a sub-project.
  if test -d "$srcdir/ftk"; then
    AC_CONFIG_SUBDIRS([ftk])
    FTKINC='$(top_srcdir)/ftk/src'
    FTKLIB='$(top_builddir)/ftk/src'
  else
    # Check for flaim tool kit as a super-project.
    if test -d "$srcdir/../ftk"; then
      FTKINC='$(top_srcdir)/../ftk/src'
      FTKLIB='$(top_builddir)/../ftk/src'
    fi
  fi
fi

# Still empty? Check for installed flaim tool kit.
if test -z "$FTKLIB"; then
  AC_CHECK_LIB([flaimtk], [ftkFastChecksum], 
    [AC_CHECK_HEADERS([flaimtk.h])
     LIBS="-lflaimtk $LIBS"],
    [AC_MSG_ERROR([No FLAIM Took Kit found.])])
fi

# AC_SUBST command line variables.
if test -n "$FTKLIB"; then
  AC_SUBST([FTK_LTLIB], ["$FTKLIB/libflaimtk.la"])
  AC_SUBST([FTK_INCLUDE], ["-I$FTKINC"])
fi
...
=CODE_END=

First, I check to see that either both variables are specified, or neither. If only one of them is given, then I have to fail with an error. The user isn't allowed to tell me where to find half the tool kit. I need both the include file and the library.

If neither is specified, then I go searching for them. First I look for a sub-directory called `ftk`. If I find one, then I configure that directory as a sub-project to be processed by Autoconf, by using the `AC_CONFIG_SUBDIRS` macro. Note that you can use this macro conditionally, and multiple times within the same `configure.ac` file. I also set the variables to point to the appropriate relative locations within the ftk project.

If I don't find it as a sub-directory, then I look for it in the parent directory. If I find it there, I set the `FTK` variables appropriately. This time I don't need to configure the located `ftk` directory as a sub-project, because I'm assuming that the _current_ project (xflaim) is already a sub-project of the umbrella project.

If I don't find it in either place, I use the standard `AC_CHECK_LIB` and `AC_CHECK_HEADERS` macros to see if it's installed on the user's host machine. If so, I need only add `-lflaimtk` to the `$LIBS` variable. The header file will be found in the standard location--usually `/usr(/local)/include`. Note that normally, `AC_CHECK_LIB` would automatically add the library reference to the `$LIBS` variable, but since I've overridden the default functionality in the third parameter, I have to add it myself.

If I don't find it installed, then I give up with an error message, indicating that xflaim can't be built without the FLAIM tool kit.

However, after making it through the checks, if the `FTKLIB` variable is no longer empty, then I use `AC_SUBST` to "publish" `FTK_INCLUDE` and `FTK_LTLIB` variables, containing derivations of the `FTK` variables appropriate for the C++ preprocessor and the linker.

The remaining code (excluding the trailing `echo` statement) calls `AM_CONDITIONAL` for Java and CSharp tools in a manner similar to the way I handled doxygen. Again, I generate bold messages to the user that the Java or CSharp portions of the xflaim project will not be built if those tools can't be found, but I allow the build to continue.

## Creating the `xflaim/src/Makefile.am` file

I wrote the `xflaim/src/Makefile.am` file by following the same design principles used in the `ftk/src` version of that file. It looks very similar to its ftk counterpart, with one exception: According to the original build system makefile, the Java native interface (JNI) and CSharp native language binding sources are compiled and linked right into the xflaim shared library. 

This is not an uncommon practice, because it alleviates the need for extra library objects specifically for these languages. Essentially, the xflaim shared library exports native interfaces for these languages, that are then consumed by their corresponding language binding wrappers.

I'm going to ignore these language binding interfaces for now. However, keep them in the back of your mind, because later when I've finished with the entire xflaim project, I'll turn my attention back to properly hooking these bindings into the library. Except for the language bindings then, the `Makefile.am` file looks almost identical to its ftk counterpart:

=CODE_START=
SUBDIRS = 

if HAVE_JAVA
  SUBDIRS += java
  JNI_LIBADD=java/libxfjni.la
endif

if HAVE_CSHARP
  SUBDIRS += cs
  CSI_LIBADD=cs/libxfcsi.la
endif

SUBDIRS += .

lib_LTLIBRARIES = libxflaim.la
include_HEADERS = xflaim.h

libxflaim_la_SOURCES = \
 btreeinfo.cpp \
 f_btpool.cpp \
 f_btpool.h \
 ...
 rfl.h \
 scache.cpp \
 translog.cpp

libxflaim_la_CPPFLAGS = $(FTK_INCLUDE)
libxflaim_la_LIBADD = $(JNI_LIBADD)\
 $(CSI_LIBADD) $(FTK_LTLIB)
libxflaim_la_LDFLAGS = -version-info 3:2:0
=CODE_END=

As I did with the `docs` directory in the top-level `Makefile.am` file, I've conditionally defined the `SUBDIRS` variable here, based on the Automake conditional specified in `configure.ac`. What's different here is that I've pre-defined `SUBDIRS` to be empty before checking the condition, and then added the current directory (`.`) at the end. 

These directories must be processed (if they can be) before the current directory, as they generate libraries that must be linked into the library built by this makefile. I had to initialize `SUBDIRS` to empty because the PLUS-EQUAL (`+=`) Automake extension operator will only work properly if the variable is already defined--even if it must be defined as empty.

Since I initialized it to empty, I removed the implicit current directory, so I added it back in after the conditional checks. It's a bit clumsy, I know, but it works.

The library interface version information was once again extracted from the original xflaim project makefile.

## Turning to the `xflaim/util` directory

The `util` directory for xflaim is a bit more complex. According to the original makefile, it generates several utility programs, as well as a convenience library that is consumed by each of these utilities.

In addition, the task of finding out which source files belong to which utilities, and which were not used at all was more difficult. It turns out that there are several files in the `xflaim/util` directory that are not used by any of the utilities. I suppose the project developers thought there might be some future value in these source files, so they kept them around. Well, that leaves us with another decision: Do we distribute these "extra" source files? I chose to do so, as they were already being distributed by the original build system, and adding them to the `EXTRA_DIST` list makes it obvious to later observers that they aren't used in the build.

Here's my version of the `xflaim/util/Makefile.am` file:

=CODE_START=
EXTRA_DIST = dbdiff.cpp dbdiff.h domedit.cpp\
 diffbackups.cpp xmlfiles

XFLAIM_INCLUDE=-I$(top_srcdir)/src
XFLAIM_LDADD=../src/libxflaim.la

## Utility Programs

bin_PROGRAMS = xflmcheckdb xflmrebuild\
 xflmview xflmdbshell

xflmcheckdb_SOURCES = checkdb.cpp
xflmcheckdb_CPPFLAGS =\
 $(XFLAIM_INCLUDE) $(FTK_INCLUDE)
xflmcheckdb_LDADD = libutil.la $(XFLAIM_LDADD)

xflmrebuild_SOURCES = rebuild.cpp
xflmrebuild_CPPFLAGS =\
 $(XFLAIM_INCLUDE) $(FTK_INCLUDE)
xflmrebuild_LDADD = libutil.la $(XFLAIM_LDADD)

xflmview_SOURCES = \
 viewblk.cpp \
 view.cpp \
 ...
 viewmenu.cpp \
 viewsrch.cpp

xflmview_CPPFLAGS =\
 $(XFLAIM_INCLUDE) $(FTK_INCLUDE)
xflmview_LDADD = libutil.la $(XFLAIM_LDADD)

xflmdbshell_SOURCES = \
 domedit.h \
 fdomedt.cpp \
 fshell.cpp \
 fshell.h \
 xshell.cpp

xflmdbshell_CPPFLAGS =\
 $(XFLAIM_INCLUDE) $(FTK_INCLUDE)
xflmdbshell_LDADD = libutil.la $(XFLAIM_LDADD)

## Utility Convenience Library 

noinst_LTLIBRARIES = libutil.la

libutil_la_SOURCES = \
 flm_dlst.cpp \
 flm_dlst.h \
 flm_lutl.cpp \
 flm_lutl.h \
 sharutil.cpp \
 sharutil.h

libutil_la_CPPFLAGS =\
 $(XFLAIM_INCLUDE) $(FTK_INCLUDE)

## Check Programs

check_PROGRAMS = \
 ut_basictest \
 ut_binarytest \
 ...
 ut_xpathtest \
 ut_xpathtest2

check_DATA = copy-xml-files.stamp
check_HEADERS = flmunittest.h

ut_basictest_SOURCES =\
 flmunittest.cpp basictestsrv.cpp
ut_basictest_CPPFLAGS =\
 $(XFLAIM_INCLUDE) $(FTK_INCLUDE)
ut_basictest_LDADD = libutil.la $(XFLAIM_LDADD)

...

ut_xpathtest2_SOURCES =\
 flmunittest.cpp xpathtest2srv.cpp
ut_xpathtest2_CPPFLAGS =\
 $(XFLAIM_INCLUDE) $(FTK_INCLUDE)
ut_xpathtest2_LDADD = libutil.la $(XFLAIM_LDADD)

## Unit Tests

TESTS = \
 ut_basictest \
 ...
 ut_xpathtest2

## Miscellaneous rules required by Check Programs

copy-xml-files.stamp:
        cp $(srcdir)/xmlfiles/*.xml .
        echo Timestamp > $@

clean-local: 
        -rm -rf ix2.*
        -rm -rf bld.*
        -rm -rf tst.bak
        -rm -f *.xml
        -rm -f copy-xml-files.stamp
=CODE_END=

In this example, you can see by the ellipses that I left out several long lists of files and products. There are, for instance, 22 unit tests built by this makefile. I only left the descriptions for two of them, because they're all identical, except for naming differences and the source files from which they're built.

But here's something curious. Take a look at the definition for the `xflmcheckdb` program:

=CODE_START=
...
xflmcheckdb_SOURCES = checkdb.cpp
xflmcheckdb_CPPFLAGS =\
 $(XFLAIM_INCLUDE) $(FTK_INCLUDE)
xflmcheckdb_LDADD = libutil.la $(XFLAIM_LDADD)
...
=CODE_END=

Notice that the `xflmcheckdb_CPPFLAGS` variable uses both the `XFLAIM_INCLUDE` and `FTK_INCLUDE` variables. The utility clearly requires information from both sets of header files. But the `xflmcheckdb_LDADD` variable only uses the `XFLAIM_LDADD` variable. Why? Because Libtool manages inter-library dependencies for you. Since I reference `libxflaim.la` (through `XFLAIM_LDADD`) when building the utilities and unit tests, and since `libxflaim.la` lists `libflaimtk.la` as a dependency, I don't need to explicitly reference that library here.

You can get a clearer picture of this if you take a look at the contents of `libxflaim.la` (in your build directory under `xflaim/src`). You'll find a few lines like this somewhere in the middle of the file:

=CODE_START=
...
# Libraries that this one depends upon.
dependency_libs=
 ' .../flaim/build/ftk/src/libflaimtk.la
 -lrt -lpthread -lncurses'
...
=CODE_END=

Notice that the path information for `libflaimtk.la` is listed here, thus we don't have to specify it in the `LDADD` variables for the xflaim utilities. The linker still requires this information, but the `libtool` script effectively hides this requirement by extracting the information from the `.la` file and appending it to the linker command line when building the utility files. 

As an aside, when `libxflaim.la` is installed, Libtool modifies the installed version of this file such that it references the installed versions of the libraries, rather than those in the build directory structure.

### Stamp targets

In creating this makefile, I ran across another minor problem that I hadn't anticipated. At least one of the unit tests (probably several) seemed to require that some XML data files be present in the directory from which the test is run. What brought this to my attention was the fact that that particular unit test failed. When I dug into it, I noticed that it was trying to open some specifically named XML data files. Searching around a bit lead me to the `xmldata` directory, beneath the `xflaim/util` directory. This directory contained several dozen XML data files.

Somehow I needed to copy those files into the build hierarchy's `xflaim/util` directory before I could run the unit tests. Well, I know that `check` programs are built before `TESTS` are executed. As it turns out other primaries prefixed with `check` are also processed before `TESTS` are executed. Notice the `check_DATA` variable:

=CODE_START=
...
check_DATA = copy-xml-files.stamp
...
copy-xml-files.stamp:
        cp $(srcdir)/xmlfiles/*.xml .
        echo Timestamp > $@
...
=CODE_END=

It refers to a file called `copy-xml-files.stamp`. This is a special type of file target called a "stamp" target. It's purpose is to replace a bunch of unspecified files, or a non-file-based operation, with one single representative file. This stamp file is used to indicate to the make system that the operation of copying all of the XML data files into the test directory has been done. Automake uses stamp files quite often in its own generated rules.

The rule for generating the stamp file (near the bottom of the example above), also copies the XML data files into the test execution directory. The `echo` statement simply creates a file named `copy-xml-files.stamp`, and containing the single word, "Timestamp". The file may contain anything, really. The important point here is that the file exists, and has a time and date associated with it. The `make` utility uses this information to determine whether or not the copy operation needs to be executed. In this case, since `copy-xml-files.stamp` has no dependencies, its mere existence indicates to `make` that the operation has already been done, and need not be done again. 

To get `make` to perform the copy operation on the next build, simply delete the stamp file. This is a sort of hybrid between a true file-based rule, and a phony target. Phony targets are always executed, because they aren't real files, so `make` has no way of knowing whether or not the associated operation _should_ be performed. The time stamps of file-based rules can be checked against their dependency lists to determine if they should be re-executed, or not. Stamp rules like this one are executed only if the stamp file is missing.

All files placed in the build directory should be cleaned up when the user enters `make clean` at the command prompt. Since I placed these XML data files into this directory, I need to clean them up also. Files listed in `DATA` variables are not cleaned up automatically, because `DATA` files are usually not generated files. Most often, the `DATA` primary is used to list existing project files that need to be installed. In this case, I actually created a bunch of XML files and a stamp file, so I need to clean these up when `make clean` is executed.

_NOTE: Be careful when using this technique on files that need to be copied from the source directory into the same corresponding location in the build directory. Special care needs to be taken to ensure you don't inadvertently delete source files from the source tree when building in the source tree._

### Cleaning your room

There is another way to ensure that files created using your own `make` rules get cleaned up during execution of the `clean` target. You may also define the `CLEANFILES` variable to contain a white space separated list of files or wild card specifications to be removed. The `CLEANFILES` variable is the more "approved" method of removing extra files during `make clean`. 

If that's so, then why did I use `clean-local` in this case? Because the `CLEANFILES` variable has one caveat: it won't remove directories, only files. Each of the `rm` commands above removes a wild card file specification that contains at least one directory, so I had to use `clean-local` in this case. I'll show you a proper use of `CLEANFILES` shortly.

=CODE_START=
...
clean-local: 
        -rm -rf ix2.*
        -rm -rf bld.*
        -rm -rf tst.bak
        -rm -f *.xml
        -rm -f copy-xml-files.stamp
...
=CODE_END=

Here, I needed to remove all files ending in `.xml`, plus the stamp file. In addition, the unit tests themselves are not well written, in that they leave "droppings" behind. Let this be a lesson: when you write unit tests that generate files and directories, remove all such droppings before terminating your test. That way, you won't have to write such `clean` rules in your makefiles. 

Another way of managing this is would be to write a script that calls the tests, and then cleans up left-over files and directories. This script then becomes the entry in the `TESTS` variable.

I use the Automake supported `clean-local` target here as a way to extend the `clean` target. The `clean-local` target is executed as a dependency of (and thus before) the `clean` target, if it exists. Here's the corresponding code from the Automake-generated `Makefile`:

=CODE_START=
...
clean: clean-am

clean-am: clean-binPROGRAMS clean-checkPROGRAMS \
        clean-generic clean-libtool clean-local \
        clean-noinstLTLIBRARIES mostlyclean-am
...
.PHONY: ... clean-local ...
...
clean-local: 
        -rm -rf ix2.*
        -rm -rf bld.*
        -rm -rf tst.bak
        -rm -f *.xml
        -rm -f copy-xml-files.stamp
...
=CODE_END=

Automake noted that I had a target named `clean-local` in my `Makefile.am` file, so it added `clean-local` to the dependency list for `clean-am`, and then added it to the `.PHONY` list. Had I not written a `clean-local` target, these references would have been missing from the generated `Makefile`.

When cleaning up files in a build directory using wild cards in this manner, you need to remember that the user may be building in the source directory. Try to make your wild cards as specific as possible so you don't inadvertently remove source files.

# Building Java sources using Autotools

The most significant barrier to building Java sources using the GNU Autotools is the (apparently nearly intentional) misdirection in the existing documentation. Now, I know better than to think it was done on purpose, but time and time again, what you find in internet searches, or in the GNU Automake documentation is just enough information, presented in just such a way as to allow you to really hang yourself well when you try to use it. There's nothing quite as frustrating as finding dozens of implications that something can be done, but finding no information telling you exactly how to do it.

There are two sections in the GNU Automake manual that refer to building Java sources using the GNU Autotools. The first is section 8.15, entitled, "Java Support". The second is section 10.4, entitled simply, "Java". (The major section 10 is entitled, "Other GNU Tools".)

In the first place, the contents of these two sections should probably be swapped. Section 8.15 actually discusses using the GCJ front end to the GNU compiler suite to compile and link Java source code into _native executables_. This is nothing that the average Java purist would understand without a little hand-holding, because Sun Java doesn't do anything of the sort. The information in this section would be better placed under a section entitled, "Other GNU Tools" (like section 10, for instance).

On the other hand, section 10.4 talks about building Java sources using whatever `javac` compiler happens to be found in the system path. This is much more likely to be something a Java developer might actually wish to do in a `Makefile.am` file, so I'm going to ignore section 8.15 (native compilation, using GCJ), and talk strictly about section 10.4.

## Autotools Java support

Autoconf has _no_ built-in support for java. For example, it provides no macros that locate Java tools in the end user's environment. Automake's support for building Java classes is minimal, but getting it to work is not that difficult if you know what you're doing. 

Automake provides a built-in primary (`JAVA`) for building Java sources. Automake does not provide any preconfigured installation location prefixes for installing Java classes. However, the usual place to install Java classes and `.jar` files is in the `$(datadir)/java` directory. So, creating a proper prefix is as simple as using the Automake prefix extension mechanism of defining a variable suffixed with `dir`:

=CODE_START=
...
javadir = $(datadir)/java
java_JAVA = file_a.java file_b.java ...
...
=CODE_END=

Note that you don't often want to install Java sources, which is what you will accomplish when you define your `JAVA` primary with this sort of prefix. Rather, you want the class files to be installed, or more likely a `.jar` file containing all of your `.class` files. So I find it more useful to define the JAVA primary with the `noinst` prefix. Additionally, files in the `JAVA` primary list are not distributed by default, so you may even want to use the `dist` super-prefix, in this manner:

=CODE_START=
...
dist_noinst_JAVA = file_a.java file_b.java ...
...
=CODE_END=

When you define a list of Java source files in a variable containing the `JAVA` primary, Automake generates a make rule that builds that list of files all in one command, using the following command line syntax:

=CODE_START=
...
JAVAROOT = $(top_builddir)
JAVAC = javac
CLASSPATH_ENV = CLASSPATH=$(JAVAROOT):\
  $(srcdir)/$(JAVAROOT):$$CLASSPATH
...
classdist_noinst.stamp: $(dist_noinst_JAVA)
        @list1='$?'; list2=; \
        if test -n "$$list1"; then \
          for p in $$list1; do \
            if test -f $$p; 
              then d=; \
              else d="$(srcdir)/"; \
            fi; \
            list2="$$list2 $$d$$p"; \
          done; \
          echo '$(CLASSPATH_ENV) $(JAVAC) \
            -d $(JAVAROOT) $(AM_JAVACFLAGS) \
            $(JAVACFLAGS) '"$$list2"; \
          $(CLASSPATH_ENV) $(JAVAC) \
            -d $(JAVAROOT) $(AM_JAVACFLAGS) \
            $(JAVACFLAGS) $$list2; \
        else :; fi
        echo timestamp > classdist_noinst.stamp
...
=CODE_END=

Most of the "stuff" you see in the command above is for prepending the `$(srcdir)` prefix onto each file in the user-specified list, in order to properly support `VPATH` builds. This code uses a shell `for` statement to split the list into individual files, prepend `$(srcdir)`, and then reassemble the list.

_NOTE: It's interesting to note that this file list munging process could have been done in a half-line of GNU `make`-specific code, but Automake is designed to generate makefiles that can be executed by many older make programs._

The part that actually does the work is found in one line, near the bottom. To make it simpler to read, I'll reformat this example, removing the cruft:

=CODE_START=
...
JAVAROOT = $(top_builddir)
JAVAC = javac
CLASSPATH_ENV = CLASSPATH=$(JAVAROOT):\
  $(srcdir)/$(JAVAROOT):$$CLASSPATH
...
classdist_noinst.stamp: $(dist_noinst_JAVA)
        ...
        $(CLASSPATH_ENV) $(JAVAC) -d $(JAVAROOT) \
          $(AM_JAVACFLAGS) $(JAVACFLAGS) $$list
...
=CODE_END=

You may have noticed Automake's use of a stamp file here. This is done because the single `$(JAVAC)` command generates several `.class` files from several `.java` files. Rather than just pick one of these at random to use in the rule, Automake generates and uses a stamp file. This is important to know, because using a stamp file in the rule causes `make` to ignore the associations between individual `.class` files and their corresponding `.java` files. That is, if you delete a `.class` file, the rules in the `Makefile` will not cause it to be rebuilt. The only way to cause the re-execution of the `$(JAVA)` command is to either modify one or more of the `.java` files, thereby causing their timestamps to become newer than that of the the stamp file, or to delete the stamp file entirely.

The variables used in the build environment, and on the command line include `JAVAROOT`, `JAVAC`, `JAVACFLAGS`, `AM_JAVACFLAGS` and `CLASSPATH_ENV`. Each of these may be specified by the developer in the `Makefile.am` file. If they're not specified, then the defaults you see in this example are used instead. Where you don't see a default value set, you may assume the default value is empty.

One important point about this code is that all of the files specified in the `JAVA` primary list are compiled using a single command line, which could pose a problem on systems with limited command line lengths. If you find you have such a problem, you may have to develop your own make rules for building Java classes. Given the limited support that Automake currently provides, this isn't really a very daunting task.

The `CLASSPATH_ENV` variables sets the Java `classpath` environment variable for the `javac` command such that it contains the contents of `JAVAROOT` (`$(top_builddir)`, by default), the same value prefixed with `$(srcdir)`, and then any class path that might be specified in the environment by the user.

The `JAVAC` variable contains `javac` by default. The hope here is that `javac` can be found in the system path. The `AM_JAVACFLAGS` variable may be set in the `Makefile.am` file by the developer. As usual, the non-Automake version of this variable (`JAVACFLAGS`) is considered a "user" variable, and shouldn't be set in makefiles.

The `JAVAROOT` variable is used to specify the location of the java root directory, which is where the Java compiler will expect to find the start of packages directory hierarchies belonging to your project.

This is fine as far as it goes, but it doesn't go nearly far enough. In this (relatively simple) project, I also need to generate JNI header files using the `javah` utility, and I need to generate a `.jar` file from the `.class` files built from my Java sources. Automake-provided Java support doesn't even begin to handle these tasks. So I'll have to do the rest with hand-coded `make` rules. I'll start with Autoconf macros to ensure that I have a good Java build environment.

## Using ac-archive macros

I did a little hunting around on the internet, and found that the ac-archive project on sourceforge.net does in fact supply Autoconf macros that come close to what I need in order to ensure that I have a good Java development environment. I downloaded the latest ac-archive source package, and just hand-installed the `.m4` files that I needed into my `xflaim/m4` directory.

Then I modified them (and their names) such that they work the way my `AC_PROG_TRY_DOXYGEN` macro works. I wanted to locate Java tools if they exist, but be able to continue without them if they're missing. Given the current politics surrounding the existence of Java tools in GNU/Linux distributions at this time, this is probably a wise approach.

_NOTE: The other way to use the ac-archive package is to actually install it on your system, which will place the ac-archive `.m4` files into the `/usr/(local/)share/ac-archive` directory. The documentation for ac-archive provides instructions on how you might pass flags to the `aclocal` utility from within your project's top-level `Makefile.am` file that tell it how to access the installed ac-archive macros during an execution of `autoreconf`, or `aclocal`._ 

I created the following macros and files from those found in the ac-archive:

* `AC_PROG_TRY_JAVAC` is defined in `ac_prog_try_javac.m4` and `ac_prog_javac_works.m4`
* `AC_PROG_TRY_JAVAH` is defined in `ac_prog_try_javah.m4`
* `AC_PROG_TRY_JAVADOC` is defined in `ac_prog_try_javadoc.m4`
* `AC_PROG_TRY_JAR` is defined in `ac_prog_try_jar.m4`
* `AC_PROG_TRY_CSC` is defined in `ac_prog_try_csc.m4` and `ac_prog_csc_works.m4`
* `AC_PROG_TRY_CSVM` is defined in `ac_prog_try_csvm.m4` and `ac_prog_csvm_works.m4`

With only a little more effort, I was also able to create the CSharp macros I needed to accomplish the same tasks for the CSharp language bindings. I'll discuss CSharp in the next section. Here's a portion of the xflaim `configure.ac` file, repeated here for your information:

=CODE_START=
...
# Checks for optional programs.
AC_PROG_TRY_CSC

AC_PROG_TRY_CSVM
AC_PROG_TRY_JAVAC
AC_PROG_TRY_JAVAH
AC_PROG_TRY_JAVADOC
AC_PROG_TRY_JAR
...
# Check for Java compiler.
have_java=yes 
if test -z "$JAVAC"; then have_java=no; fi
if test -z "$JAVAH"; then have_java=no; fi
if test -z "$JAR"; then have_java=no; fi
if test "x$have_java" = xno; then
  echo "-----------------------------------------"
  echo " Some Java tools not found - continuing"
  echo " without XFLAIM JNI support."
  echo "-----------------------------------------"
fi
AM_CONDITIONAL([HAVE_JAVA], 
  [test "x$have_java" = xyes])

# Check for CSharp compiler.
if test -z "$CSC"; then
  echo "-----------------------------------------"
  echo " No CSharp compiler found - continuing"
  echo " without XFLAIM CSHARP support."
  echo "-----------------------------------------"
fi
AM_CONDITIONAL([HAVE_CSHARP], [test -n "$CSC"])
...
=CODE_END=

These macros set the `CSC`, `CSVM`, `JAVAC`, `JAVAH`, `JAVADOC` and `JAR` variables to the location of their respective CSharp and Java tools, and then substitute them into the xflaim project's `Makefile.in` templates using `AC_SUBST`. If any of these variables are already set in the user's environment when the `configure` script is executed, their values are left untouched, allowing the user to override the values that would have been set by the macros.

I also added some shell code to set a variable, `have_java` to either `yes` or `no`, depending on whether or not all three tools could be found. If they are found, `have_java` becomes `yes`, which fact is later used in the call to `AM_CONDITIONAL`. Recall that this Automake macro conditionally sets the `HAVE_JAVA` variable, which is later used in `xflaim/src/Makefile.am` file to conditionally build the `java` sub-directory hierarchy.

## Canonical system information

The only non-obvious bit of information you need to know about using these ac-archive extensions is that they rely on the built-in Autoconf macro, `AC_CANONICAL_TARGET`. Autoconf provides a way to automatically expand any existing macros inside the definition of a macro, so that macros required by the one being defined can be made available immediately. However, if `AC_CANONICAL_TARGET` is not used before certain other macros (including, unfortunately, `LT_INIT`), then `autoreconf` will generate about a dozen warning messages.

To alleviate these warnings, I added `AC_CANONICAL_SYSTEM` to my top-level and xflaim-level `configure.ac` files, immediately after the call to `AC_INIT`. As I mentioned earlier in this chapter, this macro and those that it calls, `AC_CANONICAL_BUILD`, `AC_CANONICAL_HOST` and `AC_CANONICAL_TARGET`, are designed to ensure that the `$host`, `$build` and `$target` environment variables are defined by the `configure` script, such that they contain appropriate values describing the user's host, build and target systems.

These variables contain canonical values for the host, build and target CPU, vendor and operating system. Values like these are very useful to extension macros. If a macro can assume these variables are set properly, then it saves quite a bit of code duplication in the macro definition.

The values of these variables are calculated using two helper scripts, `config.guess` and `config.sub`, which are distributed with Autoconf. The `config.guess` script uses a combination of `uname` commands to ferret out information about the host system, and munge it into a canonical value. The `config.sub` script is used to reformat host, build and target information specified by the user on the `configure` command line into a canonical value.

The key point here, however, is that I had to use the `AC_CANONICAL_SYSTEM` macro well before I called the ac-archive extension macros in my configure.ac script.

## The `xflaim/java` directory structure

The original source layout had the Java JNI and CSharp native sources located in entirely different directory structures than `xflaim/src`. The JNI sources were located in `xflaim/java/jni`, and the CSharp native sources were located in `xflaim/csharp/xflaim`. While Automake has no problem generating rules for accessing files well outside the current directory hierarchy, I find it a bit silly to put these files so far away from the only library they can really belong to. Thus, I broke my own rule of thumb about not rearranging files in this case. I moved the contents of these two directories to directories under `xflaim/src`. I named the JNI directory `xflaim/src/java` and the CSharp native sources directory `xflaim/src/cs`.

=CODE_START=
flaim
  xflaim
    src
      cs
      java
        wrapper
          xflaim
=CODE_END=

As you can see, I also added a `wrapper` directory beneath the `java` directory, in which I rooted the xflaim wrapper package hierarchy. Since the Java xflaim wrapper classes are part of the Java xflaim package, they have to be located in a directory called `xflaim`. Nevertheless, the build happens in the `wrapper` directory. There are no build files found in the `wrapper/xflaim` directory, or any directories below that point. 

Note that it doesn't matter how deep your package hierarchy is. You will still build the java classes in the wrapper directory--this is the `JAVAROOT` directory for this project.

## The `xflaim/src/Makefile.am` file

At this point the `configure.ac` script is doing about all it can for me to ensure that I have a good Java build environment. If I have a good Java build environment, my build system will be able to generate my JNI wrapper classes and header files, and build my C++ JNI sources. If my end user's system doesn't provide these tools, then she simply can't build or link in the JNI language bindings on that host.

Have a look at the `xflaim/src/Makefile.am` file, and examine the portions that are relevant to building the Java and CSharp language bindings:

=CODE_START=
SUBDIRS = 

if HAVE_JAVA
  SUBDIRS += java
  JNI_LIBADD=java/libxfjni.la
endif

if HAVE_CSHARP
  SUBDIRS += cs
  CSI_LIBADD=cs/libxfcsi.la
endif

SUBDIRS += .
...
libxflaim_la_LIBADD =\
 $(JNI_LIBADD) $(CSI_LIBADD) $(FTK_LTLIB)
...
=CODE_END=

I've already explained the use of the conditionals to ensure that the `java` and `cs` directories only get built if the proper conditions are met. You can now see how this fits into the build system I've created so far. 

Notice that I'm also conditionally defining two new library variables. If I can build the Java language bindings, then the `JNI_LIBADD` variable will refer to the library that is built in the `java` directory. If I can build the CSharp language bindings, then the `CSI_LIBADD` variable will refer to the library that is built in the `cs` directory. In either case, if the required tools are not found by the configure script, then the associated variable will remain undefined. When an undefined variable is referenced, it expands to nothing, so there's no harm in using it in the `libxflaim_la_LIBADD` variable.

## Building the JNI C++ sources

Now, allow me to turn your attention to the `xflaim/src/java/Makefile.am` file:

=CODE_START=
SUBDIRS = wrapper

XFLAIM_INCLUDE=-I$(srcdir)/..

noinst_LTLIBRARIES = libxfjni.la

libxfjni_la_SOURCES = \
 jbackup.cpp \
 jdatavector.cpp \
 jdb.cpp \
 jdbsystem.cpp \
 jdomnode.cpp \
 jistream.cpp \
 jniftk.cpp \
 jniftk.h \
 jnirestore.cpp \
 jnirestore.h \
 jnistatus.cpp \
 jnistatus.h \
 jostream.cpp \
 jquery.cpp

libxfjni_la_CPPFLAGS =\
 $(XFLAIM_INCLUDE) $(FTK_INCLUDE)
=CODE_END=

Again, I want the `wrapper` directory to be built first, because it will build the class files and JNI header files required by the JNI convenience library sources. This time, it's not conditional. If I've made it this far into the build hierarchy, then I know I have all the Java tools I need. This `Makefile.am` file simply builds a convenience library containing my JNI C++ interface functions.

Because of the way Libtool builds both shared and static libraries from the same sources, this convenience library will become part of both the xflaim shared and static libraries. The original build system makefile accounted for this by linking the JNI and CSharp native interface objects into only the shared library. 

The fact that these libraries are added to both the shared and static xflaim libraries is not really a problem. Objects in a static library remain unused in applications or libraries linking to the static library, as long as code in those objects remain unreferenced. However, I'll admit that it's a bit of a "wart" on the side of my new build system.

## The Java wrapper classes and JNI headers

Finally, the `xflaim/src/java/wrapper/Makefile.am` file takes us to the heart of the matter. I've tried many different configurations for building Java JNI wrappers, and this one always comes out on top. Here's the `wrapper` directory's Automake intput file:

=CODE_START=
JAVAROOT = .

jarfile = $(PACKAGE)jni-$(VERSION).jar
jardir = $(datadir)/java
pkgpath = xflaim
jhdrout = ..

$(jarfile): $(dist_noinst_JAVA) 
        $(JAR) cf $(JARFLAGS) $@ $(pkgpath)/*.class

jar_DATA = $(jarfile)

java-headers.stamp: $(dist_noinst_JAVA)
        @list="`echo $(dist_noinst_JAVA) |\
         sed -e 's|\.java||g' -e 's|/|.|g'`"; \
        for class in $$list; do \
          echo "$(JAVAH) -jni -d $(jhdrout)\
           $(JAVAHFLAGS) $$class"; \
          $(JAVAH) -jni -d $(jhdrout)\
           $(JAVAHFLAGS) $$class; \
        done
        @echo "JNI headers generated"\
         > java-headers.stamp

all-local: java-headers.stamp

CLEANFILES = $(jarfile) $(pkgpath)/*.class\
 java-headers.stamp $(jhdrout)/xflaim_*.h

dist_noinst_JAVA = \
 $(pkgpath)/BackupClient.java \
 $(pkgpath)/Backup.java \
 ...
 $(pkgpath)/XFlaimException.java \
 $(pkgpath)/XPathAxis.java
=CODE_END=

I've set the `JAVAROOT` variable to DOT (`.`), mainly because I want Automake to be able to tell the Java compiler that this is where the package hierarchy begins. The xflaim Java wrapper classes are found in the `xflaim` package. The default value for `JAVAROOT` is `$(top_builddir)`, which would have the wrapper class belong to the `xflaim.src.java.wrapper.xflaim` package. That's not right.

I then created a variable called `jarfile`, deriving its value from `$(PACKAGE)` and `$(VERSION)`. This is how the `destdir` variable is derived also, from which the name of the tarball comes. A `make` rule indicates how the `.jar` file should be built. Here, I'm using the `JAR` variable, whose value was calculated for me by the results of the `AC_PROG_TRY_JAR` macro in the `configure` script. This rule is fairly straight forward.

I've defined a new installation variable called `jardir`--the place where `.jar` files are to be installed, presumably. And I've used it as the prefix for a `DATA` primary. Any files that Automake doesn't understand--basically, any files that you build using your own rules--are just considered by Automake to be data files, and are installed as such.

I'm using another stamp file in the rule that builds the JNI header files from the `.class` files. I'm doing this for the same reason that Automake used a stamp file in the rule that it uses to build `.class` files from `.java` source files. 

This is the most complex part of this makefile, so I'll try to break it into simple pieces. The rule states that the stamp file depends on the files listed in the `dist_noinst_JAVA` variable. The command is a bit of complex shell script that strips the `.java` extensions from the file list, and converts all the SLASH characters in to DOT characters. The reason for this is that the `javah` utility wants a list of class names, not a list of file names. The last line, of course, generates the stamp file.

Finally, I hooked my `java-headers.stamp` target into the `all` target by adding it as a dependency to the `all-local` target. When the `all` target (the default for all Automake-generated makefiles) is executed in this makefile, `java-headers.stamp` will be built, along with the JNI headers.

Here, I've also added the `.jar` file, all of the `.class` files, the `java-headers.stamp` file and all of the generated JNI header files to the `CLEANFILES` variable, so that Automake will clean them up for me when `make clean` is executed on this makefile. Again, I can use the `CLEANFILES` variable here because I'm not trying to delete any directories.

## A caveat about using the `JAVA` primary

There's one important caveat to using the `JAVA` primary. You may only define one `JAVA` primary variable per `Makefile.am` file. The reason for this is that multiple classes may be generated from a single `.java` file, and the only way to know which classes came from which `.java` file would be to parse the `.java` files. Rather than do this, Automake allows only one JAVA primary per file, so all .class files generated within a given build directory are installed in the location specified by the single JAVA primary variable prefix.

Realizing this gives me pause for thought. It seems that I've broken this rule by assuming in my `java-headers.stamp` rule that the source for class information is the list of files specified in the `dist_noinst_JAVA` variable. In reality, I should probably be looking in the current build directory for all `.class` files found after the rules for the `JAVA` primary are executed. 

It's a good thing I don't need to install my JNI header files. I have no way of knowing what they're called from within my `Makefile.am` file! You should by now be able to see the problems that Autotools has with Java. In fact, these problems are not so much related to the poor design of Autotools, as they are the poor design of the Java language itself. This will become clear in the next section, as I cover the rules that build the CSharp native interfaces.

# Building the CSharp sources

Returning now to the `xflaim/src/cs` directory brings us to a discussion of building source for a language for which Automake has _no_ support: CSharp. Here's the `Makefile.am` file that I wrote for the `cs` directory:

=CODE_START=
SUBDIRS = wrapper

XFLAIM_INCLUDE=-I$(srcdir)/..

noinst_LTLIBRARIES = libxfcsi.la

libxfcsi_la_SOURCES = \
 Backup.cpp \
 DataVector.cpp \
 Db.cpp \
 DbInfo.cpp \
 DbSystem.cpp \
 DbSystemStats.cpp \
 DOMNode.cpp \
 IStream.cpp \
 OStream.cpp \
 Query.cpp

libxfcsi_la_CPPFLAGS = $(XFLAIM_INCLUDE) $(FTK_INCLUDE)
=CODE_END=

Not surprisingly, this looks almost identical to the `Makefile.am` file found in the `xflaim/src/java` directory. I'm building a simple convenience library from C++ source files found in this directory, just as I did in the `java` directory. As in the `java` version, this makefile is specifying a sub-directory called `wrapper`, which Automake builds first.

The `wrapper/Makefile.am` file looks like this:

=CODE_START=
EXTRA_DIST = xflaim cstest sample xflaim.ndoc

xfcs_sources = \
 xflaim/BackupClient.cs \
 xflaim/Backup.cs \
 ...
 xflaim/RestoreClient.cs \
 xflaim/RestoreStatus.cs

cstest_sources = \
 cstest/BackupDbTest.cs \
 cstest/CacheTests.cs \
 ...
 cstest/StreamTests.cs \
 cstest/VectorTests.cs

TESTS = cstest_script

AM_CSCFLAGS = -d:mono -nologo -warn:4\
 -warnaserror+ -optimize+
#AM_CSCFLAGS += -debug+ -debug:full\
# -define:FLM_DEBUG

all-local: xflaim_csharp.dll

clean-local:
        -rm xflaim_csharp.dll xflaim_csharp.xml
        -rm cstest_script cstest.exe libxflaim.so
        -rm Output_Stream 
        -rm -rf abc backup test.*

check-local: cstest.exe cstest_script

install-exec-local:
        test -z "$(libdir)" || \
         $(MKDIR_P) "$(DESTDIR)$(libdir)"
        $(INSTALL_PROGRAM) xflaim_csharp.dll\
        "$(DESTDIR)$(libdir)"

install-data-local:
        test -z "$(docdir)" || \
         $(MKDIR_P) "$(DESTDIR)$(docdir)"
        $(INSTALL_DATA) xflaim_csharp.xml\
          "$(DESTDIR)$(docdir)"

uninstall-local:
        rm "$(DESTDIR)$(libdir)/xflaim_csharp.dll"
        rm "$(DESTDIR)$(docdir)/xflaim_csharp.xml"

xflaim_csharp.dll: $(xfcs_sources)
        @list1='$+'; list2=; \
        if test -n "$$list1"; then \
          for p in $$list1; do \
            if test -f $$p; then d=; \
            else d="$(srcdir)/"; fi; \
            list2="$$list2 $$d$$p"; \
          done; \
          echo '$(CSC) -target:library\
           $(AM_CSCFLAGS) $(CSCFLAGS) -out:$@\
           -doc:$(@:.dll=.xml) '"$$list2"; \
          $(CSC) -target:library $(AM_CSCFLAGS)\
           $(CSCFLAGS) -out:$@ -doc:$(@:.dll=.xml)\
           $$list2; \
        else :; fi

cstest.exe: xflaim_csharp.dll $(cstest_sources)
        @list1='$(cstest_sources)'; \
         list2=; if test -n "$$list1"; then \
          for p in $$list1; do \
            if test -f $$p; then d=; \
            else d="$(srcdir)/"; fi; \
            list2="$$list2 $$d$$p"; \
          done; \
          echo '$(CSC) $(AM_CSCFLAGS) $(CSCFLAGS)\
           -out:$@ '"$$list2"'\
           -reference:xflaim_csharp.dll'; \
          $(CSC) $(AM_CSCFLAGS) $(CSCFLAGS)\
           -out:$@ $$list2\
           -reference:xflaim_csharp.dll; \
        else :; fi

libxflaim.so:
        $(LN_S) ../../.libs/libxflaim.so\
         libxflaim.so

cstest_script: cstest.exe libxflaim.so
        echo "#!/bin/sh" > cstest_script
        echo "$(CSVM) cstest.exe" >> cstest_script
        chmod 0755 cstest_script
=CODE_END=

The default target for this `Makefile.am` file is, of course, the `all` target. I've hooked the `all` target with my own code by implementing the `all-local` target, which depends on a file named `xflaim_csharp.dll`.

_NOTE: This executable file name may be a bit confusing to those who are new to CSharp. In essence, the creators of CSharp (Microsoft) designed the CSharp VM to execute Microsoft native (or almost native) binaries. In porting the CSharp virtual machine to Unix, the Mono team decided against breaking the naming conventions defined by Microsoft, so that Microsoft generated programs could be executed by the Mono CSharp virtual machine implementation. Nevertheless, it still suffers from problems that need to be managed occasionally by name-mapping configuration files._

=CODE_START=
...
xfcs_sources = ...
...
all-local: xflaim_csharp.dll
...
xflaim_csharp.dll: $(xfcs_sources)
        @list1='$+'; list2=; \
        if test -n "$$list1"; then \
          for p in $$list1; do \
            if test -f $$p; then d=; \
            else d="$(srcdir)/"; fi; \
            list2="$$list2 $$d$$p"; \
          done; \
          echo '$(CSC) -target:library\
           $(AM_CSCFLAGS) $(CSCFLAGS) -out:$@\
           -doc:$(@:.dll=.xml) '"$$list2"; \
          $(CSC) -target:library $(AM_CSCFLAGS)\
           $(CSCFLAGS) -out:$@ -doc:$(@:.dll=.xml)\
           $$list2; \
        else :; fi
...
=CODE_END=

The `xflaim_csharp.dll` binary depends on the list of CSharp source files specified in the `xfcs_sources` variable. I take no credit for the commands in this rule. They're copied from the Automake-generated `java/wrapper/Makefile`, and slightly modified to build CSharp binaries from CSharp source files.

This isn't a lesson in building CSharp sources--the point here is that the default target is automatically built by hooking the `all` target via the `all-local` target.

This `Makefile.am` file also builds a set of unit tests in CSharp that test the CSharp language bindings. Here are the relevant portions of the file:

=CODE_START=
...
cstest_sources = ...

TESTS = cstest_script
...
check-local: cstest.exe cstest_script
...
cstest.exe: xflaim_csharp.dll $(cstest_sources)
        @list1='$(cstest_sources)'; \
         list2=; if test -n "$$list1"; then \
          for p in $$list1; do \
            if test -f $$p; then d=; \
            else d="$(srcdir)/"; fi; \
            list2="$$list2 $$d$$p"; \
          done; \
          echo '$(CSC) $(AM_CSCFLAGS) $(CSCFLAGS)\
           -out:$@ '"$$list2"'\
           -reference:xflaim_csharp.dll'; \
          $(CSC) $(AM_CSCFLAGS) $(CSCFLAGS)\
           -out:$@ $$list2\
           -reference:xflaim_csharp.dll; \
        else :; fi

libxflaim.so:
        $(LN_S) ../../.libs/libxflaim.so\
         libxflaim.so

cstest_script: cstest.exe libxflaim.so
        echo "#!/bin/sh" > cstest_script
        echo "$(CSVM) cstest.exe" >> cstest_script
        chmod 0755 cstest_script
=CODE_END=

The test sources are built into a CSharp executable named `cstest.exe`. The rules state that `cstest.exe` depends on `xflaim_csharp.dll` and the source files. I again copied the commands from the rule for building `xflaim_csharp.dll`, and modified them for building CSharp programs.

Ultimately, the Automake-generated makefile will attempt to execute the scripts or executables listed in the `TESTS` variable, so the idea here is to ensure that all necessary components get built before these files are executed. The `cstest_script` is a script built for the sole purpose of executing the `cstest.exe` binary in the CSharp virtual machine referenced by the `CSVM` variable. This variable was defined in my `configure` script by the code generated by the `AC_PROG_TRY_CSVM` macro. 

The script depends on the executable, and on a link to the `libxflaim.so` file. This file must be present in the current directory, or its location must be specified somehow on the `mono` (`$CSVM`) command line. I chose to simply create a link in the current directory to the location of the actual built library--located up a few directories, and then down into the `xflaim/src/.libs` directory.

## Manual installation

Since I'm doing everything myself here, I can't rely on Automake to install files for me. I have to write my own installation rules. Here again are the relevant portions of the makefile:

=CODE_START=
...
install-exec-local:
        test -z "$(libdir)" || \
         $(MKDIR_P) "$(DESTDIR)$(libdir)"
        $(INSTALL_PROGRAM) xflaim_csharp.dll\
        "$(DESTDIR)$(libdir)"

install-data-local:
        test -z "$(docdir)" || \
         $(MKDIR_P) "$(DESTDIR)$(docdir)"
        $(INSTALL_DATA) xflaim_csharp.xml\
          "$(DESTDIR)$(docdir)"

uninstall-local:
        rm "$(DESTDIR)$(libdir)/xflaim_csharp.dll"
        rm "$(DESTDIR)$(docdir)/xflaim_csharp.xml"
...
=CODE_END=

Note that, as per the rules defined in the GNU Coding Standards, the installation targets do not depend on the binaries they install. I don't want `make install` to build anything. If they haven't been built yet, I'll have to exit out of the root account, back into my own user account and build the binaries with `make all` first.

## Cleaning up again

As usual, things must be cleaned up properly. The `clean-local` target handles this nicely for me:

=CODE_START=
...
clean-local:
        -rm xflaim_csharp.dll xflaim_csharp.xml
        -rm cstest_script cstest.exe libxflaim.so
        -rm Output_Stream 
        -rm -rf abc backup test.*
...
=CODE_END=

# Configuring compiler options

The original GNU build system was doing a lot for the user. By specifying a list of auxiliary targets on the `make` command line, the user could indicate that she wanted a debug or release build, force a 32-bit build on a 64-bit system, indicate that she wanted to generate generic SPARC code on a Solaris sytem, etc. 

Oddly, this turn-key approach to build systems is quite common in commercial code. Whereas, in open source code, the more common practice is to omit much of this framework, allowing the user to set her own options in the standard user variables, `CC`, `CPP`, `CXX`, `CFLAGS`, `CXXFLAGS`, `CPPFLAGS` and others. What's strange about this situation is that commercial software is developed by experts working in the industry, while open source software is often built and consumed by hobbyists. And yet the experts are the ones using the menu-driven rigid-options framework, while the hobbyists have to manually configure their compiler options.

I suppose the most reasonable explanation for this is that commercial software relies on carefully crafted builds that must be able to be duplicated. Open source hobbyists are more carefree, and would rather not give up the flexibility afforded by the lack of such turn-key systems.

To this end, I've added _some_ of the options supported by the original GNU makefile-based build system, but left others out. Here's the portion of the `configure.ac` file that I'm talking about:

=CODE_START=
...
# Configure global pre-processor definitions.
AC_DEFINE([_REENTRANT], [], 
  [Define for reentrant code])
AC_DEFINE([_LARGEFILE64_SOURCE], [], 
  [Define for 64-bit data files])
AC_DEFINE([_LARGEFILE_SOURCE], [], 
  [Define for 64-bit data files])

# Configure supported platforms' compiler and li...
case $host in
  sparc-*-solaris*)
    LDFLAGS="$LDFLAGS -R /usr/lib/lwp"
    if "x$CXX" != "xg++"; then
      if "x$debug" = xno; then
        CXXFLAGS="$CXXFLAGS -xO3"
      fi
      SUN_STUDIO=`"$CXX" -V | grep "Sun C++"`
      if "x$SUN_STUDIO" = "xSun C++"; then
        CXXFLAGS="$CXXFLAGS -errwarn=%all\

 -errtags -erroff=hidef,inllargeuse,doubunder"
      fi
    fi ;;

  *-apple-darwin*)
    AC_DEFINE([OSX], [], 
      [Define if building on Apple OSX.]) ;;

  *-*-aix*)
    if "x$CXX" != "xg++"; then
      CXXFLAGS="$CXXFLAGS -qthreaded -qstrict"
    fi ;;

  *-*-hpux*)
    if "x$CXX" != "xg++"; then
      # Disable "Placement operator delete
      # invocation is not yet implemented" warning
      CXXFLAGS="$CXXFLAGS +W930"
    fi ;;
esac
...
=CODE_END=

Here, I've used the `$host` variable to determine the type of system for which I'm building. The `config.guess` and `config.sub` files are your friends here. If you need to write code like for your project, then you'll need to examine these files to find common traits for the processes and systems for which you'd like to set various compiler and linker options. 

Note also that in each of these cases (except for the definition of the `OSX` preprocessor variable on Apple Darwin systems), I'm really only setting flags for native compilers. The GNU compiler tools seem to be able to handle any sort of code thrown at them without monkeying around with compiler options. This is a good thing, and a lesson could be learned by compiler vendors from this fact.

# Hooking Doxygen into the build process

I wanted to generate documentation as part of my build process, if possible. That is, if the user has doxygen installed on her system, then the build system will use it to build doxygen documentation as part of the `make all` process. As I've already mentioned, I used the `AM_CONDITIONAL` macro to conditionally build the docs directory. 

Now, relative to the xflaim project, this is probably not the right thing to do, as I want non-doxygen documentation to be installed even if doxygen _isn't_ available. The right approach to this problem would be to have a `doxygen` directory beneath the `docs` directory that handles only generated documentation. The `docs` directory itself would be limited to simply installing existing documentation. I've combined them to save space in this book, but I'll probably fix this problem before committing my build system to the project. 

For the FLAIM tool kit project, this configuration works fine for now, because there is no other documentation to be installed. I say "for now" because at some point in the future, someone may write some tool kit documentation, and then I'll have to move things around to get the end-user experience I want.

Doxygen uses a configuration file (often called `doxyfile`) to configure literally hundreds of doxygen options. This configuration file contains some information that is known to Autoconf. This sounds like the perfect opportunity to use an Autoconf-generated file. To this end, I've written a file called `doxyfile.in` that contains most of what a normal doxyfile would contain, except it also has a few Autoconf substitution variable references:

=CODE_START=
...
PROJECT_NAME           = @PACKAGE_NAME@
PROJECT_NUMBER         = @PACKAGE_VERSION@ 
...
STRIP_FROM_PATH        = @top_srcdir@
...
=CODE_END=

There are many other lines in this file, but they are all identical to the output file, so I've omitted them for the sake of space and clarity. The key here is that Autoconf will replace these values with those defined in `configure.ac`, and by Autoconf itself. If these values change in `configure.ac`, the generated file will be written with the new values. I've added a reference to `ftk/docs/doxyfile` to the `AC_CONFIG_FILES` list in ftk's `configure.ac` file. That's all it takes. 

Here's the `ftk/docs/Makefile.am` file:

=CODE_START=
docpkg = $(PACKAGE_TARNAME)-doxy-$(PACKAGE_VERSION).tar.gz

doc_DATA = $(docpkg)

$(docpkg): doxygen.stamp
        tar chof - html | gzip -9 -c >$@

doxygen.stamp: doxyfile
        $(DOXYGEN) $(DOXYFLAGS) $<
        echo Timestamp > $@

CLEANFILES = doxywarn.txt doxygen.stamp $(docpkg)

clean-local:
        -rm -rf html
=CODE_END=

In this file, I've created a package name for the tarball that will contain the doxygen documentation files. It's basically the same as the distribution tarball for the ftk project, except that it contains the text `-doxy` after the package name.

I've also defined a `doc_DATA` variable containing the name of the doxygen tarball. This file will be installed in the `$(docdir)` directory, which by default is `$(datarootdir)/doc/$PACKAGE_TARNAME`. And `$(datarootdir)` is configured as `$(prefix)/share`, by default.

Note again here that the `DATA` primary brings with it significant Automake functionality--installation is managed automatically. And, while I must build the doxygen documentation package myself, the `DATA` primary automatically hooks the `all` target for me, so that my package is built when the user executes `make all`. 

I'm using another stamp file here because doxygen generates literally hundreds of html files from my input file (and from the source tree). Rather then attempt to figure out a rational way to assign dependencies, I simply generate one stamp file, and then use that to determine whether or not the documentation is out of date.

Note that this is wrong, but much simpler than attempting to list every source file used in the generation of the documentation as a dependency of the stamp file. (_In fact, this is quite trivial in this project because the only source file currently containing documentation markup, and thus, listed in the doxyfile as an input file, is the `flaimtk.h` header file. However, this could easily change in the future._)

For cleaning my generated files, I've used a combination of the `CLEANFILES` variable and a clean-local rule--just to show you that it can be done.

# Adding a new `rpms` target

Adding a new non-standard target is a little different than hooking an existing target. In the first place, you don't need to use `AM_CONDITIONAL` and Autoconf checks to see if you have the tools you need. You may do everything from the `Makefile.am` file, if you wish. After all, if the user was building on a Debian system, why in the world did she type `make rpms` in the first place?! Nonetheless, you still have to account for the possibility that the user will experiment.

First, I created a directory called `obs` to contain the `Makefile.am` file for building RPM package files. OBS is an acronym for "Opensuse Build Service", which is an online package building service (found at http://build.opensuse.org) that I fell in love with almost as soon as it came out. I've had some experience building distro packages, and I can tell you, it's far less painful with the OBS than it is using more traditional techniques.

Furthermore, packages built with the OBS can be published on the OBS web site for others to access immediately after they're built (in this case, http://software.opensuse.org/search).

Building RPM package files is done using a configuration file, called a "spec" file, which is very much like the doxyfile is used to configure doxygen for a specific project. As with the doxyfile, the rpm spec file contains information that Autoconf knows about regarding the project package. So, I wrote an `ftk.spec.in` file, adding substitution variables where appropriate, and then I added another file reference to the `AC_CONFIG_FILES` macro. Here is the relevant portion of the `ftk.spec.in` file:

=CODE_START=
Name: @PACKAGE_TARNAME@
BuildRequires: gcc-c++ libstdc++ libstdc++-devel doxygen
Summary: FTK is the FLAIM cross-platfomr toolkit.
URL: http://forge.novell.com/modules/xfmod/project/?flaim
Version: @PACKAGE_VERSION@
Release: 1
License: GPL
Vendor: Novell, Inc.
Group: Development/Libraries/C and C++
Source: %{name}-%{version}.tar.gz
BuildRoot: %{_tmppath}/%{name}-%{version}-build
...
=CODE_END=

I used `@PACKAGE_TARNAME@` and `@PACKAGE_VERSION@`. Now the tar name is not likely to change much over the life time of this project, but the version will change quite often. Without the Autoconf substitution mechanism, I'd have to remember to update this version number whenever I updated the version in the `configure.ac` file. Here's the `obs/Makefile.am` file:

=CODE_START=
rpmspec = $(PACKAGE_TARNAME).spec

rpmmacros =\
 --define='_rpmdir $(PWD)'\
 --define='_srcrpmdir $(PWD)'\
 --define='_sourcedir $(PWD)'\
 --define='_specdir $(PWD)'\
 --define='_builddir $(PWD)'

rpmopts = --nodeps --buildroot='$(PWD)/_rpm'

rpmcheck:
        @which rpmbuild &> /dev/null; \
        if [ $$? -ne 0 ]; then \
          echo "*** This make target requires an rpm-based linux distribution."; \
          (exit 1); exit 1; \
        fi

srcrpm: rpmcheck $(rpmspec)
        rpmbuild -bs $(rpmmacros) $(rpmopts) $(rpmspec)

rpms: rpmcheck $(rpmspec)
        rpmbuild -ba $(rpmmacros) $(rpmopts) $(rpmspec)

.PHONY: rpmcheck srcrpm rpms
=CODE_END=

Building RPM package files is rather simple, as you can see. The targets provided by this makefile include `srcrpm` and `rpms`. The `rpmcheck` target is only used internally. How can you tell? Well, you can't really tell from here. In order to find out which targets in a lower-level `Makefile.am` file are supported by a top-level build, you have to look at the top-level `Makefile.am` file:

=CODE_START=
...
rpms srcrpm: dist
        $(MAKE) -C obs $(AM_MAKEFLAGS) $@
        rpmarch=`rpm --showrc | grep ^build\ arch | sed 's/\(.*: \)\(.*\)/\2/'`; \
        test -z $$rpmarch || ( mv $$rpmarch/* .; rm -rf $$rpmarch )
        -rm -rf $(distdir)
...
.PHONY: srcrpm rpms
=CODE_END=

As you can see from the first command in this rule, when a user targets `rpms` or `srcrpm` from the top-level build directory, the commands are recursively passed on to the `obs/Makefile`. The remaining commands simply remove droppings left behind by the RPM build process that are simpler to remove at this level. (Try building an rpm sometime, and you'll see what I mean!)

Notice also that both of these top-level makefile targets depend on the `dist` target. That's because the RPM build process requires the distribution tarball. Adding it as a dependency simply ensures that the distribution tarball is there when the `rpmbuild` utility needs it.

# Summary

While using Autotools, there are a myriad of details to manage, most of which, as they say in the free software world, "can wait for the next release!" The take-away lesson here is that a build system is never really finished. It should be incrementally improved over time, as you find time in your schedule to work on it. And it can be rewarding to do so.

I've shown you a number of new features--features I didn't cover directly in the earlier chapters on the individual tools. There are many many more features that I couldn't begin to cover. You'll need to study the GNU Autotools manuals to become truly proficient. At this point, it should be pretty simple to pick up this additional information yourself.

### Source Code

You can access the entire flaim project source hierarchy, along with the new build system defined in this chapter from the attached source archive.