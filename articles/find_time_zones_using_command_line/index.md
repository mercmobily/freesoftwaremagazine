---
nid: '3715'
title: 'Find time zones using the command line'
authors: 'Bob Mesibov'
published: '2012-02-20 4:32:41'
tags: 'tzselect,timezones,basement'
license: verbatim_only
section: hacking
main_image: main.png
listed: 'true'

---
The terminal and its command-line programs are things that scare many end-users. What they may not realise is that to use command-line programs, all you need to do is open a terminal, type the magic word at the prompt, and press Enter.

Today's magic word is 'tzselect'.

<!--break-->

This program tells you the local time anywhere in the world and compares it with (Coordinated) Universal Time, or UTC, which is the local time at Greenwich in the UK at longitude zero. tzselect finds the current Universal Time by looking at the system clock in your computer, so this program doesn't require an Internet connection.

The first message you get from tzselect is this one:

=IMG_CLEAR=screenshot1.png==

Suppose you want to find the local time in Bulgaria. Enter '8' (for Europe) at the prompt (#?) and you get:

=IMG_CLEAR=screenshot2.png==

Now enter '9' (for Bulgaria) and get:

=IMG_CLEAR=screenshot3.png==

To exit tzselect you can either enter '1' (for 'Yes'), or Ctrl+c. Note that tzselect (despite its name) does not select the time zone to be used on your computer, and running tzselect has no effect on how your computer keeps time.

tzselect is one of many command-line programs that are included in most Linux distributions, but 'hidden' because they are not listed in desktop menus. More on these handy 'hidden' programs in future articles!