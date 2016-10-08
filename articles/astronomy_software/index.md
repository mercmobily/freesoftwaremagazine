---
nid: '1748'
title: 'Fun with free software astronomy'
authors: 'Alan Berg'
published: '2007-01-17 6:30:00'
tags: 'astronomy,software-review,celestia,stellarium'
issue: issue_15
license: cc-by
section: end_users
listed: 'true'

---
Astronomy software comes in many forms—from the details of computer intensive Grid computing of the distribution of stars (okay that’s astrophysics) to rendering the night sky in artistically detailed and sumptuous graphics. Being a devoted backseat observer to the evolution of the Universe in general and GNU/Linux software in specific, I thought it was time to show off what I consider to be the elite of desktop elegance. I will describe the installation and use of two astronomy related software packages: Stellarium and Celestia. These packages are visually appealing and fun to use. You never know, you might learn something along the way. And, if not, at least your eyes will feast upon some delicious candy.


=IMAGE=f1.jpg=Figure 1: Stellarium with constellation art rendered=

Stellarium (figure 1) is a sky renderer that marries accuracy and correctness with pure, unadulterated art. The software is a precision tool with hairline accuracies, which places you anywhere in the world at any time. You may even choose to view the heavens from the moon. Don’t be fooled by the software’s 0.8 version label (at the time of writing). This is one of the highest quality products in the market place.


=ZOOM=Stellarium is one of the highest quality products in the market place=

Celestia is a real time 3D space simulation; using open GL graphics (figure 2) and a plug in infrastructure, this software delivers an educationally valuable double punch. You may tour the solar system or with the help of extra datasets discover the scale of the known Universe. Both Stellarium and Celestia have a supportive community of developers and their project homepages reside on Sourceforge.


=IMAGE=f2.jpg=Figure 2: Celestia’s view of Earth via the software’s default dataset=


# Memories

Why am I writing this? This is an article based on a remembrance of my father and reinforced by the brilliance of modern well-written open source Astronomy software. When I was five or six my father used to walk with me on cold winter nights from my house at the top of a country hill to the bottom where my sports club existed. Cold nights were perfect for viewing the stars. My father loved to tell me stories of the Greeks and the Romans and relate them to the patterns above. We had an understanding that during these quiet moments only the stars counted and nothing else was said. Therefore, it was with great pleasure that I recently rediscovered the software version of this experience. Living in a big city (Amsterdam), where city lights, air pollution and airplane and car traffic limit the quality of stargazing, a high quality software simulation is the nearest I can meaningfully get to the past.


# Installation

There are many differences between a desktop environment and a minimalist production environment. At a guess, on my desktop there sit menu links to over a hundred useful or fun programs—from a rather overburdening array of addictively joyous games to utilities for burning CDs and reading RSS feeds. Regularly, there is a new set of updates. In fact, once in a blue moon, I sit at home with a glass of whisky and a dubious smile on my face installing the newest and the best. Package managers such as YUM (RPM) and APT (DEB) support this craving. Under this context, I would be foolish to compile and deploy new sources by hand. Updating all the software and seeking dependencies would not be achievable or pleasant. Therefore, for installing astronomy packages in a desktop environment, I would strongly recommend the use of a package manager. For a server environment, where you want a minimum of software tailored for specific tasks, the need is less stringent and perhaps even counter-productive.


=ZOOM=For installing astronomy packages in a desktop environment, I would strongly recommend the use of a package manager=

There are three main methods for installing software within a GNU/Linux environment. The primary method is the use of a package. Packages not only contain the software but are also structured to place the software correctly within the target GNU/Linux distribution. Complexities such as dependencies and file structures and placing menu options with the GNOME or KDE X windows environments are understood. Upgrading is trivial. Therefore, I will use this approach to install Stellarium and Celestia, even at the risk of stating the obvious. Zooming into the details of installation: there are two main competitors in the packaging domain RPM and Debian packages. For Debian, packages `apt-get` or tools sitting on top of `apt-get` do most of the heavy lifting. For RPM, YUM is currently my tool of choice. Both methods are best suited to a live internet connection, and if you are automatically updating your system every night through a cron job, then you will probably need a reasonably fast internet connection at that.

The second approach is to download the tar files and compile by hand. If you are lucky, things work out via a couple of standardized commands such as `configure`, `make`, `make test`, `make install`. If you are unlucky, patching and library dependencies can make for an evening of dependency hell.

The third and final approach is the use of an executable custom executable (normally called "installer") that copies the right files in the right spot, and sits outside of DEB or RPM package control. However, I won’t be using this method in this article.

There are numerous GNU/Linux distributions, and the vast majority understand either RPM or DEB packaging; I will, therefore, describe both means of installation for Stellarium and Celestia. The target operating systems being both Fedora Core 5 for YUM/RPM and Ubuntu Breezy for APT.


## Installing on Fedora Core 5

To install Stellarium and Celestia under Fedora Core 5 using YUM from the command line as either root (bad idea) or a user that can `sudo`, first check that you have the most current version of YUM:


=CODE_START=
sudo yum update yum
=CODE_END=

Next, search for the Stellarium package:


=CODE_START=
sudo yum search Stellarium
=CODE_END=

You should see a verbose output and discover a relevant description within it. The partial output should look similar to:


=CODE_START=

stellarium.i386                          0.7.1-7.fc5            extras          
Matched from:
stellarium
Stellarium is a real-time 3D photo-realistic nightsky renderer. It can
generate images of the sky as seen through the Earth's atmosphere with
more than one hundred thousand stars from the Hipparcos Catalogue,
constellations, planets, major satellites and nebulas.
http://stellarium.free.fr/

=CODE_END=

Notice that the package can be found under the “extras” repository. A repository is the place that all the packages, or a relevant group of packages, reside for a given distribution. If you don’t have the extras repository then search for the YUM extender under the System menu option and create a new entry.

The main disadvantage of installing a package is that sometimes the package is older than the latest and the best. The Stellarium package was also true form.


<!--pagebreak-->


Assuming that you, like I, are running a boring old Intel based system then you may install the software via:


=CODE_START=
sudo yum install stellarium.i386
=CODE_END=

If you run into problems at this point, I refer you back to the Stellarium homepage. You will find downloads for Mac and Windows users as well.

When trying to understand a new package I always read the man pages:


=CODE_START=
man Stellarium
=CODE_END=

At the bottom of the page is the “see also” section, which gives hints to other relevant packages that may be worth installing.

Under the standard GNOME Windows manager, Stellarium is linked under Applications→Graphics→Stellarium nightsky render. To be honest this location confused me the first time as I was looking under the more intuitively obvious Edutainment section.

Installing Celestia is just as simple


=CODE_START=
sudo yum install celestia.i386
=CODE_END=

The GNOME menu option to look for is again under the graphics section “Celestia space simulator”.

And could life be that simple? Yes and no, both packages are now installed, but I still had an issue with a non-running Stellarium. Running from the command line, I received the following output:


=CODE_START=

-------------------------------------------------------
[ This is Stellarium 0.8.0 - http://www.stellarium.org ]
[ Copyright (C) 2000-2005 Fabien Chereau et al         ]
 -------------------------------------------------------
Warning: Couldn’t set 1024x768 video mode (No video mode large enough for 1024x768), retrying with stencil size 0

=CODE_END=

Two causes of concern the copyright notice and the screen resolution of the windows manager. I alleviated the copyright concerns by reading the products [FAQ](http://www.stellarium.org/wiki/index.php/FAQ#What_is_Stellarium.3F) Phew, the product was GPLed. The screen resolution issue was due to the default setting of 800x600 for my installation of Fedora. I had two choices. The first to change the settings in `~/.stellarium/config.ini`:


=CODE_START=

[video]
fullscreen  = true
screen_w    = 800
screen_h    = 600

=CODE_END=

Or modify `/etc/X11/xorg.conf`. Stating the obvious, if you damage this file then you may have to rescue your installation and copy back a backup of the original xorg.conf. So please be careful. I needed to update the configuration file all lines with modes needed to be updated as follows:

`Modes "800x600" "640x480"` changed to `Modes "1024x768" "800x600" "640x480"`

Now, if you had the same issues, restart your Xserver or reboot your system. For most modern systems, the new higher resolution should kick in.


## Installing on Ubuntu

`apt-get` is a valid tool for package installation under Ubuntu. To update the packages available you should run:


=CODE_START=
sudo apt-get update
=CODE_END=

Next, you will need to search for the relevant packages:


=CODE_START=
sudo apt-cache search Stellarium
=CODE_END=

And finally install:


=CODE_START=
sudu apt-get install Stellarium
=CODE_END=

The same sequence is valid for Celestia. As a bonus try and install _ssystem_ and _kstars_.


# A super fast tour of the software


## Stellarium

Stellarium is valuable for amateur sky watchers representing a polished approach to learning your way around the sky. The software has a highly intuitive point-click-and-zoom structure for accurate placements and the ability to set Earth coordinates and time. On starting, click on a named object (for example the moon) and then press the space bar. The space bar selects and centers the object. To zoom in you may use the scroll wheel on your mouse or the page up and down buttons. To ask for help press ‘H’, a list of keyboard combinations is then listed. At the bottom left-hand-side of the screen is a single line of icons that turn on and off particular features such as the drawing of the constellations, the blur effect of the atmosphere, or the adding of a background landscape. The spanner icon allows for configuration. On the bottom right-hand-side are icons that affect how fast time passes, placement of stars and planets relative to the horizon of the Earth or the point in the heavens that the spacebar has actively centered. I would recommend turning off the atmosphere, then zooming in on Saturn and accelerating time. Then you can watch the planet’s satellites gingerly rotating around their mother.


=ZOOM=Stellarium is valuable for amateur sky watchers=


## Celestia

To be impressed from the very beginning go to the help option at the top of the page and run the demo. Either you’ll be very impressed or you’re a time traveler from planet “Dezog” in the galaxy “No Emotions”. To gain insight, you can popup a list of mouse and keyboard controls via “Ctrl + H”. To move around the heavens you can drag the sky around with the left mouse button. Clicking on an object targets it, to centre press ‘C’. Right-clicking on an object gives you the “go to” option, and within a short time from selection, you will be near the chosen target. To zoom in on the target you may use the scroll wheel of your mouse or both the left and the right mouse buttons at the same time and then dragging. This last option sounds difficult, but, after a few seconds practice, it just seems so obvious.

Celestia is highly expandable—with detailed image maps and models of spacecraft downloadable, and yes, there are tours. There’s also an excellent resource site and an expanded version of Celestia for the education market. If you have a good, fast connection and enough disk space, it’s well worth downloading the 1GB educational distributions and installing them. Installation is via expanding archived data into the correct file locations under the root directory of the package. I would, of course, recommend that you try the basic version out first.


# Final Comments

I am truly impressed by the total experience delivered by the software mentioned, in particular I was awed by the photo quality imagery. I therefore look forward to sharing quality time pointing to the virtual sky with my two sons Lawrence and Nelson and explaining the stories that my father had shared with me on those clear winter nights.


# Acknowledgements

I would like to acknowledge my father’s valiant efforts at trying to turn me into an educated man.


# Resources


* [Celestia educational extras](http://www.celestiamotherlode.net/catalog/educational.php)
* [Celestia homepage](http://www.shatters.net/celestia/)
* [Stellarium homepage](http://www.stellarium.org/)

