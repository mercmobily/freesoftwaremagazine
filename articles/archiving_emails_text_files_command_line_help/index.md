---
nid: '3687'
title: 'Archiving emails as text files, with command line help'
authors: 'Bob Mesibov'
published: '2012-02-07 2:58:59'
license: verbatim_only
section: hacking
main_image: P.jpg
listed: 'true'

---
Call me old-fashioned, but I like to store emails in text files, one per correspondent. For example, 'Bloggs_Fred.txt' contains all my emails to and from Fred Bloggs, in chronological order with the newest message last. Other people might have the need to periodically store parts of emails in predefined files (for example, when collecting information).

I wrote a very simple script to make this kind of archiving easier. Before I explain the script, I'll show you how it works.

<!--break-->

# How to use the script

First I highlight the email text with the mouse.

=IMG=1.png==

In this case, what I'm highlighting is the message plus its headers in the preview pane of my [Sylpheed](http://sylpheed.sraoss.jp/en/) email client. I don't copy the text (e.g. with Ctrl+C), I just highlight it.

=IMG=2.png==

Next I click a special icon in the panel on my Xfce desktop. This launches my script. The icon I use for the launcher is [Gnome-accessories-text-editor.svg](http://de.wikipedia.org/wiki/Datei:Gnome-accessories-text-editor.svg), which looks to me like a pencil appending some text to an existing document =- just what I'm about to do.

After I click the icon, a window opens up showing my email correspondence files (third screenshot). I choose the relevant file (Bloggs_Fred.txt) and click OK. [Names changed to protect the innocent...]

That's it. Done. The highlighted message and its headers have been appended to `Bloggs_Fred.txt` (fourth screenshot), preceded by some blank lines and a message separator, in my case 5 hyphens in a row.

# How does it work?

Now for the explanation. The script launched by clicking the special icon is shown below; I call it "email_appender.sh".

=IMG=3 .png==

=CODE_START=
#!/bin/bash
export msgs=`zenity --file-selection --filename=/home/bob/Correspondence/Emails/` 
echo -e "\n\n-----\n" >> $msgs 
xclip -o >> $msgs
=CODE_END=

The script uses the `export` and `echo` commands found in the bash scripting language. It uses [zenity](http://library.gnome.org/users/zenity/stable/), an amazingly powerful tool included in every Linux distribution. Finally, the script uses [xclip](http://linux.die.net/man/1/xclip), which you can install from most package repositories.

The first line of the script defines the variable `msgs` (arbitrary choice of name). This is the output from the file selection made through the zenity file selection window, and it's simply the path to the chosen file. The --filename option lets me tell zenity which folder to open for choosing correspondence files. The `export` command makes the chosen file's path available to `echo` and `xclip` in this script.

=IMG=4.png==

The second line uses `echo` to add line breaks and my preferred message separator (`-----`) to the file chosen through zenity. If you rewrite this script to adapt it for your own use, make sure to use `>>`. If you write `>` instead, `echo` will replace the correspondence file contents with the line breaks and separator -- all your previous emails in the file will be deleted.

The third line of the script pastes the highlighted text into the correspondence file, following the bits that `echo` has added. When I first highlighted the text, it went to the primary clipboard in the X window system. `xclip -o` outputs that clipboarded text to the end of the correspondence file (note the `>>`).

The primary clipboard will hold the highlighted text until I highlight something else. This means that I can run my script again to paste the same highlighted text into a second correspondence file, and a third, etc.

=TEXTBOX_START=Launching a script=
Check your Linux distribution's documentation for details of how to launch a script by clicking on an icon. The details vary from desktop environment to desktop environment (Gnome, KDE, Xfce, etc).
In all cases, you will need to save the script as a text file and make it executable (you can normally do this via the GUI, with a simple right click of the mouse > Properties).
=TEXTBOX_END=

# Room for improvement 

If you have a webmail account and your default message window doesn't show headers, you could modify the script to put today's date at the top of each appended message. It would be better to add the message date and time, but I don't know of a simple way to include them in the script.

There are certainly other ways to do this particular archiving job, but I like finding new uses for the basic GNU/Linux tools. And this works!

# Learn more about Bash Scripting!

To learn more about Bash scripting, have a look at:

* [https://help.ubuntu.com/community/Beginners/BashScripting](https://help.ubuntu.com/community/Beginners/BashScripting)
* [https://help.ubuntu.com/community/HowToAddaLauncher](https://help.ubuntu.com/community/Beginners/BashScripting)