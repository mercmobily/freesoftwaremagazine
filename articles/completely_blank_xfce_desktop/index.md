---
nid: '3722'
title: 'The Completely Blank Xfce Desktop'
authors: 'Bob Mesibov'
published: '2012-02-27 5:26:26'
tags: 'xfce,desktop,keyboard-shortcuts'
license: verbatim_only
section: hacking
main_image: Buddha_meditating_public_domain.jpg
listed: 'true'

---
The [Xfce](http://www.xfce.org/) desktop environment comes with Xubuntu and is also available in the Xfce versions of Linux Mint, Fedora and other Linux distributions. Using Xfce, you can easily set up a highly functional but _completely blank_ desktop - no icons, no menus, nothing. Just a blank screen or a favourite wallpaper, ideal for the user who hates distractions or loves simplicity. Here's how to do it.

<!--break-->

Two of the default Xfce features are:

* right-clicking anywhere on the desktop brings up a full applications menu
* middle-clicking anywhere on the desktop brings up a workspaces menu

The workspaces menu shows the files and applications open on each workspace, and allows the user to switch, add or delete workspaces. These two defaults and a few other settings are the key to making the "empty desktop" work brilliantly.

Here is how you do it:

__1. Hide the panel(s).__ Right-click anywhere on an Xfce panel, choose Customize Panel... and tick _Autohide_.

__2. Remove desktop icons.__ Right-click anywhere on the desktop, choose _Desktop Settings..._ and go to the _Icons_ tab. Untick _Home_, _Filesystem_ and _Trash_ in the _Default Icons_ window. (It's a good idea to leave the Removable Devices icon, which appears when you plug in, for example, a USB stick.) Remember that if you put any folders or files in your Desktop folder, they'll appear as desktop icons. Don't put anything in your Desktop folder, and your desktop will remain icon-free.

__3a. Choose an eye-pleasing screen colour...__ Right-click anywhere on the desktop, choose _Desktop Settings..._ and go to the _Background_ tab. To get a colour for the screen, tick _None_ under _Images_, then pick a nice solid colour or gradient. Color Name _#e6e6dc_ is particularly easy on most eyes.

__3b. ...or choose an eye-pleasing wallpaper image.__ Check out the wallpaper choices on the _Desktop Settings... Background_ tab. Xfce stores these choices in `/usr/share/xfce4/backdrops`, and you can copy any image to that folder (as root) to have it show up on the _Desktop Settings... Background_ tab. A much easier way is to right-click the image file name in the Xfce file manager, Thunar. One of the options is _Set as Wallpaper_. Choose this and the image file also appears on the Background tab, where you can adjust its brightness and saturation.

__4. Set comfortable window size limits.__ Go to _Settings/Workspaces_ and choose margin widths (in pixels) in _Margins_. As it says in this control window, 'Margins are areas on the edges of the screen where no window will be placed', even when the window is maximised.

__5. Create shortcuts for favourite applications.__ Since there's nothing on your screen to click to launch an application, how do you start your browser, or text editor? You _could_ just right-click anywhere on the desktop and choose the application from the hierarchical _Applications_ menu. This is tedious, however, for frequently used applications, and it's much quicker to use keyboard shortcuts.

Go to _Settings/Keyboard_ and open the _Application Shortcuts_ tab. Click the _Add_ button to add a new shortcut. The first _Shortcut Command+_ window that opens offers two different ways to choose an application. If you know the application's command, just enter that command in the window ('firefox', for example, will start Firefox). If you don't know the command, click the _Open_ button. A window appears with the application files in the `/usr/bin` directory. Navigate to the application you want, highlight it and click _Open_. The correct command will now appear in the _Shortcut Command_ window (e.g., `usr/bin/firefox`).

Click OK and you're taken to the second _Shortcut Command_ window. Simply type on the keys you want for the shortcut, and that becomes the shortcut to launch the chosen program. I use `Ctrl+Alt+t` to open a terminal, and various combinations using the `super` or 'Windows' key on my keyboard, such as `super+f` (for _files_) to open Thunar and `super+w` (for _web_) to open a browser.

You're almost finished. You have a perfectly blank desktop. You can launch frequently used applications with keyboard shortcuts, and other applications by right-clicking on the desktop. You can navigate between workspaces by middle-clicking on the desktop. If you really need to see the Xfce panel, you can move the cursor to the screen edge where the panel is hidden in order to 'unhide' it.

Two more functions could be handy:

__6. Check the time.__ There's no longer a clock on your desktop (although there's one on the hidden panel, of course), so copy this into a text editor:

=CODE_START=
#!/bin/bash
xmessage -buttons Time -timeout 2 $(date +"%H:%M")
=CODE_END=

=IMG=clock.png==

Save this text file as `clock.sh` and put it in your home folder. Make it executable by right-clicking on it in Thunar, choosing _Properties..._ and ticking _Program_ on the _Permissions_ tab. Create the keyboard shortcut super+t with the command `/home/[yourname]/clock.sh`. Now type `super+t`, and a little clock message will appear in the center of your screen for 2 seconds, then disappear. Edit `-timeout 2` to increase or decrease the time the clock persists, and change the time format to suit (time codes for the `date` command are on [this Xfce page](http://goodies.xfce.org/projects/panel-plugins/xfce4-datetime-plugin)).

__7. Shut down with the usual dialogue of choices.__ Create a suitable keyboard shortcut (I use Ctrl+Alt+k) for the command `xfce4-session-logout`.

What could be simpler?