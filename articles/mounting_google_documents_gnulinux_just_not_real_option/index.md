---
nid: '3646'
title: 'Mounting Google Documents in GNU/Linux is just not a (real) option'
authors: 'Tony Mobily'
published: '2012-01-02 4:10:57'
license: verbatim_only
section: hacking
main_image: gd.jpg
listed: 'true'

---
If you use Google Documents, you might want to be able to access your files without using a browser. So, I was all set, happy to write a good blog entry about how to mount your Google Documents folder on your Ubuntu. (This is not a very free-software thing to do, granted. But then again, if you are an Ubuntu One user, well, [Ubuntu One server isn't free software either](https://bugs.launchpad.net/ubuntuone-servers/+bug/375272). But, it's a service, and interfacing to things is crucial.)

So, is it actually possible?

Well, the short answer, if you want to use Google Documents as a file system, is simple: "forget it". The reality is that Google Document is just not meant to be used in any way other than within your browser; it's not an online storage service: it's a fully lock-in proprietary document management service.

Let's see why.

# Installing google-docs-fs

[Google-Docs-Fs](http://code.google.com/p/google-docs-fs/) is written in Python. This seems to be a good start, since Google users Python a lot internally @ Google. It's the best option if you want to access Google Documents straight as a file system.

First of all, in the project's home page you are presented with two files:

* google-docs-fs-1.0rc1.tar.gz
* google-docs-fs-1.0rc1_all.deb

Before you jump ahead and install things, you will need to install the underlying needed library: python-gdata. If you click on "All downloads", you will also see a handy link to the libraries needed by this package:

* python-gdata_2.0.14-1_all.deb

**HINT**: Install the package "python-gdata" from your own distribution, and _not_ the one provided by the maintainer. There are different versions of Python, and if you are using the latest Ubuntu, for example, the provided package will install for the wrong version of Python, and nothing will work.

At this point, you will need to install google-docs-fs itself. Again, I tried the .deb provided by the author, but in my latest Ubuntu the installation was for Pythin 2.6. So, I had to go the manual way: I downloaded google-docs-fs-1.0rc1.tar.gz, unzipped it, and installed it:

=CODE_START=

merc@merc-ThinkPad-Edge-13-IAL:~$ wget http://google-docs-fs.googlecode.com/files/google-docs-fs-1.0rc1.tar.gz

[...]

2012-01-02 11:48:32 (36.5 KB/s) - `google-docs-fs-1.0rc1.tar.gz' saved [13880/13880]

merc@merc-ThinkPad-Edge-13-IAL:~$ tar xvzf google-docs-fs-1.0rc1.tar.gz 
google-docs-fs/
[...]
google-docs-fs/googledocsfs/__init__.py
google-docs-fs/googledocsfs/gFile.py

merc@merc-ThinkPad-Edge-13-IAL:~$ cd google-docs-fs/
merc@merc-ThinkPad-Edge-13-IAL:~/google-docs-fs$ sudo ./setup.py install[sudo] password for merc: 
running install
running build
running build_py
running build_scripts
running install_lib
running install_scripts
changing mode of /usr/local/bin/gumount to 775
changing mode of /usr/local/bin/gmount.py to 755
changing mode of /usr/local/bin/gmount to 775
running install_egg_info
Writing /usr/local/lib/python2.7/dist-packages/google_docs_fs-1.0rc1.egg-info
merc@merc-ThinkPad-Edge-13-IAL:~/google-docs-fs$ 

=CODE_END=

At this point, you are ready to use it.

# Using google-docs-fs

First of all, create a directory called "google" in your home directory running the command `mkdir ~/google`.
At this point, run the command `gmount google YOUREMAIL@gmail.com` (obviously, YOUREMAIL is your email address). You should be prompted with a password request: type it in, and you should be good to go.

Notice the "should".

The response time is quite slow: browsing between directory can be really quite painful even with a pretty fast connection.
If you used Google Docs, you know that it has different types of files: "uploaded" ones (which are not changed), and the "managed" ones (which can be edited by multiple people at the same time: for example Documents, Spreadsheets, Presentations, etc.). This is all great while using the web interface, but definitely gets in the way when you are trying to use it as a file system.

For example, create a file called "file.txt". Write something on it. Then save it, and quit. Relax: It will take you a little while to make this happen. The result of this operation is not what you would expect: when you see the directory listing again, you will see "file.txt.doc" in the folder. Google Documents actually _converted_ the file into a DOC file! (Why the silent conversion? And why not ODF?)

Browsing the file system, I also noticed that files that I had created as .txt are actually .txt.doc (although Google's interface hides this from me when I am browsing the files using its browser).

# Final thoughts

Only one thought: don't. I am writing these finishing lines as the module hanged on me and I had to reboot my computer to get rid of the share. It's very slow to use, and the "background work" done by Google just gets in the way too much.

Google Documents is a proprietary service for advanced document management. Using it as storage is like trying to fit a circle into a box. It might fit eventually, bit it just won't work right.

=TEXTBOX_START=The failed paths=

While writing this article, I stumbled upon a few dead ends. Here they are.

# (No) Way #1: gdocsfs

[GDocsFS](http://code.google.com/p/gdocsfs/) is written in Java.  Before you get too excited about it, have a look at [this post](http://code.google.com/p/gdocsfs/issues/detail?id=11) -- in the 1st of December 2011, the author writes:

> Comment 9 by project member jonhnnyw...@gmail.com, Dec 1, 2011
> Hi guys,
> 
> Excuse me for not responding this issues, now I'm using github for a while and forgetting to take a look here. Since this project is being used I will reactive it, maybe I will rewrite it from the scratch and implement some requested features like write support. but the source code will be hosted on github. Besides write support what other features could be added? I have created an issue to collect suggestions here http://code.google.com/p/gdocsfs/issues/detail?id=12 . possibly we have a beta version still in this year.  

It's read-only, and the developer "might" rewrite it in the future.

# (No) Way #2: Google Doc Mount (GTK)

[Google Doc Mount](http://doctormo.org/2010/07/20/google-doc-mount/) is meant to be a GTK application that allows you to easily mount your Google Docs file system, using just the GUI.

Before you get too excited: the package doesn't seem to be available once you have added the PPA using the command line.

Reading the project page, you read:

> Now be warned, if you try this, remember that it’s not a supported piece of software, bugs aren’t likely to be fixed (unless you fix them of course) the code is available and it should work on Lucid. It won’t be ported to any other versions (at least by me) but it should be easy to recompile everything for other versions anyway.

The latest comment by the author is even clearer:

> doctormo says: 2011-06-11 at 15:55
> Aproposnix: It was never maintained to begin with, it was and still is a proof of concept which may or may not still work. Some people have reported success simply installing the deb file for the first release. It was never a project, just an experiment to prove it could be done.
=TEXTBOX_END=

