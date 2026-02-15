---
nid: '3395'
title: 'Private Collaboration and Digital Asset Management with MediaWiki'
authors: 'Terry Hancock'
published: '2010-10-15 9:30:52'
tags: 'debian,collaboration,content,mediawiki,dams'
license: verbatim_only
section: hacking
listed: 'true'
book: making_free_movies_with_free_software
book_weight: '0'
layout: book
---
<!-- Private Collaboration and Digital Asset Management with MediaWiki -->

My partner (and wife) Rosalyn and I have needed a way to collect our work on _Lunatics_ in a way that is easily maintained and allows for collaborative editing and for collecting all of the media and notes that we have created for the project. It may seem a little like overkill for just two people, but there are a number of advantages to installing a wiki for this purpose, and the MediaWiki software is the best I know for this purpose, since its development has been so motivated by the needs of Wikipedia.

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies, _Marya Morevna_, through the [Morevna Project](http://www.morevnaproject.org) and [Lunatics](http://lunatics.tv), which we are working on as Anansi Spaceworks.
=TEXTBOX_END=

=ZOOM=It's been pretty obvious that MediaWiki would be a good choice for opening our project up to the outside and letting people collaborate with us=

It's been pretty obvious that [MediaWiki](http://www.mediawiki.org) would be a good choice for opening our project up to the outside and letting people collaborate with us. I've looked at a number of tools for doing that (including some integrated into [Zope](http://www.zope.org) or [Plone](http://www.plone.org), which would've been more convenient from an installation viewpoint), but MediaWiki wins hands-down:

* it's very robust
* it can handle extraordinary loads
* it has a wide variety of features
* it has a very intuitive interface for editors
* many people already know the markup language
* it can handle multimedia types easily
* it can manage license and attribution information

Most of these are clear advantages for use on our public server, supporting project development.

=IMAGE=fig_lunatics_wiki.jpg=Figure 1: Our private writing and production management wiki for Lunatics=

It's less clear that they are good for private use. After all, you might think it'd be overkill -- a lot of hassle for not much reward and a lot of features you don't need. But in fact, I think makes sense. Advantages:

* allows us to test the mediawiki installation
* no format conversions when we migrate material to the public site
* we don't have to learn two collaboration systems
* much easier than _ad hoc_ collaboration on the file system
* collects everything neatly into one virtual "place"

And most of the conflicts that you get with a dozen contributors actually start to happen even with just two. Perhaps most importantly, though, the implied disadvantage is simply not true: MediaWiki was very easy to install and configure on my Debian system at home. I spent perhaps half an hour on this, and most of that was just my own pickiness.

# Installing MediaWiki in Debian (or Ubuntu)

Basic installation was very easy. I am running a Debian "Lenny" system with some upgrades from the current "testing." To install MediaWiki on this system, I started with:

=CODE_START=
# apt-get install mediawiki mediawiki-extensions mediawiki-math
=CODE_END=

It's almost that simple, but for a few caveats: The extensions packaged by Debian are disabled by default; you have to link them into your MediaWiki instance. There's also a number of useful extensions which aren't available from Debian packages, and these have to be installed from upstream sources. There's also a number of configuration changes needed to work with the kinds of data we need on this movie project, and of course, a few just for appearances, like changing the logo.

=IMAGE=fig_mediawiki_symlink_layout.jpg=Figure 2: Symlink system used by Debian to conform MediaWiki to the "Linux Standard Base" (which is part of Debian packaging policy)=

## Configuration

The Debian configuration creates a very minimal site after asking a few questions. When you go to visit the URL for the site (in my case at `http://localhost/mediawiki`), you get the MediaWiki installer. This takes care of various steps such as creating a MySQL database and naming the site. It's fairly straightforward.

I don't recommend using the default database name, though, if you think you might need more than one separate wiki installed (and I think that's likely).


## Manual Customizations

Debian's package forces MediaWiki into compliance with the "Linux Standard Base" filesystem layout by using symbolic links. Some of the upstream sources don't seem to understand how that works, but in my opinion it really is an improvement. Figure 2 shows how the linkage works.

=ZOOM=Debian's package forces MediaWiki into compliance with the "Linux Standard Base" filesystem layout by using symbolic links=

Here's the sum of my custom changes to `/etc/mediawiki/LocalSettings.php` (I keep these together at the end of the configuration file so I remain clear on what changes I personally made to this file, as opposed to any automatic or Debian maintainer changes):

=CODE_START=
# MANUAL CUSTOMIZATIONS

$wgLogo = "$wgServer/lunatics_wiki_logo.png";
$wgFileExtensions = array_merge($wgFileExtensions, array( 'svg', 'blend', 'lyx', 'ogg', 'flac', 'wav', 'pdf', 'txt', 'mp3' ));
$wgUploadSizeWarning = 5 * 1024 * 1024;
$wgVerifyMimeType = false;

# MANUAL EXTENSIONS

require_once 'extensions/SpecialUploadLocal/SpecialUploadLocal.php';
require_once ( 'extensions/LabeledSectionTransclusion/lst.php' );
require_once ( 'extensions/LabeledSectionTransclusion/lsth.php' );
=CODE_END=

As you can see, I've changed the logo to something appropriate for my project; extended the list of supported upload file formats; increased the expected size of uploads (up to 5MB); and eliminated the check on filetypes (the check seems to choke on some formats like Blender `.blend` files).

=IMAGE=fig_uploading_media.jpg=Figure 3: After a basic install, you can easily upload media into the wiki using the through-the-web interface=

I've also installed two additional extensions manually: "SpecialUploadLocal" provides a bulk upload capacity so I can dump a bunch of local files into the MediaWiki instance _en masse_; while "LabeledSectionTransclusion" makes managing our screenplays a lot easier (as I'll explain below).

Tolerating larger uploads also required a minor change to `/etc/php5/apache2/php.ini`: I needed to change `upload_max_filesize = 2M` to `upload_max_filesize = 25M`.

The file includes some configurations from `/etc/mediawiki-extensions`, where I need to enable the Debianized extensions. Currently, the only one I'm using is "Cite" which provides for numbered footnotes to be placed at the bottom of the page. This is done by creating symlinks in the `/etc/mediawiki-extensions/extensions-enabled` directory to the equivalent directories in `/etc/mediawiki-extensions/extensions-available` directory. I'm not sure how widespread this practice is, but it is also how Debian manages Apache site configurations, so this is somewhat familiar to me.

Assuming root privileges, here's the steps to enable the "Cite" extension:

=CODE_START=
# cd /etc/mediawiki-extensions/extensions-enabled
# ln -s ../extensions-available/Cite.php .
# ls -l
total 0
lrwxrwxrwx 1 root root 32 Jun  9 13:12 Cite.php -> ../extensions-available/Cite.php
=CODE_END=

After that, the configuration scripts take care of including the extension into your MediaWiki system (in detail, `/etc/mediawiki/LocalSettings.php` uses an include statement to load `/etc/mediawiki-extensions/extensions.php` which scans and loads extensions from the directory links under `/etc/mediawiki-extensions/extensions-enabled`).

# Useful extensions:

I added "Cite" which allows reference footnotes. "CategoryTree" is a tool for displaying relationships between categories -- I haven't added this one, but it sounds like it might be useful in the future. "SpecialUploadLocal" is a tool which allows masses of files to be integrated at once if they are already on the server -- very useful for a local wiki.

=ZOOM=An especially useful extension is "LabeledSectionTransclusion"=

An especially useful extension is "LabeledSectionTransclusion." This is quite a mouthful, but the concept is fairly simple. It allows you include sections of another page (rather than the whole page) in another page. For Lunatics, I use this to excerpt sections of the screenplay (which is one large document for the convenience of writing) into separate scene pages (which are used in the directing process). This allows me to keep the live (current) screenplay text next to other resources for the page, such as storyboards, modelling and animation requirements, animatics, soundtrack, and directing notes (which would create a lot of clutter if we put it on the screenplay page).

=IMAGE=fig_labeled_section_transclusion.jpg=Figure 4: Labeled Section Transclusion is a bit of a mouthful, but is actually a fairly simple idea. It lets you "transclude" (copy contents from one page to another) by "labeled section" (either through labels you add, or using the standard section breaks). I found this very helpful for producing synchronized "writer's view" (left) and "director's view" (right) versions of scene pages. Less obvious here is the use of "SpecialUploadLocal", but it's here: I did bulk uploads to enter the scanned storyboards=

Annoyingly, this has to be taken from the MediaWiki Subversion repository. I had a little trouble with finding exactly where this is. Here's the actual command to get the whole extension via anonymous Subversion. Of course, you need to have Subversion (`/usr/bin/svn`) installed, but it's packaged for most GNU/Linux distributions, so that's no problem.

=CODE_START=
# svn checkout http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/LabeledSectionTransclusion /my/receiving/directory
# cd /var/lib/mediawiki/extensions
# cp -r /my/receiving/directory/LabeledSectionTransclusion .
=CODE_END=

Then modify `/etc/mediawiki/LocalSettings.php` to include the lines:

=CODE_START=
require_once ( 'extensions/LabeledSectionTransclusion/lst.php' );
require_once ( 'extensions/LabeledSectionTransclusion/lsth.php' );
=CODE_END=

Further info on [how to use LST](http://www.mediawiki.org/wiki/Extension:Labeled_Section_Transclusion) is available from the MediaWiki site.


# MediaWiki as a DAMS

What we are essentially doing is using MediaWiki as a "Digital Assets Management System" (DAMS) as well as a collaboration tool. This seems to work very well, and I expect to write a lot more about details with MediaWiki. This has been one of the smoothest and most pleasant new software experiences I've had in a long time (owing no doubt to the huge amount of production experience that has gone into MediaWiki).  For now, though, we're still just getting familiar with how to use it.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=

