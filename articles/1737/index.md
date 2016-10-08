---
nid: '1737'
title: 'Have your own photo gallery in 5 minutes using free software'
authors: 'Robin Monks'
published: '2006-08-24 0:00:00'
tags: 'php,photo-gallery,picy,imagemagick'
license: verbatim_only
section: hacking
listed: 'true'

---
Do you like gallery tools such as Flickr, but want to control your photos, or get rid of any of their limits? Now you can have your own custom gallery using PHP, a script called Picy, and 5 minutes of your time!


<!--break-->


**Before you begin,** you’ll need a web host that supports [PHP](http://php.net) with GD, GD2, or [ImageMagick](http://www.imagemagick.org/www/formats.html). If you don’t have a web host you can pick one up cheap at [a small orange](http://www.asmallorange.com/services/hosting/?refer=linkzerver.com) (US$25 a year, US$35 a year with a domain, hard to beat that). If you’re too cheap to buy hosting (or want the geekiness that goes with having your own server) it’s possible to set up your own web server for free using just free software.

If you want to set up your own server make sure (if you have a router or firewall) that the port 80 is forwarding to your PC and open. Windows users can download [WAMP server](http://www.wampserver.com/en/) and install it to get an instant web server. GNU/Linux users will need to follow their distros instructions to install Apache and PHP.

**Minutes 1-3:** Once you have a web server for your gallery, upload all of your photos to a folder on the server (perhaps `/photos`). If you have your own server, simply move it to that directory in your public HTML folder (for WAMP, click on the WAMP icon in the system tray and click "www directory"). When using FTP the public files are using under "public_html" or "www" in the FTP folder list.

If you are using Picy with the PHP GD extension (with WAMP you can enable GD by clicking the WAMP icon in the system tray, selecting "PHP Extensions" and checking the item called "php_gd2.dll", most web hosts will already have GD enabled, if not they will usually be happy to enable it if you send them an email) you’ll need to ensure your photos are in PNG, GIF or JPEG/JPG format. Most digital cameras and scanners use JPEG, so you should be all set. If you need to change the format of a lot of photos (such as from .tiff or .raw formats) you can use something like [XnView](http://perso.orange.fr/pierre.g/xnview/endownload.html) (free for non-commercial use) to batch covert them to JPEG.

**Minute 4:** Now that you have all your pictures in a single folder, it’s time to install the Picy script (Creative Commons licensed). Head over to the [Picy homepage](http://picy.infinitesimal.org/) and download the latest version. Then extract it onto your PC and rename the `picy.php` script to `index.php`.

**Minute 5:** Finally upload `index.php` to the same directory on your server where you uploaded your photos (`/photos` in my example). Now just point your web browser to the folder your photos are in on the server (for WAMP users just go to `http://localhost/photos`) and see your pictures in action!

**Advanced Stuff:** If you want to custom configure your Picy gallery, open the "picy_manual.html" file in the Picy package you downloaded and look over the configuration section.

That’s it! Yet another cool project you can do with free software in less than 5 minutes. See you next week!

