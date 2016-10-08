---
nid: '2802'
title: 'Getting help: the powerful man(ual)'
authors: 'Andrew Min'
published: '2008-04-07 0:18:11'
tags: 'documentation,man,manual'
license: verbatim_only
section: opinions
listed: 'true'

---
Let's face it: GNU/Linux software is not always easy to use. Especially command line software (at least the GUI programs have buttons and tooltips). Sometimes, the program will have a manual or some documentation at its homepage, but that is not always the case. The solution? The magical `man`.

<!--break-->

# man: the terminal solution to almost all problems

In the beginning, there was no coherent manual reading program. Manuals were scattered everywhere, if they even existed. Then, the first manual pages (shortened to man) were written by Dennis Ritchie (creator of the C language and UNIX pioneer) and Ken "ken" Thompson (creator of the B language which was surpassed by C and UNIX pioneer). Now, thirty-five years later, virtually every terminal program and most graphical programs have a manual in the manpage format.

You're probably thinking, "fun history lesson, but this doesn't help me at all". Well, it's now time to get to the program that was created to read these manuals: man. You don't have to worry about installing it (if you are running an modern UNIX/Linux operating system, you have it installed). All you need to do is open a terminal and run `man program_name_here`, where `program_name_here` is the name of the program in lowercase (e.g. `man firefox`). You will then be presented with the program's manual. You can use the arrow keys, the page up and page down keys, and the home and end keys to navigate. To exit, just hit the `q` key and you will be taken back to the console. Here's what the first page of the `wget` manual looks like:

=CODE_START=
WGET(1)                GNU Wget                    WGET(1)

NAME
       Wget - The non-interactive network downloader.

SYNOPSIS
       wget [option]... [URL]...

DESCRIPTION
       GNU Wget is a free utility for non-interactive download of files from the Web.  It supports HTTP, HTTPS, and FTP protocols, as well as retrieval through HTTP proxies.

       Wget is non-interactive, meaning that it can work in the background, while the user is not logged on.  This allows you to start a retrieval and disconnect from the
       system, letting Wget finish the work.  By contrast, most of the Web browsers require constant user’s presence, which can be a great hindrance when transferring a lot
       of data.
[...]
=CODE_END=

=IMAGE=figure_1.jpg=Figure 1: the beginning of the wget manpage=

# Yelp: a wonderful help viewer for Gnome

Obviously, the man viewer is kind of hard on the eyes. A better way is to use a graphical man viewer. [Yelp](http://live.gnome.org/Yelp) (also known as _Help_ or H_elp and Support_ or _Help Center_ in some distributions) fits this niche beautifully for Gnome users. It's actually more than just a man viewer; it views DocBook, man, and infopage documents as well as FAQs provided by the distribution. To use it, just type the program's name (it doesn't even have to be in lowercase) in the search bar and you will be presented with a long list of results. Look for the manual page (e.g. `wget manual page`) and click on that result. You'll find the same manual... but a whole lot easier to read.

=IMAGE=figure_2.jpg=Figure 2: wget page in Yelp=

# KDE Help Center: Yelp for KDE

If you're a KDE user, you probably won't want to be using Yelp. Instead, you should use the KDE Help Center that ships with KDE. Just type in the program name (again, it doesn't have to be in all lowercase) in the search box, make sure `UNIX manual pages` is checked under the _Scope_ section, and hit the _Search_ button. Under the `UNIX manual pages` heading, look for the program you searched for (e.g. `wget - The non-interactive network downloader.`) and click on it. You will be presented with a very nice looking page rendered by Konqueror.

=IMAGE=figure_3.jpg=Figure 3: wget page in the KDE Help Center=

# Konqueror: an alternative, less cumbersome man viewer for KDE

I personally find the KDE Help Center to be really clumsy. To me, the better alternative is using Konqueror, the KDE web browser and file manager (though the latter part will be replaced by Dolphin in KDE 4). After all, it's really Konqueror doing the rendering in the KDE Help Center. To use Konqueror to read a man page, just type `man:program_name_here`, where again `program_name_here` is the program in lowercase letters. You can also search for your program by going to `man:/` and looking in the different sections. It's a really nice way to quickly access a manpage without the bells and whistles of KDE Help Center.

=IMAGE=figure_4.jpg=Figure 4: wget page in Konqueror=

# Die.net man viewer (and many other sites)

The final way to view a manpage (and the best way if you aren't using KDE or Gnome) on UNIX operating systems is using a website. There are many websites that do this, but for this example I'll use the Die.net site at [http://linux.die.net/man/](http://linux.die.net/man/). Just type the name of the program in the Die.net site search and you will be presented with a Google-powered result list. This is also a great way to view a program's manual without installing it, as all the other options on this list require you to have that program installed.

=IMAGE=figure_5.jpg=Figure 5: The Die.net man viewer=