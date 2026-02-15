---
nid: '2728'
title: 'How to love Free Software in 3 steps: configure, make, make install'
authors: 'Mitch Meyran'
published: '2008-03-08 0:00:00'
tags: 'linux,gnu,make,source'
license: verbatim_only
section: opinions
listed: 'true'

---
I recently re-read the article [how to hate free software in 3 easy steps](/articles/how_to_hate_free_software_in_3_easy_steps/) by Steven Goodwin. I'm no programmer, but then I've also installed a few distributions myself. And frankly, I have trouble relating to that post.

Several points were made in the article's comments, some being that non-programmers don't compile from source anyway, compiling from source requires you to be a programmer, and other operating systems don't crash when you tinker with their partitions.

Excuse me?

<!--[break]-->

# Tinkering with system core files, first aid kit

Let's take a common example: you completely upset Windows XP's core system DLL. Surprisingly, the OS still works. Explanation: the system dynamically replaces modified/removed core files from a hidden backup cache. This system already existed in Windows 2000, but in XP it covers pretty much all base install files (including Messenger). However, try removing all copies of the file you want to modify, all at the same time, refuse to restore the file from CD and see the system crash and burn.

In effect, for Joe User, you can't corrupt the system because you are actively prevented from tinkering with it, and the system automatically reverts anything you try to do to it while it's running. Moreover, the fact that Windows locks down opened files makes it difficult to really put the system down before a reboot (well, in that specific case anyway).

Under GNU/Linux and xBSD: when you update a system file, create a backup. Also, it's a good idea to learn what a minimal booting system requires. Add to that, there is no way you can't restore your system from a boot CD if you've kept a backup of your modified files: there's no checksum of the 'correct' files stored in a registry somewhere that would prevent you from restoring backup files. Last but not least, most package managers allow you to ask for a package reinstall which will reset all its settings to default.

Finally, library versioning under UNIX-like systems is quite developed: not only can you host several versions of a library, soft links and rules for dynamic linking allow you to create a special version of a library which will be linked to by a single software, without much trouble.

In short, there is little reason you can trash a Linux system in an unrecoverable way even if you tinker with system files, except if you go at it as root, with a hammer and matching subtlety.

Now though, it's not GNU's or BSD's or (usually) Windows' fault if you trash the hard disk.

# Tinkering with partitions, the pitfalls

There are three great sources of damage to GNU/Linux partitions:

* outdated boot manager data (LILO or GRUB); it usually happens after a kernel update not followed by a GRUB or LILO refresh

* badly enumerated partitions; it usually happens when removing, resizing and moving partitions on a complex layout disk,

* overwritten Master Boot Record; it usually happens when you install Windows XP or Vista (Windows 2000 is a better citizen here).

The pitfalls are various, and can indeed make one wonder. However, at least with GNU/Linux you can hope for a recovery, while an OS like Windows will often require a reinstall (a cloned partition of mine insisted on calling itself 'F:\' after restore, no way to boot the system to correct that, and the registry hives all got corrupted).

The first problem is easy to avoid: keep a working kernel installed as long as you're not sure the second one works, and always update LILO or GRUB after you've tinkered with kernels.

For the second case, if you start resizing, destroying and creating partitions all over the place, make sure you have an efficient LiveCD on hand (Knoppix being a reference): not only it is a good recovery tool, it's also better not to work on a 'live' system (not that it's impossible, just that it saves you from juggling with `chroot` all the time): it will allow you to revert partition changes and/or update your 'live' `/etc/fstab` file in a matter of minutes. Moreover, once you're editing this file, several options are open to you.

You have two ways to address a peripheral in `/etc/fstab` to mount it: either you call it through `/dev` (like `/dev/sda1`), or you use its UUID: the latter is much harder to  write off the top of your head, but on the other hand it makes using a roaming GNU/Linux system much easier. Moreover, it doesn't fall prey to partition resizing and movement troubles as easily as the `/dev` path method.

# Crush the kernel

Some distributions allow much easier tinkering with the kernel than others: Mandriva for example allows you to build "vanilla" kernel sources with a few command lines, while Ubuntu is much more painful because it won't automatically build the kernel's RAMdisk image that contains required modules for boot. You can find more information on your distribution's forums (on top of that, forum posts from one distribution may apply to another; on the matter of compile time options, the Gentoo forum is a gold mine).

When it's a matter of adding kernel modules, the system gives you enough warnings before you do something stupid, to prevent you from crashing your system:

* if the module isn't provided with the vanilla kernel, it may not be very stable;

* if the module isn't provided with the distribution's kernel, it is probably quite unstable;

* if `dmesg` returns kernel version mismatch on module load, it may not even work at all;

* if `dmesg` returns symbol mismaches, you're trying to fit a square peg in a round hole.

After that, if you insist on loading the module and force it, pray. Just, pray. Hard.

# Compilation: when to do it

There are 3 cases in which you may want to compile a package from source:

1. it isn't provided by your distro, and you need it (have you checked all available sources? Alternate repositories?)
1. the provided version is old, or buggy, or slow
1. the provided version hasn't been compiled with the options you want

For 1, you could try to get a package from another distro: `alien` and `smart` even allow you to use Debian packages on Red Hat packaged distros and vice versa, so where's the point? Except when you just know that the package is easy to compile (but then, you wouldn't read these lines and be done already).

For 2, well, same as option 1. If you want to play with fire, be ready to get burnt: backups, backups, backups. Of course, a properly set up kernel source can give your machine a sensible performance boost (disabling multiple processors support on single core systems, compiling with specific processor options instead of generic i586 for 32-bit systems, disabling all debugging options, those may be worth it; but the rest isn't worth the trouble).

For 3, you could get your distro's source package: it should be provided with original build instructions, and at least you'll be sure that other installed software won't baulk.

In short: do you really need to compile from source?

# Compilation 2: what to do, what not to do

First, Read The Friggin' Manual! It could be the README or INSTALL file provided with most source packages. If the package isn't provided with a `configure` file, you have two options:

* either the tarball contains an experimental snapshot of the software, and you'll need to build the makefile yourself, with `automake` or `cmake`; READ the instructions to know which is required and recommended for your system!

* or the tarball doesn't require a makefile (the source files perform checks themselves, or the build system is preset, not requiring a `configure` script): you can skip to the `make` step.

If you can't find any build instruction, try running `make` right away. If it doesn't work, `make` will tell you what it's missing. Go back to the top, lather, rinse, repeat.

# Start configuration

As said before, you'll probably find build instructions inside the tarball, one way or another. If you have a `configure` script but no manual, try `./configure --help` to get a list of options. Use the ones you need (for example, many programmers compile to put compiled binaries inside `/usr/local`, but in many distributions you actually want to put everything inside `/usr`), and get started.

For example, `./configure --prefix=/usr` will set up the system to put everything inside your 'main' system directories. For a first time compilation, it's not recommended: put them somewhere else instead (like `/usr/test`, or something), you'll later use soft links to make use of them instead of already installed libraries.

The script will run; look at it attentively, even the least customized one will tell you what it's looking up. Once the process is finished, try to install as many of the missing packages (both libraries and development packages) as you deem necessary, and run `./configure` again. Again, check it out closely. Some are more verbose than others, but at least you make sure that you won't be missing too much right from the start.

Once there, it's time for `make`: watch outputs closely, as an aborted compilation will, more often than not, be preceded by log messages like 'line XXX: undeclared variable #something'. If you get several of them, it usually indicates a missing library not covered by `./configure` (if it actually happens, it's a good idea to inform the developer about it); install the library with the name closest to the missing variable, and try again. Now it should work.

Lather, rinse, repeat. Eventually, you'll get a built package. `make install` usually covers the rest (just remember what prefix you've set up at the `./configure` step), but I don't recommend it right away: run the local binary first, and see if it works. Moreover, look up what files may be replaced: if possible, uninstall conflicting packages first.

# Compilation done, what next?

Well, if you reach that point, you're as far along as Bill Gates was when he shipped Windows 95 ('it compiles! Quick, ship it!'). Next step, use your new system library. If you've followed my advice but couldn't remove the package (too many dependencies), you now have an original library in use, and an unused custom one; move to where you want to put the file. Rename the old one (`mv libthingie.so libthingie.so.old`), and create a symbolic link to your new one (`ln -s /usr/test/lib/libthingie.so .`), run `ldconfig` and (re)start one piece of software that makes use of this library. If it works, restart all other processes. If it crashes, undo what you did and restore the older library (`rm libthingie.so && mv libthingie.so.old libthingie.so`) and check again that you compiled your library correctly (be careful about 32/64-bit, the failing process will complain about symbol mismatch).

If you intended to build a kernel module (say, the highly unstable mach64 DRM module), then following the manual just works: all you need to do is `git extract`, `make`, then manually copy both `drm.ko` and `mach64.ko` to your kernel tree. Just don't forget to make a backup of the original `drm.ko` (or `drm.ko.gz`) file somewhere safe and to run `depmod -a` after copy. `gzip` them if you want, then try `modprobe mach64` and look at `dmesg | tail`'s output to be sure there is no error.

Right then, you can restart Xorg and see if DRI is enabled: on some systems, it'll load Xorg and composited GNOME, KDE or Xfce fine, until you try to display texture mapped polygons; on others, it'll give you a black screen and sometimes a nice hard system hang, so it would have been a good idea to set initial init level in `/etc/inittab` to 3 (Mandriva, SuSE) or 1 (Ubuntu), or to have a backup kernel image somewhere.

# Conclusion

I'm not qualified as a programmer; to be frank, I've never typed a line of C/C++ in my life. However, I've successfully built several packages from sources, by taking to heart a few simple instructions:

* read the manual
* read the manual again, because some stuff at the beginning may make more sense
* read the release files, as they sometimes contain contradictions with the manual, but at least you'll know what to expect
* check out compile options, as they sometimes contain more precisions or the latest build syntax
* read the manual one more time, because you won't remember it very well byt this stage
* read script and compilation options, there could be some stuff hidden here
* make backups, and keep a LiveCD handy.

Once you've gotten used to it, compiling a package from sources (be it the kernel, a module, an Xorg driver, a library, whatever) and making use of it is no more difficult than reading a cooking recipe for making a pizza: just don't forget to read it and to keep flour on your hands, otherwise the dough will stick.