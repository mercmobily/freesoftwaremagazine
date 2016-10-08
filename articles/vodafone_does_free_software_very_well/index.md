---
nid: '2429'
title: 'Vodafone goes free software and does it very, very well!!!'
authors: 'Marco Marongiu'
published: '2007-07-25 22:41:56'
tags: 'ubuntu,umts,vodafone,driver'
license: verbatim_only
section: opinions
listed: 'true'

---
Days ago I was appointed as the on-call support on our TIBCO installation. So I have been given a personal mobile phone, a personal laptop and, lastly, a Vodafone Mobile Connect Super UMTS card. You may well be interested in the fact that Vodafone Spain developed a Linux driver, the card seems to work very well with Linux, and that it was quite easy to configure it!

I am going to describe how I configured it to work with Vodafone Italia as the provider. Please feel encouraged to comment on this entry and fill in the configuration you made for your own Country or distribution. What follows is the configuration for Ubuntu 7.04.


<!--break-->



=IMAGE=05-vodafoneBvineSite.jpg=Vodafone ßVine site=

For first, I downloaded the [driver that Vodafone Spain developed for Linux under the GPL license](https://forge.vodafonebetavine.net/projects/vodafonemobilec/). The package provides, well, drivers and a graphical interface (written in the Python programming language) quite similar to the one that is available on Windows platforms. All this is available in source and pre/compiled packages. Of course, I used the Ubuntu deb package, which means that all I had to do to have the driver in my “Internet” menu was a couple of clicks.


=IMAGE=10-menuItem.jpg=The Vodafone Mobile Connect Card driver ready to use=

Once you start the interface, you’ll come to the difficult part. In fact, the default settings are those for Spain so... well, unless you live in Spain you have a problem. As far as I was concerned, I had to find the right settings for Italy.


=IMAGE=20-insertPin-resized.jpg=Starting the driver: please insert your PIN=


=IMAGE=30-applicationWindow-resized.jpg=I have already seen this one. Was it on Windows XP?=

I found some suggestions on the web; in particular, [a recent post on a South-African site](http://www.tectonic.co.za/view.php?src=rss&id=1596) provided the information about the APN host setting (use “internet” as the value) and about username and password (use “vodafone” as the value for both), which was right. But the post also suggested to use dynamic settings for DNS, and this didn’t work—the card received and used two private addresses of the class `10.x.x.x` that were actually provided as WINS servers (ah, those f...antastic Microsoft protocols...) and that didn’t work very well. I had to find another way to get the correct settings.

You may not like it, but I restarted the application under Windows XP and used the `ipconfig /all` command to get the right values. I am all for innovation, so if you know a way to get that information that doesn’t involve non-free software please comment below.


=IMAGE=40-applicationPreferencesItaly-resized.jpg=I have already seen this one. Was it on Windows XP?=

Putting all these together into the Preferences window left me with a fully-functional UMTS connection to the internet. What about your country?

Enjoy!!!

