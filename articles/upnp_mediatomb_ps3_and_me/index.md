---
nid: '2316'
title: 'UPnP, Mediatomb, PS3, and me'
authors: 'Anthony Taylor'
published: '2007-05-31 6:30:00'
tags: 'media-center,ps3,upnp,mediatomb'
license: verbatim_only
section: opinions
listed: 'true'

---
My brother lent me his PS3. I’m not sure why. But I do know I’ve already wasted several hours on it, first playing my old Ratchet and Clank games, then _Resistance: Fall of Man_, and _Flow_, and so on.

After I bored of the games (about an hour after turning it on), I decided to explore the home media functions of the PS3. The first thing I noticed was the menu item at the top of the media areas: “Search for Media Servers”.

Three hours later, and a lot of experimenting, I have discovered the wonders of serving up media.


<!--break-->



# UPnP: The present and future of media sharing

[UPnP](http://en.wikipedia.org/wiki/Upnp) is a protocol specification designed to provide sharing of media. The media can be anything, but normally you share out the usual suspects: pictures, audio, and video. The PS3 system software has an in-built UPnP client. If there is a compatible UPnP server on the network, the PS3 will detect it.

At this point, I took some time to figure out the ins-and-outs of UPnP. There are some great resources on the net. To learn more, Google is your friend. However, you don’t need to know much about UPnP to benefit from it.

There are several UPnP servers available for GNU/Linux. The popular [MythTV](http://www.mythtv.org/) media center has a very nice UPnP server. Unfortunately, it doesn’t work with the PS3 at this time. The GNU project has [GMediaServer](http://www.gnu.org/software/gmediaserver/), an easy-to-use UPnP server. However, as far as I can tell, it only serves up audio

There are others, as well, each with their own features and constraints. I despaired of finding a decent, well-rounded UPnP server for GNU/Linux.

And then I tried [MediaTomb](http://mediatomb.cc/).


# Mediatomb installation

Installation of MediaTomb was quite easy, thanks to their pre-packaged repositories. Their [download](http://mediatomb.cc/pages/download) page provides instructions for many major GNU/Linux distributions. Me, I use Ubuntu, so I did this:


=CODE_START=

wget http://apt.mediatomb.cc/key.asc -O- -q | sudo apt-key add -


=CODE_END=

This step adds a cryptographic signature for MediaTomb’s apt source. That got added in my next step.


=CODE_START=

sudo nano /etc/apt/sources.list


=CODE_END=

This opens the apt repository list in a text editor. (Replace “nano” with your preferred editor.) Now, add this line to the end of sources.list:


=CODE_START=

deb http://apt.mediatomb.cc/ edgy main


=CODE_END=

Substitute “feisty” or “dapper” to match your version of Ubuntu. Also, you’ll want to ensure the “universe” component is available.

You can accomplish the same thing by using the “System→Administration→Software Sources” menu item. Make sure the “Community-maintained Open Source software (universe)” item is checked. Then, click the “Third Party Software” tab, and click the “Add” button. Paste in the “deb http...” line, and click the “Add Source” button.

Now, update your repository catalog, and install MediaTomb.


=CODE_START=

sudo apt-get update
sudo apt-get install mediatomb


=CODE_END=


# Running and configuring MediaTomb

Run MediaTomb from the command line.


=CODE_START=

mediatomb


=CODE_END=

There will be a lot of information scrolling by. Ignore it for now. Give it a minute to finish configuring, then type “Ctrl + C” to interrupt the program. Let’s quickly edit our configuration file.


=CODE_START=

nano ~/.mediatomb/config.xml


=CODE_END=

Feel free to use another text editor rather than nano. I typically use vi to do minor editing, and really don’t use nano myself.

Immediately after the line that says “<server>” add a new line:


=CODE_START=

<protocolInfo extend="yes"/>


=CODE_END=

This is required for full PS3 support. If you find the PS3 doesn’t recognize your MP3s, chances are you need to add this line to the `~/.mediatomb/config.xml` config file.

Start MediaTomb again. Once more, a lot of information will scroll by. The most important one is at the end, and it will look something like:


=CODE_START=

2007-05-28 15:56:36    INFO: http://192.168.1.101:49152/


=CODE_END=

It’s the “http:...” bit you want. Simply copy that into your browser’s URL entry area, and you will get the MediaTomb configuration screen.

On the left, there are two viewing options: “Database” and “Filesystem”. Click on the “Filesystem” tag, and browse to your media. Click on the “+” button on the right hand side. Choose a full scan, and make sure the “Recursive” option is checked.

That’s it. It isn’t nearly as hard as it seems, really. And once the system is set up, simply use the web-based interface to manage your system. The MediaTomb website has a lot of good documentation.

You’ll have to restart MediaTomb by hand. There are some instructions for configuring it to restart as a service (“daemon”, in Unix parlance), but I won’t cover that here. This should be enough to get you started.

Unfortunately, the PS3 only supports encumbered media formats, like MP3, WMA, and Sony's own ATRAK format. Perhaps in the future they will add support for other formats as well, like Vorbis and Theora.

You can now use your media from any other networked computer in your household. I recommend [VLC](http://www.videolan.org/vlc/) as a UPnP client. It’s available for MS-Windows, Mac OSX, GNU/Linux, and quite a few other operating systems.

That’s it! Go out and enjoy your media.

