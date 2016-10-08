---
nid: '2312'
title: 'Desktop search tools for GNU/Linux: the competition hots up (part two)     '
authors: 'Gary Richmond'
published: '2007-06-06 8:00:00'
tags: 'beagle,catfish,peagle,yabi'
license: verbatim_only
section: end_users
listed: 'true'

---
In part one, I looked at the Beagle search tool on the command line and the graphical user interface and in part two I want to look at alternative front-ends for it. First out of the stable is...


# Yabi

I will admit that I am a sucker for good eye candy (that was why I pimped my Fedora core 6 GNOME desktop to look like a Mac!) but it mustn’t only look good; it must integrate into the functionality of the software and give it added value. Yabi (Yet Another Beagle Indexer) is a good example of this union of style and function. It is available as a Python [script](http://kde-apps.org/content/show.php?content=33222). It’s easy to install. Just download the script, `cd` to where you downloaded it and extract it. Then, change directory to the package and type: `./yabi.py`. I got an obscure error message and despite copying and pasting it into Google I was no wiser. On a hunch, I ran Synaptic and launched a search for “Python” and guessed that the problem was that I needed Python binding for KDE, so I installed Python-KDE3 and just to be on the safe side, Python-KDE-dev too. The script then ran without complaining. As a final touch, I added a nested alias to change to the Yabi directory and launch the script by simply typing `yabi` (and adding the alias to `.bashrc` as root to make it permanent on reboot. Is there a way to launch Yabi on the desktop via an icon?

As can be seen in the screenshot(s) it has some very useful features and it presents the results of a search by category and the number in each category. Down the left-hand side there are ten icons which allow you to select an individual file type. Yabi will then pull up the results for you in a summary screen by file type. Clicking on any icon will display the search results. Like any normal file view, it can be expanded by clicking on the plus sign and this will give you further options, file details and a contextual selection of programs with which to open the file. The way my KDE setup is configured, I have a choice of Kpdf, Kghostview, Xpdf and Acroread to open PDFs. JPEGs open with Kview. A selection of Democracy Player and Rythymbox is offered for playing MP3s.

Yabi also allows you to graphically configure and fine tune your search by file type from the front screen and you can experiment with the various combinations of settings to see how your results pan out. What you type in the search bar will also affect the results: typing “mp3” with and then without the quotation marks will render different results and searching for Bonnie Raitt will yield different results from “Bonnie Raitt” and the title of a song by Bonnie Raitt followed by the `.mp3` file extension.

The speed of returning search queries with Yabi is similar to the traditional Beagle front-ends. They both use the same back-end search engine and, therefore, I don’t think that a front-end graphical interface written as a Python script should make it any faster. Perhaps someone knowledgeable in Python can answer that. Installing Yabi as an alternative to the default front-end does give the user a different layout and also a good choice of applications with which to follow up the search results.


# Screenshots


=IMAGE=yabi_mp3_search.jpg=search results for Bonnie Raitt (mp3s)=


=IMAGE=yabi_search_results_by_file_type.jpg=summary results page by category=


=IMAGE=yabi_image_search_results.jpg=Image search results=


=IMAGE=yabi_image_search.jpg=Expanded image search results with thumbnails=


=IMAGE=yabi_expanded_pdf_search_results.jpg=Expanded results for pdf search with further options to open in apps=


=IMAGE=search_by_name_in_yabi.jpg=Yabi searching by name with expansion, showing options for opening mp3 files in different apps=


# Catfish

In my quondam days I used to going fishing—but it wasn’t until I started researching this article that I caught my first catfish and clearly that is what the application’s designer(s) had in mind to if the icon for it is anything to go by. I don’t know the origin of the name but the best that I could come up with was, irrationally, a combination of `Fish`, the interactive shell alternative to `Bash` and the `cat` command. Funny, but, doubtless, wrong! (It was previously Search4files.)

However it got the name, it is easy to get and install. I was going to write that the interface was only available in source and you can get it [here](http://software.twotoasts.de/?page=catfish). However, in the course of writing about it, I discovered that it has been added to the Extras repository in Fedora Core 6. The good news is that it is of the `noarch.rpm` type so it might work, dependencies notwithstanding on other rpm distros. And, if it can be converted with Alien to a deb package, that would make it also available for most Debian-based distros. Ubuntu users can download it here [here](http://www.getdeb.net/app.php?name=catfish). Versions exist for Dapper, Edgy and Feisty (Catfish is in the Feisty Universe repository) in both thirty two and sixty four bit formats. For more details on the package, point your browser here [here](http://www.gnomefiles.org/app.php/catfish).

I downloaded the version for Dapper and installed it with Kpackage on my Mepis laptop. It failed to install due to missing dependencies—`python-xdg` and `python 2.4-dbus`. Over to Synaptic and two downloads and installs later, a rerun of the Catfish Deb and it ran fine. On this particular set up, I have many music players installed but clicking on a music search via the find back-end automatically opened Banshee; a fortuitous choice as it allowed me access to a one-click Write CD of the track(s) selected and transcode them for burning whilst listening to them.

As will be seen from the screenshots for Catfish it would be more appropriate to describe it as a meta front-end for a number of search back-ends: locate, find, Tracker (where installed) and Beagle. (I will look at Tracker in part three along with Recoll and Strigi.) Depending on you processor and memory the speed of your search will also be determined by what back-end you choose for you search. Try the same search term in different back-ends and compare both the quality and speed of the results. There is a facility to limit the number of results (the greyed-out default is 100), four file icons to choose file type search: documents, image, music and video. To narrow down the search Catfish allows you specify the search folder. By default, it is your home folder. For granularity, there are four options: exact match, hidden files, fulltext search (greyed out) and limit results.

One of the most interesting features of Catfish is the ability to integrate its search facility into Thunar. This is, of course, the new file manager for Xfce. The good news is that you do not need to be running it to use Thunar as a stand alone file manager/browser. If you want the whole window manager, either use the software repositories for your version of GNU/Linux or install from standalone binaries. The [Xfce homepage](http://www.xfce.org/download/) has downloads for source tarballs, graphical installers and binaries (for Debian, openSUSE, Mandriva and Solaris). If you are lucky, your distro will have Thunar in the repositories, but, if not, you can get binaries from the [Thunar Wiki](http://thunar.xfce.org/pwiki/documentation/installation), which also has an excellent guide to installation from source. I demure to no man in my admiration for the awesome features of Konqueror, but as it fills up with files and features it can slow thing things down a little. Thunar, though possessed of fewer features, is faster and when it is combined with this integrated search feature it represents another extra and valuable weapon to the search arsenal.

To enable this useful feature you will need to download and install a python script. I found it at the [Ubuntu forums website](http://ubuntuforums.org/showthread.php?t=214059). Once you have downloaded the script, `cd` to the folder you saved it in and run `chmod +x integrate-catfish.sh ; ./integrate-catfish.sh`. I got an error message to the effect: `cannot find uca.xml, please configure UCA in Thunar; or create it manually`. To fix this, open Thunar and select “Edit” from the drop down menu. Select “Configure custom actions”, click on the icon at the top right hand side, add a new custom action and restart Thunar and use the drop down filter to find and select the python script and an extra entry will appear. Now you can rerun the script and when you run Thunar and right click on a folder (see the screenshots) you will have a new option to search that folder with all the facilities of Catfish. (There is a useful introduction to custom actions at the [Thunar Wiki](http://thunar.xfce.org/pwiki/documentation/custom_actions).


# Screenshots


=IMAGE=catfish_1.jpg=Tracker backend in Catfish returning search results for pdf=


=IMAGE=catfish-thunar_config.jpg=Thunar custom action enabling searching vis Catfish=


# Peagle: Beagle with PHP goodness

The final alternative front-end for Beagle I think worth taking out for a brisk walk to see what its made of is one, which imitates a familiar web search engine interface like Google or Yahoo. This is the simplest one of them all and, whilst there does not seem to be a repository or stand-alone binary for Peagle, it is a PHP script and it is easy to install. As ever, the only possible problem is the hardy perennial of dependencies. Point your browser to [Peagle](http://www.kde-apps.org/content/show.php?content=38289) for a download and install guide. There are a few python dependencies but nothing that is either part of the original install or pulled in from the software repositories.

On both my Fedora and Mepis laptops the first attempts to run the extracted script ended with an error message indicating a command line interpreter problem. PHP is normally associated with web servers but, since version 4.3.0, a SAPI interface called cli has been supported. To see if it is installed run `php -v` in a terminal and it will tell you if it is supported: `php 5.1.2 (cli) (built: Apr 25 2007 14:05:34` will be returned if it is supported). If not, it’s time to fire up your package manager again.

Once any and all dependencies have been sorted it is simply a matter of opening a bash shell and typing `./peagle.php` (or just `./peagle`) in the Peagle directory. I set up a nested alias in `.bashrc` to do both actions and also make it a permanent alias. In response to running the script it returns the message “server ready”. (Incidentally, does anyone know if it is possible to run a PHP script from the desktop/GUI?)

We are in business now. Fire up your browser of choice and type `http://localhost:7324/` in the address bar and Peagle will start. Type in your search term and results will be returned for your hard drive just as they would for a web search on Google. Depending on what you searched for and your exact setup and applications for file types installed what opens up when you click on a search item will vary. Configuration options are poor compared to Kerry Beagle, Yabi and Catfish but perhaps the most interesting aspect of this front-end is that it works inside your browser and therefore can be used in tandem with all the powerful features of browsers like Firefox, Konqueror, Opera and Flock. With these tabbed browsers, especially Konqueror (split screen file manager/web browsing and built- in terminal), you do not need to leave them to carry on other searches. All you need is the desire to experiment and good knowledge of your browser’s best and most relevant features. For example, you can bookmark your search results just like any other web page but when the browser is closed and re-opened Peagle must be running for search bookmarks to work.

Finally, Peagle has some simple configuration option on the front page. There are four of them:


* **control**—to shut down Peagle (or run `killall peagle` in a terminal. I find Yakuake the quickest and most convenient for this.)
* **settings**—which has three headings: server settings, preferences and desktop integration
* **index**—which lists what has been indexed by category
* **status**—which indicates what is being indexed and what is pending

The most useful and interesting of these is settings, and desktop integration in particular. Here the user has the option to set the environment for KDE, GNOME, Link or Mailcap and a further box to select a custom starter, which I take to mean other desktops such as, say, Fluxbox, Xfce or Enlightenment. Other than an option to set the number of search results per page, that’s about it really. The worst thing you can say is that search results are slow to come relative to other front-ends like Catfish or Yabi. The real selling point of Peagle is that it runs inside your chosen browser(s) and so gives you access to all their features—extensions in the case of Firefox and the sheer jack-of-all-trades, Konqueror. For example, right click on a search result and Konqueror will present you with a number of contextual options: save as bookmark, open (in my case) in no less than five different browsers (yes, I’m a bit of a jackdaw when it comes to collecting software. I believe that you can never have too many choices) and the option to create an e-mail attachment for a search link. You are restricted only by your imagination and technical skills. In fact, I will do some more research into how to leverage the browser-based features of Peagle.


# Screenshots


=IMAGE=peagle_settings.jpg=Peagle main settings page=


=IMAGE=peagle_index_summary.jpg=Peagle index summary page=


=IMAGE=terminating_peagle.jpg=Peagle Terminating Peagle via the gui=


=IMAGE=peagle_search_results_for_Bob_Dylan.jpg=Peagle search results for Bob Dylan=


=IMAGE=peagle_search_for_yum_in_Firefox_further_tabbed_results.jpg=Tabbed results for Yum in Firefox=


=IMAGE=peagle_search_results_a_la_Google.jpg=Results for searching for Tux on the desktop and the web=

In part three (coming soon) I will look at three alternatives to Beagle: Tracker, Recoll and Strigi and perhaps throw in a look at Searchmonkey and Deskbar as a parting shot.

