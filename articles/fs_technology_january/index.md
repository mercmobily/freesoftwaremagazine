---
nid: '1322'
title: 'Hosting service favorites: Gallery'
authors: 'Martin Brown'
published: '2006-02-13 11:17:11'
issue: ''
license: cc-by-nc-nd
section: hacking
main_image: hide.jpg
listed: 'true'

---
Sharing photos has become one of the more popular methods of sharing information on the internet. A wide range of different people, groups and organisations are using photo sharing as a way both to promote their activities or simply to share their photos with friends and family. Some companies, for example, are using online photo systems to show product shots (like the shop for [electric bikes in Perth](http://zapelectricvehicles.com.au), others to enable users and customers to provide examples of the company products in use. Many professionals are using photo software to advertise and show off their expertise and portfolios.

There are many different web-based photo systems available. One of these is the aptly named [Gallery](http://gallery.menalto.com/), a free software project that provides a completely web based environment for the display and management of photos (and movies) over the web.

=TEXTBOX_START=Book Competition!=
This week we are giving away a copy of[Hardening Apache](http://www.freesoftwaremagazine.com/reviews/book_review_hardening_apache) by Tony Mobily.

All you need to do to enter is check out the [latest book competition announcement](http://blog.freesoftwaremagazine.com/users/announcements) on our blogs page.

GOOD LUCK!

_Thanks go to _[Apress](http://www.apress.com/)_ for providing this fantastic prize._


=TEXTBOX_END=
Gallery 2.0, the current version of the Gallery software is written using PHP and can use MySQL, PostGreSQL or Oracle for storing the information about the images in the database. For the image manipulation and processing, Gallery provides an interface to the ImageMagick, NetPBM and GD graphics libraries. As well as supporting proprietary environments (Gallery is happy running within IIS on Windows) for deployment, as a PHP project (and a free software project in its own right) Gallery is built around free software technology.

Gallery has a built-in user environment enabling you to control and limit the way people interact with the data in your Gallery system. At the most basic level the user system provides a level of control for key operations such as adding photos or the creation of albums within the Gallery. Individual albums can be assigned to specific users, and registered users can be notified of new photos within a given gallery. This latter feature becomes an interesting way of sharing photos amongst a group of people with similar interests. Albums can also be hidden so that they are only available to specific users or to non-registered users, helping you limit the accessibility to private or restricted information.

Before you can organise your photos into albums or add categories, descriptions and commentary to your photos, you need to be able to insert your photos into the Gallery system. Gallery stores the actual images on disk, while retaining photo information, album data, and other information within one of the backend databases (usually MySQL).

Getting photos into the system is therefore a case of uploading the photos into the Gallery system. Uploading can be handled on a photo by photo basis through a web page (up to ten photos at a time), or you can use a similar interface to upload a Zip file containing a batch of photos and movies. Alternatively, and of particular use when uploading large quantities of photos, you can upload media into a directory on your web server (using FTP, for example) and then request that Gallery searches the directory to import the media into the database.

Uploaded photos are automatically thumbnailed, added to the database and metadata about the photos is also extracted and added into the database. During the import process, you can also optionally add titles, captions, keywords and other information to the photos.

At all times, you are creating and organising photos into specific albums. Albums are the core organisational element within Gallery for your photos. You can create albums at any level, creating a tree based structure for your photographic data. For example, you can create an album for Spain, and additional albums for each of your holidays in the Spain album to further classify and organise the photos. Conveniently, you can use a photo or portion of a photo from the album as the cover artwork. This use of album specific data makes browsing through albums by picture alone much easier

Once added to the Gallery database individual photos can be modified and manipulated in a variety of different ways. At the simple end this includes functions for rotating and resizing the photo within the database. More complex operations are also supported, such as the ability to protect your photos by adding a watermark to one or more photos within an album.

It is worth noting that, in addition to the basic Album-based interface to your photos, all of the information about a photos (inserted into the database when the photos are added) gives you have a powerful base for searching. Assuming you correctly keyword and mark your photos during import, it is possible to find and view all of the photos featuring a particular object, location or person. You can also view and extract EXIF data from photos. The EXIF standard embeds details about the image, environment, and photographic attributes (focal length, zoom, camera settings).

Once you have your Gallery system up and running there are a number of different interfaces and extensions to the core web interface of the Gallery system. These extend the functionality of Gallery from an entirely web based environment to a more flexible network based application with a web front end.

For example, Gallery supports a mirror function that enables you to spread the contents of individual albums among one or more additional servers. At a basic level this could be used to provide both a home or office and hosting-service based interface to your photos. With the local system in place you could easily add and update the photo information on a fast connection, while updates were being made to the mirrored version of the database on the Gallery at your hosting service.

In a more complex environment, you could use the Gallery mirroring system to handle higher levels of bandwidth by sharing the data over more servers, perhaps located in satellite offices or different countries.

Gallery also supports a flexible interface to the database and photo storage systems. For example, Gallery Remote (a standard Java application) is available for uploading photos. Interfaces and solutions also exist for Perl, Python and desktop applications and environments like Windows XP and Apple’s iPhoto, which enable you to easily upload and share photos without relying on the web interface.

For getting your photos back out of the system you can create and subscribe to RSS feeds. Gallery has also spawned a number of extensions and plug-ins for blogs and content managements that make it easy to include Gallery sourced photos in articles and blog posts with a minimum of fuss.

Returning to the web based interface, as with many other free software web based information systems, Gallery supports themes. These are customisable templates that allow you to create a personal representation and layout of the information contained in the gallery database.

Even with the extensive features described here, only the surface of the functionality of Gallery is being described. The free software approach has worked well for an application that many people want to use and extend. You can see by looking at the [full list of features](http://gallery.menalto.com/features) that different users have requested functionality or added it to the system. And, while there is no requirement to use this extra functionality, the fact that it exists and it’s so easy to add to the system, by simply modifying the PHP code, is clear.

Gallery is available as a standard component from many hosting services, and it is easy to see why. It is simple to deploy, easy to use, and powerful in the hands of the right administrator with the need and requirement to use it. If you want to publish your photos in an environment that gives you control over how the information is viewed, organised and represented, then Gallery is a good place to start.

More information: [the Gallery website](http://gallery.menalto.com/)
