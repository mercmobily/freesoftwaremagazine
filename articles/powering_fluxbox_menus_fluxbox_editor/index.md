---
nid: '3797'
title: 'Powering up the Fluxbox Menus with Fluxbox Editor'
authors: 'Gary Richmond'
published: '2012-08-24 7:13:04'
tags: 'fluxbox,menus,editors,configuration'
license: cc-by-nc-sa
section: end_users
main_image: Fluxbox-logo.png
listed: 'true'

---
All desktops are created equal; however, some desktops are created more equal than others. LXDE, Gnome, Unity and KDE are brimming with menus but Fluxbox is Spartan by comparison. Great for speed on older, slower machines but I still use on my latest dual core, 3GB memory laptop. I want that speed but I also want a better choice of applications in the Fluxbox menus. In short, all the speed without sacrificing the power. That's the problem. Fluxbox Editor is the solution.

A picture paints a thousand words, so here's why you need it.

<!--break-->

=IMG_CLEAR=Where_are_my_browsers.jpg=Figure 1: Where are my browsers=

Fluxbox is holding out on me. Where's Konqueror, Firefox and Chromium? They're in the menus in other desktops. I want them back, and Fluxbox Editor is going to put them back in for me, so let's do it. As they are all browsers, I'll create a sub menu called Internet and then populate it with them.

There's no stand-alone binary or PPA (that I know of), just a tarball, but it's a breeze to install. [Download it from Sourceforge](http://sourceforge.net/projects/fluxmenu.berlios/files/fluxMenu-24.tar.gz/download?use_mirror=heanet). Open your file manager to where you downloaded it, right click on the tarball and extract it to a directory called fluxmenu and from there run the file  called `fluxMenu.py`. Provided you have Python and GTK installed you should see this.

=IMG_CLEAR=Fluxbox_Editor's_default_window.jpg=Figure 2: Fluxbox Editor's default window=

Highlight an entry in the side pane and click on New submenu, give it a name and Save.

=IMG_CLEAR=Create_a_menu_in_a_few_clicks.jpg=Figure 3: Create a menu in a few clicks=

And now we have a new menu and submenu.

=IMG_CLEAR=Building_a_menu_one_step_at_a_time.jpg=Figure 4: Building a menu one step at a time=

Next, select the New item button and fill in the boxes. Note that if the application is not in Fluxbox's `PATH` you will need to type it in.

Lastly, click on the icon button. Icons (in `xpm`, `jpeg` and `png` formats) will be found in `usr/share/pixmaps`. (You can check if Fluxbox supports them, type `fluxbox -i` in a terminal. Anything with a minus before it is unsupported).

=IMG_CLEAR=Adding_an_entry_for_the_Chromium_browser.jpg=Figure 5: Adding an entry for the Chromium browser=

I repeat this for Konqueror and Firefox and now we have a fully functioning menu with entries and icons.

=IMG_CLEAR=That's_more_accessible.jpg=Figure 6: That's more accessible=

**TIP**: Don't uncheck any of the Save and Backup options in Preferences. They're lifesavers, believe me. Finally,if you prefer to roll you own menus, navigate to `/home/your username/.fluxbox/menu` and add applications in this format.

=IMG_CLEAR=Use_this_format_to_add_items.jpg=Figure 7: Use this format to add items=
