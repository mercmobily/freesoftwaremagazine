---
nid: '2026'
title: 'Bug hunting: making sure your bug gets fixed'
authors: 'Wouter Verhelst'
published: '2007-01-23 18:09:47'
tags: 'howto,debugging,git,bugs'
license: verbatim_only
section: opinions
listed: 'true'

---
What do you do when you find a bug? You report it. With a bit of luck, the developer responsible for the code on which you do so will agree that it is a bug, and will fix it. Often, however, bug reporting is much harder. Everyone can file a bug report which basically says “it doesn’t work”; but not many developers can do something useful with such a report. If you want your bug to be fixed, it’s imperative to give as much information about the bug as you can: what you were doing, what the software did, what you were expecting it to do, how to reproduce the buggy behaviour, and so on. And then? Can you do more? Of course you can.


# Bug hunting matters

Finding a bug that’s buried “somewhere” in a huge amount of code is very hard; it’s not something a developer will look forward to. So in any bug reporting, it’s paramount to give as much information as possible, so that you eliminate the parts of the code that are unlikely to be causing your bug. Good developers are often lazy, and will not look at a bug that requires them to verify too much code; so elimination is very important. This is, in fact, the only reason why you should submit as much information as possible about bugs: because it will help the developer eliminate unlikely causes of the bug.

But even if you do that, it may not be enough. Say you were running a GNU/Linux-based system, and after an upgrade it doesn’t boot anymore. No output, no nothing. There isn’t much you _can_ say about that, except that “it doesn’t work”; exactly the thing we’re trying to avoid. What do you do then? You find the bug yourself. That doesn’t have to be hard, it can be pretty fun to do, and the developer will gladly look at your bug after you’ve put in all that work.


# Version control systems

Today, most free software is managed with a version control system, also known as “source code management”, or “SCM”, system. These will usually allow us to go back in the history of the source code, and in doing so find the one change that is responsible for the bug we’re dealing with. You don’t even have to understand how to write software to be able to do that; all you need is some basic understanding of the version control system you’re dealing with.

Let’s say you’re running a GNU/Linux-based system, and do an upgrade of the kernel. Suddenly your system doesn’t boot anymore; so now you’ll have to try and find which change in the kernel’s version control system is the culprit. However, assuming you only use released kernels, it’s very likely that there are a good thousand changes between your working version and the newest version which doesn’t work. Testing all these changes individually will take a long time, so we won’t do that.

Instead, we’ll do what is known as a “binary search”: rather than starting at the beginning and trying each and every version consecutively, we’ll try with the version that’s right in the middle of the two. If this version works, we know that the bug was introduced in a later change than halfway through development for the latest version; if that version does not work, we need to find a change that happened before that. With now half of the changes to be searched, we repeat the algorithm in exactly the same way, until we’ve found a change that works, immediately followed by a change that does not work.

By doing the search this way, the number of versions we’ll have to try will be limited to the square root of the number of changes between the working version and the non-working version; if there are 1000 such changes, then the amount of test runs we’ll have to do will be limited to about 31 or 32. While still quite a lot, at least that’s a manageable number. Let’s try it out, with...


# An example

The Linux kernel is managed using the “git” version control system, which includes the “git-bisect” tool. This tool was written specifically to help in doing a binary search; so let’s have a look at how this works out in practice when using git.

First, you’ll need a local checkout of the Linux kernel’s git repository. This is done by use of the “git-clone” command:


=CODE_START=

$ git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux-2.6.git

=CODE_END=

That’s pretty easy. It’ll take a while to download the whole repository, though. Go grab some coffee.

Next, you need to tell git that you want to do a binary search. Assuming the working version was 2.6.18, and the non-working version was 2.6.19, this is what we’ll do:


=CODE_START=

$ git bisect start
$ git bisect good v2.6.18
$ git bisect bad v2.6.19

=CODE_END=

The last command will also take a while, since it now needs to update your working repository to the one right between 2.6.18 and 2.6.19. Finish your coffee.

With that done, you’ll now have a local directory with Linux kernel source. Compile it, and see whether the bug is present. If it is, run `git bisect bad`; if it isn’t, run `git bisect good`. The `git` tool will now update your kernel source again to another version, and you’ll be able to compile the next version.

There are a few corner cases that might be interesting; if you read the “git-bisect” manual page, you’ll find a slightly longer explanation.


# Conclusion

Hunting bugs in software doesn’t have to be hard; it’s quite fun to do; and by doing so, you’ll be able to file better bug reports that will have a much better chance of getting fixed. Isn’t that nice?

