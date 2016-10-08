---
nid: '3773'
title: 'Dashboard Plugin: A better way to search, find and open files in Gedit (Part Two)'
authors: 'Gary Richmond'
published: '2012-06-05 3:42:53'
license: cc-by
section: end_users
main_image: 800px-Zil-131_dashboard.JPG
listed: 'true'

---
In [Part One about Gedit](http://www.freesoftwaremagazine.com/articles/improve_gedit_three_extra_plugins_part_one) I covered three neat plugins to make it more productive and user friendly. More recently, I discovered another plugin that I simply couldn't ignore. The good news is that it really is cool; the not so good news is that the plugin is not available from the repositories, there is no PPA and no third-party stand-alone binary (yet). Bummer--but it can be installed from a source tarball. Easily. So, what is Dashboard and how do you install it?

<!--break-->

If you've ever used [Gnome Activity Journal](https://launchpad.net/gnome-activity-journal) you'll be familiar with the interface: it's a GUI for Zeitgeist, a chronological journal facility which allows you to search and find recently/most used files. The Dashboard plugin requires both Zeitgeist and Zeitgeist-extensions-fts. Both are installed by default in Ubuntu. Users of other distros should check their package managers and install as needed. You'll also need to be running Gedit version 3 for Dashboard to work.

Next, [point your browser to this link](http://dl.dropbox.com/u/7162902/gedit-dash.tar.gz) and download the tarball. Extract it (right click and select archive manager of choice) and copy the two files to `~/.local/share/gedit/plugins` or create it with `mkdir -p ~/.local/share/gedit/plugins` in a terminal, if the directory was not already created. If doing this in a file manager rather than a terminal you need to make hidden files visible (`CTRL+H` will toggle them). You don't need to be root to do this.

That's it! Launch Gedit and enable Dashboard via the Preferences plugin tab. Restart Gedit and you should see something like this.

=IMG_CLEAR=All_your_recent_files_now_only_a_click_away.jpg=Figure 1: All your recent files now only a click away=

Dashboard will happily co-exist with session tabs. Clicking any thumbnail will open it in a new tab. The default interface displays only the most recent and used files. To travel back a little further in time type in an letter to change the display to this.

=IMG_CLEAR=File_names_with_dates_and_locations.jpg=Figure 2: File names with dates and locations=

The Dashboard plugin is a keeper and you can still use convential file navigation too. 