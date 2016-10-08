---
nid: '3244'
title: 'Open messaging for the Open Web: Installing and configuring Mozilla Raindrop on Ubuntu 9.10'
authors: 'Gary Richmond'
published: '2009-11-12 3:59:45'
tags: 'ubuntu,python,mozilla,couchdb,raindrop,bespin,nepomuk,foxtrot'
license: verbatim_only
section: hacking
listed: 'true'

---
By the time you read this Karmic Koala will have been released to a waiting world, but I couldn't wait. A felicitous combination of a desire to do a distribution upgrade to the release candidate and a Twitter arriving on my laptop giving me a link to Raindrop kept me busy for the day. I was intrigued by Raindrop and having used other Mozilla lab experimental software I was determined to see what all the hype was about. If you like the idea of combining a tool for aggregating Twitter, e-mail, RSS and other social Web 2.0 stuff with free and open standards then read on.
<!--break-->

## What it is

=ZOOM=Like Chief Dan George in The Outlaw Josey Wales I'm always looking to get an edge=

Yes, I know. The web in awash with standalone desktop clients for tweeting, denting, YouTubing and e-mail. Many of them are bulging with rich feature sets but they all require to be launched separately and consume memory and processor cycles. If you visit websites like Twitter, Identica and Gmail you are running multiple tabs in your browser. I find that a bit tiresome and some of the very clever people at Mozilla do too. Like Chief Dan George in The Outlaw Josey Wales I'm always looking to get an edge and it might just be that Raindrop, Mozilla's latest brainchild, provides it. I wanted that edge and I was prepared to jump through a few hoops to get it. But what exactly _is_ Raindrop?

Raindrop is software that runs as a web application inside any [HTML5](http://en.wikipedia.org/wiki/HTML_5)-enabled browser and concentrates the social web in that canvas. This means that Raindrop will run in Firefox, Chrome/Chromium and Safari. Just for the hell of it, I tried it on Konqueror (4.3.2), Flock, Opera and Kazehakase -- with varying results in terms of display layout. One nice feature of running Raindrop in Chromium is that you can create a desktop application for it which will then run as a separate web application in a uncluttered window of its own (think Mozilla Prism here). You can download and install it as a [Firefox addon](https://addons.mozilla.org/en-US/firefox/addon/6665) or as a [stand alone application](http://prism.mozilla.com/started/). I'm glad to report that Raindrop will not work with Internet Explorer as it is not HTML5 compliant (but Google has served up [Explorer Canvas](http://excanvas.sourceforge.net/) project which enables the canvas tag). 

=ZOOM=Raindrop is so new that the paint is still wet=

Raindrop is so new that the paint is still drying on it so installing, whilst not prohibitively difficult, goes way beyond grabbing a single binary Debian package from a repository, a PPA or from a third-party site like GetDeb. It isn't a Firefox addon either (yet). Nope, if we are going to get it up and running we're going to have to roll up our sleeves and get down and dirty with quite a slew of dependencies, getting up close and personal with the command line and create a file in a text editor. Hopefully, once the good people at Mozilla have built a downloadable installer we can dispense with all the vodoo, but in the meantime we have work to do.

One of the main components of Raindrop is [CouchDB](http://couchdb.apache.org/), "a document-oriented database that can be queried and indexed in a MapReduce fashion using JavaScript. CouchDB also offers incremental replication with bi-directional conflict detection and resolution". No, I don't know what that means either but Raindrop won't be going far without it. The good news however is that Karmic Koala comes with CouchDB installed by default and that will save [a lot of hassle of the kind encountered by Jaunty Jackalope users](http://unsure.tumblr.com/post/220468422/setting-up-raindrop-on-ubuntu-jaunty). However, it's a good idea to fire up a terminal and do a `sudo apt-get update` to ensure that you have the latest version of the database. Turned out that there was an update when I checked Synaptic, so I installed it. 

## So, let's install  it

Raindrop likes Python. A lot. So it will be necessary to install some dependencies. You may have some of them already installed if you have previously installed Python-based apps. My list was specific to my machine at the time. Open a terminal and type:

`sudo apt-get install python-twisted python-twitter python-feedparser python-openssl python-skype python-twitter`

A quick word of explanation. You may want to exclude some of these "dependencies" if you only want Raindrop to aggregate Gmail and Twitter. For example, if you don't use Skype messaging and don't want to have access to RSS feeds then `python-skype` and `python-feedparser` are superfluous. That seuges neatly, incidentally, into why Mozilla have chosen Python to do some of the heavy lifting for Raindrop. 

=ZOOM=Python has many strengths but it is particularly suited to and good at using and manipulating text which suits Raindrop very nicely=

Python has many strengths but it is particularly suited to and good at using and manipulating text which covers most of the bases in Raindrop. However, before we proceed any further we need to check that we are running the required version of Python itself. So, back to the terminal and type `python -V`. My computer gives the output: `Python 2.6.4rc2`. Version 2.5 will work too but version 3.0 is not supported yet and anything lower than 2.5 is a recipe for pain and disappointment.

So far so Python but we have a way to go yet. Next up, [Mercurial](http://mercurial.selenic.com/), a free, distributed source control management tool, the necessity for which is explained by CouchDB (of which, more later). The good news is that Mercurial (written in Python of course) is in the Karmic repositories, so a simple `sudo apt-get install mercurial` will do the trick (or snag it via the Synaptic GUI if you prefer). This is easier and quicker than downloading it from the Mercurial homepage which only offers a source code compressed tarball, though there are [links on the Mercurial Wiki](http://mercurial.selenic.com/wiki/Download?action=show&redirect=BinaryPackages) for Debian, Ubuntu (up to Jaunty only) and Launchpad PPAs. 

If you really feel the need to feed your inner masochist and you want geek bragging rights too then you can always opt to install Mercurial via [EasyInstall](http://peak.telecommunity.com/DevCenter/EasyInstall) which is a clever application to install Python modules like Mercurial directly from Python itself. But that's just showing off, isn't it? Trust `apt-get`, install the safe and easy way, and resist the vanity trap. Once installed, back to the terminal and type the `hg version` command to check it has installed properly. The version number will display, so you're good to go.

The last small piece we need is Paisley, a CouchDB client written in Python to be used within a Twisted application so back to the terminal and use `wget` to download it: `wget http://launchpad.net/paisley/0.1/0.1/+download/paisley-0.1.tar.gz` and then extract it with `tar -zxvf paisley-0.1.tar.gz` and, finally, set the Python path with `PYTHONPATH=paisley-0.1`. Drum roll! At last we are ready to install the core of Raindrop, [CouchDB](http://couchdb.apache.org/). The Mercurial command `hg clone` will allow us to check out a copy of Raindrop (version 0.10). So, in the terminal again, `hg clone -r 0.1 http://hg.mozilla.org/labs/raindrop`. You'll see a lot of output. Depending on your connection this may take a little while. Be patient and the terminal will eventually return to the normal user prompt.

One final step and we'll be ready to actually run Raindrop. Phew! This last step caused me (and others) a deal of confusion. You are told to edit the `~/.raindrop` file. So, naturally, I fired up a file manager and went hunting for it but the cupboard was empty. Hmmm. Time to Google and eventually the penny succumbed to gravity. The file can't be edited because nothing you have installed so far created it. Doh! _You_ have to do it yourself. Time to give the terminal a well deserved rest and launch your favourite text editor. I used Gedit. 

## Configuring Raindrop

What you put in this file will depend on what and how many social networking services you wish to aggregate through Raindrop. Fortunately, the [Mozilla Raindrop Wiki](https://wiki.mozilla.org/Raindrop/Install) provides a list of templates you can use to set up your own. For example, you will almost certainly want to include Gmail and Twitter and here is what their entries would look like in the `~/.raindrop` file:

=CODE_START=
[account-gmail-username]
proto=imap
kind=gmail
username=username@gmail.com
password=topsecret
ssl=True
=CODE_END=

And:

=CODE_START=
[account-twitter-username]
proto=twitter
kind=twitter
username=username
password=topsecret
=CODE_END=

The only thing you need to amend here are your actual user names and passwords for those two applications. The Mozilla Wiki will give you more. It's up to you what you include and of course you can always re-edit the file to add, delete or amend the entries (which you will have to do if you ever change you password for any application to keep `~/.raindrop` in sync. Once you've created the entries you want, save the file in your home directory. (It's not a system file so that's Ok and you can do all this without root privileges.)

=ZOOM=The eagle eyed amongst you will have spotted a bit of a clanger here=

However, the eagle eyed amongst you will have spotted a bit of a clanger here. You don't have to be a security expert to know that, like Telnet, passwords are held in clear text. Mozilla are aware of this and have described it as "very, very bad". The sooner the better. 

Regardless of how many entries you make in `~/.raindrop` there is one entry you _must_ have:

=CODE_START=
[couch-local]
host=localhost
port=5984
=CODE_END=

assuming Raindrop is on your local machine. We have one final thing to do. `cd` to `raindrop/server/python` in a terminal and type `./run-raindrop.py sync-messages --max-age=5days`. You can change the number of days to meet your own personal preferences.

You will now see a lot of output in the terminal. If you have made any errors in configuring `~/.raindrop` Raindrop will spew out error messages which you will need to read and fix. Assuming you have not piggy fingered anything, launch an Html5 -enabled browser like Firefox and type the following address in the location bar:

=CODE_START=
http://localhost:5984/raindrop/inflow/index.html
=CODE_END=

Welcome to the "homepage" for Raindrop. At last:

=IMAGE=Raindrop's_default_screen.jpg=Figure 1: Raindrop's default screen=

## Now, let's take the tour

Well, its' not exactly pretty but it _is_ a prototype intended primarily for developers at this very early stage. And the main thing was to see if we could get it installed, up and running. And we did. As you can see, Raindrop has pulled in Gmail and Twitter stuff. I didn't need to open two separate websites in two tabs or launch a desktop app to view my tweets. There is an alternative interface but it's only a mockup, courtesy of Mozilla:

=IMAGE=Alternative_interface_for_Raindrop.jpg=Figure 2: Alternative interface for Raindrop=
 
=ZOOM=Raindrop has been launched down the slipway on its maiden voyage with the electricians, painters and decorators still onboard=

At the top are my tweets and e-mails for the last five days and if you scroll to the bottom of the browser the latest three tweets are displayed. On the right-hand side of Raindrop you get a list including Gmail folders, contacts, Direct messages and Group Conversations. Each Tweet has options to open, delete or archive. However, when I selected reply a dialogue box did spring up as normal but once I had composed a reply and clicked on send, either nothing happened or a small message displayed to say that the messaging protocol was not supported! What? I know Raindrop has only been launched down the slipway on its maiden voyage with the electricians, painters and decorators still onboard but unless my configuration and install was faulty this is a bit of a bummer. 

No such problem with Gmail, happily. Opening e-mails, check. Replying, check. However, Raindrop needs to be a little more intuitive here. Suppose you want to send an e-mail or Tweet something (assuming it worked), where do you start? Did you see the invitation at the top of the screen, "type something"? Yes, believe it or not, that's the business end. Click on it and it starts to make sense now:

=IMAGE=Just_click_on_the_dialogue_box_and_you're_off.jpg=Figure 3: Just click on the dialogue box and you're off=

And clicking on the drop-down box to the right will pull up all your e-mail or Twitter contacts:

=IMAGE=Raindrop_pulls_in_the_list_of_People_you_are_following.jpg=Figure 4: Raindrop pulls in the list of people you are following=

I have a choice of e-mailing or tweeting from the drop down menu. Once an option has been selected Raindrop has another drop down menu to allow you to choose an e-mail recipient because it has read and imported your address book from Gmail. Neat. I selected a recipient and sent my masterpiece. Well, at least I thought I had. It flagged up a message that it had been sent but there was no sign of it in my sent mail in Gmail itself. You can delete mail and tweets too but they do not seem to sync with their respective servers. That needs to be fixed. Raindrop gives you a feature to undo a deleted message but it has not been enabled yet so this is what you get when you try it:

=IMAGE=You_can_delete_but_you_can't_undo.jpg=Figure 5: You can delete but you can't undo=

However, I was also able to view my sent e-mails and tweets (I hope they'll add Identi.ca too), Direct Messages and Contacts. That last one displays beautifully with thumbnails too but it appears to be a purely static presentation lacking any functionality. Again, it's early days. I look forward to Mozilla developing Raindrop to a fully functioning, easy to install application. The developers (who were also responsible for Thunderbird) are hoping to roll out an installation software via a web browser interface. Bring it on guys. In the meantime, while you wait, or rather can't wait, you can always try [Snowl](http://mozillalabs.com/blog/2008/08/introducing-snowl/), a Firefox plugin which does similar things. It looks like a dry run for Raindrop though it only handles RSS feeds and Twitter. [It's available as an addon](https://addons.mozilla.org/en-US/firefox/addon/8397).

As Mozilla have released this prototype with developers primarily in mind Raindrop has a few more tricks up its sleeve. If you have the necessary programming skills you can extend it directly from within your chosen browser. Scroll down to the bottom of the Raindrop screen and in the bottom left-hand corner you will see a button called "Extend". Click on it and a new interface will open:

=IMAGE=Extender's_default_screen.jpg=Figure 6: Extender's default screen=

Scroll down the extender screen and Bespin hoves into view:

=IMAGE=Scroll_down_to_view_Bespin.jpg=Figure 7: Scroll down to view Bespin=

As with [Ubiquity](http://ubiquity.mozilla.com/) Mozilla have rolled out Raindrop with extensibility in mind and offer that feature from within the browser itself. What the screenshot shows is [Bespin](http://mozillalabs.com/bespin/). Bespin is described as "coding in the cloud" because normally you register for a free account, login and use the `checkout` command to start coding a project stored in either a Subversion or Mercurial repository. Raindrop installs a web server on the localhost so the code resides there and the screenshot illustrates this. If you want to see the CouchDB from within your chosen browser type the following address in the location bar: `http://localhost:5984/_utils/`. Surprise surprise, you'll see the entry for Raindrop. It's a link. Click on it and you can browse it.  

=ZOOM=Emacs users will be right at home in Raindrop's Bespin=

In Mozilla's own words Bespin is "_an experiment on how to build an extensible Web code editor using HTML 5 technology_". Or, to put it another way, it's a browser-based IDE but if you're up for it you can read the [Mozilla Bespin Wiki user guide](https://wiki.mozilla.org/Labs/Bespin/UserGuide) and apply that hard-won knowledge to coding on the localhost Bespin. (Incidentally, if you are looking for an easier way into Bespin, there is a[ Ubiquity command for it](http://gist.github.com/139531) if you have that addon installed--but it only works when Bespin is your active tab. If you invoke a Bespin command in any other tab(s) Ubiquity will soon pop up a message to scold you. 

The great thing about Bespin and its ilk is that it sports an open API which means that if you have the necessary skills you can take it wherever you want it to go. For example, Bespin had been made to run on Eclipse IDE. Emacs users will be right at home in Raindrop's Bespin, as it uses a Emacs-like command line for issuing commands but whatever you navigate it this is strictly for programmers and developers. So, that's me out but if you possess the requisite skills you can give it a spin (sorry).

## Beyond Raindrop

Even if you are having problems getting Raindrop installed , or you get it installed but it is rough around the edges, don't dismiss the project out of hand. No, it's not Google Wave because it isn't live or collaborative (though Mozilla have been talking to Google about both products and we may well see some synergy between them, especially when Raindrop evolves and is easier to install). But yes, it's core software is CouchDB which makes it potentially highly extensible. If you are a bit queasy about using [Ubuntu One's](https://one.ubuntu.com/) servers for reasons of security and ownership Desktop Couch bypasses that potential hazard and the need for internet access and will let you just connect two machines and share any applications that have their preferences stored in CouchDB. 

More importantly, CouchDB has been joined by [Desktopcouch](http://launchpad.net/desktopcouch), a project to put CouchDB on the desktop, using it to share data between machines _and_ applications. Sharing data between applications may prove to be the motherload for Desktop Couch (it's in the Karmic repositories) as it should obviate the need to _import_ data between them, pulling in data from disparate "data silos". Effectively it creates a central repository for applications date which can be accessed and amended without having to open a slew of apps. In fact, if you browse the default Karmic repositories you will see an entry for `evolution-couchdb`, a facility to allow Evolution's mail and calendaring features to access CouchDB. 

Ah, you say, shades of [NEPOMUK](http://en.wikipedia.org/wiki/NEPOMUK_(framework)), the social semantic desktop for KDE 4 but it is specific for that desktop Though it does have a Java implementation too). There is even a project called Nepomuk-Mozilla which seeks to annotate web pages and or local files but only on Firefox and Thunderbird and store the metadata in the default Mandriva KDE 4 metastore. There is even already a Firefox addon for that called [Foxtrot](http://code.google.com/p/nepomuk-mozilla/) hosted on Google but it would not install as it flagged up a message that it was not compatible with Version 3.5.3. Strange, as the advisory says that the addon requires Firefox 3.0 to install. Desktop Couch/CouchDB though is desktop neutral and there is an addon called Bindwood (part of Ubuntu One) in the Karmic repository designed to synchronize Firefox bookmarks to CouchDB--and it _does_ install OK. 


## Conclusion


=ZOOM=whilst we are treading water, there are always stand alone clients as well as addons to fill the gaps=

What they all have in common though is the goal of the personal semantic web. When Mozilla develop Raindrop and make installation a no brainer and/or it is adopted into the Debian and Ubuntu repositories it may gain traction and popularity -- and in the process will, albeit unintentionally, leverage a more aggregated, semantic desktop. In the meantime, whilst we are treading water, there are always separate Twitter/Identi.ca and feedreader clients as well as addons to fill some the gaps. 
  

