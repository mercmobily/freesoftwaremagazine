---
nid: '3062'
title: 'The H3v web browser. Is it a Dillo killer?'
authors: 'Gary Richmond'
published: '2008-12-01 1:56:39'
tags: 'browsers,dillo,h3v,tkhtml'
license: verbatim_only
section: end_users
listed: 'true'

---
When it comes to browsers, the Unix community is positively spoiled for choice: Firefox, Konqueror, Flock, Opera, Epiphany, Galeon, Kazehakase, Links, Elinks, Lynx, W3m and Dillo. From the minimal to the relatively bloated all life is there. You might just be thinking that we need another browser like Medieval Europe needed the Bubonic plague, but I'm always a great fan of the different and new, of people doing their own thing. Even Firefox had to start somewhere. [H3v](http://tkhtml.tcl.tk/hv3.html) is a relative newcomer to the browser pack and it definitely falls into the "lean, mean" category. I think it deserves a little more  exposure.

<!--break-->

Most modern browsers are packed with features to work across a wide range of sites and therefore can handle Javascript, Frames and CSS as standard. Of course, you get a lot of stuff when these features are built in, but if you are security conscious and don't want to be distracted by extraneous content when you are just doing basic search stuff, the big hitters like Firefox and Opera may be superfluous to the job. At the other end of the scale many people opt for browsers like Lynx and Links which, being text based, reveal the true speed of the internet, even on slower connections. Browsers like Dillo occupy the middle ground, giving you the graphical experience but shorn of the heavy elements that eat memory and processor power. Dillo has occupied that position for some time now and hasn't really had any serious competition, so I was curious when I bumped into Hv3. It is built on the [TKhtml3 engine](http://en.wikipedia.org/wiki/Tkhtml) which is free software; it's written in C and has passed the [W3c Acid2 test](http://www.webstandards.org/action/acid2/).


=ZOOM=it's not a very catchy or memorable name but then neither is K3b=

Yes, it's not a very catchy or memorable name (it's short for html viewer) but then neither is K3b and that piece of burning, ripping software is one of the gems of GNU/Linux, so we shouldn't judge it by name alone! But if it ever becomes a niche browser, a name change might be in order. That said, let's look at the substance.

# Hooray! No dependencies

The first and best news about Hv3 is that it is a statically linked, self-contained executable. It should work on _any_ platform (though there is a specific package for Puppy Linux). Installation is a blissfully simple matter: a copy and paste job from the [Hv3 page.](http://tkhtml.tcl.tk/hv3.html):

`wget http://tkhtml.tcl.tk/hv3-linux-nightly-08_0203.gz`

It uses [Wget](http://www.gnu.org/software/wget/) to download the file. Gnome users could use [Gwget](http://projects.gnome.org/gwget/) to drag and drop the Url on to the main Gwget window or, if you are in Firefox, use the [Fireget](https://addons.mozilla.org/en-US/firefox/addon/5508) extension to do the lifting. However, the simplest method is just to copy and paste it into a console and Wget will do the business.

Obviously, it is a compressed file so unzip it with:
 
`gunzip hv3-linux-nightly-08_0203.gz` 

To make the file executable use: 

`chmod`: `chmod 755 hv3-linux-nightly-08_0203` 

That's it. To launch the browser, issue the following command:
 
`./hv3-linux-nightly-08_0203`:

=IMAGE=H3v's_homepage_and_default_appearance.jpg=Figure 1: H3v's homepage and default appearance=

It launches very fast: comparable with Dillo, perhaps slightly faster. The feature set is minimal and so is the appearance, but it can be configured. (It might be nice for example to have the ability to set your home page preference. That shouldn't cause undue bloat.) Gray icons on gray is pretty bland but you can sex things up a bit. Just click on Options and choose a different icon set (and size). I picked 32x32 Tango icons:

=IMAGE=A_prettier_H3v.jpg=Figure 2: A prettier H3v=

That's better. That is just fluff though.

# How well does H3v render webpages?

How does it perform? In a word, fast, but more importantly how does it render web pages? Here is Dillo's rendering of Distrowatch which is a busy challenge:

=IMAGE=Dillo's_rendering_of_Distrowatch.jpg=Figure 3: Dillo's rendering of Distrowatch=

And here is H3v's effort:

=IMAGE=H3v's_rendering_of_Distrowatch.jpg=Figure 4: H3v's rendering of Distrowatch=

Not perfect if you compare it with rendering in Firefox or Konqueror to mention just two, but a really big improvement on Dillo. The contrast on Amazon is even more dramatic:

=IMAGE=Dillo's_rendering_of_Amazon.jpg=Figure 5: Dillo's rendering of Amazon=

=IMAGE=H3v's_rendering_of_Amazon.jpg=Figure 6: H3v's rendering of Amazon=

That comparison should be enough to persuade users to consider including H3v in their toolbox if only for the rendering. However, if you head to Free Software Magazine you will note that the FSdaily widget is missing and the link in each article to listen to an article is missing too. As for the official Mozilla Addons site, that just froze -- but at least you can open multiple instances of the browser. Like Dillo this browser does not support [SSL](http://en.wikipedia.org/wiki/Transport_Layer_Security) and therefore cannot use the `https` protocol and so online banking and credit card transactions are off the menu too. Given the lack of other security features, that is probably just as well. The developers never designed H3v for this kind of stuff. Clearly though, there is still work to be done and if the developers are to keep H3v lean some sites may never render properly. 

# Other features

You wouldn't expect a minimal browser to be packed with power features -- and you won't disappointed but it _does_ have some potentially interesting features.

In common with other browsers tabbed browsing comes as standard and you can maximise screen viewing space by selecting the _Options__ drop-down menu and hiding the GUI which has the same effect as an F11-enabled full screen. Search is a neat little touch in the way it is handled. You could of course type the URL of Google in the location bar, but an easier way is simply to type a search term in the location bar and search results will be returned in Google by default. If you want a choice of search engines then just click on _Search_ in the menu and choose from a number of search engines which will open a small search box along the bottom of the browser:

=IMAGE=H3v's_search_engine.jpg=Figure 7: H3v's search engine=

The choice is between Google, Yahoo MSN, Wikipedia and Ask. Mozilla bookmarks can be imported too (select _Import Data_) and they can be handled in an interesting way. When you save a bookmark a dialogue box opens with the ability to "save website text in database". This is, I think, a feature unique to H3v. The developers call it a "snapshot". In addition to the bookmark itself the bookmark's document content (minus script and images) is saved to a database:

=IMAGE=Bookmarking_the_H3v_way.jpg=Figure 8: Bookmarking the H3v way=

This means that the site can be viewed when offline and this works well. Save a page with a snapshot, disconnect from the net and you will still be able to view the bookmark (though not be able to follow links unless online again). This is a particularly useful as there does not seem to be any menu for "save page as". The icon for each bookmark indicates the snapshot status and this can also be set on or off. Deleting bookmarks is a rather roundabout affair. You have to select "start here" on the left-hand panel to display the bookmarks with the edit option, delete the contents and save. Unusual.

Snapshots have to be the best feature of H3v -- with one proviso. Launched in default mode H3v will only retain bookmarks and snapshot status for as long as it is open (and not even until the computer is rebooted). This is ideal for anyone who wants to browse without leaving any trace of URLs in the location bar, cookies or bookmarks. However, if you do want to retain these details the developers offer something called a "statefile" (actually an SQLite database). If enabled at launch on the command line, it allows the user to retain these features. 

I took this to be like a switch in Firefox for profiles or safemode, but despite reading the FAQs I was unable to discover how to get it to work, even after I had installed SQLite with `apt-get`. I e-mailed the developers for clarification but have not yet been contacted. If this can be enabled it would give the user choice in what version of the browser to start, according to their specific needs. 

Finally, you can browse local HTML and graphics files (PNG and JPG) files on your computer and bookmark them too, but you will not be able to access PDFs or MP3s. The browser will either hang or output gibberish. It was never designed for this either. The H in H3v stands for HTML after all. 

# It's only alpha but...

=ZOOM=Offline browsing without Google Gears is a real plus=

This browser is stable and fast, has some neat features and it is not even beta yet. It has legs and if that statefile option works it has the makings of a really niche browser. Offline browsing without Google Gears is a real plus. For such a lightweight browser it makes a decent fist of rendering websites and does it better in most instances than Dillo (although I have yet to upgrade to the latest version which may make a better job of this core functionality). It should work on any platform or distro which makes it portable and if you copy and paste the download and install instructions to a USB stick it really becomes truly portable. That's ideal for computers in libraries and cafes if you need to cover your tracks. Given a little more development, Dillo will have competition in the niche browser market.