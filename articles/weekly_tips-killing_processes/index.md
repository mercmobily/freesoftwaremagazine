---
nid: '2382'
title: 'How to kill processes with GUIs'
authors: 'Andrew Min'
published: '2007-06-24 6:30:00'
tags: 'kill,process,ksysguard,system-monitor,psdoom'
license: verbatim_only
section: end_users
listed: 'true'

---
One of the things I hate about Windows is that there is no good way to kill frozen processes.  Theoretically, you type Ctrl-Alt-Delete, wait for Task Manager to pop up, and kill the process.  But in reality, the process doesn't always die immediately (it usually takes multiple tries and a very long time).  GNU/Linux users don't have this problem.  Here's how to end processes using the terminal, a few GUIs, and even a first person shooter.


<!--break-->



# Killing processes in the terminal

The terminal (also known as the command line) is the most powerful tool for virtually any job.  So let's look at how to kill processes with it.  First, open your favorite terminal program (`konsole` for KDE, `gnome-terminal` for Gnome, and `xterm` are some good ones).  Then, type `ps -A` (**not** `ps -a`).  This gives you a listing of all the programs currently running and their PID.  To kill a program, type `kill PIDHERE`, replacing PIDHERE with the PID of the program as shown by ps.  See figure 1 for an example.  Note that sometimes you will get error messages when trying to kill a program.  If you do, you must kill the program as root (`sudo kill PIDHERE` or `su` and then `kill PIDHERE` depending on the operating system).


=IMAGE=figure_1.jpg=Figure 1: Killing Pidgin using ps and kill in xterm=

Often, the searching through ps's output is like searching for a semi-colon in a 5MB source file.  Luckily, if you know the name of the program, it's easy to find it.  Instead of typing `ps -a`, type `ps -A | grep NAMEHERE`, replacing NAMEHERE with the string you want to find.  For example, if I typed `ps -A | grep fire`, all the processes with the string `fire` in them would be listed.  You can also add the `-i` flag to grep (so you'd type `ps -A | grep -i fire`) to make the search string case insensitive.


# Killing processes with GUIs

Both KDE and Gnome provide their users with GUIs for killing processes.  In KDE, run KSysGuard (many distributions also use Ctrl-Esc).  Just click on the tab, "ProcessTable", select the item, and click "Kill".  In Gnome, open System Monitor (aka [Gnome System Monitor](http://freshmeat.net/projects/gnome-system-monitor/)), select the "Processes" tab, select the item, and hit "End Process".  If you can't kill the process, try running the KSysGuard or Gnome System Monitor as root (see previous paragraph for more).

If you just want to kill an inactive window without having to dig up a PID or running a bloated GUI, there's an option called xkill.  Just open a terminal, and type `xkill`.  Click on a window, and it will be killed (right-click to cancel).  KDE users can also type Ctrl-Alt-Esc to bring up xkill.


# A bonus: killing processes and having fun

If you really want to "kill" a process, then you need to try [psDooM](http://psdoom.sourceforge.net/) (figure 2).  Download (make sure it isn't a patch, but a source or a binary) and install it, copy an IWAD ([Freedoom](http://freedoom.sourceforge.net/) has a few available) into wherever you installed psDooM (usually `/usr/local/games/psdoom`), and then run one of the executables located in the folder.  Now, when you get mad at the world, all you have to do is open up a Microsoft product in WINE, and then shoot it.


=IMAGE=figure_2.jpg=Figure 2: Literally killing processes in psDooM=


# Conclusion

You now know how to kill a process with the terminal, kill a process with KSysGuard, Gnome System Monitor, or xkill, and even shoot a process!  Next time a Microsoft user complains about his system freezing, all you have to do is grin and show him GNU/Linux.

