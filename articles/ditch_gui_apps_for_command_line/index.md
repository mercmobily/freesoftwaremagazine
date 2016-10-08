---
nid: '2466'
title: 'How to completely ditch GUI internet applications for the command line'
authors: 'Andrew Min'
published: '2007-11-19 10:21:37'
tags: 'gui,command-line,terminal'
issue: issue_20
license: cc-by-sa
section: end_users
listed: 'true'

---
Today, terminal-based programs have almost disappeared. GUIs are taking over, whether we like it or not. However, there is still a place for the old command line. Take the internet as an example: everyone’s using Firefox, Thunderbird, and Pidgin for their internet activities. Even though these are great, quality, free software apps, they tend to be bloated. That’s where the terminal comes in.


# Introduction

Since most of this article is for the internet, having an internet connection might be useful. Also, you’ll probably need a computer (preferably running GNU/Linux, as many of these programs don’t run on Windows or OS X). Finally, you’ll need a terminal emulator (which most GNU/Linux distributions come with). Windows users have `cmd.exe`, Mac users have Terminal, GNOME users have `gnome-terminal`, KDE users mostly use `konsole`, and Xfce users often use `xfce4-terminal`. Most operating systems also install `xterm` or some other terminal program. If your operating system doesn’t have any of these (something I would find hard to believe) there is a list of terminal apps [at Wikipedia](http://en.wikipedia.org/wiki/Terminal_emulator#Examples_Of_Terminal_Emulators). And if _none_ of these are installed on your system (something I would find _extremely_ hard to believe), you can always install one using your package manager. As a last resort, try typing `Ctrl + Alt + F1` to exit KDE, GNOME, Xfce, or whatever desktop environment you are using (use `Alt + F7` to go back).

If you are told to run something in `this kind of text`, then that means you should copy it into the terminal and hit enter (unless it’s a hotkey like `c`. In that case, just type `c` into the terminal and it will run automatically).


# Lynx: web browsing from the terminal

_Homepage: [http://lynx.browser.org/](http://lynx.browser.org/)_

Back in 1989, a text browser that could browse HTTP and Gopher protocols was born. That browser is still around today. It’s called Lynx. There is absolutely no GUI. All it is is a terminal app with a few different colors. It handles most HTML, supports SSL, and much more. You can even download pictures and movies to view with an external application (like MPlayer). You can use it on servers (which often have no GUI), low resource machines, or just for connecting to the web without all the frills of Firefox. It’s available for Windows, GNU/Linux, and Macintosh (via a fink [package](http://pdb.finkproject.org/pdb/package.php/lynx) or an [unofficial build](http://www.apple.com/downloads/macosx/unix_open_source/lynxtextwebbrowser.html)).


=IMAGE=figure_1.jpg=Figure 1: Browsing Newsvine.mobi with Lynx=


# wget: Text-based downloader

_Homepage: [http://www.gnu.org/software/wget/](http://www.gnu.org/software/wget/)_ 

Sometimes when downloading a file you don’t need all the bloat of a full download manager like KGet. That’s why I like wget, an HTTP(s) and FTP downloader for Windows and GNU/Linux (with an [unofficial build for Mac OS X](http://www.statusq.org/archives/2005/02/22/610/). It supports incomplete downloads, HTTP or FTP mirroring, proxies, and much more. Just type `wget [URL]`, replacing `[URL]` with the URL of the file, e.g. `http://mirror.cc.columbia.edu/pub/linux/ubuntu/releases/kubuntu/feisty/kubuntu-7.04-desktop-i386.iso`, and the Kubuntu CD image will start downloading. You can also use `wget` to mirror sites with the `-m` flag.


=IMAGE=figure_2.jpg=Figure 2: Downloading Kubuntu Feisty with wget=


# rtorrent: Torrents without a user interface

_Homepage: [http://libtorrent.rakshasa.no/](http://libtorrent.rakshasa.no/)_ 

Sometimes, it’s faster to download a file with the BitTorrent technology than wait for the six thousand other users to leave.


<!--pagebreak-->


But you don’t always need the chrome and glass of KTorrent or Deluge. Also, GUIs can hog more system resources. That’s why rtorrent was created. It’s a torrent client for GNU/Linux (or Macintosh with an [unofficial port from Mac OS Forge](http://trac.macosforge.org/projects/macports/browser/trunk/dports/net/rtorrent)) that runs in the terminal and claims to seed up to 3 times the speed of the official BitTorrent client. Just open `rtorrent` and type in the URL of the torrent.


=IMAGE=figure_3.jpg=Figure 3: rtorrenting the Kubuntu Feisty torrent=


# Mutt: email without a GUI

_Homepage: [http://www.mutt.org/](http://www.mutt.org/)_ 

I personally love Thunderbird. However, like most Mozilla apps, it can be rather slow. Luckily, we have Mutt for GNU/Linux (and unofficially, [Windows](http://www.geocities.com/win32mutt/win32.html) and [Macintosh](http://linsec.ca/Using_mutt_on_OS_X) as well). It’s a small email client that runs in the terminal. All you do is run it (`mutt`), type `c` to open a mailbox, and type in the location of the mailbox. For connecting to a remote POP box, type something like `pop://username@mail.example.com/` (`pops://username@mail.example.com/` for SSL). For example, if I had the Gmail account andrewmin@gmail.com, I would connect to Gmail by typing `pops://andrewmin@pop.gmail.com`. You can also connect to IMAP, mbox, Maildir, MH, and NFS.


=IMAGE=figure_4.jpg=Figure 4: Checking my Gmail with Mutt=


# Finch: IM. No interface required

_Homepage: [http://developer.pidgin.im/wiki/Using%20Finch](http://developer.pidgin.im/wiki/Using%20Finch)_ 

If you don’t live under a rock, you’ll know what Pidgin (formerly GAIM) is: it’s a GNU/Linux program that lets you connect to the multiple instant messaging networks. But what most people don’t realize is that there is a command line version of it called Finch (the older version is called gaim-text) and it is usually bundled with Pidgin. Just open it up, and start typing! You switch between chats (and the buddy list) using `M - n/M - p` to go to the next/previous window.


=IMAGE=figure_5.jpg=Figure 5: Chatting with myself in gaim-text. Yes, I was extremely bored=


# Snownews: RSS reading, terminal style

_Homepage: [http://kiza.kcore.de/software/snownews/](http://kiza.kcore.de/software/snownews/)_ 

Want to catch up on the latest headlines, but don’t want to fire up a full GUI just to do it? Then Snownews is for you. It’s an RSS reader that supports proxies, update checking, keybindings, categories, plugins, and even a built-in web browser. All from the command line. To run it, type `snownews` (typing `h` brings up the help window with some helpful commands to get started). You can even import and export OPML files with the bundled app `opml2snow` (run `opml2snow -h` for a short help).


=IMAGE=figure_6.jpg=Figure 6: Reading the Newsvine.com feed with Snownews=


# Conclusion

By now, you can see that the terminal is a powerful tool—and I’ve hardly scratched the surface of it. There are tons of alternatives to the programs I mentioned, including [cURL](http://curl.haxx.se/) (a robust download manager), [Links](http://links.sourceforge.net/) (a browser), [ELinks](http://elinks.or.cz/) (another browser based on Links), [W3M](http://w3m.sourceforge.net/) (yet another browser), [MPlayer](http://www.mplayerhq.hu/) (terminal media player), [Irssi](http://www.irssi.org/) (IRC client), and [naim](http://naim.n.ml.org/) (an AIM/ICQ/IRC/CMC instant messenger).


# Further reading


* [CLI-Apps.org](http://cli-apps.org/)
* [Command Line Warriors](http://commandline.org.uk/category/command-line/)
* [Wicked Cool Shell Scripts](http://www.intuitive.com/wicked/index.shtml) (book review [here](http://www.freesoftwaremagazine.com/articles/book_review_wicked_cool_shell_scripts)).
* [A beginner’s introduction to the GNU/Linux command line](http://www.freesoftwaremagazine.com/articles/command_line_intro)

