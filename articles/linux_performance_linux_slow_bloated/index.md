---
nid: '3268'
title: 'Linux performance: is Linux becoming just too slow and bloated?'
authors: 'Mitch Meyran'
published: '2010-01-26 2:13:01'
tags: 'linux,minix,ntfs-3g,bloat'
license: verbatim_only
section: opinions
listed: 'true'

---
This is an aspect of FOSS that is regaining some measure of interest: for years, it was considered that writing production-ready FOSS meant lean and mean software. However, recent events have shown that, in the case of the Linux kernel, this is no longer exactly true: performance is dropping slowly yet steadily.

How come?

<!--break-->

# Bloat

The Linux kernel is monolithic: it means that every hardware driver runs in kernel memory space. Every time you add a driver, you add stuff to the kernel. Moreover, for performance reasons, several user-space elements make their way into the kernel and increase its bloat even further. 

Moreover, Linux has historically been developed for x86 platforms, and is tightly linked to the architecture, going as far as using hardware interrupts in code (essentially, mixing x86 assembly in the much more generic and portable C code).

On top of that, since everything hardware related runs in kernel space, it is unstable by design: a bug in a hardware driver means that a network card can crash the system. Linux is literally the opposite of a micro kernel.

Now, some of you may remember several years ago when Andy Tanenbaum and Linus Torvalds had a 'shouting match' over the Intarwebz on the merits of a micro kernel. As I won't pretend to be something I'm not (a Ph.D-level teacher, writer and software designer), I'll let you discover for yourself what the heck this was about: first on [Andrew S. Tanenbaum's page on MINIX and Linux](http://www.cs.vu.nl/~ast/brown/), then in an [interview made for FSM](http://www.freesoftwaremagazine.com/articles/minix). For the sake of brevity, I'll sum up what is, and the advantages of a micro kernel.

## A micro kernel: MINIX

A micro kernel is, by definition, a kernel that has NO integrated hardware driver -- none! Not even an interrupt scheduler nor a memory controller. It is nothing more than a messaging system, and everything that is not the kernel will run in user space. It is lean: a micro kernel might not need more than a few thousands lines of C code. It is stable: if a hardware driver fails, it won't bring down the kernel. It can therefore crash, and be reloaded good as new. Moreover, such a design makes updates very easy. As the kernel itself is so simple it is relatively easy to make it bug free; if a driver is updated, it can be unloaded and a new version loaded in its place. No more reboots.

Now, MINIX was made as a teaching tool: it means that it should be as hardware-independent as possible. It will, thus, be made entirely out of portable code (like, say, C – with no assembly whatsoever).

MINIX is now in its third version. It can handle a windowing system and pseudo terminals. It can work as a server, or as a desktop system (but very few desktop tools have been ported). It is POSIX compliant (which doesn't actually mean much).

So why isn't it replacing Linux?

First, for historical reasons. MINIX is first and foremost a teaching tool. It is the most basic functional UNIX clone currently in existence, and it must, for that reason, remain very simple. Features added must not be integrated as patches, but as extra drivers – so as not to be used until needed. This, coupled with as little code duplication as can be achieved, means that improving MINIX is a very delicate process.

Second, for performance reasons: micro kernels use messaging to communicate between the kernel and drivers. This process uses up CPU cycles that direct communication in kernel space avoids. The very fact that the memory controller is decoupled from the kernel entails a 20% performance loss alone. Thus, in most cases, MINIX will be at least 20% slower than Linux – or BSD.

Another performance reason would be that since Linux has assembly-optimized code for x86, even without the micro kernel's design, it would still be faster than MINIX, with its C-only code, on x86 systems (performance would depend on compiler efficiency, but it would be there nonetheless). However, we need to nuance this.

_(Editor's note: Minix was also non-free up until much later in its life. This was one of the main points Linus had while talking to Tanenbaum...)_

## A strange monolithic kernel: Linux

One of the biggest improvements made to Linux ever since its inception has been its ability to support modules: originally, you had to compile a whole kernel every time you changed a piece of hardware, or you had to compile a huge kernel with all drivers loaded even though you would then end up with wasted RAM for unused drivers. Modules allow you to split your kernel up into several pieces that can then be loaded and unloaded pretty much at will. This means that you can compile a smallish basic kernel and then load needed modules at run-time. You can even unload a module, compile a replacement, and load the updated version – just like in micro kernels. But, for those who didn't pay attention, this is not where a micro kernel design is theoretically better than a monolithic one. That occurs on the interface between the driver and the kernel.

A case in point: if you load a buggy graphics driver module it can crash the kernel, freeze the computer, etc.

Now, there are several mitigating factors that make the picture less problematic than it actually is: the module interface in Linux gets tighter all the time, so it is becoming harder for a driver bug to bring down the whole kernel. Moreover, the open-source nature of the kernel means that it is quite unlikely for a piece of code to contain bugs that can lead to crashes – and those that do exist get squashed rapidly. In short, while MINIX is stable because it doesn't permit bugs to bring it down, Linux is stable because it doesn't have too many bugs to bring it down – and usage difference is sufficiently large enough that there is a difference between the two FOSS projects.

Moreover, while Torvalds (and the Linux developer community in general) disagrees with Tanenbaum on the matter of micro kernels, he does acknowledge that many of his points are valid. That's why, with time, more and more code is added to the kernel in order to isolate subsystems from each other. This kind of coding adds complexity to the functions of the kernel, thus using up CPU cycles and so reducing performance...

That's point one.

Since Linux is now in use on more than one platform (x86), many parts of it had to be rewritten: ARM, PPC and Itanium are but a few of the platforms on which the kernel runs. Most replicate the same functionalities that exist on x86, but in many cases it is less advanced or refined – so while Linux is probably one of the best performing kernels on x86, it is not the case on any other platform. Since this is indeed a concern, most work occurring on x86-specific code is now designed to be as compartmentalized as possible:

* code that would have no functional equivalent on other platforms (at a reasonable performance cost, or code such as an x87 FPU emulator or a specific memory controller) is kept inside x86 but must be hack- and shim-less proof,

* code that would be functionally equivalent on other platforms (at reasonable performance cost) is programmed in plain C and taken out of x86 to find its way in the 'kernel' section.

You'll notice that, along the way, several 'speed hacks' (as this is valid for both re-factored and new code) could have gone missing. At the same time, thanks to code re-use, the 'central' part of the kernel on all platforms (let's say, the scheduler, the memory controller and the rest of the kernel's internals) may be getting slimmer for core functions. Slimmer, more elegant code doesn't mean faster though.

That's point two.

Performance is also in the eye of the beholder: sometimes it can go down due to a bug or regression, but at other times it may be the result of a balance shift. We'll take for example the memory allocator and the ext4 driver.

That's point three, and this one deserves a more detailed analysis.

# Feature and safety at a performance cost

While code modularization has a generic performance cost that is often negligible, considering the gains in development time and overall code quality, there are features that have performance costs with no easily measurable benefit – but benefit there is. We'll take two of the most noticed “regressions that aren't”.

Do keep in mind though that regressions do happen, and are usually corrected a few kernel releases later.

## The memory allocator dilemma

The Linux kernel has, currently, three different allocators: SLOB, which is historical and rather dedicated, SLAB, which used to be the preference, and SLUB, which is newer and generally slower.

According to kernel documentation, SLUB has been written to replace SLAB on multicore systems: SLAB is faster than SLUB, no question about it, but on multicore system it is also heavier on the RAM. In very extreme cases, SLAB can end up using more than a gigabyte of RAM, which negates its performance advantages by causing paging and data bus contention. SLUB solves this problem by being heavier on the CPU but using much less RAM – in these extreme cases, SLUB performs better 'live' than SLAB. Since it also isn't THAT costlier CPU-wise and machines get more cores all the time (an Intel quad-core with Hyper-threading will count as an 8-core, and waste around 17 Mb of RAM – say goodbye to your CPU cache), it's become the default.

But a database benchmarks will still find that a SLUB-using kernel will perform worse than a SLAB-using one.

## The scheduler stress

Initially, Linux was made to work on server-oriented tasks: one task that had to be accomplished as fast as possible. Linux is also a co-operative multitasking kernel: it will give a process more resources when it asks for it if:

* the process' priority (its 'nice' level) is higher than other processes requiring resources,

* other running processes have notified the kernel that they're done for now.

There is more to say about this, but you get the basic idea.

Typically, on server loads, you have a handful of foreground processes with high priorities that aim at completing their tasks as fast as possible before releasing their resources: in those cases, delaying one task so that another finishes is the most efficient system. Less cache misses on the CPU, less wild head movement on hard disk drives... This kind of scheduling is good for servers.

But, on a desktop system, it means that, say, mouse movements will freeze if a process gets very heavy on the CPU. Which is Bad (tm).

So, the Completely Fair Scheduler (CFS) was written, and the kernel redesigned somewhat. It takes into account stuff like how much resource a process has already asked for. It allows pre-emption of a process on more execution points and it polls processes for additional execution points at more regular times.

But a database benchmarks will still find that a CFS-using kernel will perform worse than an older one.

# Mitigating factors

Now, it seems that the kernel slowing down isn't such a bad thing if it is the price for a more versatile and safer system. However, there are still debates raging on various points that may seem to contradict all that's being said. I'll tackle a few of these here.

## Should file system drivers be found in user space, or in kernel?

This one is very sensitive, and for more than one reason: since, on UNIX, everything is a file, one file system at the very least has to be very close to the kernel. After all, even processes are found on a file system. Look at `/proc!` or even devices, in `/dev`! Back to our micro kernel vs. monolithic kernel argument. Performance costs for all file systems being found in user space would be high. So, let's put all file system drivers in memory! But, there are thousands of them and many are more buggy than an ant hill! Do you really want that?

I'll take a very controversial example, which shows how difficult it is to answer this question – until you put it into perspective: let's take NTFS, which supports POSIX, DOS and NT file spaces, alternate data streams, metadata journalling, file-level compression and encryption, built-in defragmentation and out of order block allocation.

Version 3, starting with Windows 2000 is the version currently in use. Not all its features are used or even supported by Microsoft's OSes, meaning that it could trash data found on otherwise perfectly valid and sane NTFS volumes. You have been warned.

NTFS support has been very long in coming; first, because there was no real use for it until 2003, and second because it is very complex and not very well documented. Still, there was support in the kernel since 2001. But, it was for an older version of NTFS (NT4's) which was not compatible with 3.x – leading to massive corruption. Around 2004, a rewritten NTFS driver appeared, that allowed read and then eventually partial write access to NTFS partitions. A third-generation driver, however, made its debuts in 2006, and soon attracted interest: NTFS-3G runs in user space and provides full read/write access to NTFS partitions. Performance was not its primary goal, and it started becoming a primary concern only very recently, although there were drastic improvements along the way.

Its lack of performance was taken as reason why file system drivers should be kept in kernel space. From my own semi-formal tests, that's completely bogus. What I could observe was that: 

* Windows NTFS driver has a lousy block allocator: it can split a big file into more than 3000 pieces on a used partition, while NTFS-3G will only do 30 or so (test done on a 60% full 80Gb partition); 

* NTFS-3G will eat up a lot of CPU time on writes (latest version 20091015 mitigates that a lot): many small files or a few big ones are not much of a difference any more, but on lower -end systems (say, netbooks) transfer rate is essentially limited by CPU clock;

* Windows, NTFS-3G and Linux NTFS have very similar read speed and CPU use on reads;

* depending on whether you go through the SCSI interface (that includes IDE and SATA in later kernels) or USB, data rates can vary wildly on Linux. The same is true if you use the full FUSE package or the reduced, streamlined version provided by NTFS-3G.

This mean that NTFS-3G cannot be used as an example of why in-kernel drivers are better than user space ones: not only is it as fast as the in-kernel driver where they share functionality (and a good chunk of code) with similar CPU use, there is a higher performance impact coming from bus controllers! Moreover, considering that most of the time on reads and writes is spent waiting for the drive to answer, optimizations as small as direct kernel access and/or assembly code are useless – period. Optimizations on read order, data sorting and allocation are far more important.

Now, for in-memory file systems, it may be a different matter. Still, there is no reason for a file system driver to be ported in-kernel if it works well in user space, nor is there real reason to take a file system outside the kernel if it's already complete and well tested. Actually, one project under way is to modularize block allocation and error reporting in kernel for all file system drivers: while this is not, *stricto sensus*, the best place for that, it is more practical in a 'code repository' way but it requires time to work well.

## Outside of x86, Linux actually sucks... Or does it?

Not actually wrong, but not true either: as a matter of fact, Linux on PPC works rather well, if for no other reason that Linus Torvalds' main rig has for a long time been a dual CPU Apple Mac G5; so, if Linux-x86 is good, Linux-PPC is a close second. Also, the x86-64 architecture has recently achieved a place of its own in the kernel, and is no longer a bastardized x86 branch. Alpha and Itanium, well, they're getting quite moldy – I mean their architectures. There are several embedded systems that see support, or not – these are rather short lived.

That leaves ARM essentially as an architecture. And it is a fact that Linux on ARM isn't very good. But here, we've got some input from Debian. The kernel may not be top-notch but most of the ARM performance loss rests on GNU's `glibc` library – which is why Debian decided to replace `glibc` with `eglibc`, which is essentially a heavily patched `glibc`. According to the fork's authors, GNU developers aren't too quick on the uptake and take ages to integrate ARM patches – prompting the fork. What's nice about `eglibc` is that, although it is patched for ARM, it remains compatible with `glibc` – and thus, runs on x86 (both of them), PPC etc.

So, it does look like Linux isn't so hard to port to a different platform any more, and a failed port depends on much more than just the kernel. But it also requires time to be done right.

# Conclusion

Linux is becoming bloated, and it's also getting slower. You can't however, correlate the two directly, as the kernel gets bigger every time a driver is added, but you're not forced to compile or load all drivers. The fact is that, for a similar set of drivers, Linux isn't really getting bigger.

So, using existing metrics, Linux's performance is, indeed, declining steadily; those metrics being task-oriented and those tasks being typical for a server, one must take this with a grain of salt.

If indeed, regressions do find their way inside the kernel they are usually corrected quite rapidly. “False” regressions are usually caused by security and/or stability features being added, along with a good helping of user-oriented optimizations. What's lacking is the tools to catch regression and the time so that added features don't bloat the kernel.

In that light, projects like [Phoronix's](http://www.phoronix.com) test suite and tracker, which test both network and user oriented tasks and allow variations to become automatically available, are tools that have been common for a long time under Windows and those results are invaluable.

## Sources and further reading

[Phoronix website](http://www.phoronix.com)

[The Register: Linus calls Linux bloated and huge](http://www.channelregister.co.uk/2009/09/22/linus_torvalds_linux_bloated_huge/)

[Slashdot: Debian Switching From Glibc To Eglibc](http://linux.slashdot.org/article.pl?sid=09/05/06/2050216)