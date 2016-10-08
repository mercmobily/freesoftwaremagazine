---
nid: '3314'
title: 'GNU/Linux and freedom: non-free software hidden in your GNU/Linux distribution'
authors: 'Vincent Launchbury'
published: '2010-04-01 2:25:18'
tags: 'freedom,gnu/linux'
license: verbatim_only
section: opinions
listed: 'true'

---
Most people with an interest in software freedom will turn to GNU/Linux as their operating system of choice. Few realize however, that the vast majority of GNU/Linux distros are not entirely free. Imagine migrating away from Windows, only to find that by installing GNU/Linux you are accepting a restrictive Microsoft license!

Many distros promote the use of proprietary software, knowingly show incorrect licenses, and attempt to hide the problem under the guise of an 'option of freedom'.  When the majority of developers of a collection of software don't care about freedom, neither will their users. Non-free distros make almost no attempts to inform their userbases of the importance of freedom, even though they wouldn't exist without it. I will discuss how the option of freedom is an unacceptable solution, and propose some real fixes.

<!--break-->


# The problem

I've been using GNU/Linux for over 5 years, but I've only recently discovered just how much non-free software my distro contains. I decided to search through my system and remove everything that was non-free, and there was quite a lot that I removed.

=IMAGE=meditate.jpg=A levitating GNU--a symbol of software freedom and tranquility=

Here is what I found:

## The Linux kernel

The Linux kernel released by Linus Torvalds et al via [kernel.org](http://kernel.org), known as the _vanilla_ kernel, contains many pieces of non-free firmware (see footnote), that mainly exist to support hardware for which free firmware doesn't exist.

=ZOOM=Imagine migrating away from Windows, only to find that by installing GNU/Linux you are accepting a restrictive Microsoft license!=

Although most distros maintain their own kernels, they are all heavily based on the vanilla releases, and typically carry-over the non-free blobs.

One solution is to use the [Linux Libre](http://www.linux-libre.fsfla.org/pub/linux-libre/releases/) project, which is a collection of the vanilla kernels stripped of all the non-free firmware. Most distros don't even offer the choice of a free kernel, never mind recommending one.

## Non-free drivers

Many distros include non-free drivers for things like video cards and wireless adaptors. Since the hardware is closed and undocumented, they include such drivers in an effort to improve hardware support.

=ZOOM=Many distros promote the non-free versions *over* the free ones=

In a lot of cases, free replacements for the drivers do exist, yet many distros promote the non-free versions _over_ the free ones.

## General non-free software

Many distros provide other non-free software that doesn't fit into the above categories. This includes things like non-free web browsers, video conferencing clients, and other general applications. The system doesn't need this software, and it is included only as a convenience or to make the list of packages bigger.

=ZOOM=They are telling their users that freedom is a secondary issue, and leading them toward using non-free software=

Although some distros will maintain non-free software in a separate repository, this means nothing to the average user. By advertising both free and non-free programs, they are telling their users that freedom is a secondary issue, and leading them toward using non-free software.

One package I removed from my system was corefonts, which is a non-free font package with a Microsoft license. The license restricts the use of the package, and forbids modification. Corefonts is an optional dependency when installing ImageMagick, and in Gentoo, it is turned on by default.

ImageMagick itself is free software. This means that most users installing it would assume that it was free, and end up with corefonts on their system by mistake.  They would then be subjected to a restrictive non-free license.

## Summary

These are just some examples of how many GNU/Linux distros restrict their users freedom. Another issue is that just checking what the package manager says about the licenses of various programs is not always reliable. For example, the Linux kernel is often labeled as being solely GPL-2, yet it includes non-free software.

Without clear policies stating exactly what software may be included in a distro, and exactly how it should be licensed, even the most careful user is likely to install non-free software.

# The option of freedom

Some distros try to fix the problem by offering a separate free version, or by offering tools that help users to keep their systems free. This doesn't fix the problem at all though, as the vast majority of people aren't even aware of the issues of software freedom, and therefore don't end up using such versions.  Furthermore, distros rarely do anything to promote the free versions, or even inform their users of the advantages of using them.

## Mandriva

=ZOOM=The important goal of informing the masses about the issue of how proprietary software gives the developer power over you, and how to escape from it, isn't touched upon at all=

My first example is Mandriva, who offer what seems to be seven different versions of their distro, only one of them being entirely free. Most people visiting their website will download the Powerpack version, as it is the first one displayed, and its name insinuates that it's the most feature-full version available. There's no description of the differences between them, and there's nothing promoting or even explaining the advantages of using only free software.

The net effect of this, is that the only people that will use the free versions are the people that already know and care about the issues. Those people are probably already running 100% free systems. The important goal of informing the masses about the issue of how proprietary software gives the developer power over you, and how to escape from it, isn't touched upon at all.

## Gentoo Linux

Another example is Gentoo Linux, who offer an optional license filtering system, that can help users eliminate the installation of proprietary software. This case is even worse than Mandriva's, as the filtering features are barely even mentioned in the documentation, and there's no recommendation of their use whatsoever.

This means that the only people that will be using free versions of Gentoo, are those who have specifically searched for how to filter software based on licenses. The vast majority of their users won't even know that the features exist. Furthermore, some of the licenses (for example, the license of the Linux kernel) are incorrect. So even with strict filters, proprietary software will almost certainly still slip through.

I pointed out on the Gentoo developer mailing list, that the licenses shown for the Linux kernels were incorrect. I asked for them to be updated to include the non-free firmware licenses, so that people could accurately filter their software.  Although a few developers supported this idea, the fix was initially rejected by some members of the kernel team. Shortly after this article was published, I was informed that the licenses have now been updated, by one of the original supporters. **[This paragraph was edited after publishing the article]**

## Summary

=ZOOM=Non-freee distros make almost no attempts to inform their userbases of the importance of freedom, even though they wouldn't exist without it=

When the majority of developers of a collection of software don't care about freedom, neither will their users. Non-free distros make almost no attempts to inform their userbases of the importance of freedom, even though they wouldn't exist without it. A distro's influence over their users is tremendous, and they have a social responsibility to promote the use of only free software.

# The solution

The obvious real solution would be to switch to a distro that respects its users freedom. The FSF maintains a list of [entirely-free distros](http://www.gnu.org/distros/free-distros.html) that you can use. The developers work collectively to protect their users freedom, and try their best to maintain an entirely free system, by looking into and fixing all reports of non-free software that has slipped through by mistake. Other non-free distros will likely ignore such issues.

Switching to a new operating system is not always desirable however. You may prefer the design of your existing non-free distro. If this is the case, you may wish to convert your installation _into_ an entirely free operating system. This will be a lot of work, but it's possible:

1. First, you should remove the non-free software from your system. This will likely involve switching to a Linux Libre kernel, and scanning through your installed packages, checking all the licenses. This can be a large tedious job.

1. It is silly that every user should have to do this. You can contact the developers of your distro and tell them, in a polite message of course, that you think software freedom is an important issue, and suggest that they take steps to improve the freedom of their distro. You could also offer your assistance, whether it be of a technical nature, or merely reporting issues.  A hassle-free way of maintaining an entirely free system would be a good start.

1. If you code at all, you might instead choose to focus your efforts on improving a free distro. If there's a particular design decision you prefer, you could help implement it in a free distro. Alternatively, you could help non-free distros by writing free replacements for the non-free programs they contain (and of course, this would also benefit entirely free distros. Oh the wonders of free software!)

Sometimes you may have hardware that isn't supported by free software. You should try to avoid supporting such companies if possible, although this isn't always feasible. In all cases, you should write the manufacturer a polite but firm request, asking them to either release their drivers as free software, or to open up their specifications so that others may do so.

When buying new hardware, consult the FSF's list of [Supported Hardware](http://www.fsf.org/resources/hw) and try to support the free companies as much as is possible.

One final point I will mention, is the powerful influence of recommendation.  Whenever recommending GNU/Linux to your friends and family, don't forget to stress the importance of freedom. Regardless of whether or not they take your advice, you will be helping to spread knowledge, which is the vital first step in solving any problem.

# Footnotes

As an example, browse this [Linux source file](http://git.kernel.org/?p=linux/kernel/git/stable/linux-2.6.28.y.git;a=blob;f=drivers/net/wan/wanxlfw.inc_shipped).  You're looking at a blob of non-free binary firmware.  The meaning of such code is often considered a trade secret, so users are not only unable to modify it, but also unable to understand it.

The problem doesn't stop at Linux. OpenBSD has developed their own kernel, but it still has blobs. A quick look in the kernel source reveals this [source file](http://www.openbsd.org/cgi-bin/cvsweb/src/sys/dev/microcode/atmel/atmel_intersil_fw.h?rev=1.2;content-type=text%2Fplain) which contains non-free chunks of code with a restrictive license.

See further examples of non-free blobs in [Ubuntu](http://kernel.ubuntu.com/git?p=ubuntu-archive/ubuntu-edgy.git;a=blob;f=debian/firmware/ipw3945/LICENSE;h=e86fd69225743b140469c051d253060706073c0d;hb=711761e0fd7ff450bee063a6caa93205e09d0617) and [Debian](http://wiki.debian.org/KernelFirmwareLicensing).