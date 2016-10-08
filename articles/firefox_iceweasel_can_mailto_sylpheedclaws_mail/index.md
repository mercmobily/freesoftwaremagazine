---
nid: '3805'
title: 'Firefox and Iceweasel can ''mailto'' with Sylpheed and Claws Mail'
authors: 'Bob Mesibov'
published: '2012-10-05 16:32:18'
tags: 'firefox,sylpheed,claws-mail,mailto'
license: verbatim_only
section: hacking
main_image: main.png
listed: 'true'

---
Some webpages contain email links. If you right-click on the link in most Web browsers, a menu appears that lets you copy the email address to the clipboard (first screenshot). You can then paste the address into the _To_ field of a new email message.

In recent versions of Mozilla's [Firefox](http://www.mozilla.org/en-US/firefox/new/) browser, you can also left-click on the link and get some action. If Mozilla's [Thunderbird](http://www.mozilla.org/en-US/thunderbird/) is your default mail program, a Thunderbird 'compose' window may appear with the _To_ field automatically filled in. This article explains how you can get the same automatic result under Linux with the excellent open-source mail programs [Sylpheed](http://sylpheed.sraoss.jp/en/) and [Claws Mail](http://www.claws-mail.org/). The method also works with [Iceweasel](http://en.wikipedia.org/wiki/Iceweasel), which is the rebranded Firefox packaged with Debian GNU/Linux.

<!--break-->

#A one-command script

=IMG=1.png==

First, copy the script below into a text editor and save the file as __mailto.sh__. If Claws Mail is your mail program, replace 'sylpheed' in the script with 'claws-mail'.

=CODE_START=
#!/bin/bash
sylpheed --compose "$1"
=CODE_END=

Put the file someplace handy in your home folder. I keep all my homemade scripts in a folder called 'scripts' (_/home/bob/scripts_), which is very easy to find and manage. (More sophisticated Linux users might want to put the script in one of their $PATH default locations, such as _/usr/local/bin_, or in a hidden home folder, such as _/home/[username]/.scripts_.)

Make the script executable by right-clicking on the file __mailto.sh__ in your file manager and looking under _Properties_ for the option to run the file as a program. Alternatively, navigate to your scripts folder in a terminal and enter `chmod +x mailto.sh`.

#Set up your browser

=IMG=2.png==

You now have to tell Firefox what you've done. Go to the Applications tab in the Preferences dialog (second screenshot). When you select 'mailto' in the Content Type column on the left, you'll see a drop-down list in the Action column on the right. I don't have Thunderbird on my computer, and in my version of Iceweasel, the choices on the drop-down list are _Always ask, Use Gmail, Use Yahoo! Mail_ and _Use other..._

Choose _Use other..._ and a window opens in which you can select a helper application (third screenshot). Navigate in this window to the folder where you put __mailto.sh__, select __mailto.sh__ and choose _Open_.

=IMG=3.png==

All finished. Next time you left-click on an email link, Sylpheed (or Claws Mail) will open a compose-message window over the webpage, with the email address in the _To_ field (last screenshot).

=IMG=4.png==