---
nid: '2365'
title: 'Cleaning your OS in Kubuntu and GNOME'
authors: 'Laurie Langham'
published: '2007-06-15 9:12:19'
tags: 'free-software,gnome,kubuntu,gtkorphan'
license: verbatim_only
section: hacking
listed: 'true'

---
So, you’ve now taken the successful plunge and finally let the Microsoft nightmares fade into expensive and unpleasant memories.

You have your brand new, full-featured, Mandriva, Debian, or Kubuntu, free OS running your browser, email, and office, routines through a lovely KDE, or GNOME, desktop that’s simplicity itself to operate.

Next, you work out how to get all your free software repositories enabled and the true “_Wow!_” experience suddenly begins to hit you right between the eyeballs.

There’s nothing in the Microsoft experience that can prepare you to cope with that initial shock, when you realise more than 20,000 extra items of free software are just sitting there waiting for you to click on them, so they can install themselves into your system for free.

Like a kid in a lolly-shop? You’re not kidding.

New, and updated, applications, are continuously being added at such a rate that you can never really hope to try them all, but still, you make the effort. Some, you fall in love with, and they become permanent fixtures in your setup; others, you realise, are not suited to your particular requirements of the moment and you soon remove them. Most of us never stop doing this sort of thing.

Now, all these free software applications that we download, bring various files and libraries with them, as dependencies. When we decide to remove one of these applications, some of these files sometimes get left behind to float around like lost souls in the cyberspace of your once pristine OS.

These detached files are called _orphan_ files, or _orphan_ packages. Mostly, they do no particular harm, but it’s nice to think your operating system remains just as shiny and clean inside, as the day you first installed it.

Fortunately, GNU/Linux can supply a nice little GUI that will quickly take care of this sort of housekeeping, after you’ve been having fun adding and removing software applications.

The quick way to find these GUIs is to go into Adept, or Synaptic, or whatever the package manager is called in your distro, and search for “orphan”. My Adept package manager quickly spits out two packages; deborphan, and gtkorphan. 

Kubuntu beginners would go to K menu, select “system”, then open “Adept Manager”, and insert your password when prompted. When Adept loads, type “orphan” into the “Search” box near the top. You won’t need to press “enter” because Adept will automatically commence your search as soon as the word is completed. Two entries will appear in the search results window at the lower left; “deborphan” and “gtkorphan”. For KDE you will need “gtkorphan”, so right click on “gtkorphan” and select “request install”. Then go to the toolbar at the top of the page and click on “Apply Changes”. The rest of the installation is automatic after that, although you can click on “show details” to see exactly how Kubuntu goes about installing new free software. If you want to remove the software, start Adept, then type “gtkorphan” into the “Search” box. When “gtkorphan” appears in the results window as “installed”, simply right click on it and select “request removal”. Then “Apply Changes”, and the software is automatically removed as easily as it went on.

Ubuntu beginners would do likewise, by going to “System”, in the toolbar at the top of the desktop, then to “Administration”, then select “Synaptic Package Manager”. At the prompt, enter your password. When “Synaptic” appears, go to “Search” which is on the second toolbar from the top. Once again, enter the word “orphan” and press “enter”. Unlike “Adept” in KDE, this search will produce a number of packages with similar properties to gtkorphan, notably “Kleansweep” which users might like to try as an alternative to gtkorphan. However, “gtkorphan” is the package that will be installed in this instance. Right click on gtkorphan and select “Mark for installation”. A little box will jump up saying “Mark additional required changes?”, and in the box will be “To be installed deborphan” (This is a package that is dependent on gtkorphan). Click on “Mark”, or just press “enter” (which is the same thing) and the box will disappear and the deborphan line will now turn green. You’re all set now, so go to the second toolbar and click on “Apply”. A little box will jump up with “Apply following changes?”, with the two packages to be installed listed below. Click on “Apply” and a little box jumps up saying “installing packages”. If you’re quick enough you can click on “details” and a window will come up showing the installation process. Close “Synaptic”.

At this point, if will need to launch gtkorphan. In KDE, click the K menu, then “settings” and select “Remove orphan packages”. In GNOME, Click on “System” in the top toolbar, then go to “Administration” and then “Remove orphan packages”.

After running the program, put in your password at the prompt, and up pops GtkOrphan with tabs for “Orphaned packages” and “Non-orphaned packages”. Check the “Orphaned packages” tab, then check the check-boxes beside each orphan file that appears there, press “Remove”, and away they go. Sometimes the removal of these files will, in turn, orphan further files that were previously dependent only on _them_. Just repeat, until the ***No orphaned libraries found...***, sign appears.

Presto, you’ve got an OS, so clean, that Steve Ballmer would want to eat his dinner off of it.

