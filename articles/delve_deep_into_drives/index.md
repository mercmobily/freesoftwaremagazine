---
nid: '2482'
title: 'Delve deep into drives'
authors: 'Mitch Meyran'
published: '2007-08-31 17:30:39'
tags: 'linux,ntfs-3g,reiserfs,ext3'
license: verbatim_only
section: opinions
listed: 'true'

---
I recently read a doctorate’s thesis on file system robustness by Vijayan Prabhakaran from the University of Wisconsin. It’s very interesting, and may explain in part the recent ruckus on the LKML around file systems.


<!--break-->



# File system robustness

Vijayan takes several file systems out for a spin: those are ext3, ReiserFS, JFS and XFS (they all run on UNIX systems, following POSIX). Microsoft’s NTFS is added to the mix, but in a limited fashion. He then describes the different ways a drive can fail; typically: media damage, electrical failure, bit rot, mechanical wear, but also firmware bugs, bus timeouts and controller failures.

This is followed by terminology used in the thesis, to describe the communication between the drive and the file system (its driver) and how those try to work together to assure data consistency. If you remember recent publication on the subject of S.M.A.R.T., you’ll know that said communication isn’t very consistent nor reliable...


# Journaling explained

There are three main journaling modes in use today: writeback, ordered, and data journaling. Those differ on how journaling is made. But first of all: what is journaling?

Since finding a location for the data to be written is the most time consuming operation right now, a journaled file system simply has an area set to store new data to be written temporarily. Once this data is safe on disk, it will then be allocated to its “final” home and the temporary storage area will be freed for the next data block.

Now, there are two things to write on a disk when new data is added to it: the data itself, and the file system’s record for that data (location, file name, size, creation date, access time, fragments, authorizations etc.).

For example here is how ext3 deals with those modes (writeback, ordered, and data journaling):


* writeback: the inode is put in the journal. If successful, it is committed right away. Once committed, the inode is written at its final position. Actual data can be written before any journaling, once the journaled inode is committed, or once the inode is in place.
* ordered: data is written to the disk first. Once on the disk, the inode is then written to the journal, committed if journaling is successful and, at a later time, committed to its final position. This is the most used mode, and the only mode provided by XFS, JFS and NTFS.
* data: both inode and data are written in the journal. If successful, both are committed. Later on, they are written to their final location.

All three modes have different advantages and problems, and different performance profiles.

Prabhakaran then goes on tracking bugs in all UNIX drivers, describing inconsistencies and danger points, tracing the outline of a tougher file system and then describing how to create an evolved file system that would unite the advantages of most current file systems and overcome most of their shortcomings. At the same time, he tries to describe how moving critical logical pieces from the driver to the kernel (and therefore sharing this code from one file system driver to the other) may make development easier and faster while at the same time strengthening existing FS.


# File system summary

Following those descriptions, Prabhakaran describes his testing methodology, essentially on error injection on all UNIX-based file systems (NTFS couldn’t run his test suite) and some detailed end-user provoked tests (NTFS results are mostly based off this part). It results that:


>* **Ext3: Overall simplicity.** Ext3 implements a simple and mostly reliable failure policy, matching the design philosophy found in the ext family of ﬁle systems. It checks error codes, uses a modest level of sanity checking, and recovers by propagating errors and aborting operations. The main problem with ext3 is its failure handling for write errors, which are ignored and cause serious problems including possible ﬁle system corruption.. * **ReiserFS: First, do no harm.** ReiserFS is the most concerned about disk failure. This concern is particularly evident upon write failures, which often induce a panic; ReiserFS takes this action to ensure that the ﬁle system is not corrupted. ReiserFS also uses a great deal of sanity and type checking. These behaviors combine to form a Hippocratic failure policy: ﬁrst, do no harm.. * **JFS: The kitchen sink.** JFS is the least consistent and most diverse in its failure detection and recovery techniques. For detection, JFS sometimes uses sanity, sometimes checks error codes, and sometimes does nothing at all. For recovery, JFS sometimes uses available redundancy, sometimes crashes the system, and sometimes retries operations, depending on the block type that fails, the error detection and the API that was called.. * **XFS: Simple and well-deﬁned.** From our preliminary analysis, we ﬁnd that XFS has a simple and well-deﬁned failure policy to handle write failures. It checks error codes and on synchronous write failures, XFS stops the ﬁle system and propagates errors. On asynchronous write failures, the failed write is retried persistently.. * **NTFS: Persistence is a virtue.** Compared to several Linux ﬁle systems, NTFS is more persistent, retrying failed requests many times before giving up. It also seems to propagate errors to the user quite reliably. However, more thorough testing of NTFS is needed in order to broaden these conclusions (a part of our ongoing work).. 

Now, I couldn’t find if this work is being used in the design of ext4 (ext3’s successor). However, I find it interesting to note that there was indeed some ruckus about file systems (ext4 in particular) around the time this thesis was published. Moreover, I seem to recall some hints at the possibilty of a reworking of file systems in general in kernel 2.6.22 and up.


# And now, on a similar vein...

You may recall that I’ve talked about [NTFS-3G](http://www.freesoftwaremagazine.com/blogs/move_your_data) [previously](http://www.freesoftwaremagazine.com/blogs/small_musings_general_mood_and_free_software_updates). There’s a good reason for that: I’m using this piece of software quite often, and obtaining more information on the subject is almost vital to me.

In fact, I’ve been using NTFS-3G ever since version 1.0 came out. Now, progress happened essentially with:


* Release 1.0: first stable version;
* Release 1.417: major speedup on large file copies, major reduction in file fragmentation;
* Releases 1.516, 1.616 and 1.710: bugfix releases when combined with fuse 2.7.0, minor speed improvements;
* Releases 1.810 and 1.826: improved POSIX conformance. The latter version also allows building a hard-linked binary, which saves some space but also increases speed.

Using the `./configure --disable-library` option will build the hard-linked library. Preliminary tests do show a lower CPU use on both small and large file copies (I copied 1,300 files for 6GB worth of disk space, and for once my CPU didn’t max out).


# Conclusion

I’m sorry this post isn’t better referenced: I didn’t think about taking notes of where and when I gleaned all those pieces of information, especially since it was quite fragmented. Unfortunately, no one yet has created a brain defragmenter and consistency check utility, otherwise I could verify what I’m writing.

Still, you can check out [NTFS-3G’s site](http://www.ntfs-3g.org) for the driver’s latest progress, and download the [thesis](http://pages.cs.wisc.edu/~vijayan/vijayan-thesis.pdf) which is a very interesting read.

