---
nid: '2485'
title: 'How to take screenshots with Scrot'
authors: 'Gary Richmond'
published: '2007-09-04 21:25:39'
tags: 'imagemagick,command-line,scrot,screenshots'
license: verbatim_only
section: end_users
listed: 'true'

---
Screenshots. Where would the internet be without them? They are ubiquitous and when you are researching that latest piece of cool software or the latest ISO of your favourite GNU/Linux distro they are an opportunity to preview the eye candy. There are many ways to make those screenshots and most KDE and Gnome users will be familiar with the GUI tools bundled with them: Ksnapshot for KDE and Take Screenshot for Gnome. They are good at what they do. However, sometimes you just need to take screenshots quick and dirty without the overheads (especially if you are using a lightweight windows manager on a  relatively low-spec machine). If that's your case, you can use “Scrot”.


<!--break-->



# Welcome to Scrot

Scrot (SCReenshOT) will probably not come pre-installed with your distro; so, as ever, it is a case of a quick visit to the software repositories. If that turns up a blank you should be able to download a source tarball or a pre-compiled binary at [the official site](http://www.linuxbrit.co.uk/scrot/). If not you can always get it at [Klik](http://www.scrot.klik.atekon.de/) which should install it for you across a wide range of distros. Just follow the instructions on the website to enable the Konqueror and Firefox browsers to use it.

This is not the place to launch into a detailed comparison of available screenshot tools, graphical or command line. Suffice it to say, by the end of this article, I hope I will have demonstrated the power and utility of Scrot which, despite being a command-line tool, offers the user an excellent screenshot tool with power options to suit most requirements. If you want to see the commands Scrot supports just type `man scrot` in a terminal.


# Ways of running Scrot

Scrot is a command-line tool (written in C and using the `imlib2` library); so obviously you will be running it in a console within your X windows session.

I find that in order to clear the way for the screenshot quickly and to avoid switching between the mouse and the keyboard, it is useful to have **Yakuake** installed. It is a Quake-style terminal emulator. You can either use your package manager to install it (if available) or get [Yakuake here](http://www.kde-apps.org/content/show.php?content=29153). Once installed and run, the terminal screen can be pulled down and retracted very quickly by toggling the F12 key. This is very useful speed tweak after you have issued a Scrot command.

However, there is an even better way to launch a Scrot command: just press `Alt+F2` and type in `scrot`, hit run and you're done.

If you want to take it one step further and avoid the hassle of even opening the run dialogue, then right-click on an empty space on the taskbar and select _Add Applet to Panel_ and from the GUI scroll down to `Run Command`, click on it and add it to the panel. This will add the ability to type commands directly into the Gnome panel. So, you can type a Scrot command directly into the panel without ever needing to open a console in an X-windows session or call up `Alt+F2` again. The added bonus of taking a few seconds out to set this up is that it will persist across reboots and always be there to launch any programme without resort to the Start menu or `Alt+F2.`

Inevitably you will want to take more than simple screenshots, especially where it involves demonstrating menus, submenus and tabs. As with graphical tools like Ksnapshot you will need to incorporate a delay whilst you set up the screenshot. If it involves a lot of navigation through a thicket of menus/tabs then it it a good idea to do a dry run and roughly time how long it takes to set up that screenshot and then add on an extra five seconds to allow for sloppy mouse actions. Once you have done this you are ready to craft a Scrot command.


# Don't delay—or rather, do

Having done everything in two preceding paragraphs, go ahead and set up a command. Here is one which will take a screenshot in the JPEG format after a delay (to allow you time to set it all up) of, say, 5 seconds:


=CODE_START=

scrot -d 5 desktop.jpeg

=CODE_END=


# We have liftoff!

NASA aren't the only ones who can launch with a countdown. If you like all the bells and whistles, you can run a neat little countdown facility by adding a simple parameter to that command. Just type:


=CODE_START=

scrot -d 15 -c desktop.png

=CODE_END=

and you can experience the dubious pleasure of watching Scrot flaunting it's numeracy skills.

The length of the delay you set will depend on the simplicity or complexity of the screenshot you are setting up and you will of course give it a contextually appropriate name. Scrot is not too strict as regards syntax. The last command could also have been typed as:


=CODE_START=

scrot desktop.png -d 15 -c

=CODE_END=

and it works equally well. If you wish to specify a window or part of a screen (use your mouse to draw out a selected area) then just append `-s` thus:


=CODE_START=
 
scrot desktop.png -s

=CODE_END=

 and then use your cursor to draw out the area for your screenshot. A number of useful points here: by default, Scrot automatically saves screenshots to the current directory you are in (usually the home directory) so if you wish to save to a different one, `cd` to it first before executing a command. Like ImageMagick, another useful command-line tool for taking screenshots, Scrot supports many formats including, of course, the ubiquitous PNG and JPEG formats.


# Scrot's other tricks

Scrot can do all of the above but it has a few more tricks up it's sleeve: if you want to create thumbnails for a web gallery or to save space by way of compression, you can always do so manipulating the screenshot later using a program like Gimp. Scrot can incorporate that in one line by simply adding the `-t` option followed by the percentage by which you want to compress it. If you want to include the WM border too, append `-b.` You can set the quality (size and compression) with `-q` followed by a number between one and one hundred (seventy five is the default).


# OK, say cheese everyone...

We all like to find clever and cool ways to do things, and if you have acquired any reasonable command-line skills then you won't need to be a genius to think of ways to combine that knowledge with Scrot's power. Once a screenshot has been taken, you might want to do some editing—to change format, compress, crop, resize etc. Normally, you will right click on the saved image and select the graphical tool of choice to do the job, or just open the graphics package separately and navigate to the relevant directory; however a little command-line magic can do that for you too. When you want to run multiple commands you can join them together by using the double ampersand. This means that if the previous command is true it will execute the following one. In this case you can append the name of the graphical package of choice for editing the screenshot Scrot has just taken.

So, let's put all those options together in one big line and run it:


=CODE_START=

scrot -d 5 -q 95 -t 30 screenshot.jpeg -b -s && gwenview screenshot.jpeg


=CODE_END=

Done! Yes, it's a bit of a mouthful but once you've memorised it Scrot is a very powerful and useful piece of software and doubtless readers can think of many commands that can be used in conjunction with Scrot to extend its utility. The only features it seems to lack are the ability to convert image formats and take multiple screenshots. For that you will have to use ImageMagick— which, fortunately, comes pre-installed with most GNU/Linux distros.


# Snap it the ImageMagick way

Although this article has been about Scrot I can't resist finishing off with a very brief howto with ImageMagick for taking multiple screenshot in one command-line pass. This is one feature that would make Scrot complete and it's called snap. Append this parameter to the basic `import` command and you can take multiple screenshots of the number you specify:


=CODE_START=

import -delay 20 -snaps 4 snapit.jpeg

=CODE_END=

Prepare the screens you want to capture, mimimize them all, type that command and then use `Alt+Tab` to toggle through them one at time, clicking on each one. (You can type into the Run command box in the Panel as per Scrot.)  Go to the directory in which you saved them and you will see the screenshots. They will all have the same name (in this instance "snapit") and they will be numbered from 0 through to 3—four in total. Neat. Obviously, you can specify the number of snaps and of course, like Scrot, you can specify the format, amongst other things.


# A disclaimer

For all of you who have the welfare of open-source software close to your hearts I wish to assure you that no GUI graphics packages were harmed in the making of this article.

