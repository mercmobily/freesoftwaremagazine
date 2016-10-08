---
nid: '3767'
title: 'Instant Web Galleries on Your Server with Bizou'
authors: 'Dmitri Popov'
published: '2012-05-31 2:13:06'
tags: 'photosharing,webapps,galleries,php5'
license: cc-by-sa
section: end_users
main_image: main.jpg
listed: 'true'

---
So, you just got back from a trip, and you have tons of photos you want to share with the world. While there are dozens of photo sharing services to choose from, uploading megabytes of photos doesn't sound like a fun pastime. And why bother with a third-party service if you already have a Linux-based server? In this case, consider using [Bizou](http://www.positon.org/bizou/en.html).

<!--break-->

This simple solution can automatically publish a bunch of photos as a no-frills web-based gallery. There is no complicated installation procedure,  no database to configure, and no settings to tweak. All you need to deploy Bizou is a machine with the Apache web server and PHP5 with the GD extension. 

# Install it!

To install Bezou, grab the latest version of the application from the project's website, unpack the downloaded archive, and move the resulting directory to the document root of your server (e.g., */var/www/*). Make the *data* directory writable by the server using the following commands:

	chgrp www-data bizou/data/
	chmod g+w bizou/data/

Copy individual photos or directories containing photos to the *images* directory (you can specify a different directory along with a few other options in the *config.php* file), and your gallery is ready to go. Point your browser to your Bizou installation, and you should see the gallery in all its Spartan beauty. 

# Remember: it's simple

Bizou lacks fancy trimmings like comments, tagging and searching capabilities, user access control, etc. In other words, Bizou won't replace a full-blown photo sharing application like [Piwigo](http://piwigo.org/) or [Gallery](http://gallery.menalto.com/), but if you need to showcase your photos in no time and with an absolute minimum of fuss, Bizou is just the ticket.