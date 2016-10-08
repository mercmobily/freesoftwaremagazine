---
nid: '2869'
title: 'The 2008 Google Summer of Code: 21 Projects I''m Excited About'
authors: 'Andrew Min'
published: '2008-05-13 21:14:33'
tags: 'google,summer-of-code'
license: verbatim_only
section: opinions
main_image: hide.jpg
listed: 'true'

---
The annual Google Summer of Code is upon us again. For the uninformed, that's when Google pays hundreds of students and hundreds of mentors to work on free software projects, ranging from AbiSource to Zumastor. This is where great projects like the GDebiKDE installer were created. And this year looks even better than before, with 175 organizations and 1125 students. So today, I'm going to do a short rundown of some of my favorites. I can't fit them all in (let's save some trees!), but these are just some that stood out for me. A little bit of [project planning](http://www.projectplanning.ws/) and (why not) luck will definitely make a lot of these possible!

<!--break-->

# OS

One thing that I've always wished Debian-based distros to have was a GUI for Aptitude. There are plenty for Apt (Synaptic, Adept, and KPackage are just a few), but the more powerful Aptitude only has its own terminal interface. Because of this, Obey Arthur Liu has begun work on a [GTK+ GUI for Aptitude](http://wiki.debian.org/SummerOfCode2008/Aptitude-gtk). If Obey completes it, I'm definitely using it.

Cross-platform is now officially the hottest thing for desktop environments. First, KDE announced that KDE 4 was being ported to Windows and OS X. Now, the lesser known Enlightenment project is doing the same thing. Student Dzmitry Mazouka is now [porting the Ewl and Etk libraries to the Win32 platform](http://code.google.com/soc/2008/enlightenment/appinfo.html?csaid=17C1AC5E7790A927).

The Grand Unified Bootloader (GRUB) is the bootloader that I personally use and what most modern GNU/Linux distributions use. However, it has a slight tendency to scare the average user, because of its black and white terminal interface. Colin David Bennett is [going to add a GUI to the upcoming GRUB 2](http://code.google.com/soc/2008/gnu/appinfo.html?csaid=45E49755924C0F5C). The GUI will even get fancy with animated menus and such.

# Gaming

All gamers have one thing in common. They love to brag about how great they are. Battle for Wesnoth gamers are no exception. However, right now the stats system for Wesnoth is more focused towards tracking potential problems rather than boasting. Therefore, Mykola Konyk is [creating a new statistics system for Wesnoth](http://www.wesnoth.org/wiki/WesnothStatistics) that will greatly enhance the current statistics system. Improvements include an additionally number of stats on the web side and some new graphs and charts.

# Graphics

I admit it: I've been sucked into that horrible world of Facebook. And I _love_ that the Facebook photo sharing tool allows you to tag a specific area of a photo, rather than just tagging the photo. Many others have fallen in love with this as well, including Paul Hinze. Over the summer, Paul will be working on a [tool to allow Gallery2 users to have the same functionality](http://code.google.com/soc/2008/gallery/appinfo.html?csaid=7CEB07E23144C994). This could be the tool to finally convince me to switch over to Gallery2 from ZenPhoto.

GIMP is one of the most powerful image editing applications around. Because of this, it's also one of the most complicated. For example, just looking at the menu bar gives me a headache. Apparently, it gives Evan Estola a headache too. Evan is going to be taking a page out of Apple's book with his SoC project, [Search-based Menu Browsing](http://code.google.com/soc/2008/gimp/appinfo.html?csaid=645C8B60767929AF). Basically, you'll be able to search the different menu items in GIMP, similar to Apple's tool.

One of the coolest apps in Gnome is the Cheese Photobooth-clone. However, it's missing out big on one feature: hardware accelerated effects. Filippo Argiolas aims to rectify this with his [Extend Cheese with OpenGL effects](http://code.google.com/soc/2008/gnome/appinfo.html?csaid=CA4053EB5724EBA1). These effects will include a Gstreamer backend with new effects like distortions and color manipulation (including possibly chromakeying, which could lead to bluescreening like Photobooth boasts).

# Multimedia

Most likely _the_ most popular audio editor for GNU/Linux is Audacity. However, Audacity doesn't support very many file formats besides WAV, OGG, AIFF, AU, and MP3 (and this requires LAME and libmad). So if you want to edit a WMA or AAC, you're out of luck. Therefore, Руслан Ижбулатов has started work on [importing and possibly exporting files into Audacity with FFmpeg](http://code.google.com/soc/2008/audacity/appinfo.html?csaid=79ADE474DB81DF7B), the popular audio/video decoder/encoder that supports basically any format. With this, you'll be able to import and export virtually any format.

If you're a Windows CE user, you're probably pretty upset at the lack of a decent media player. Sure, there's Windows Media Player, but it doesn't play all of the popular formats (_cough_ .mov _cough_). Therefore, Geoffroy Couprie has started work on a [Windows CE port of VLC](http://wiki.videolan.org/SoC_2008/WinCE_Port). Since VLC plays _everything_, this is definitely something I'll be using if I ever switch over to Windows CE.

Another popular (and much more open) mobile platform that doesn't have the greatest media player is the Maemo platform. Sure, there's MPlayer, but MPlayer never worked 100% of the time for me. So I'm pretty happy that Antoine Lejeune has started work on the [new VLC interface for Maemo](http://wiki.videolan.org/SoC_2008/New_VLC_interface_for_Maemo).

Lastly, there's the VLC internet plugin. I love it because the VLC Mozilla plugin will literally play anything, while the other two main internet plugins (MPlayer and Xine)... don't. However, MPlayer was always my browser plugin mainly because it had an interface and VLC didn't. I'm therefore really excited that Vladimir Belousov has started work on [GUI interfaces for the browsers plug-ins](http://code.google.com/soc/2008/videolan/appinfo.html?csaid=CD2BD85FF24811F4).

# Network

My favorite RSS reader is Google Reader. Why? Mostly, it's because I can read my RSS readers _anywhere_. I've started several times to use offline apps like Akregator, but then I'd have to reread all of the news that I'd already read when I'm at a different computer. It was just too much of a hassle. Arnold Joseph Noronha is going to remove the hassle with his project [Google Reader Integration with Liferea](http://code.google.com/soc/2008/gnome/appinfo.html?csaid=2D47A576396010E5). He's going to be adding support for syncing feed lists and "read" status.

I never got why no one integrated Google's audio/video Jingle XMPP protocol into their instant messenger. A few smaller apps have, but the two big free ones, Pidgin and Kopete, never did. What especially confused me was that Pidgin's project leader (Sean Egan) works at Google and is (or was) actively involved in the Jingle development. This year, both Pidgin and Kopete are getting Jingle support, thanks to Michael Ruprecht and Detlev Casanova with their respective [YAVVA - Yet Another Voice & Video Application](http://developer.pidgin.im/wiki/GSoC2008/VoiceAndVideo) and [Jingle video and voice chat in Kopete](http://code.google.com/soc/2008/kde/appinfo.html?csaid=BE4A750E102C55BA) projects. Michael and Detlev, you have no idea how happy you will make me if you complete your projects.

Pidgin's clean interface is one of its strongest points, especially compared to apps like Trillian. But I'm a little upset that it can't really be themed. Yeah, some guys at Gnome-Look figured out how to hack it, but it's not very elegant and involves overwriting data files (never a good thing). Justin Rodriguez has therefore started work on Pidgin [theme improvements](http://developer.pidgin.im/wiki/GSoC2008/ThemeImprovements), which will add a theme manager for Pidgin. Yee hah!

# Office

AbiWord is a great word processor, mainly because it's so lightweight. However, it lacks one big feature: OOXML (the hated, and yet popular, Microsoft Office 2007 format) export support. Firat Kiyak is trying to fix this problem with his 2008 SoC project, [developing OOXML Export plugin for AbiWord](http://code.google.com/soc/2008/abisource/appinfo.html?csaid=95CBBB1BFC34DF5E), which will allow for exporting to the .docx format. While I (and most other free software activists) dislike OOXML, it is probably going to become a standard and therefore is vital to have support for.

Often the most crucial part of a blog post is the image in it. However, it's not always easy to find free images that are legally reusable. There is one good place to find free images, though: Flickr. But it's really a pain to use. First, you have to search for the image (using the advanced search). Then, you have to go to all sizes. Then, you have to download the image. Then, you have to upload it again. Did I hear someone say "time consuming"? Finally though, there's hope. Husleag Mihai is planning to add support for finding free images on Flickr into OpenOffice.org with his project, [Flickr Image Re-Use for OpenOffice.org](http://code.google.com/soc/2008/cc/appinfo.html?csaid=D86A16CBDE8C902F). In the final version, you'll be able to search by tag, license, and automatically insert attribution. I for one can't wait.

One of the things that is critically lacking in Linux is speech recognition. The technology is there: Sphinx2, by all sources, works great. However, there are almost no frontends that are friendly to the average user (the only one even close, Perlbox, is kind of outdated. I'm sorry, it's very outdated). Gabriel Geraldo França Marcondes is planning on being one of the first to add speech recognition user-friendliness with his Gnome project, [Record Speech as Tomboy Note](http://code.google.com/soc/2008/gnome/appinfo.html?csaid=87D0752F4870F9AE). This one might actually convince me to switch over from KDE to Gnome. At the very least, it'll make me switch from KNotes.

Another great speech recognition tool being worked on is Saurabh Gupta's [Speech recognition facility](http://code.google.com/soc/2008/openmoko/appinfo.html?csaid=B631058E670ECFAC) for the Open Moko mobile platform. Using the Hidden Markov Model (HMM), Gupta will try to implement voice recognition into Open Moko. If successful, this will seriously bump up Open Moko's popularity in the mobile world.

# Other

An extremely cool KDE-based idea is the [Plasma Widgets on the Screensaver](http://code.google.com/soc/2008/kde/appinfo.html?csaid=F16B9339F86C1ABA) idea by Chani Armitage. Simply put, there will now be an option to embed Plasma widgets (the KDE 4 widgets) into the KDE screensaver. That way, you can see stocks, play music, post to Pownce and Twitter, and do anything else you can think of (as long as there's a Plasma widget for it). I'm definitely looking forward to this one, since most of the default KDE screensavers that come with Kubuntu are pretty bad.

While KDE 4's compositing Compiz-like effects are extremely awesome, they lack one big effect: the magical cube. Sure, it has the handy [Grid Effect](http://www.youtube.com/watch?v=LMnmGdk1ODs), but some of us prefer sticking with the good old cube shipped with Compiz and most other virtual desktop managers. Martin Graesslin is one of these users. He's planning on creating a [desktop cube effect for KWin](http://code.google.com/soc/2008/kde/appinfo.html?csaid=83DE5A72B823DACC). Between this and the Wobbly Windows [that will ship with KDE 4.1](http://polishlinux.org/kde/kde-4-rev-802150-work-in-progress/), most of us will soon be able to completely move from Compiz to KDE 4's KWin.

If you've ever used Wine, you've used it's winecfg tool. It's OK. It's not as powerful as Windows' built-in Control Panel, however. A big reason is that many of the configuration tools in Wine are not included in winecfg (the software uninstaller, for example). Owen Rudge is going to fix this with his project, [Implementing proper Control Panel support for Wine](http://code.google.com/soc/2008/wine/appinfo.html?csaid=8B4254855F2BD854).

# Conclusion

This year's SoC is going to be a great summer. If even a quarter of these projects get finished, I'll be one of the happiest people alive. It's a good time to be a geek.

=TEXTBOX_START=Project management resources=
 * [Project management software review](http://www.projectmanagementsoftwarereview.us). How to look for the best reviews on project management software, and what to watch out for.
 * [Project management system](http://www.projectmanagementsystem.us). An article that explains what online project management systems have in common, and where the differences are.
 * [Project management systems](http://www.projectmanagementsystems.us). Another article which explains in detail what every online project management system has.
 * [Good project management](http://www.goodprojectmanagement.us). A paper about the importance of the word "management" in "Project management": how success can be measured b happiness, rather than the completion of (ever-changing) requirements. 
 * [Project manager software](http://www.projectmanagersoftware.us). Project managers can chose between online software and classic software. Depending on their choice, they will get different features. 
 * [Best project management software](http://www.bestprojectmanagementsoftware.us). When you are looking for the "best" project management software, you first need to decide what "best" means.
 * [Project management comparison](http://www.projectmanagementcomparison.us). How to fast-track the choice of project management software.
=TEXTBOX_END=