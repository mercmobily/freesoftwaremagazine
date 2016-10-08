---
nid: '2120'
title: 'Learn some command line: using du, df, file, find to make your life easier'
authors: 'Anthony Taylor'
published: '2007-03-05 19:09:29'
tags: 'command-line,utilities,find,du'
license: verbatim_only
section: hacking
listed: 'true'

---
I love the command line. If the command line were a dog, it would be a hard-headed labrador: big and somewhat intimidating, but really kind of even-tempered and friendly once she gets to know you.

I just compared the command line to my dog Roscoe. I love them both, and they both frustrate me.

I can't do much with Roscoe, but I can help out a bit with the command line. And so allow me to introduce four of my favorite utilities: _df_, _du_, _file_, and _find_.


<!--break-->



# Filesystem sizes with df

This one is easy. According to the man page, _df_ stands for, "report file system disk space usage." I say it stands for, "disk free." But what do I know?


=CODE_START=

$ df -h

=CODE_END=

The _-h_ tells _df_ to report in human-readable numbers. Here, "human-readable" means "human-readable if you know the difference between G and M and K." You can also use _-k_ (report in kilobytes) or _-m_ (report in megabytes) if you desire. It's all up to you.

_df -h_ gives up something like this:


=CODE_START=

Filesystem            Size  Used Avail Use% Mounted on
/dev/sda2             7.4G  4.6G  2.4G  66% /
varrun               1014M  128K 1014M   1% /var/run
varlock              1014M     0 1014M   0% /var/lock
procbususb           1014M  108K 1014M   1% /proc/bus/usb
udev                 1014M  108K 1014M   1% /dev
devshm               1014M     0 1014M   0% /dev/shm
/dev/sda4              61G  7.3G   51G  13% /home
/dev/sda1              40G   17G   23G  43% /media/sda1
/dev/scd0             7.8G  7.8G     0 100% /media/cdrom0

=CODE_END=

The first column is the device. For disks, this will be something like /dev/sda_n_, or /dev/hda_n_, where in a small number. Those other filesystems with names like udev or devshm or varrun are OS-specific. This output was taken from a GNU/Linux box running a 2.6.20 kernel.

The middle three columns show the total size, the amount used, and the amount avialable, just like the title says. The Use% column indicates the total percentage used. Generally, you don't want that to read 100%, except for CDs and DVDs, which will _always_ show 100%. The final column tells you where in your directory hierarchy the filesystem is mounted.

That's if for the Very Short Tour of _df_.


# Directory sizes with du

Suppose _df_ reports a filesystem is full, and you need to find the culprit fast. Let's say for illustrative purposes the filesystem is /home. Here's one of my favorite commands of all time:


=CODE_START=

$ du -k /home | sort -n

=CODE_END=

Now, technically that's two commands. _du_ stands for "estimate file space usage," though I hate the word "usage," because "use" will almost always work instead. I like to call it "disk use," for hopefully obvious reasons. The _-k_ specifies reporting in kilobytes, rather than filesystem blocks. You can also use _-m_, which specifies megabytes, if you like smaller numbers. _Do not use the -h option._ _-h_ means, "print in human-readable form," which will break our nifty sort operation.

The '|' (official name: "bar thingy") means "pipe." "Pipe" means, "take the output of this command, and pass it to the next command." In even simpler terms, this means "route STDOUT (standard out) of the first program to STDIN (standard in) of the next program."

_sort_ sorts lines of data, just as the name implies. It isn't short for "somehow order random text" or anything like that. It just means, "sort." The _-n_ option specifies to sort as if the first word were a number, rather than to sort it ASCIIbetically. For fun, try the sort without the _-n_. You'll quickly observe that "1" sorts before "101" which sorts before "2." For our purposes, the _-n_ is quite important.

On my machine, that command gives this output:


=CODE_START=

4       /home/tony/.config/xfce4/orage
4       /home/tony/.config/xfce4/xfwm4
4       /home/tony/docs/fsm
4       /home/tony/docs/stories/speleology
4       /home/tony/.gimp-2.2/brushes
     .
     .
     .
512564  /home/tony/src
685672  /home/tony/tmp/zips
714508  /home/tony/tmp/iso
789240  /home/tony/tmp/tony
813236  /home/tony/video/roscoe
881512  /home/tony/video/family
1694756 /home/tony/video
3835596 /home/tony/tmp
7442492 /home/tony
7442496 /home

=CODE_END=

As you can see, I have a lot of stuff in _/home/tony/tmp_. I would look there for things to remove to free up space.


# What kind of file is it?

Unlike some operating systems, GNU/Linux (and Unix-like operating systems in general) don't use filename extensions to determine the type of a file. So, a text file does not have to end in .txt, and a jpeg-encoded image file does not have to end in .jpg. Instead, there is a nifty utility called _file_ that will report the filetype for you.

It's really pretty easy to use:


=CODE_START=

$ file blah.c
blah.c: ASCII C program text

=CODE_END=

It's really that simple.

Of coure, it uses magic. _/etc/magic_. Really. I'm not kidding.


# Finding files

Find is one of the unsung heroes of the Free software world. Many do not appreciate the functional finesse, the streamlined beauty of this perfect utility. Find can search for files based on name, on size, on ownership, on permissions, on modification time, on access time, on... well, just about anything. Combined with other utilities, you can search on content or file type.

For instance, to find all files ending in .c:


=CODE_START=

$ find /home -name \*.c -print

=CODE_END=

The _/home_ tells find to start the search in the /home directory. The _-name \*.c_ specifies the pattern for which to search. The _\*_ means "anything," followed by _.c_, which means just that: search for anything ending in _.c_. The _-print_ is the "predicate;" that is, the action we wish to perform on the things we find. We can do more than just print out filenames.

This gives the following output:


=CODE_START=

/home/tony/src/gnome/gnome-columns/src/jewel.c
/home/tony/src/gnome/gnome-columns/src/texture.c
/home/tony/src/gnome/gnome-columns/src/renderable.c
/home/tony/src/gnome/gnome-columns/src/rectangle.c
/home/tony/src/gnome/gnome-columns/src/gnome-columns.c
/home/tony/src/gnome/gnome-columns/src/gameboard.c

=CODE_END=

(There was really a lot more output, but I wanted to keep the display simple.)

Search for files that have been recently changed:


=CODE_START=

$ find . -ctime -1 -print

=CODE_END=

This time I specified the start directory as ".", which is the current directory. I've specified the search criteria as _-ctime -1_, which means "change time, less than one day ago. Again, I specified print. Here is the output:


=CODE_START=

.
./blah

=CODE_END=

It returned only one file, _blah_. How boring.

Let's do something a little more interesting. Let's look for all PDFs in my home directory:


=CODE_START=

$ find ~ -exec file {} \; | grep PDF

=CODE_END=

I commanded find to start in my home directory by using the squiggly, '~'. (Actually, it's called a "tilde.") Then I specified it to execute a command, using _-exec file {} \;_ The _-exec_ is a predicate to cause _find_ to execute a command, in this case, _file_. The '{}' bit means, "substitute the filename here." When _find_ generates the command, it'll be something like, "file ~/stupidname.ext". The '\;' bit marks the end of the executable command. Then I pipe the output to grep, which prints only the lines containing "PDF".

There are better ways of doing this, especially using a command called _xargs_, but I don't cotton to those new-fangled methods. Well, I do, but you must first learn to crawl before you can fly on the space shuttle.

Here's the output:


=CODE_START=

/home/tony/src/beerhacker/Documentation/BeerXML_v2_01.pdf: PDF document, version 1.3
/home/tony/src/e17/docs/ewlbook/pre-rendered/ewlbook.pdf: PDF document, version 1.3
/home/tony/src/e17/docs/ewlbook/pre-rendered/ewlbook.es.pdf: PDF document, version 1.3
/home/tony/src/e17/docs/cookbook/pre-rendered/eflcookbook.pdf: PDF document, version 1.3
/home/tony/src/e17/docs/cookbook/pre-rendered/eflcookbook.fr.pdf: PDF document, version 1.3
/home/tony/src/e17/docs/cookbook/pre-rendered/eflcookbook.es.pdf: PDF document, version 1.3
/home/tony/src/e17/docs/cookbook/pre-rendered/eflcookbook.pt-BR.pdf: PDF document, version 1.3

=CODE_END=

Finally, let's use _find_ to delete all our old emacs backup files. **WARNING! DANGER, WILL ROBINSON! THIS IS VERY DANGEROUS!** Be very careful when using _find_ do do file manipulation. _Always_ print out the results of _find_ before executing a dangerous command.

First, do this:


=CODE_START=

$ find . -name \*~ -print

=CODE_END=

This prints all the files that end in ~, starting in the current directory. Once you are sure you won't miss these files, do this:


=CODE_START=

$ find . -name \*~ -exec rm {} \;

=CODE_END=

That's it! You are now wise in the ways of a couple of minor file utilities. As always, enjoy playing around with them. Be safe. Don't run with scissors, or shave with a rusty razor. Remember that cats have five pointy ends, and that with powerful knowledge comes powerful responsibility. Don't abuse these tools, and they will treat you right until the end of your days.

