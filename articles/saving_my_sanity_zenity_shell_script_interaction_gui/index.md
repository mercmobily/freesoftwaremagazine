---
nid: '3093'
title: 'Saving my sanity with Zenity : shell script interaction via the GUI'
authors: 'Ryan Cartwright'
published: '2009-01-30 3:26:08'
tags: 'programming,gui,shell,zenity'
license: verbatim_only
section: hacking
listed: 'true'

---
Whilst an increasing number of recent converts are avoiding it (and I don't blame them really), the shell is still a key tool for the majority of GNU/Linux users. Shell scripts are knocked-up, shared and deployed in all sorts of circumstances -- some simply time-saving, others life-saving. But even if the shell script has been written by somebody else, running it can be a cumbersome and frightening exercise for users of lesser experience or confidence. How do we bring the flexibility of the shell script to the GUI-only user? Recently faced with just such a quandary, I discovered Zenity: a tool which just might have saved my sanity.

# What's a shell and why does it need a script?

Before I get ahead of myself, the shell is an interface with which you can enter commands to your computer. There are no widgets, drop-downs or buttons - just a place to type commands. On Windows boxes the shell is often called the command line (or CLI). On most GNU/Linux systems the shell will be what you see and use if you open a terminal. Shell scripts are text files containing shell commands and their parameters to be run in a certain order. Although there are some slight differences, in general the commands you type in a terminal can be put into a script and you get your system to run them by calling said script. Shell scripts can also be interactive: asking for input and decisions from the user before proceeding on a particular course.

# Running scripts from the GUI

You can run shell scripts from the GUI of course: place a short-cut to one on your Desktop and it will execute itself in the background or in a terminal window (at your preference) when you run it. The problem is that for a GUI user is that the interaction is so different to the rest of your computing experience. In my experience, users accustomed to a dialog with Yes/No buttons can find themselves stumped by a black window with a bunch of white text, the last line of which says something like `Interface not found: proceed (Y/N)?`.

=IMAGE=figure1.jpg=Examples of Zenity dialogs=

Zenity is not a unique tool (it's similar to `dialog` and `Xdialog` etc.) and not the first of its kind either, but it is very usable. The [FSF directory page](http://directory.fsf.org/project/zenity/) says that _"Zenity lets you display Gtk+ dialog boxes from the command line and through shell scripts"_ and I can find no better way of summarising it. Put another way though, Zenity allows a shell script to interact with a GUI user in a mutually beneficial way. Sometimes your shell script needs to ask the user a question: Zenity gives them a familiar dialog window and accepts the answer accordingly. The end user need not even be aware that they are running a shell script.

# Hello world!

As mentioned, you can put shell commands into scripts to be executed. The same applies the other way around. You can take a script command and run it directly in the shell if you want. In the case of Zenity this is less useful unless you are doing for testing purposes though. To give a simple example in the standard fashion this is how you would get Zenity to display an information dialog. Assuming you have Zenity installed (it's a package on most GNU/Linux systems so just search for it in your usual package/software manager), type this directly into a GUI terminal emulator (xterm etc.) and see what you get:

=CODE_START=
zenity --info --text "Hello World\!"
=CODE_END=

If you put that into a shell script with a shortcut to it on the desktop, you'll get the same result without the need for a terminal window. That's all well and good, but not very interactive. Zenity, of course, can do more than information dialogs. Give it the question parameter and you get something more useful. `zenity --question --text "Do you want to proceed?"` gives you a question dialog which returns 0 or 1 when the user clicks the Ok or Cancel buttons accordingly. Remember that Zenity is designed for simple interaction with shell scripts, so you are limited to the OK/Cancel button labels. In practice this means wording your question nicely or explaining in the dialog text the effect each button will have. If you need something more, then you might need to look at reworking your script into a GUI-capable language (say Python for example). Other dialog types for Zenity include calendar, file open/save, progress indicator and warnings. In other words: if there was some interaction your shell script wanted with the end user you can probably replicate it in a Zenity dialog.

# How Zenity saved my sanity

A colleague of mine has recently acquired an Asus EeePC 4g and very pleased she is with it too. I understand it receives significant green eyed glances from sales reps with their desktop replacements on train journeys. Recently she acquired a mobile broadband (3G) dongle to give her web connection when away from the office or a wireless hotspot. The USB device came with a (albeit binary -- I'm working on a free solution) GNU/Linux driver on the accompanying CD and also one specifically labelled for the EeePC -- result. The only problem was that the driver needed to be [un]loaded manually by a shell script each time you want to use it. Whist a udev solution is possible, we didn't want the modem to connect up each time the dongle was plugged it. In addition the script allows for re-connecting and dropping the connection. The shell script provided does quite a bit and present a simple and fairly straightforward set of parameters: up, down and restart. It did need superuser privileges but `sudo` took care of that.

The problem here is that my colleague wasn't really the sort who would relish pressing `Ctrl+Alt+T` to get a terminal up and them entering `sudo /path/to/connectionscript.sh up` just to connect to the Internet (and then remember to replace `up` with `restart` if the connection had dropped). Another problem was that the provided script had no logging facilities and in order to later diagnose any issues I wanted to log some details of the connections when made. Finally, when you called the script to connect up, there was some delay in feedback until the connection was made which I felt could have made inexperienced users nervous. Keen to improve on the user experience provided by the script I wrote a wrapper script which detected whether the connection was up or down (and whether it had been dropped without the user's knowledge). Based on that it then asked the user to confirm what it was about to do and called the original script, piping the output to a log-file.

It worked a treat: the user now needed to remember a single command to connect, re- or dis-connect the connection. It was still a shell command and still required the terminal invocation. I could put a desktop icon on but the user still encountered the "weird black screen" (as I have heard it called). Zenity saved my brain here. I discovered it via googling and immediately I was able to replace all my user interaction with zenity calls. Now the script is run from a desktop icon, it detects if the connection is live, closed or dropped and asks the user to confirm what she wants it to do. It then provides a progress bar dialog while it attempts to do what she asked. Upon completion it gives her either a successful info dialog, a warning or an error. Everything is logged as I needed (managed by `logrotate` of course ) and the user is more than happy.

# That's not all folks!

In the second part of this piece, I'll delve a little deeper into how to achieve what I did with Zenity. So expect more on progress, error, warning and question dialogs. If this has whetted your appetite, search on-line for `zenity examples` as I did. There is some good stuff out there.
