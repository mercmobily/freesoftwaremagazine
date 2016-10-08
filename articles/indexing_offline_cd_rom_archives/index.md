---
nid: '2856'
title: 'Indexing offline CD-ROM archives'
authors: 'Terry Hancock'
published: '2008-05-03 4:50:00'
tags: 'search,archives,cli,backup'
license: verbatim_only
section: hacking
listed: 'true'

---
Suppose you've been good (or sort of good anyway), and you have a huge stack of CD-ROMs (or DVDs) with backups and archives of your old files. Great. But how can you find anything? I solved this problem today by making an index of all the files stored on these disks using a few simple GNU command line tools.

<!--break-->

I have a metal CD case that is supposed to hold 200 CDs about half full of CDs, most of which are backups or archives. That's about 75 backup disks.

=ZOOM=I have about 75 backup disks. There's no way I can remember what's on them all=

There's no way I can remember what's on them all. Nor, typically, can I remember which disk will have a given file that I know I had at one point. This came up today because I'm preparing a presentation and I need some old image files that I _know_ I had a few years ago. Moreover, I'm positive that I would've backed them up. But _where_?

Well, obviously, I'm going to have to search every disk. But how can I make that easier? And isn't there some way I can avoid doing that in the future?

Well, of course, I need to make some kind of database or index of all the files. Something like what the `locate` command searches to find files on my running system.

# An index directory

So, I made a directory, which I called `DiskIndex`. Then I proceeded to fill it with files named with a identification code, which I also wrote on each of the disks. For example, I labeled the first disk from 2001 "TCD2001-001" for "Terry's CD, year 2001, first one indexed" (it was too much trouble for me to refine things down to the month, but you could obviously do that, too).

Then I created files for each disk in `DiskIndex`. I decided to make four possible files for each disk:

* `TCD2001-001.files` will be a list of full paths occurring on the CD
* `TCD2001-001.tree` will be a tree representation of the directories
* `TCD2001-001.arch` will be a list of files in "tgz" archives on the CD
* `TCD2001-001.read` will be a copy of the top level "README" file if present

My reasoning is that I can use `grep` to find file or directory names in the `.files` file (this gives me a "search" option), and of course, if the file only appears in a tarball, I can find it by searching the `.arch` file as well. The `.read` and `.tree` files are useful for "browsing" the disks, and I will also print those out to store alongside the disks, giving myself a topic-oriented way to find information.

=ZOOM=My reasoning is that I can use grep to find file or directory names=

Obviously, I could program this in Python, or write it as a bash script, but I don't actually plan to do this often enough for it to be useful, so I'll just run a few commands on the command line to get what I want. Here's a walk-through.

Obviously, I must mount the CD-ROM. I have my `/etc/fstab` set up to allow any user to mount or unmount the CD, so this is easy. I do have to tell KDE not to automatically open the CD-ROM in Konqueror with the automount feature (this may or may not happen for you, depending on what version of KDE you have).

=CODE_START=
$ mount /cdrom
=CODE_END=

Among my collection, though, I also have some old Macintosh-formatted CD-ROMs, which are kind of a pain. But I can mount them like this:

=CODE_START=
$ su
Password?
# mount -t hfs /dev/hdc /cdrom
=CODE_END=

Something similar may work for you. My CD drive is an ATAPI type mounted on the secondary IDE controller, so it appears as `/dev/hdc`. This is a common, but not universal arrangement, so your system may be different. You may also have a `/dev/cdrom` defined, in some GNU/Linux distributions.

Now I can make my indexes, using `find` and `tree`:

=CODE_START=
$ find /cdrom > TCD2001-001.files
$ tree -d /cdrom > TCD2001-001.tree
=CODE_END=

I check for whether there is a README of some kind, and copy that to my index, if there is:

=CODE_START=
$ ls /cdrom/*README*
/cdrom/README.txt
$ cat /cdrom/*README* > TCD2001-001.read
=CODE_END=

Finally, I look for archive files. I almost always use tar with the `z` option, which is the same as using it with `gzip`, and I almost always use the `.tgz` extension, so I can safely assume that the archives I want are in this format.

=ZOOM=I look for archive files=

You know your own habits, so if you have some other practice, you'll need to make changes accordingly, either in recognizing the files, or in what application you use to read their indexes.

=CODE_START=
find /cdrom -name "*.tgz"                  \
    -exec echo "ARCHIVE {}" \;             \
    -exec tar tf {} \; >> TCD2001-001.arch
umount /cdrom
=CODE_END=

In case you're not already familiar with them: the backslash characters (`\`), are there to "escape" the carriage return so that the first three lines above appear as one single line to the shell.

This command produces my archive. It's probably worth breaking that down, as it may look pretty complicated to you. What I'm doing here is searching the directories under `/cdrom` (which is where my disk is mounted, of course) for files matching `*.tgz`, which I'm assuming are all the archives I need to expand. Then, whenever I find one, I execute (with the `-exec` option) two different commands: the first to output the name of the archive file, and the second to actually list its contents.

The variable symbol used by `find` is a little weird. I don't know any other program that uses this convention, but `{}` represents the found file name in `-exec` options.

Finally, of course, I redirect this output to _append_ (what `>>` does) to my chosen `.arch` file.

# Making the master table-of-contents

Finally, I want to make a master table-of-contents document that I can use to browse my CD-ROM collection, and tell quickly what I will find on each disk. I want this to be compact enough that I can print it out and store it in the case with the disks.

=ZOOM=Finally, I want to make a master table-of-contents document that I can use to browse my CD-ROM collection=

After trying a couple of command line approaches with this, I decided it'd be simpler to just write a python script, which is what I did:

=CODE_START=
#! /usr/bin/env python

import glob, os

toc_header = """\
<html>
<head>
<title>Offline Archive Disks</title>
<link rel="stylesheet" href="toc.css">
</head>
<body>
<h1>Offline Archive Disks</h1>
<hr />
"""

toc_footer = """\
</body>
</html>
"""

toc_fmt = """\
<h2>%s</h2>
<pre class="readme">
%s
</pre>
<pre class="dirtree">
%s
</pre>
<hr />
"""

files = glob.glob("*.tree")
files.sort()

toc = toc_header
for file in files:
    dirtree_lines = open(file, 'rt').read().split('\n')
    dirtree_lines = [L for L in dirtree_lines
                        if L[:9] not in (
                            "|   |   |", 
                            "|   |   `",
                            "|       |",
                            "|   |    ",
                            "|        ",
                            "|       `",
                            "    |   |",
                            "    |   `",
                            "    |    ",
                            "        |",
                            "        `",
                            "         ")]
    dirtree = '\n'.join(dirtree_lines)

    if os.path.exists(file[:-5]+".read"):
        readme = open(file[:-5]+".read", 'rt').read()
    else:
        readme = ''
    toc += toc_fmt % (file[:-5], readme, dirtree)

toc += toc_footer

open('disks_toc.html', 'wt').write(toc)
=CODE_END=

This, of course, builds a very simple HTML document out of my tree files (and incidentally, gets rid of the deeper parts of the tree to keep the file from getting too long). I then printed this out to a Postscript file, and used `psnup` to print two logical pages per physical page, to save a little paper:

=CODE_START=
cat toc.ps | psnup -2 > toc_2.ps
=CODE_END=

# Finding files

Well, that worked well enough for my purposes. I hope it will be useful to you as well. To use the index, of course, you just use `grep`. For example, have I got an image of a _Saturn V_ in my collection?

=CODE_START=
$ grep saturn_v *.files
TCD2001-001.files:/cdrom/Writing/MoonGuide/Diagram/a---.saturn_v.dia.eps
TCD2001-001.files:/cdrom/Writing/MoonGuide/Diagram/a---.saturn_v.dia.jpg
TCD2001-001.files:/cdrom/Writing/MoonGuide/Diagram/a---.saturn_v.dia.ppm
TCD2002-001.files:/cdrom/Clipart/MoonGuide/Diagram/a---.saturn_v.dia.jpg
=CODE_END=

And obviously I have! Which means I can finish writing that presentation. So good luck!
