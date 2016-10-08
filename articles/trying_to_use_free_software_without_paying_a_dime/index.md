---
nid: '2256'
title: 'Trying to use free software without paying a dime'
authors: 'Andrew Min'
published: '2007-04-30 8:30:00'
tags: 'internet,web,gallery'
license: verbatim_only
section: opinions
listed: 'true'

---
Sound redundant? Read on to find out why it isn’t.


<!--break-->



# Introduction

Free software is great. But one of the biggest appeals of it is that it is _free_. In other words, you don’t pay for it. Unfortunately, with online applications, that isn’t always true. Take photo galleries for example. All I wanted to do was to create a photo gallery powered by [Gallery2](http://gallery.menalto.com/). The problem was, I share my web hosting. So I didn’t have access to a MySQL database. Gallery2 requires MySQL. The obvious (sounding) answer was to buy hosting. But students don’t make a ton of money. Besides, I wanted to use free software without paying. Thus began the search for a way for me to host a photo gallery without paying a dime.


# Free hosting

When someone says “free hosting”, you usually think of GeoCities or Bravenet. In other words, you think of bad looking sites that have tons of ads, offer little for client-side scripting languages and nothing for server-side, and (in the case of Bravenet) often give you unwanted tracking cookies. I didn’t want that. But luckily, times are changing. Companies all over the place are popping up with free web hosting. Often, this hosting will come with PHP and MySQL. Sometimes it doesn’t even have ads.


# What I needed

My idea was to create a photo gallery so I could share my photos with my friends. I wanted to use either [Gallery2](http://gallery.menalto.com/) or [ZenPhoto](http://gallery.menalto.com/). Both required PHP 4.10+, and a database (for Gallery2, MySQL 3.x, 4.x or 5.x, PostgreSQL 7.x or 8.x, Oracle 9i or 10g, DB2 8.2, MS SQL Server 2005, for ZenPhoto, My SQL 3.23+). Gallery2 also needs ImageMagick or NetPBM, while ZenPhoto requires GD support.

I also wanted to make sure the host I ended up with had no ads, and used a subdomain for quick access. Lastly, I wanted the host to give a decent amount of space (my pictures are rather big).


# The search

Although my specifications might seem big, there were five hosts that fit the bill nicely. I tried them out in turn and got some interesting results.

My first stop was [AddYour.net](http://addyour.net/). I had used them before, and had fond memories of them. The problem is, they take forever to sign up. It often takes six tries to sign up. Once you do, however, they’re great. They give you 500MB of space, PHP, MySQL, and a ton of other stuff. However, there was just one more problem. When I visited them, their servers were down. Hosts that go down without warning are usually not ones to stay with. Scratch AddYour.net off the list.

The next three on my list were [Quotaless.com](http://www.quotaless.com/), [789MB.com](http://www.789mb.com/), and [PutSpace](http://www.putspace.com/). Unfortunately, I couldn’t log into my FTP account in all three. Forget it. You can’t upload ZenPhoto or Gallery2 through a web-based uploader.

I then tried [666gb.com](http://www.666gb.com/). No, they don’t give 666 GB of space. They give you 6**.**66GB of space, with 66**.**6GB of bandwidth. Not too shabby. Unfortunately, they don’t support .htaccess, which ZenPhoto required. But Gallery2 doesn’t require .htaccess. In addition, I found out that 666GB includes a nifty application installer that automates the installation of Gallery2 (they call it “gallery”). Then, I got a...


>Error: Your version of PHP is configured with safe mode enabled. You must disable safe mode before Gallery will run.

You’d think that they’d actually _want_ you to think that they were a good web host.


# Alternatives: Software

Well, I was a tad upset. After all, I was going to have to go back to Flickr or Yahoo! Photos, neither of which are very customizable. Then, it dawned on me. Why not use a piece of software that doesn’t use MySQL, and host it on my shared server (powered by GoDaddy)? After hitting my self over the head about six times, deleting the Gallery2 folder, and doing some searching, I found three options that seemed like they might answer: [Gallery1](http://gallery.menalto.com/) (the little brother of Gallery2), [SimpleViewer](http://www.airtightinteractive.com/simpleviewer/) (with the [SimpleViewerAdmin](http://www.redsplash.de/projects/simplevieweradmin/) plugin), or a JavaScript image viewer like [TripTracker](http://slideshow.triptracker.net/) and [SmoothGallery](http://smoothgallery.jondesign.net/).

Gallery1 is the less powerful version of Gallery2. Unlike Gallery2, it doesn’t require a database (making it perfect for me). In addition, it installed extremely easily. However, I didn’t like it. The CSS looked horrible. The good news was that it was easy to upload photos to it via my photo organizer, digiKam. Unfortunately, the bad outweighed the good. I decided that I wouldn’t use it unless there was no other alternative.

SimpleViewer is completely Flash based. The downside of this is that my visitors need Flash 7 or higher to view it. The upside is that it doesn’t require any SQL or PHP. Unfortunately, SimpleViewer didn’t work for me when I tried to upload some photos from digiKam (it couldn’t create the FTP directory). In order to use SimpleViewer, I had to manually add the pictures by editing the XML file, uploading to Flickr and then importing them into SimpleViewer, or using the SimpleViewerAdmin plugin (which doesn’t, as far as I can tell, support batch uploading).

The last option was to use JavaScript albums, like TripTracker and SmoothGallery. But for them, you’d have to manually add a link to each image. That was DEFINITELY not for me. I might as well just upload it via SimpleViewer.


# Alternatives: hardware

I sadly went back to the Gallery2 page to mourn. Then, I saw something. It was a [link to the Gallery appliance](http://gallery.menalto.com/Gallery_Appliance_1.1), which turned out to be a VMWare virtual machine. Suddenly, I wondered if I could host my gallery myself. But then, the reality kicked in. It might work for some. But I don’t leave my computer on all day (I turn it off at night to save power). Besides, I’ve only got 1 GB of RAM. Running a server, KDE, Skype, Gaim, SuperKaramba, Amarok, CheckGmail, and KDevelop at the same time would’t really work.

My other option was to use a physical computer as a server. In fact, I had an old computer (with 128 MB of RAM and a 20GB HD running Windows XP) laying around. But the problem was that I didn’t know the IP address of that computer. Going to an IP detection site just gave me my _router’s_ IP address. And lastly, the machine could only connect to the internet via a wireless device (through USB _1.1_ ). It was pathetically slow.


# The solution

This is the part of the article where I magically produce the solution. Unfortunately, I don’t have one. Basically, I have to either continue using Yahoo! Photos, Flickr, or PicasaWeb, or buy web hosting. For now, those are my only options.

