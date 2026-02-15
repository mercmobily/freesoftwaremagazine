---
nid: '2315'
title: 'Launch your programs faster with Katapult'
authors: 'Andrew Min'
published: '2007-05-28 19:47:32'
tags: 'gnu/linux,kde,katapult,launcher,quicksilver'
license: verbatim_only
section: end_users
listed: 'true'

---
One of the biggest navigational issues with any operating system is using program menus. Windows users have to open the Start Menu, scan for the program, realize that the program is probably in the subfolder under the programmer’s name, scan the appropriate subfolder, and then click on the program’s icon. Macintosh users must open Finder, find and click on the Applications folder, and then search for the program’s name. GNOME and KDE users have an advantage: they have categories in their respective Applications and K menus. However, it is still hard to find programs (and what if you look for Thunderbird in Office, and then realize it is under Internet?). One of the biggest reasons that the [Quicksilver](http://quicksilver.blacktree.com/) keystroke application launcher is so popular with the Macintosh users. All that is required is hitting Ctrl (or Command) + Space, and then typing a name to launch the program. Luckily, OS X users aren’t the only ones that have this great feature. KDE users have the great, free-as-in-speech, [Katapult](http://katapult.kde.org/).


# Katapulting yourself into action

Since many KDE distributions include or offer packages for it, Katapult is extremely easy to install. After doing so, open Katapult (under the Utilities menu in K Menu, or by typing Alt-F2 and then `katapult`) and it will display an “Application successfully started” message. To begin Katapulting, type Alt + Space (Bar). Type in a program name that is in the K Menu, such as `Konqueror` (Katapult will _only_ index programs in the K Menu), and hit Enter when the Konqueror icon comes up. Voila! Konqueror will launch. You can also just type `konq`, wait for the Konqueror icon to come up, and hit Enter. To close the Katapult window (note that Katapult will stay open, so you can still hit Alt + Space to bring it forward), wait for a few seconds or click outside of the Katapult window.

Although Katapult’s main strength is launching programs, it has other useful features. First, it can be used as a fully-fledged calculator. Just type `[YOUREXPRESSION]` (so `1+1*7^5` will give the result `16,808`). If you hit enter after typing the expression, the equation will be copied to the clipboard for further reference.

Want to see if you spelled “mispelled” correctly? An easy way to do so is to use Katapult’s built-in spell checker. Just type `spell [YOURWORD]` (so `spell mispelled` would bring up a red X and some suggestions), while `spell misspelled` would bring up a green check mark). Hitting enter on misspelled word will copy all the suggested words to the clipboard.

Many KDE users (myself included) use Amarok to listen to music. But to switch to a particular song in a playlist requires opening Amarok, searching for the song, double-clicking, and then sending Amarok back to the tray. Why do that when you can just use Katapult? Just type in the song name that you want to listen to, and Katapult will play that song in Amarok (so typing `walk the line` will pull up one of Johnny Cash’s biggest hits).

My home folder is one of the most cluttered areas on my computer. To find a file (or even a folder) in it takes an extremely long time. So it’s a good thing that Katapult indexes the home folder. Just type the file or folder’s name, and hit enter (so typing `file.txt` will open up the appropriate file in the appropriate program). The one caveat is that you can’t tell Katapult where to index, and it won’t search subfolders (so the file in `~/docs/` won’t be indexed).

I read news sites like [Newsvine](http://www.newsvine.com/) about every five minutes. But to do so requires firing up Konqueror and then typing in the URL. Why go to all that trouble when Katapult will do it for me? If you use a Mozilla-based browser (Konqueror, Firefox, etc.) Katapult will automatically import your bookmarks. Just type your bookmark name (e.g., `Newsvine`), hit enter, and it will open up in Konqueror.


# Configuring Katapult

Sometimes, the default configuration of Katapult isn’t enough. What if you use JuK instead of Amarok, and therefore don’t require the Amarok catalog? Or what if you store your documents in a folder besides the home folder and consequently don’t require the document catalog? Or even, what if (gasp!) you passed 3rd grade spelling and don’t need the spell checker? It is time to fire up the Katapult configuration tool. Open the Katapult window (Alt + Space, remember?), and then hit Ctrl + C. Clicking the “Configure Shortcuts” will open the shortcut editor. But what we want is the “Configure Katapult” option. Now, you can add and remove catalogs, add a system tray icon, and change the skin.


# Conclusion

All in all, Katapult is a terrific must-have app. In a few days, you’ll find yourself not being able to survive without it. There are a few things I would add (a drop down menu like the free-as-in-speech but Windows-only launcher, [Launchy](http://launchy.net/), includes would be especially nice), but overall, this is one of my favorite GNU/Linux applications of all time. Best of all, if you want a new plugin added (like a dictionary or Google search), it is easy to create one thanks to Katapult’s API.


* [Katapult homepage](http://katapult.kde.org/)
* [Wiki](http://katapult.kde.org/wiki/Main_Page)
* [Forum](http://katapult.kde.org/forums/)
* [Screenshots](http://katapult.kde.org/screenshots)
* [Handbook](http://katapult.kde.org/handbook)
* [Creating a Catalog (Plugin)](http://katapult.kde.org/handbook)
