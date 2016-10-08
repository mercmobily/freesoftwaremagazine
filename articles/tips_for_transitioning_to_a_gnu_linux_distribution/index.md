---
nid: '2274'
title: 'Tips for transitioning to a GNU/Linux distribution'
authors: 'Chris Mostek'
published: '2007-05-05 13:36:15'
tags: 'gnu/linux,switching,beginners,tips'
license: verbatim_only
section: announcements
listed: 'true'

---
So, you've made the choice to try a GNU/Linux distribution or distro and have completed the installation.  But now what?  While doing some spring cleaning on my desk, I came across the notes from my last distro installation.  Here are the key tips that made my last transition from Windows to GNU/Linux easier.

**Be aware, GNU/Linux approaches many things differently than [MS Windows](http://www.microsoft.com/en/us/default.aspx):**  Different isn’t bad, really, it’s not.  However, be realistic and expect a learning curve.  Remember Windows is not programmed into our DNA, we all had to learn Windows somewhere along the way.  A dash of persistence and patience may be necessary in transitioning to GNU/Linux.

**A little preparation goes a long, long way:**  Organize and consolidate your music files, picture files, word documents, spreadsheets and other important data.  Save your data to some type of external media for the transfer.  You will also be creating a backup if something goes wrong along the way.

**Use [Mozilla](http://www.mozilla.com/) products to prepare your email and browser data for a transfer:**

Since email and internet browsing is a large part of our computing life, we’ll tackle these as separate steps to our data consolidation.

If you use MS Outlook Express, a quick and relatively easy method is to use [Mozilla's Thunderbird](http://www.mozilla.com/) email program to transition your email file.  When starting Thunderbird for the first time, the Import Wizard starts up and you can choose the Outlook Express option to import your email, addresses and mail settings.  MozillaZine has additional details at this [link](http://kb.mozillazine.org/Import_from_Outlook_Express/).

Similar to using Thunderbird on email, you can use [Mozilla Firefox](http://www.mozilla.com/) to transition from Internet Explorer while still within MS Windows.  After you install Firefox, the Import Wizard will launch upon startup.  Stepping through the wizard imports your Favorites, cookies, options and stored passwords.  This will duplicate your IE setup within Firefox.  You can find further directions at this [link](http://www.mozilla.com/en-US/firefox/switch.html/).

Then save your Thunderbird and Firefox profile folders to your external media.  The [Mozilla Support](http://www.mozilla.com/en-US/support/) website has good directions under the FAQ’s on locating and moving your profiles.

Or simply export your bookmark file from within IE7.  If you haven’t gotten too crazy with add-on or plug-ins, you may be able to get away with just exporting your bookmarks.  In IE7, click on the “Add to Favorite’s” button, the yellow star with the green plus sign, and choose the “Import and Export” option.  This will launch a wizard that will step you through the process of exporting your bookmarks.  Save the exported file with the rest of your data.

**Check your distro's repository first for software you want to load:**  Imagine MS keeping a site full of Third party, and often competing, software.  While this seems like an alien concept, that example accurately describes the situation for a GNU/Linux distribution.  This is a real mindset change for the typical Windows user.  We are used to downloading various programs from various websites and executing the installer file.

However, with GNU/Linux, you typically download your software from just a few locations, called repositories, that are maintained by the distro.  Software installations are managed through a package manager with a GUI front end, typical examples are:  Synaptic, YAST, YUM and urpmi.  Running the package manager gives you access and allows you to install the software with the repository.

While you can find `.deb` files or `.tar` files to download and install, you may be best off sticking with your distro's repositories, at least up front.  It will save you a lot of time and frustration trying to figure out why that program you downloaded didn't work.

**Set up support for Wireless Networking and Multimedia formats:**  Out-of-box support for Wireless Networking, MP3’s, encrypted DVD’s and other proprietary formats varies widely from distro to distro.  Take the time to check for your distro’s support and the instructions to add support if necessary.  Remember most free software media players will be unable to play DRM-protected files, for example: songs purchased on iTunes.

**Change [OpenOffice](http://www.openoffice.org/) defaults to [MS Office](http://www.microsoft.com/en/us/default.aspx) formats:**  I love the ODF concept.  However, I realize that most people I interface with use MS Office.  There are some projects in development to allow MS Office to open ODF files.  But until then, switching your default format will allow you to easily share files.  To change your file format, choose Tools → Options → Load/Save → General.  Then under the Default File Type section, you can choose your document type and your save as options.

**Try using WINE, TransGaming’s Cedega or Codeweaver’s Crossover Office:**  If you have a MS Windows application that you absolutely cannot live without, then you can try one of these options to run the application within your GNU/Linux distro.  [Wine](http://www.winehq.com/) is a free software solution and should be available in your repositories.  [Cedega](http://www.transgaming.com/) is a proprietary solution geared towards games and is offered on a monthly subscription basis.  [Codeweaver’s](http://www.codeweavers.com/) is another proprietary solution with an emphasis on productivity applications.

**Move your data:**  Copy your data from the external media to your “Home” folder which may be under your user name.  The “Home” folder is similar to the “My Documents” folder within Windows.  For example, the Home folder “Chris” contains folders for pictures, music and documents.

My prior Windows use of Firefox and Thunderbird made importing browser and email settings extremely easy.  I simply transferred my Profile folders over and pointed the applications to these profiles.  I also like to keep my Firefox and Thunderbird profiles in my “Home” folder to facilitate any future transfers.  After all, there is always a another distro to try at some point.

If you want to use [Evolution](http://www.gnome.org/projects/evolution/) for email instead of Thunderbird, then import each MBOX file into Evolution using File → Import and choosing each individual file.  Choose the file without any extensions, Inbox instead of Inbox.msf.  Further help can be found at the following [Mozilla FAQ](http://www.mozilla.org/support/thunderbird/faq#q2.9/).

**Test that everything works:**  Now is the time to make sure everything works.  Send a test email to yourself.  Check your bookmarks.  Play some music and videos.  Begin exploring specific applications you will regularly use.

Most importantly, have fun learning and playing with your new GNU/Linux distro.

