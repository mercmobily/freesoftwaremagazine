---
nid: '3749'
title: 'Programming effective reminders in GNU/Linux'
authors: 'Bob Mesibov'
published: '2012-04-17 5:17:28'
tags: 'zenity,logout-dialog'
license: verbatim_only
section: hacking
main_image: main.png
listed: 'true'

---
There are some nice sticky-note applications for Linux, and they're good places to write down reminders, like _Ring Fred_ or _Pick up a litre of milk_.

Unfortunately, sticky-notes are no help to me at all. I'm often forgetful, and I'm more than likely to shut down my computer without checking to see if I've written a note to myself. To get around this problem, I wrote a couple of very simple scripts, each launched by an icon on my Xfce panel.

<!--break-->

Clicking on the first, or 'reminder' icon brings up the dialog box shown in the first screenshot. Here I write a short reminder like _Email merc @ FSM_ (second screenshot), then click OK.

=IMG=1.png==

=IMG=2.png==

The second icon is the logout icon on the panel. At least, it _looks_ like the logout icon. If I click it and I haven't written a reminder, the usual Xfce logout dialog appears, and I can shut down my computer.

However, if I've written a reminder earlier in the session, then clicking on the logout icon brings up the dialog box shown in the third screenshot. The Xfce logout dialog appears if and only if I click _OK_ on this reminder.

=IMG=3.png==

#How it works

The first icon launches this script:

=CODE_START=
#!/bin/bash

msg=$(zenity --width=350 --entry --title="Shutdown message" --text="Enter the reminder" --entry-text "To do:")
echo $msg > /home/bob/scripts/reminder.txt

exit 0
=CODE_END=

What this does is send the output of the [Zenity](http://en.wikipedia.org/wiki/Zenity) dialog (what I enter in the box) to a newly created file __reminder.txt__ in the scripts folder in my home directory.

The 'logout' icon launches the second script:

=CODE_START=
#!/bin/bash

if [ -e /home/bob/scripts/reminder.txt ]; then
	zenity --width=250 --info --text="Remember to:\n$(cat /home/bob/scripts/reminder.txt)" && rm /home/bob/scripts/reminder.txt && xfce4-session-logout

else
	xfce4-session-logout

fi
=CODE_END=

This script looks first to see in there's a __reminder.txt__ file in the scripts folder. If there is, the Zenity reminder box pops up. When I click _OK_ in this box, __reminder.txt__ gets deleted and the logout dialog is summoned. If no __reminder.txt__ exists, the script takes me straight to the logout dialog.

#Try this at home

As usual, getting the scripts into your system is easy. Just copy/paste each one into a text editor, and save each file with a suitable name. Mine are called __logout_reminder.sh__ and __logout_with_reminder.sh__ and they live in /home/bob/scripts. Make each script executable. If you're using either Thunar or Nautilus as your file manager, an easy way to do this is to right-click on the script's filename, choose _Properties_, then _Permissions_, then tick _Program_ (Thunar) or _Execute_ (Nautilus) to allow executing as a program.

There are different ways to add a launcher to your panel or desktop, depending on your desktop environment. In all cases what you want to launch is a command, and the command is (in my case) '/home/bob/scripts/__logout_reminder.sh__'.

The second script uses `xfce4-session-logout` because Xfce is my desktop environment. The logout dialog command will be different with other DE's. Gnome users can try `gnome-session-save --shutdown-dialog` in a terminal to see what happens.

Also as usual, there are other ways to do this 'don't-shutdown-without-reminding' trick, but these scripts work fine for me, and they're a lot more reliable than my memory!