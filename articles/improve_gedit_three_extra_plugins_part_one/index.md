---
nid: '3772'
title: 'Improve Gedit with three Extra Plugins (Part One)'
authors: 'Gary Richmond'
published: '2012-05-29 5:57:28'
license: cc-by-sa
section: end_users
main_image: Gedit_logo.jpg
listed: 'true'

---
The first thing you should always do after installing software (apart from viewing the manpages) is to check and see if it supports plugins. If you are not a programmer or hacker it really is the easiest way to extend capabilities. The Gnome text editor supports this feature out of the box.Here's three of the best.

Gedit is a text editor. [The Gedit homepage list its full feature set.](http://projects.gnome.org/gedit/). It's my editor of choice when writing articles for FSM. By default, Gedit comes with bundled plugins but you can extend them via your distro's package manager. Search for`gedit-plugins`, install it, open Gedit and select `Edit > Preferences`. Click on the Plugins tab and scroll through them, checking the ones you want.

<!--break-->

=IMG_CLEAR=Plugins_galore.jpg=Figure 1: Plugins galore=

# Embedded terminal(s)

Gedit has a built-in Python interpreted, activated from _View > Bottom_ Panel; after installing the extra plugins tick the checkbox for _Embedded terminal_ to enable it. Now, you also have a (resizable) Bash terminal.

=IMG_CLEAR=Now_you_have_an_embedded,_tabbed_terminal.jpg=Figure 2: Now you have an embedded, tabbed terminal=

This is really handy if you're writing a piece about Bash scripting or Python code. You can just copy/paste content to the main text area, format and save it (and monitor downloads too, as you write). 

# Session Saver

If you're working on multiple articles this plugin will allow you juggle (and save) them all in one tabbed session.When enabled you'll find Save sessions in the File drop-down menu. Select `Save current session` and a dialogue box will pop up.

=IMG_CLEAR=Name_your_session.jpg=Figure 3: Name your session=

Give the session a name and you're done. Now, when you open Gedit you can reload the switchable tabs from the File menu.


=IMG_CLEAR=One_click_to rule_all_your_tabs.jpg=Figure 4: One click to rule all your tabs=


You can, finally, manage your sessions from the same menu by adding more or deleting them (`Manage saved sessions`).


# Remote files

Start Gedit from the command line in a terminal but start it with an argument. For example, try `gedit http://www.freesoftwaremagazine.com` and all the markup for the webpage will display inside Gedit. A useful tool to learn and analyse without the overheads of opening a browser.

=IMG_CLEAR=Markup,_but_not_in_a_browser.jpg=Figure 5: Markup, but not in a browser=

*TIP*. If you intend to use this feature a lot, it's a good idea to make it an alias: 

`alias fsm='gedit http://www.freesoftwaremagazine.com'`

Make it permanent. Add it to your `.bashrc` file. You can create as many aliases as you like. (You can also launch two or more sites simultaneously in one alias.)  Plugins, aliases and the command line. Result.

