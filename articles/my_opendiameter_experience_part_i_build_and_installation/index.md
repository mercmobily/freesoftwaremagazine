---
nid: '2791'
title: 'My OpenDiameter Experience, Part I, Build and Installation'
authors: 'Gong Cheng'
published: '2008-04-08 10:34:13'
tags: 'networking,opendiameter,aaa'
license: verbatim_only
section: hacking
listed: 'true'

---
Diameter is a AAA protocol that is supposed to be the successor to RADIUS, and
OpenDiameter is an open source implementation of the Diameter Protocol. I
recently started playing around with OpenDiameter and, to my surprise, the
online resources and documentations on how to use it are very hard to find,
if there is any. I figured out my way to get the basics running, and I
am here to share my initial experiences, hoping to help other OpenDiameter
beginners. I also hope that the OpenDiameter community could contribute more
documentations to help new users and to make the project be more successful.

I will cover it in two posts:

* Part I is for build and installation
* Part II is for setting up a simple 3-party EAP-MD5 test

# Part I, Build and Installation

You can download the OpenDiameter source package from [this
link.](http://sourceforge.net/projects/diameter/)

The current release is of 1.0.7-i, and that is what I am going to use too. The
best resource for this is the main README file that came with the source
package, and it is more up to date than the how-to listed in the OpenDiameter
website.

We should follow the instructions in the README file and they can be summarized as:

* Step 1. Install external libraries and tools if not already there
* Step 2. Set up environment variables ACE_ROOT and BOOST_ROOT to point to the
          right paths on your system
* Step 3. Extract OpenDiameter source package and do the usual
          "./configure; make; make install"
          routine in the OpenDiameter top directory.

Sounds pretty straightforward. However, there might be some tricky places.
The parts that most likely will give you problems are the external libraries.
OpenDiameter 1.0.7-i requires:
1. GNU g++ 4.x.x and above
1. ACE library 5.5.x
1. boost library 1.33.x and above
1. OpenSSL
1. Autoconf, Automake, Libtool

Number 1. and 5. are very common build tools on Linux and the like, and you
usually wouldn't need to worry too much about them. OpenSSL is also very stable
and easy to install if not pre-installed already.
It is 2. and 3., i.e. ACE and boost libraries, that could be a little more i
tricky.

## Boost Library

For boost library, I found that the easiest way to install them is to use
existing packaging tools like apt-get or yum. The version available seems just
working fine. This is what I did on my ubuntu and FC (Fedora Core) 8
respectively.

ubuntu:
=CODE_START=
apt-get install libboost-dev
=CODE_END=

FC8:
=CODE_START=
yum install boost-devel
=CODE_END=

Note: you might need to be root or use sudo to install them.

After installing boost like the above, set the BOOST_ROOT environment to
/usr/include/. The following is for bash:

=CODE_START=
export BOOST_ROOT=/usr/include/
=CODE_END=


## ACE Library

ACE library installation could be the most troublesome in the whole process.
OpenDiameter heavily relies on ACE library and it is also very picky about the
version of it. The README file says 5.5.x, and trust me, not all 5.5.x would
work. What I learned from hours of frustration is:

* 5.5 and low 5.5.x versions fail to build themselves. (at least on both the
  ubuntu and FC8 I have)
* 5.6 (the latest available) and high 5.5.x versions (like 5.5.10) will build
  themselves, but OpenDiameter 1.0.7-i won't build if using them.

After trying both, I chose the lesser of the two evils by using ACE 5.5 base
version.

( To get ACE 5.5 itself compile, I only needed to change one small place on
either system of mine, even though figuring that one place out took me some
time. To get 5.6 compile, I had many more places to fix due to interface changes
 in ACE lib, but only to find the binaries built don't read the XML
configuration files correctly. That was when I got scared and gave up.
So my advice here is: stick to the ACE 5.5 base version itself)

Here is what needs to be done to install ACE 5.5:

* Get the 5.5 source [here.](http://download.dre.vanderbilt.edu/previous_versions/ACE-5.5.tar.gz)

* Extract the tar file, and the main directory would be called ACE_wrappers.
Get in there and create a sub-directory called "build", and that is where the
build will happen. (ACE doesn't allow you to do build in the top directory)

=CODE_START=
tar xvf ACE-5.5.tar.gz
cd ACE_wrappers
mkdir build
cd build
../configure
=CODE_END=

* If it passes, congratulations! However, on both my systems it failed at the
configure script. Here is what I did to fix those:

On my ubuntu, the gcc option -fvisibility-inlines-hidden used by ACE lib is
causing problem and it can be fixed by removing it in the configure script
file this way:

=CODE_START=
$ diff -upN configure.orig configure
--- configure.orig      2008-03-05 11:11:19.000000000 -0800
+++ configure   2008-03-05 11:13:30.000000000 -0800
...
@@ -10329,7 +10329,7 @@ _ACEOF
        *)
         { echo "$as_me:$LINENO: enabling GNU G++ visibility attribute support" >&5
 echo "$as_me: enabling GNU G++ visibility attribute support" >&6;}
-        ACE_GXX_VISIBILITY_FLAGS="-fvisibility=hidden -fvisibility-inlines-hidden"
+        ACE_GXX_VISIBILITY_FLAGS="-fvisibility=hidden"
         ACE_CXXFLAGS="$ACE_CXXFLAGS $ACE_GXX_VISIBILITY_FLAGS"
         cat >>confdefs.h <<\_ACEOF
=CODE_END=


On FC8, it failed because the header file for gettimeofday() on the system is
<sys/time.h> not the expected <time.h> by configure script. So the following
change in configure file fixed it:

=CODE_START=
# diff -upN ../configure.orig ../configure
--- ../configure.orig   2008-03-17 15:29:07.000000000 -0700
+++ ../configure        2008-03-17 16:31:00.000000000 -0700
@@ -87878,7 +87878,7 @@ cat confdefs.h >>conftest.$ac_ext
 cat >>conftest.$ac_ext <<_ACEOF
 /* end confdefs.h.  */

-#include <time.h>
+#include <sys/time.h>

 _ACEOF
 if (eval "$ac_cpp conftest.$ac_ext") 2>&5 |
=CODE_END=

Assuming your system already have

With those changes, I could proceed to the next step

* redo ../configure
* make and make install

Unfortunately, there is no guarantee the ACE 5.5 build won't have different
symptoms on different systems, and I can only wish you good luck there. :)

Suppose your ACE 5.5 does get installed, you need to set the environment
variable ACE_ROOT for OpenDiameter build's use. I installed ACE under
/usr/local/src and here is what I did in my bash:

=CODE_START=
export ACE_ROOT=/usr/local/src/ACE_wrappers/
=CODE_END=

## Build and Install OpenDiameter 1.0.7-i itself

Once I got both ACE 5.5 and boost installed, and both environment variables
set, installing OpenDiameter itself became simple:


=CODE_START=
tar xvf opendiameter-1.0.7-i.tar.gz
cd opendiameter-1.0.7-i
./configure
make
make install
=CODE_END=

After that is done, verify by checkding if /usr/local/bin/aaad and
/usr/local/bin/nasd are in place.

Those are two of the main binaries we will use for OpenDiameter. Now
OpenDiameter should be ready for tests. In Part II, I will cover how to
configure and use the binaries built for a simple EAP-MD5 test.

[ **to be continued** ]
