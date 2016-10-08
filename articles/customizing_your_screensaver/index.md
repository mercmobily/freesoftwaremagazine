---
nid: '2449'
title: 'Customizing your screensaver in GNOME'
authors: 'Marco Marongiu'
published: '2007-08-09 15:25:00'
tags: 'ubuntu,screensaver,logo,tyrrell'
license: verbatim_only
section: end_users
listed: 'true'

---
One popular screensaver in Ubuntu is “Floating Ubuntu”, which displays a number of Ubuntu logos floating around the screen. This screensaver exists in many different flavours; for example in Ubuntu you can also find “Floating Feet”, that has the GNOME logo instead of Ubuntu’s; or, on Debian you have Debian’s “swirls” floating around. I thought that it would probably be easy to customize it and have an image of my choice floating around instead. Unfortunately, screensavers in Ubuntu are not configurable using the GUI so I had to hack the screensaver myself. Here’s how I did it.


=IMAGE=P34-Scheckter-1976.jpg=The Tyrrell P34 “six wheeler” in 1976. The driver in the photo is Jody Sheckter, who drove that car to the victory in the Sweden GP in the same year=

When the company I work for gave me a personal laptop for the on-call service, I christened it “tyrrell”, naming it after the Formula 1 team that was was bought by British-American Tobacco and raced its last season in 1998. If the name of this team doesn’t ring a bell, then you may remember the Tyrrell P34 car, known as “six-wheeler”: the one and only six-wheeled Formula 1 car to race in the World Championship. If you still don’t know what I am talking about, don’t worry! It’s not that important as far as this article is concerned.

Anyway, I decided that I wanted a Floating Tyrrell screensaver, with the team’s logo floating around on the screen. Doing some research on Google, I found that what I needed was a file in the `/usr/share/applications/screensavers` directory, and that Floating Ubuntu’s configuration file was `ubuntu_theme.desktop`. Now if you look into the file you’d easily guess what you need to do to customize the screensaver with an image of your choice:


=CODE_START=

[Desktop Entry]
Encoding=UTF-8
Name=Floating Ubuntu
Comment=Ubuntu logo floating around the screen
Exec=floaters /usr/share/pixmaps/ubuntu.svg
TryExec=floaters
StartupNotify=false
Terminal=false
Type=Application
Categories=GNOME;Screensaver
X-Ubuntu-Gettext-Domain=gnome-screensaver

=CODE_END=

You just need to change the `Name`, `Comment`, and the image path in the `Exec` line. Since you need administrative rights to do that, you’d better open a terminal (in menu Applications→Accessories→Terminal), type the command `sudo -s` and insert your administrative password. After doing this successfully, you’ll have a root shell, so **behave!**.

Once you have a root shell, you need to create a new file for your screensaver. I suggest to do it this way:


=CODE_START=

cd /usr/share/applications/screensavers
cp ubuntu_theme.desktop tyrrell-floaters.desktop 

=CODE_END=

Now we have a new `tyrrell-floaters.desktop` file that you can customize at will. Type `gedit tyrrell-floaters.desktop` to open the file in the text editor. My `tyrrell-floaters.desktop` file is below:


=CODE_START=

[Desktop Entry]
Encoding=UTF-8
Name=Floating Tyrrell
Comment=Bubbles the tyrrell logo around the screen
Exec=floaters /home/bronto/Pictures/tyrrell-logo-square.jpg
TryExec=floaters
StartupNotify=false
Terminal=false
Type=Application
Categories=GNOME;Screensaver
X-Ubuntu-Gettext-Domain=gnome-screensaver

=CODE_END=


=IMAGE=Screenshot.jpg=A preview of the “Floating Tyrrell” screensaver=

Now go in the System→Preferences→Screensaver menu, and find the “Floating Tyrrell” item in the “Screensaver theme” column. Click on it and you’ll get a preview of your customized screensaver. Yes, you’ve finished already!

One small note at the end: I used a raster, JPEG image. You’ll get better results if you use vector images, e.g. images in the SVG format (Scalable Vector Graphics) that scale without deteriorating in quality. For example, the image used in the Floating Ubuntu screensaver is an SVG: you can size it up or down without losing any definition.

**Disclaimer:** the Tyrrell images I used in this article were found on the internet; I believe they are public and it’s legal to use them. In case I went wrong, please just contact me with full ownership credentials and I’ll promptly remove them.

