---
nid: '2597'
title: 'How to edit your GRUB settings with QGRUBEditor'
authors: 'Andrew Min'
published: '2007-12-11 23:00:38'
tags: 'grub,qgrubeditor'
license: verbatim_only
section: end_users
listed: 'true'

---
Anyone who runs more than one operating system has had to deal with GNU GRUB (the **GR**and **U**nified **B**ootloader). Grub is the tool that allows you to pick which operating system to book when you turn your computer on. But you can do a ton more than that by configuring it and derailing from the standard configuration. Unfortunately, until recently users were forced to open up cryptic config files in text editors and try and figure out what to do based on the comments (or, more diligently, by reading man pages). Now, users can use  [QGRUBEditor](http://www.qt-apps.org/content/show.php/QGRUBEditor?content=60391).

QGRUBEditor is simply what its name suggests: a GRUB editor built with the Qt toolkit. To install it, you can use a pre-built Ubuntu, SuSE, Slackware, Arch Linux, or generic BitRock installer or grab the source (you must have libqt-4, imagemagick, and gunzip installed). If you're compiling it, you won't be able to use the default `make` `make install` command. Instead, you need to run `qmake-qt4`, `make`, and then `make install` (as root, like `sudo make install`).

# Messing around with basic functions


=IMAGE=grub_figure_1.jpg=Figure 1: Basic functions=

Before you do anything with GRUB, it is recommended to back it up. To do this, just click the "Backup" icon on the main toolbar of QGRUBEditor. If anything goes wrong, just restore the old backup using the "Restore" icon on the toolbar.

=ZOOM=Before you do anything with GRUB, it is recommended to back it up=

When you first open QGRUBEditor, a list of the operating systems that GRUB has detected will show up. You can use the up and down arrows on the right to change the order of the operating systems. You can also add an entry using the "Add" button on the toolbar, edit entries with the "Edit" button, copy entries with the "Copy" button, and delete entries with the "Remove" button.

# More advanced features

=IMAGE=grub_figure_2.jpg=Figure 2: Advanced functions=

It's now time to learn about the more advanced configuration options that QGRUBEditor excels at. At the bottom of the main window, click the "GRUB Settings" tab. Here, you'll be able to deal with tons of options.

In the first section (the "General" section), you can choose the default operating system to boot. Just change the options under "Default Entry". You can choose a "Fallback Entry" (the OS that will be booted if the default one won't). You can also choose to hide GRUB altogether (which will boot into the default entry automatically) or set a timeout (in seconds) before the default OS is booted.

If you need more security (or are extremely paranoid), you may want to include a GRUB password. It's easy to add: below the General section, you can choose whether or not to secure GRUB with a password. Just click the "Create Encrypted Password using MD5" and enter in your password. That way, no one can see it in the GRUB configuration.

If you're the artistic type, you'll want to color up GRUB. To do so, just configure the options under the Colors section (the background will set the color and the foreground will set the text colors).

Finally, you can create or add an existing splash image (a simple background image shown when the GRUB menu starts). To create one, just click on the Splash icon and locate a JPEG, PNG, XPM, TIF, or GIF image. Then, select a location to place the splash image (make sure the path has no spaces) and hit OK. Or, if you want to use an existing one, point the "Splash Image" location to the location of the splash image (just make sure the path has no spaces). You can find some good [splash images on kde-look.org](http://kde-look.org/index.php?xcontentmode=61). Next time you reboot, you'll find a nice splash image greeting you.

* [QGRUBEditor at Qt-Apps.org](http://www.qt-apps.org/content/show.php/QGRUBEditor?content=60391)

