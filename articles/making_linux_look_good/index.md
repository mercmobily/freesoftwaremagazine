---
nid: '2566'
title: 'Making KDE look good'
authors: 'Colin McGregor'
published: '2008-03-12 23:53:29'
tags: 'gnu/linux,kde'
issue: issue_21
license: cc-by-nc-nd
section: end_users
listed: 'true'

---
"Beauty is in the eye of the beholder" goes the old saying. What looks great to me, might not be very appealing to you.

Most GNU/Linux distributions pick default images that are bland, inoffensive, and boring, all of which have their place, but we can do better. This article will look at making your GNU/Linux machine look beautiful.

Note: this article only covers KDE.

<!--break-->

# Wallpaper

Screen wallpaper is one of those things we tend not to think about; the screen which gets quickly hidden with the "real" stuff: the web browsers, word processors and other actual applications. Improving it will really improve our computer image.

Wallpaper is a place where we can easily let our digital images shine. Alternatively this is a place where we can raid sources that are normally useless to GNU/Linux users, like some Microsoft Windows or Macintosh oriented websites. When it comes to images all our GNU/Linux machines care about is that we offer a .jpg.

While there are some great Microsoft Windows wallpaper sites, unfortunately some of the "free" image sites require you run Windows software. If a wallpaper website offers just a .jpg image file that look great to you, then grab the image and enjoy. If you find you are asked to download an .exe, or a .com file, then it is time to look elsewhere. Some wallpaper websites by default just show a little thumbnail image, that will look rotten when enlarged to full size, and you may need to hunt a bit for the full size version of the image.

If you do find an image on a wallpaper website that you want to use for background, it is easy to turn it into wallpaper. Put the mouse pointer over the image you want, click the left button on your mouse, and select "Save Image As...". You may have to note where the image is being saved to and under what name, as some websites default to some fairly odd names, and some browsers pick odd places to store images by default. You then will want to move the image to the folder `/usr/share/wallpapers`.

While KDE desktop can scale images up or down to match the current screen resolution, a 640 x 480 image typically doesn't look very good enlarged to 1600 x 1200.

Going the other way, a 1600 x1200 image wastes a lot of disk space if you’re only going to use it at 640 x 480. So when possible you want a screen image the same size as your current screen size. Several programs can change image size, GIMP being the best known, but if all you're interested in doing is changing scale, the much simpler KolourPaint is a better choice. 

=IMAGE=snapshot29.jpg=Figure 1: Image taken by the author in Toronto, Ontario's Little Italy minutes after Italy's 2006 World Cup victory. The image was rescaled for use as wallpaper with KolourPaint.=

Things get a little more complex if you want to use your own digital pictures and have a wide screen display. Most digital cameras have the same screen ratio as a regular TV, which is different from a widescreen monitor. You can let KDE stretch the image into shape, but the results can be very ugly. To keep things looking good the trick is to scale the your image to the width you plan use, then crop from the top and or bottom of the image. My widescreen monitor is 1680x1050, so I would scale the image to 1680 pixels wide and the crop a 1050 pixel high section.

=IMAGE=widescreen-wallpaper1.jpg=Figure 2: Image taken by the author in Perth, Ontario's Stewart Park just after a snow storm about to be cropped for use as wallpaper with KolourPaint=

It’s time to turn your image into wallpaper. Start by saving the image or images into the directory. Next click on _Control Center_ in the KDE main menu, and select _Appearance & Themes_. Click on _Background_. Now you can have some fun: for example you can put different images on each screen, or set-up a slide show (the background image will change). Here is where it is fun to start playing: the worst that could happen is you end up with some ugly looking wallpaper! You can play with these settings, but they do not become permanent until you click on "Apply". 

# Splash Screen

Just after you log in to your computer, but before you get the KDE main desktop screen  you will see for a few moments what is known as the splash screen. Some splash screens give information that GNU/Linux experts can use to help diagnose problems, but the main job of the splash screen is to tell people to wait. 

You can download splash screens from sites like [www.kde-look.org](http://www.kde-look.org/) or pick one included with your distribution. Click on "Control Center" in the KDE main menu, and select _Appearance & Themes_. Click on _Splash Screen_ and choose a splash screen.

# Screen Saver

One problem with CRT monitors is phosphor burn-in, where even after you turn off the monitor you can still see a ghost like image on the display. This normally happens when the display has been set to one image for a very long time. This normally happens with computers in commercial settings, like bank machines. Once a screen has phosphor burn there is not a lot that can be done, so the goal has to be to avoid burn in. While this is typically not a big issue in a home setting, no harm in being a bit cautious. The easy route to avoid burn in is to make sure the screen turns off after the computer has not been used for a while. The route to go is from the _Control Center_, click on  _Peripherals→Display→Power Control_ and _Enable display power Management_.

The second best route is to make sure that if you're not using the computer the display is regularly changing. For that you want Control Center_Appearance & Themes→Screen Saver: select something that appeals to you. Do click on "Test" to check the perspective screen saver as a few do leave some parts of the screen the same, which you don't want.

# Login screen

Shortly after you start your computer you will get a screen that asks you to enter a user name and password; this is the login screen, and is controlled by a display program. There are several display programs available. The best one for KDE users is `kdm`, which is often not installed by default, but can easily be installed with most distributions.

Changing the login screen is slightly more complex than changing the wallpaper screen. The login box will appear over the login screen image you decide. The login screen image or images can, if you want, be the same as the screen wallpaper. The images for use with the login screen by default are stored in the same directory.

To set this up you need to click on _Control Center_ in the KDE main menu, select _System Administration→Login Manager_. KDE gets a little security-conscious here compared to changing wallpaper: before you can alter anything here you will have to click on "Administrator Mode" and enter the root password. 

Under "Appearance", the "Position" option decides where the login box will show up, with X controlling right/left and Y controlling up/down. So, if you wanted the login box to appear near the right bottom corner you might put in X : 10  Y: 80. For the left top corner try X: 80 Y: 10 .

As before none of these changes will stick until you click "Apply".

=IMAGE=snapshot30.jpg=Figure 3: Setting up a new background image .=

# Conclusion

This is just a quick introduction, there are a lot of ways KDE can be made pretty, so try things!

# Sources:

There are many websites that carry attractive images. Among my favorite are:

[http://www.kde-look.org/](http://www.kde-look.org/)—This is where some versions of KDE go by default  when asked to "Get New Wallpaper". There are thousands of KDE related wallpapers, screen savers, splash screens and other things on this site. Some of the images promote specific GNU/Linux distributions and/or GNU/Linux related companies. While most of the material on this site is suitable for all ages, be warned there is a small amount of adult only material here.

[http://www.gnome-look.org/](http://www.gnome-look.org/)—This site, while oriented to the Gnome window manager has many great wallpaper images. As with the above, a small percentage of images are in questionable taste.

[http://wallpaper.deviantart.com/](http://wallpaper.deviantart.com/)—Another sometimes interesting general wallpaper website. As with kde-look, some of the images are not fit for polite company.

[http://www.digitalblasphemy.com/](http://www.digitalblasphemy.com/)—A wallpaper website, which always has some fascinating free samples, suitable for any sort of company. But the site's primary role is to promote Brian Bliss's CD-ROM sales and paid members only website.
