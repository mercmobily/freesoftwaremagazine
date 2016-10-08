---
nid: '3748'
title: 'Write a simple launcher using Zenity'
authors: 'Bob Mesibov'
published: '2012-05-24 9:29:46'
tags: 'zenity,shortcuts,launcher'
license: verbatim_only
section: hacking
main_image: main.png
listed: 'true'

---
Nowadays, we mostly interact with our computers using a Graphical User Interface. The operating system as a whole uses several elements of the GUI to make the user experience more human-like. Can users get to unleash some of the GUI's power? The answer is yes: welcome to Zenity, a GTK+ application that works in GNU/Linux, BSD and Windows. In this short article I will show you how to create a simple script that interacts with the user using the GUI.

# The problem

Imagine you're changing your computer or your GNU/Linux distribution. All your data files are in your home directory, so you copy them to an external drive. You do the changeover, plug in the external drive, copy your data files into the new home directory, and you're all set to go.

Except for one thing. On the old machine, distro or desktop environment, you had shortcuts to a lot of frequently accessed files, like a household accounts spreadsheet or a favourite piece of music. The shortcuts might have been desktop icons, or a menu list in a launcher, whatever, but they're gone now, and you have to rebuild them.

Or do you? How would you like your shortcuts to be portable, so you could have the same favourites launcher regardless of which Linux distro or which desktop environment you move to?

# The solution: Zenity meets xdg-open

=IMG=1.png==

The first screenshot shows what you will build in this short article: a favourites launcher written with the wonderful [Zenity](http://en.wikipedia.org/wiki/Zenity).

All you need to do is click on a favourite, then either click _OK_ or press _Enter_ on your keyboard. The chosen file will then open in the default program for that file type. That means a spreadsheet will open in your default spreadsheet program, an audio track will open in your default music player, and a website will open in your default browser.

For this handy behaviour we can thank `xdg-open`, a command line tool. One way Zenity and `xdg-open` can be combined is shown here.

Copy the code below and paste it into a text editor, save the file as `favourites.sh`  somewhere in your home directory (mine is in a folder called _scripts_) and make it executable.

=CODE_START=
#!/bin/bash

file=$(zenity --width=360 --height=320 --list --title "Favourites" --text "Open..." --column File "Current accounts" "2012 Christmas letter" "Flecktones – Cheeseballs in Cowtown" "Free Software Magazine")

if [ "$file" = "Current accounts" ]; then
	xdg-open /home/bob/money/2011-12_accounts.gnumeric

elif [ "$file" = "2012 Christmas letter" ]; then
	xdg-open /home/bob/personal/2012_Xmas_letter.odt

elif [ "$file" = "Flecktones – Cheeseballs in Cowtown" ]; then
	xdg-open /home/bob/music/Fleck/Cheeseballs_in_Cowtown.ogg

elif [ "$file" = "Free Software Magazine" ]; then
	xdg-open http://www.freesoftwaremagazine.com/

else
	exit 0

fi
=CODE_END=

=IMG=2.png==

Use my code as a template to build your own favourites launcher script, by editing the text. Since the script is in your home directory it will go wherever your data files go, and it will be ready for use after a computer, distro or desktop environment change. Just make a quick launcher for the script in its new home (I use a keyboard shortcut, _super [Windows key] + z_). You can then use the Zenity launcher until you get around to building your preferred file launchers in the new environment.

You might even find (as I did) that a Zenity launcher is really all you need for your shortcuts to often-used files!

#How it works

The Zenity dialog with its list of choices is built with the `zenity --list` command. You can see from the first screenshot where the `--title`, `--text` and `--column` names go. The choices are put in double quotes and are added in the order you want them in the dialog box. You specify the size of the dialog box with the `--width` and `--height` options, in pixels.

If you have more choices than will fit the height of the dialog box, Zenity will add a scroll bar at the right of the window. Alternatively, adjust the `--height` option until you can see all your choices.

The output of the Zenity dialog (the choice you make) should be given a short and simple name so you can use it as a variable in the next command. In this script, I've used the name _file_ for the Zenity output.

The next command is an _if A, do this, if B, do that, etc_ instruction. The doing is simply the command `xdg-open` followed by the path to the file, or the website address. Once the file starts opening, the Zenity dialog will close.

To keep it simple, the script above doesn't include any error messages. If you choose a file and nothing happens, check to make sure (a) that you have the correct file path or website address, or (b) that your file manager knows what application it should use to open a file of that particular type. Check the code, too: the spaces after [ and before ] are important!

The script depends on Zenity and the _xdg-utils_ package. Last time I checked, both were included in all the major Linux distros.