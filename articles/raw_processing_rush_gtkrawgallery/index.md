---
nid: '3717'
title: 'RAW Processing in a Rush with GTKRawGallery'
authors: 'Dmitri Popov'
published: '2012-02-21 5:50:50'
tags: 'raw,photography,dcraw,imageprocessing,gtk'
license: verbatim_only
section: end_users
main_image: 20110928-161124-4922-300x400.jpg
listed: 'true'

---
When it comes to processing and managing RAW files, many serious amateurs and professional photographers rely on applications like [digiKam](http://www.digikam.org) and [Darktable](http://darktable.sourceforge.net). But when you need to quickly view and process a handful of RAW files, you might want to consider using a lightweight tool like [GTKRawGallery](http://sourceforge.net/projects/gtkrawgallery/). 

# The app's abilities

The application is a bit of a misnomer, as GTKRawGallery provides an impressive array of tools suitable not only for viewing but also for processing and organizing RAW files. GTKRawGallery uses the [dcraw](http://www.cybercom.net/~dcoffin/dcraw/) RAW decoding library which can handle practically every RAW format out there, including the usual suspects like CR2, NEF, RAF, and DNG. The application also provides a graphical interface that gives you easy access to all dcraw's RAW processing features. GTKRawGallery also supports popular image formats such as JPG, TIFF, PNG, SVG, and many others. So even if you don't shoot in RAW, you can use the application to manage your photos. In addition to image manipulation and management tools, GTKRawGallery boasts advanced features like a histogram tool, non-destructive editing capabilities, and the ability to read and write metadata in the EXIF, IPTC, and XMP formats. GTKRawGallery even supports color management based on ICC profiles courtesy of the [LittleCMS](http://www.littlecms.com/) software. All this functionality is wrapped in a lighweight interface which is usable on small screens.

=IMG=gtkrawgallery_main.png=GTKRawGallery's interface=

#Installation

GTKRawGallery is written in Python, so you don't have to compile it from source. Grab the latest release of the software from the project's website and unpack the downloaded archive. There are a handful of packages the application depends upon, and they are all listed in the README file. If you happen to use the latest version of Ubuntu or any of its derivatives, you only need to install two additional packages: *python-tk* and *dcraw*. This can be done using the `sudo apt-get install python-tk dcraw` command. Once you've done that, switch to the *gtkrawgallery-x.x.xx* directory in the terminal and execute the `sudo python setup.py install` command to install the application.

# GTKRawGallery and Ubuntu: fixing a small bug

If you are using Ubuntu with non-US locale settings, you might also need to fix a tiny bug that prevents GTKRawGallery from running. To do this, open the *gtkrawgallery.py* file for editing using the following command:

    sudo nano /usr/local/lib/python2.7/dist-packages/gtkrawgallery.py

Locate the *locale.setlocale(locale.LC_ALL, 'en_US')* line and edit it as follows:

    locale.setlocale(locale.LC_ALL, '')

Save the modified file, and launch GTKRawGallery from the terminal using the *gtkrawgallery* command, or by choosing **Graphics -> GTKRawGallery** from the **Applications** menu.

# The verdict

GTKRawGallery may not rival digiKam or Darktable feature-wise, but this lightweight application can come in handy when you need to process RAW files in a hurry or keep tabs on your photos when you are out and about.