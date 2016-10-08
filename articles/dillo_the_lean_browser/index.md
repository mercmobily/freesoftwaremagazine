---
nid: '2847'
title: 'Dillo the lean browser'
authors: 'Gary Richmond'
published: '2008-04-30 20:18:10'
tags: 'html,browsers,dillo'
license: verbatim_only
section: end_users
listed: 'true'

---
Using browsers which are Web 2.0 enabled whenever you just what to Google something is like calling out the Fire Brigade when you have just burned the toast. Definitive overkill. If you are just surfing for information, then you want the little browser on the low fat, low body-mass index, skinny latte diet with a low carbon footprint. If [Dillo](http://www.dillo.org/) were a catwalk model, it would be size zero. Think of it as the Victoria Beckham of browsers-- but better looking; where the big hitters like Firefox, Flock and Opera sometimes move like a Sloth on Mogadon, Dillo tears down the track like a Whippet on speed.

If you can program in C/GTK+, you can also get involved with this worthy project: see the bottom of the article for more information.

<!--break-->

# Enter Dillo

Dillo has a very small foot print - 420KB (and only 350KB for the binary). That is why it is always, invariably, included in anorexically-small distros like Damn Small Linux (DSL) and Puppy Linux where space is at a premium. If it were any leaner it would morph into text-based browsers like Lynx! It is justly famed for it small size and speed, so you can expect to find it in your distros' repositories, including all the big hitters like Fedora, Debian, Mandriva and Suse. Failing that, you can always download the source code and install from there. Oh, and it [runs on an impressive array of platforms too.](http://www.dillo.org/Compatibility.html) Whenever I install a new distro and am setting up my comfort zone I never consider the process complete until Dillo has a desktop icon.

=ZOOM=A meal for the health conscious, a low-fat spread; the Benecol of browsers=

Weight wise, Dillo is definitely fashionable. If it were any lighter it would be officially anorexic. This is a browser for the health conscious, a low-fat spread; the Benecol of browsers. beautiful it isn't though. It fell out of the ugly tree--and hit every branch on the way down too:

=IMAGE=Dillo's_splash_screen_with_GPL_credo_prominent.jpg=Figure 1: Dillo's splash Screen with GPL Credo Prominent=

This is the price it pays for speed and portability across most distros. It is written in C and uses GTK+, which means that the relative bloat of GNOME or KDE are not required. It makes a good fist of the bulk of HTML rendering but if you are visiting Java-heavy sites you'll be out of luck. It doesn't support JavaScript or JVM. Configuration/preferences settings are suitably Spartan:


=IMAGE=Dillo's_Preferences_on_a_low_fat_diet.jpg=Figure 2: Dillo's Preferences on a low fat diet=

Bookmarks have not been lavished with feature bloat either, as this screenshot shows:

=IMAGE=Dillo's_Bookmarks_spartan_but_functional.jpg=Figure 3: Dillo's Bookmarks spartan but functional=


and Dillo has the absolute basics you'd expect of a browser: navigation buttons, save as, view page source and the ability to copy/paste URLs--but damn it, you can use it as a [browser in an embedded device in kiosk mode and dispense with the windows manager](http://www.linuxdevices.com/articles/AT2869412121.htm). Hell, I'm convinced I could embed Dillo in a Slide rule if I had the programming skills! More interestingly, you can view local HTML files and graphics formats like PNGs, GIFs and JPEGs on your hard drive. Fast. Much faster than Konqueror (note the file path in Dillo's location bar):

=IMAGE=Dillo_handles_local_files_and_their_graphics_too.jpg=Figure 3: Dillo handles local files and their graphics too=

For those using old hardware where space and performance are paramount that is a positive boon. Dillo can therefore be used with minimalist Window Managers like Fluxbox, XFCE and ICEWM with outrageously low hardware specifications. If you need to browse to sites which require advanced features Dillo doesn't support, you can always fall back on the usual runners and riders.

For the politicos of Open Source, they will be pleased to know that it is GPL compliant and aims for what its developers call "the democratization of internet information access". They also claim that Dillo avoids all the traditional browser security pitfalls by being GPL, (meaning the source code is available with no hiding place for trojan horses) is immune to outside browser programming, not silently sending unauthorised under data across the net and being [RFC-2965 compliant](http://en.wikipedia.org/wiki/List_of_RFCs) in respect of cookies.


=ZOOM=Dillo is cleaner than Father Ted's bank account=


Dillo is the little browser from Hell -if you're the sort of person or company that relies on browser feature bloat to control people's computers and install all manner of unspeakable beastliness. For lovers of open standards, speed, stability, safety and transparency it is the browser from Paradise. Other browsers may fur up with arterial sludge but Dillo is cleaner than Father Ted's bank account. It is the little browser that could.

# Can you help?

That's the good news. The bad news is that the Dillo project is frozen, awaiting funds and or sponsorship. If you have the programming skills, the spare time and the political will this could be a very "politically correct" project in which to get involved. If you fit the description, you can [volunteer your time and or money at the homepage.](http://www.dillo.org/donations.html) Dillo deserves all our support. It epitomizes the best of Open Source philosophy and practice.

# Bibliography: Dillo resources

* [homepage](http://www.dillo.org/)
* [mailing list](http://www.dillo.org/MList.html)
* [donations](http://www.dillo.org/MList.html)
* [help develop Dillo](http://www.dillo.org/MList.html)