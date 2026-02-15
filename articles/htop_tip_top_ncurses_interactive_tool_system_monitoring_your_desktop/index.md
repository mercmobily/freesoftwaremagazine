---
nid: '3127'
title: 'Htop, a tip-top ncurses interactive tool for system monitoring your desktop'
authors: 'Gary Richmond'
published: '2009-03-26 2:38:59'
tags: 'kill,top,htop,vmstat,nice'
license: verbatim_only
section: end_users
listed: 'true'

---
You don't have to be an uber system administrator of a network to use Htop. It might have been designed with the masters of the universe in mind but just because you are a mere solitary desktop user in a Pizza-strewn study room staring at a single machine doesn't mean you can't get it and use it too. This article will show you how to configure and use htop to monitor system resources and how to use this dinky interactive application to manage running applications and processes on your desktop.

<!--break-->

=ZOOM=All GNU/Linux distros come with top installed. It's older than Richard Stallman's beard=

You won't be out in the cold with this one. All GNU/Linux distros come with `top` installed. It's older than Richard Stallman's beard. Don't believe me? Just do `top` in a console. If you don't get a (detailed) output I'll ditch free software and start using Windows again. The output of `top` is not exactly too easy on the eye (although it is a good idea to set the foreground and background colours to improve visibility). The presentation is no eye candy.Here's my output as I write:

=IMAGE=Top_out_of_the_box.jpg=Figure 1: Top out of the box=

# Top, useful but not obvious

See what I mean? The screenshot is literally a snapshot courtesy of Ksnaphot utility but `top` itself is, to quote the man page,  _a dynamic real-time view of a running system_. If I had run a desktop recording utility instead you would see the output updating in real time. The manpage also informs you that the output _is_ configurable and that configurations can be made persistent across restarts. `Top` is interactive, yes, but not obviously so. While `top` is running you need to hit the `H` key to see the options and then hit any other key to return to the output. Left to the default setting `top` updates in real time which can be a little annoying when you want to take a closer look at a particular system process or what resources are being hogged by a particular application. 

You can change this by setting the refresh rate (five seconds is the default) by selecting the `D` key which brings up a prompt allowing to set it to a higher or lower interval. Pressing the space bar will automatically override any setting and refresh the display. You will have noticed, in addition to the output list, a set of parameters at the top of the console. These summaries include things like load average, memory and CPU stats. You can toggle them on and off with `l`, `m` and `t` respectively. If you want to know what all those column headings mean and how to rearrange, add or delete any of them just hit `o`:

=IMAGE=Top's_configuration_options.jpg= Figure 2: Top's configuration options=

With a bit of work you can get a saner output that is easier on the eye and configured to suit your needs. Compared with the output of `vmstat` (short for Virtual Memory Statistics) however, `top` is a positive little chatterbox:

=IMAGE=Vmstat's_spartan_output_compared_to_top.jpg=Figure 3: Vmstat's spartan output compared to top=

One nifty feature of Vmstat switches though is the ability to add parameters to refresh every X seconds for a given number of times and then exit. For example, `vmstat 3 6` will cause this utility to run, refresh every 3 seconds, six times and then exit:

=IMAGE=Vmstat_with_switches.jpg=Figure 4: Vmstat with switches=

Neat, but what you are looking at here is virtual memory stats and you will search in vain for application bottlenecks. You need `top` for that but although it is interactive to an extent it is not obviously interactive or easy on the eye. We need Htop.


While `top` is built-in, you will have to download and install Htop with your distro's package manager. It should be widely available for all major versions of GNU/Linux. All you need to know is that it uses the C programming language and requires the [ncurses library](http://en.wikipedia.org/wiki/Ncurses). If you use Debian's `Aptitude`(and used it to get Htop) you will recognize this interface straight away. Unlike Top, the user interacts with Htop with both the keyboard and the mouse. It makes use of colours too. This can make the display easier on the eye:

=IMAGE=Htop's_default_output._That's_better.jpg=Figure 5: Htop's default output.That's better=

# Configuring Htop

The default screen has two parts: the system stats at the top and the resource outputs below. With the help of `setup` it is possible to configure things so that you have the stats _you_ want displayed. Pressing `F2` will bring it up:

=IMAGE=Htop's_Setup_screen.jpg=Figure 6: Htop's Setup screen=

You can use the keyboard arrow keys to navigate to the menu options you want and then use the `F1` through `F9` keys to re-arrange the appearance of the meters by adding, deleting or moving them to different parts of the screen. For example, if you want to change the display type for the time meter use the right/down arrows to select it and then use the Return key to toggle through the available displays (Text, LED, Bar and Graph) and `F10` your way out. This can be done for all the meter categories. 

Just as you can select the number and display of meters you can also make viewing easier by choosing from as palette of colour schemes. Select colours from the setup menu and arrow across to the list of colours, select a scheme and make it active by pressing the spacebar (an X will be inserted) All this however is more cosmetic than anything else but the core of Htop's interactive nature which actively helps you to see and manage application and processes lies in sorting the output and managing what actually appears. Htop's Setup gives you an idea of the sheer number of column display possibilities:

=IMAGE=Column_display_options.jpg=Figure 7: Column display Options=

If any column is surlpus to requirements it is simply a matter of deleting it by hightlighting it and pressing `F9`. Dont worry, you can add any column back in by selecting it from the Available Columns list and pressing `F5`. Depending on what you are monitoring you can put together all the elements you need for a particular job. Of course, it helps if you know what all those column abbreviations are for but invoking `man htop` yields relatively little information. `man top` is much better here and incidentally many of the `top` commands will also work with htop too, but not all -- experiment. `Ctrl + W` in Top saves any changes you make by creating/writing a configuration file to `~/.toprc` so that changes are saved across sessions and reboots. This does not seem to work in Htop which means that changes made in Setup (`F2`) only work for the current session and will not persist. Top's delay switch can be used when launching Htop. Try `htop d 1`. Hint: don't blink, you might miss it.

# Zapping rogue processes and applications

=ZOOM=users sometimes need to kill a process or an application, especially when it is resisting the skull and crossbones invoked like the Angel of Death by `Ctrl + Alt +Del`. Enter Htop=

If you need to change the priority of an application for any reason Htop handles [nice/renice](http://en.wikipedia.org/wiki/Nice_(Unix)) for the user in a friendlier way than Top. In the latter you need to get the PID of a process/application before you can use this command. In Htop, scroll to the desired target and simply use `F8` to nice it (the maximum number is 19). This can be done as normal user but if you want to _increase_ the priority (up to a maximum of -20) you must be running as root otherwise you will not get past zero.

Admins and single end users frequently need to kill a process or an application, especially when it is resisting the skull and crossbones invoked like the Angel of Death by `Ctrl + Alt +Del`. Firing up Htop in a terminal makes this a no brainer. In this example I have selected the Apache webserver for the silver bullet and then pressing `F9` which offers the user a choice of ammunition:

=IMAGE=Lock_load_and_kill.jpg=Figure 8: Lock, load and kill=

Whether you are killing something or setting priority with nice/renice filtering users is useful. Hitting the `U` key will reveal a list of all system users which can be selected to narrow down the processes for the kill. It's a good way to avoid nailing a critical process running as root:

=IMAGE=User_filter_is_go.jpg=Figure 9: User filter is go=

If you prefer, `F6` launches a shortcut to allow you to sort the output by categories such as Users, PID and Priority. This won't filter out anything, just group them together. You can mix these two filters. If you do `U` first to select a user you can then use `F6` to list the output of any given user according to categories like niceness, priority, memory and CPU percentages. Nice.


# Conclusion


=ZOOM=What's not to like? Very little really=


Htop is fun, it looks good, it's versatile, easy to use and a great way to see what is going on in the bowels of your system. What's not to like? Very little really. I can't find any fundamental flaws. The only thing better than running Htop is running it in a Quake-style drop-down console like [YaKuake (KDE)](http://www.kde-apps.org/content/show.php?content=29153) or [Guauke (Gnome)](http://www.guake-terminal.org/). You're never further away from system monitoring than the `F12` key. Htop is immensely configurable and interactive but you might be thinking to yourself that it looks like a solution in search of a problem. However, if you are a programmer building and testing software you might be very grateful for Htop when you are monitoring how your digital progeny is performing. If you prefer a more traditional command line method or amusing GUIs to zap hanging processes and applications FSM regular Andrew Min has an excellent, [amusing and informative guide on this site](/articles/weekly_tips-killing_processes/).
