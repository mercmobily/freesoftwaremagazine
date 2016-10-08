---
nid: '2538'
title: 'If the pen is mightier than the sword, is the touchpad greater than the mouse?'
authors: 'Gary Richmond'
published: '2008-03-19 9:59:48'
tags: 'gnu/linux,touchpad,rsi'
issue: issue_21
license: verbatim_only
section: opinions
listed: 'true'

---
I was one the first people I knew to get a mobile phone (Motorola analogue flip!); but I was also one of the last to sign up for Googlemail. I am not a dedicated follower of fashion. I stand still and, sooner or later, fashion meets me coming round the other way. So, it might not come as a surprise that unlike the young turks of computing I came late to the mysteries of the ubiquitous Synaptics Touchpad. You see, I was weaned on that Faustian pact with Repetitive Strain Injury (RSI), the mouse. Having endured several very unpleasant encounters with various forms of RSI in the recent past, I decided to explore the alternative therapy of the touchpad. This article is an exploration of what you can be done with it in the GNU/Linux environment, its options, utilities, graphical front ends and command line options.

<!--break-->

Synaptic Touchpad is not to be confused with _Synaptic_, the graphical front end to _Apt-get_, although you will be able to use that particular software package manager (or others) to install various utilities to exploit the potential of your latops' touchpad. The first thing to do is to see exactly what you actually have installed, so fire up your terminal of choice and type the following:

=CODE_START=
cat /proc/bus/input/devices
=CODE_END=

Here is what I get on my Packard Bell EasyNote laptop running Mepis:

=IMAGE=The_output_for_an_alps_touchpad.jpg=The output for an alps touchpad=

The highlighted line indicates that my touchpad is an [Alps touchpad](http://en.wikipedia.org/wiki/Alps_Electric_Corporation). Take this one stage further and type this in a terminal:

=CODE_START=
cat /etc/X11/xorg.conf
=CODE_END=

And you can see the detailed output if you scroll down to the appropriate section (highlighted):

=IMAGE=The_output_of_xorg.config.jpg= The output of xorg.config=

To determine if the touchpad is configured, go back to the console and type `grep Iden /etc/X11/xorg.conf`. If this outputs the following with a reference to the Synaptics touchpad, then it is configured:

=IMAGE=Is_your_touchpad_configured.jpg=Is your touchpad configured?=

Most users should find that their touchpad works out of the box, but with the caveat that it will be pretty basic. It will do exactly what it says on the tin—and that may not be very much. To get the best out of your touchpad—Alps or Synaptic—you will need to install the appropriate drivers and utilities to exploit mouse emulation, and then some.

# Put your touchpad on steroids

To get the most out of a touchpad the most important thing you can do is to have a version of the Synaptic driver installed. If you are using the 2.6 Kernel, it will be installed by default. If not, you can download a [compressed tarball of Synaptic](http://web.telia.com/~u89404340/touchpad/files/). This is particularly important if you wish to run graphical front ends for touchpad such as _ksynaptics_, which will only work with version number 0.14.4 of the kernel module. You can check the version you are running by launching your software package manager and searching for the Synaptics driver. If you want a raw taste of what it can do, just type `man synaptics` in a console and view the output (you can also type that in the location bar of Konqueror for a neater HTML format for handy printing if you wish). Here is a list of advanced features you will have access to:

* Movement with adjustable, non-linear acceleration and speed
* Button events through short touching of the touchpad
* Double-Button events through double short touching of the touchpad
* Dragging through short touching and holding down the finger on the touchpad
* Middle and right button events on the upper and lower corner of the touchpad
* Vertical scrolling (button four and five events) through moving the finger on the right side of the touchpad
* The up/down button sends button four/five events
* Horizontal scrolling (button six and seven events) through moving the finger on the lower side of the touchpad
* The multi-buttons send button four/five events, and six/seven events for horizontal scrolling
* Adjustable finger detection
* Multifinger taps: two finger for middle button and three finger for right button events. (Needs hardware support. Not all models implement this feature.)
* Run-time configuration using shared memory. This means you can change parameter settings without restarting the X server

Depending on the firmware, some of these features may already work without the driver; also, features themselves may vary from touchpad to touchpad. To change the settings, you will need to edit your  `Xorg.conf`, which is also really important: before you start to tinker with it you should back it up; so fire up your console and issue the following command (as root):

=CODE_START=
cp /etc/X11/xorg.conf /etc/X11/xorg.conf_backup
=CODE_END=

And simply reverse that command to reinstall the backup if X fails to start: `cp /etc/X11/xorg.conf_backup /etc/X11/xorg.conf`. 

# Know what you're doing

=ZOOM=It is the rightful boast of GNU/Linux users that configuration files are relatively intuitive compared to the Satanic complexities of the Windows Registry=

It is the rightful boast of GNU/Linux users that configuration files are relatively intuitive compared to the Satanic complexities of the Windows Registry. But when it comes to the Xorg file section dealing with touchpads, the myriad settings are not exactly obvious either. If you want to play around with them it is best to have some idea what they actually mean. The best guide and explanation I have found is [here](http://linux.die.net/man/5/synaptics). It is very detailed and you should read it thoroughly before tinkering with the settings in the Xorg file. `man xorg.conf` is also very useful as a quick guide to the nomenclature of the file, particularly the boolean (true/false) values whose settings may mean the same thing but vary in their interchangeable terminology from distro to distro.

<!--pagebreak-->

# First step: enable the touchpad and shared memory

The first and simplest thing you can do is to decide whether the default state of you touchpad will be on or off. If it is not working out of the box and you want to exploit its potential, then launch your text editor of choice and open the /etc/X11/xorg.conf file and navigate to the following (highlighted) section:

=IMAGE=xorg_conf_touchpad_section_highlighted.jpg=xorg.conf touchpad section highlighted=

Depending on your distro the line reading `option "SHMConfig" "on"` may read "true" for "on" or be set to "false" for "off". On my Ubuntu Dapper laptop that line was not there and had to be added manually. Whatever it is, edit the file as root and change `true` to `false` to disable the touchpad, or change `off` to `on` to enable it. `SHMConfig` is just a boolean value (on/off) for activating or deactivating shared memory. If it is enabled, you will be able to configure the touchpad using clients like `synclient` (which comes in the x11-input-synaptics package). `synclient` allows you to query and modify the synaptics driver while X is running. In the rest of the article, I will assume that you have enabled `SHMConfig`, and that therefore the `synclient` command will work. 

=ZOOM=You will need to restart your Xorg server once you've modified `Xorg.conf`=

You will need to restart your Xorg server once you've modified `Xorg.conf`: to do that, you can press _CTRL-Alt-Backspace_ while nothing is running. If the Xorg server doesn't come back, remember that you have a working backup of `Xorg.conf`!

The great thing about enabling `SHMConfig` is that you won't have to touch the `Xorg.conf` file ever again to configure your trackpad.

# Changing the configuration using `Synclient`

In the previous screenshot there are several configuration settings for the touchpad that are not exactly intuitive. Changing each option and then restarting the web server to test the results is awkward at best. Synclient (part of the Synaptics driver manager) can help here. Use it and you’ll be able to make changes without having to restarting X. Keep in mind that changes made with `Synclient` won't be permanent, but only operative on a per-session basis. For the changes in configuration to be made permanent you will need to edit the `Xorg.conf` file directly or to add a startup script.

=TEXTBOX_START=Does `synclient` work with every parameter in Xorg.conf?=
It does not appear from the synclient manpage that all the touchpad parameters can be managed by it. However, the examples given (synclient EdgeMotionSpeed=0 to disable edgemotion speed and synclient -m 100 to monitor touchpad events) are a good indicator that you can experiment with all the settings listed in the Xorg.conf file. Just remember to note the default values in case your tinkering does peculiar things!
=TEXTBOX_END=

`synclient -l` on the command line will tell you the current setting of the touchpad. Here is mine running on Mepis:

=IMAGE=synclient_output.jpg=synclient output=

# Disabling the trackpad while typing

The command `synclient -l` will list `Touchpadoff =0`. To turn the trackpad off simply type `synclient Touchpadoff=1`. Turning the touchpad back on again is as simple as `synclient Touchpadoff=0`. If you're not afraid to get your hands dirty, a very clever way to ensure that the touchpad is automatically disabled whenever a mouse has been plugged in is to add this rule to Udev in `/etc/udev/rules.d/`:

=CODE_START=
ACTION=="add", SUBSYSTEM=="input", ID_CLASS="mouse", RUN+="/usr/bin/synclient TouchpadOff=1"
ACTION=="remove", SUBSYSTEM=="input", ID_CLASS="mouse", RUN+="/usr/bin/synclient TouchpadOff=0"
=CODE_END=

Or, if Python scripting is more to your taste, you can achieve the same effect by [using a Python script](http://blog.technomancy.org/2007/05/05/turn-off-the-trackpad/) making it executable and adding it to your start programs. Your mileage might vary: use at your own risk. 

<!--pagebreak-->

Another method to disable the touchpad involves Syndaemon. It is not as definitive as the preceding methods: it will only disable the touchpad while you are typing. The manpage is terse (`man syndaemon`) but if you want to use this temporary method just open a console and type `syndaemon -d` and it will run in the background, disabling the touchpad for a default of two seconds. You can set this to a different timeout value. For example: `syndaemon -d -i 3` and if you want to disable tapping and scrolling action (and not mouse movements) as well then that command would now be `syndaemon -d -t -i 3`. As with so many other GNU/Linux configurations, if you wish to make this a default startup you need to add it to the startup files. It's a breeze in Gnome: just go to _System→Preferences→Sessions_ to launch a dialog box and select the _Startup Programs_ tab, click on _Add_ and type your chosen variation of the syndaemon command. In KDE just type `ln -s /usr/bin/syndaemon ~/.kde/Autostart/` in a console.

=ZOOM=Another method to disable the touchpad involves Syndaemon. It is not as definitive as the preceding methods: it will only disable the touchpad while you are typing=

If you just want a quick and dirty ad-hoc fix for enabling or disabling the touchpad in selective mode, i.e., you want to disable tapping whilst typing, but not the ability of the touchpad to move the cursor, and you don't want to use a GUI or edit the Xorg file then issue the following simple command in a console:

=CODE_START=
synclient TapButton1=0
=CODE_END=

The default in the Xorg configuration file is 2. If you wish to re-enable the tapping feature when typing (why?) just type that command again and change the 0 to a 2. If you look again at the Xorg file you will see two other entries for TapButton, each with defaults of 3. I think this has something to do with multiple finger tapping on the touchpad (assuming it supports such features). Another way to turn off tapping which emulates the mouse click is:

=CODE_START=
synclient MaxTapTime=0
=CODE_END=

Turning it back on entails changing the 0 to a 1.

A word of warning: settings set with `synclient` are not permanent. You may want to add any of the above `synclient` commands in your startup scripts to save interminable key tapping every time you want to enable/disable touchpad features.

Changing the configuration using by editing `Xorg.conf`

If default parameters are already present in the Xorg.conf file (or you add them later--what is present will vary from distro to distro), then you can amend them on the fly with synclient; however, they will only persist for the duration of the session. To make any changes permanent it is necessary to change them in the Xorg.conf file. This is also true for all the parameters listed below for such features as drag and drop and circular scrolling. The great advantage of using Synclient is that it is very easy to issue commands in a console and that it's a safe method to experiment with settings without risking any damage to `Xorg.conf`. Once you are sure the on-the-fly changes you made with Synclient worked, you can safely make the changes permanent in Xorg.conf.

=ZOOM=It is a perennial complaint that the palm of your hand frequently brushes across the touchpad whilst you are doing something else on the keyboard=

It is a perennial complaint that the palm of your hand frequently brushes across the touchpad whilst you are doing something else on the keyboard. In addition to the solutions presented in the previous section, and if the feature is supported by your touchpad, you can try specific additions to the `Xorg.conf` file. If these settings are not in your Xorg.conf file add them as follows:

=CODE_START=
option      "PalmDetect"          "on"
option      "PalmMinWidth"        "10"
option      "PalmMinZ"            "200"
=CODE_END=

The first one is obvious. If you don't want to experiment with the parameters in the following at all, just change it to "off". The middle option tells the touchpad the minimum width at which a touch is deemed to be a palm and the last option sets the touch pressure for the "PalmMinWidth" threshold. 

# The pick of the best touchpad features

Many of the configuration settings are for features so particular, not to say exotic, that it is not very likely that most users will want or need them. Such depth of configuration looks like the classic instance of a solution looking for a problem and the knowledge and time required to set up these features is disproportionate to the advantage gained. The truth of the matter is that it can be a matter of "suck it and see" when it comes to experimenting with some of the settings.

## Drag and drop

This feature would seem to be a given for any self-respecting touchpad, but it does not work for me on my Mepis laptop. This has had a chequered history in Ubuntu too. If working, it involves a two-tap action: one tap to select the file, followed by a second tap with the finger held down on the touchpad and dragging the file to its intended destination.

The Xorg.conf file should have this parameter listed in the "Input Device" section:

=CODE_START=
Option           "MaxTapMove"    "220"
=CODE_END=

If you find that instead of dragging a file or folder to another location you merely open it, it may well be that this setting is either too coarse or fine. Note the default and experiment with it to see if you can get it working. If that option is not listed in the section then add it and save it. By the same token, if it does not already exist you can add this parameter too:

=CODE_START=
option      "LockedDrags"          "off"
=CODE_END=

If "off" is your default, then a tap and drag gesture ends only when you release your finger. If set to "on" the geature is active until you tap a second time. 

## Circular scrolling

Again, this feature may be enabled even without the Synaptics driver and/or may require firmware support. In my `Xorg.conf` file it is not listed in Mepis but it is operative in Ubuntu Dapper on my external USB drive. I found that the easiest way to enable the basic features was via the _Qsynaptics_ GUI. This allowed me to select one edge of the touchpad to emulate the middle scroll wheel of the mouse. How well many of the touchpad features work will depend, in part, on the sensitivity settings of the device and how it's configured. If the following lines do not exist, type the following into "Input Device" section:

=CODE_START=
Option      "CircularScrolling"          "on"
Option      "CircScrollDelta"            "0.1"
Option      "CircScrollTrigger"          "0"
=CODE_END=

The first line is self-explanatory. To disable amend to "off". If you want to set circular scrolling to a particular edge of the touchpad you can change `Circularscrolltrigger` to any of the following values:


=CODE_START=
0    All Edges
1    Top Edge
2    Top Right Corner
3    Right Edge
4    Bottom Right Corner
5    Bottom Edge
6    Bottom Left Corner
7    Left Edge
8    Top Left Corner
=CODE_END=


Specifying some value other than zero may give you the option to combine circular and horizontal/vertical scrolling. You will find that, depending on which edge you start from,  small, tight circles will effect fast scrolling whilst larger circles will scroll more slowly. If you manage that powerful combination, you've hit the motherload. Finally, the middle line (`CircScrollDelta`) allows you to adjust the angle (in radians) of your finger on the touchpad to generate a scroll event. Many of these settings will be configurable in GUIs like Qsynaptics, but some of the more esoteric ones listed immediately above will require delving into configuration files.

# Graphical front ends

There are two main GUIs for touchpad configuration: _Ksynaptics_, _Qsynaptics_. The first is, surprisingly enough, a KDE application and it should be in most software repositories. If not, [grab a copy here](http://www.kde-apps.org/content/show.php/KSynaptics?contenithout=17286). These two frontends are your portal into Xorg.conf file without actually sullying your hands with a text file or amending parameters with synclient. The GUI is in effect the lazyman's synclient as it does essentially the same thing--but without the power options. 

<!--pagebreak-->

Of course, as with any GUI, ease and convenience comes at the cost of less granularity and it is definitely a case of horses for courses. If you only want the easily accessible basics then the GUIs will do very nicely thank you. However, if you want to power tweak and you are an inveterate tinkerer then a combination of synclient on the command line (good for debugging the touchpad and discovering/amending settings and permitting changes to the trackpad settings on the fly) and editing the Xorg.conf file is the way to go; and hell, you can use them all in any combination you desire. This is GNU/Linux!   

=ZOOM=Of course, as with any GUI, ease and convenience comes at the cost of less granularity and it is definitely a case of horses for courses=

## Ksynaptics

Ksynaptics will run as a stand alone application or embedded inside Kcontrol Centre (just select _Peripherals_ in the left-hand column and click on _Touch Pad_) and it is the best-looking of the GUIs. It is intuitive and well laid out. It is blissfully easy to use--with one proviso. Being a GUI it has, inevitably, dependencies and in my case it installed without complaint and ran too. There was one problem, so here's a warning: the Synaptics driver version 0.14.4 was required. Installing a stand alone version of it cordially invited me to uninstall an entire desktop, amongst other files (including Ksynaptics itself). There was no such problem on my Ubuntu laptop. The application is triple tabbed:

=IMAGE=Touch_Pad_General_tab.jpg=Touch Pad General tab=

=IMAGE=Touch_Pad_Tapping_tab.jpg=Touch Pad Tapping tab=

=IMAGE=Touch_Pad_Scrolling_tab.jpg=Touch Pad Scrolling tab=

If this worked on my Mepis laptop, I would be in hog Heaven. It is a supreme example of a clear, clean, well thought out front end for the basics of `Xorg.conf`. The basic settings are virtually intuitive but that said, point and click will only take you so far and may not even work despite appearances. 

## Qsynaptics

Using the QT toolkit, this GUI produces a less attractive and slightly less functional appearance. Again, if not in your software repositories grab a Debian binary or source package (with links to RPMs) [here](http://qsynaptics.sourceforge.net/dl.html). It is essentially a less pretty QT clone of Ksynaptics. It does the same things, so I will not sully your retinas with the obligatory screenshots. Suffice it to say, if I did you would see that all options are grayed out because it tells me that I need to enable SHMConfig (though a quick look at my `Xorg.conf` file tells me that it is present and on) and install the Synaptics Touchpad driver (I have). Fortunately, it _is_ working on the Ubuntu laptop, and although the option to turn off the touchpad entirely works perfectly, circular scrolling and edge scrolling work but in a somewhat erratic fashion with settings not being persistent once you close the session.

One way to possibly solve this problem is to make changes persistent by making the changes in the GUI and then adding the program to your startup scripts: for Gnome just add `gsynaptics-init` to the list of startup programs in System→Preferences→Sessions. For KDE users jusr add `gsynaptics-init` to your `.xinitrc` or `.xsession` startup scripts.  

## A final tip for Firefox users

If, despite everything, your touchpad is behaving like an errant delinquent, you can at least give it a Basil Fawlty-like thrashing and prevent horizontal scrolling being misinterpreting as a backwards trip through webpages in Firefox.

Open Firefox and type the following in the location bar:

=CODE_START=
about:config
=CODE_END=
 
and scroll down to the following line:

=CODE_START=
mousewheel.horizscroll.withnokey.action
=CODE_END=

and set the value to 0. Also, select this line and amend the value to true:

=CODE_START=
mousewheel.horizscroll.withnokey.sysnumlines
=CODE_END=

# Conclusion

The Synaptics Touchpad is a salutary story of everything that is good and bad about GNU/Linux. When I started to research and write this article I anticipated a successful learning curve and a happy outcome. How wrong I was. The diversity of GNU/Linux is wonderfully empowering but it means configuring across multiple distros (never mind writing about them) which is like trying to juggle six balls simultaneously.

=ZOOM=There is still little danger of my mouse going into the desk drawer to gather dust=

The problems with getting the GUIs to work properly, the relative obscurity of the configuration options, the multiplicity of available distros and the range of touchpad features all mean that, minor configuration apart, there is little danger of my mouse going into the desk drawer to gather dust. A simple equation has to be made: how much works, how complicated is the learning curve and configuration and is the end result proportionate to the effort? Given my distros and my particular touchpad, the effort and learning curve did not reward me sufficiently to tempt me to abandon the little rodent. RSI will just have to remain an occupational hazard. Touchpads, if fully featured and properly configured and [supported](http://web.telia.com/~u89404340/touchpad/compatibility.txt), are a boon to a weary mouse finger but when they are not they look like a solution in search of a problem. In the meantime, if you want to explore the matter further there is a really excellent distro-neutral guide at the [Gentoo wiki](http://gentoo-wiki.com/HARDWARE_Synaptics_Touchpad) which covers most topics, another particularly good one at the [Arch Linux wiki](http://wiki.archlinux.org/index.php/Touchpad_Synaptics) which can be applied to most distros and lastly a stonkingly [powerful and detailed explanation of all the available configurations](http://www.logic.at/staff/preining/acer/xorg.conf).
