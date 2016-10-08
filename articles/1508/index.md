---
nid: '1508'
title: 'Personal privacy: on the web'
authors: 'Robin Monks'
published: '2006-11-15 8:00:00'
issue: issue_14
license: cc-by-nc-nd
section: opinions
listed: 'true'

---
With internet privacy being invaded more and more by governmental agencies, advertising programs and statistical systems (not to mention ISPs gone bad), personal privacy would seem to be a lost cause. But all is not lost! Thanks to some great free software you can make your online presence private once again.


<!--break-->



# Tor: The onion router

An onion router is the most effective way to be anonymous on the internet; it allows you to:


* protect your location (that is, your IP address) from websites;
* mask the destination of packets you send;
* mask the origin of packets from sites and other nodes;
* protects the packet’s contents via encryption;

It works by “routing” your traffic through various nodes like the layers of an onion. Each node has no idea where the packet came from; also, nobody (except the exit node) actually knows where your traffic will end up. The exit nodes change constantly, which means that you might appear to be from Spain one minute, and from France the next. This makes requests to sites, for all general purposes, untraceable.

Each Tor client also has the option of becoming a node or exit node in the network; since traffic from all (except the exit nodes) is encrypted, donating some of your bandwidth to become a node will actually increase your security: even if somebody logs all of your traffic, they will be unable to determine if the logged traffic is yours or if it’s just being routed through your system. This way, deciphering data is as hard as taking the eggs out after you baked the cake!

Thanks to Tor’s encryption, routing and constant path switching, Tor is an asset to any surfer. Tor baffles tracking software, crackers and traffic loggers, not to mention being a pretty cheap way to get some extra security over Wi-Fi or on public PCs.

On top of all that, Tor also provides a feature called “hidden services” that allows you to run a webserver and get a Tor address (eg: `http://6sxoyfb3h2nvok2d.onion/` leads to the Tor “hidden wiki”, you’ll need a version of Tor installed and running in order to view that link) for other uses.

A Tor `*.onion` URL, for all extensive purposes, cannot be traced back to the host machine. (You’d need to ensure that the server is secured, error pages don’t give out your IP, etc.) This makes Tor hidden services a perfect tool for government change groups in countries like China.


# Installing Tor

There are two methods of getting Tor easily. The first, and easiest, method of connecting to the anonymous Tor network is with the prepackaged TorPark (a Tor and Firefox combination). TorPark is also great on a flashdisk while traveling.

The second method, which also allows you to run a Tor node as well as a client, is the official Tor distribution, which is available for most any OS and comes with a nice installer for Windows.

Both of these methods use entirely free software; TorPark’s launcher is released under the GPL, Firefox is MPL/LGPL/GPL tri-license and Tor itself is free software under the 3-clause BSD license. I’ll walk though the installation via of both of these methods below.


## TorPark


=IMAGE=torpark_tor_test.jpg=TorPark running the Harvard Tor test, and passing.=

[TorPark](http://torpark.nfshost.com/) is by far the easiest way to get up and running with Tor. TorPark comes pre-assembled in a zip file. Just download the zip, extract it to a folder and run. TorPark doesn’t require any pre-configuration, the handy launcher configures Tor and launches a bundled copy of Firefox with some handy privacy extensions pre-installed.


=IMAGE=torpark_startup.jpg=TorPark’s startup screen.=

There are some downsides to TorPark though. Firstly, it only enables Tor on the bundled Firefox. Second, it only runs on Windows (although the author seems willing to [develop a version](http://torpark.nfshost.com/faq.html) for Mac).

TorPark’s real power shines though when it is used on a USB flashdrive. You can take TorPark to a public library or traveling and not have to worry about privacy; plus, you can take your favorites and extensions with you.


## The official installer


=IMAGE=tor_installer.jpg=The official Tor installer.=

Installing Tor with the official installer takes around five minutes and requires only moderate technical knowledge. First, you’ll need to download the installer from the [Tor website](http://tor.eff.org/download.html.en) (for this article I used the “Windows development” branch 0.1.1.19-rc). The Tor installer configures Tor, Vidalia and Proxify automatically.

The Tor installer is designed to be simple to use. Just answer a few questions, and Volia! Tor’s installed. There is no need to change the default settings unless you know what you are doing, or just want to tinker around with Tor. After the wizard is complete launch Tor.

The next step is to go into the browser of your choice and to change the connect settings and set up your proxy to point to Proxify, in most cases that’s `127.0.0.1` and `port 8118`. Firefox users can download the [FoxyProxy extension](https://addons.mozilla.org/firefox/2464/) which sets up Tor with Firefox automatically.


=IMAGE=tor_configuration.jpg=Tor’s server configuration screen.=

Tor’s UI also makes it easy to set up your own Tor node. Just right-click on the Onion icon in the system tray, select “Configure” and click the “Server” tab. You can also view traffic reports by clicking “Bandwidth Graph” in the system tray menu.


# Conclusion

I hope this meager article has opened your eyes to a new level of privacy on the web. But don’t stop here! There are many other ways to protect yourself with free software too, many of which you’ll find in the [Free Software Magazine Archives](http://www.freesoftwaremagazine.com/search/node/privacy+OR+security) (chances are whatever you’re looking for is in there, somewhere...) And also be sure to check out resources like [FreshMeat](http://freshmeat.com) and [SourceForge](http://sf.net).

Now that your internet surfing is private again, it’s time to work on those pesky neighbors...

