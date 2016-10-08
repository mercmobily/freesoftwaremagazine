---
nid: '2377'
title: 'Snap happy with free software'
authors: 'Ryan Cartwright'
published: '2007-08-17 1:23:35'
tags: 'photos,digikam,photo-management'
issue: issue_19
license: cc-by-nc-sa
section: end_users
listed: 'true'

---
It’s been said that for a free software desktop to succeed it needs to address the needs of the average home user. Managing digital photographs is just one of those needs. Let’s see how one of the more popular free software photo management applications, digiKam, measures up.


# Everyone is a photographer

Digital photography is now part and parcel of many home computer users’ lives and they are demanding more from their software. While professionals are more at home using packages like the GIMP (okay, it’s more likely Photoshop, but we can dream), the home user generally wants something half as complex to use but with two-thirds the capabilities.

The title on the digiKam website declares that it is “photo management for the masses”. That statement should tell you a lot about the aims of this accomplished application. It is written with photographers in mind and not just the professional.


=ZOOM=digiKam “photo management for the masses”—that says a lot about its aims=


# Installation

Installing digiKam is easily done through package managers, such as Synaptic, Yum, etc. Pretty much any GNU/Linux distribution which has packages for KDE available will include a digiKam package. BSD users should also have a package available. In most of the cases I have found, the package is simply called “digikam”. On my Debian system, I also installed the “digikamimageplugins” package which provides many of the editing tools discussed later. Both of these have documentation packages that are very good, so I recommend them.

If your package manager doesn’t install gphoto2 automatically, then you’ll need this package as well. Also, if it is available, I would recommend installing the Kipi plugins package for extra functionality (more on that later). Finally, for those who like to get their hands a little dirtier, source tar balls can be downloaded from the digiKam site.

While digiKam is an official part of KDE, it can be run under other free desktops such as XFCE and GNOME (although for a GTK interface you might like to consider F-Spot). Of course, you may have to install some KDE libraries with it, but any package manager worthy of the name should take care of that.

Naturally, KDE is the preferred desktop for running digiKam, the capital K in the name being a clue, and it is under that desktop that I use it. This article is based on v0.92, which at the time of this writing is the latest version.


# Getting photos from your camera

Of course, before you do anything else you need to download your photos from your camera into digiKam. Using the tried and tested free software principle of not reinventing the wheel, digiKam employs gphoto2 to handle the image capture side of things. A nice touch is that digiKam does this within its own interface meaning you are not forced to run one application then another just to manage your photos. This philosophy extends throughout digiKam and the result is a seamless set of very powerful but easy to use features.

Whilst I won’t go into the details of connecting specific devices to your desktop, I will give an overview. If you have never connected your digital camera to your desktop then I suggest you give it try. Many recent versions of GNU/Linux distributions have excellent support for USB devices and often just plugging in a device will result in that device appearing on your desktop.


=ZOOM=If you have never connected your camera to your desktop then give it a try=

digiKam will import images directly from a wide range of digital cameras, scanners and removable media. Even if yours is not directly listed you may well find it will work. Many low- to mid-range digital cameras connect as a USB mass storage device in much the same way as USB flash keys. If your camera has removable media, such as Compact Flash, Smart Media or XD cards, you may find it more convenient to use a card reader. Media connected via one of these USB devices invariably appear as a removable media icon on your KDE desktop. Another benefit of this approach is that it won’t run the batteries down on your camera.


## The import images wizard

digiKam integrates excellently into the KDE desktop. This means that right clicking on a camera or removable media desktop icon will give you an option to “Download images with digiKam”. Either this, or using the `Camera` menu within digiKam, will bring you to the `Import images` wizard (figure 1). Here you will find thumbnails of all the image files on the camera or media you’ve selected. The programmers have put some considerable thought into making importing simple. This means that you don’t need to know exactly where or how your camera stores its images, the wizard finds all the photos on the media. From there it is a case of simply selecting the photos you require and clicking `Download`. You can download all the images or selected ones. The final step is to select the album you want to import into - either a new one or an existing one.


=IMAGE=figure1.jpg=Figure 1: The import images wizard=


# Sorting it all out

Albums will be a familiar concept to anyone who has used other photo management software. They provide a simple concept to managing photos with an obvious link to the “good old days” of traditional photography.

digiKam’s albums are filed in a hierarchical structure below what it calls “My albums”. This is a top level folder which you set up when you first run digiKam via the `first-run` wizard. As a matter of fact, what is called an album within digiKam is simply a folder within the underlying file system. I have laid a digiKam snapshot alongside a Konqueror window showing the underlying file system structure (figure 2).


=IMAGE=figure2.jpg=Figure 2: Albums in digiKam and the underlying file system structure=


<!--pagebreak-->


While all this makes backing up your photo library very simple, it doesn’t mean you can add a new album by creating a new folder via Konqueror. In figure 2 you will see the digiKam database field (SQLite if you are interested) which keeps track of the filing system you have set up in digiKam. If you delete a folder, or image file for that matter, outside of digiKam, you will be warned about the missing items next time you start the program.

Albums have a number of properties including date, which can match the oldest or newest photo, comments and a collection. Collections are how you group albums. Each album will have an icon which is a thumbnail of the first photo within it. You can sort albums by date and also change views so the images are not grouped by album but by date as well.


## Tagging

Sometimes you will have photos that fit into two different albums. Similarly you may have photos which are connected but need to remain in separate albums. As an example, I have albums for various holidays each of which contain photos of my children. I want to keep the holiday snaps together but it would be useful to be able to pull out all the photos of my daughter from across all the holidays. This is where tagging comes in.


=ZOOM=Tags are a way to link photos whilst keeping them in separate albums=

Tags are a simple way to link photos together while keeping them in separate albums. Each image can have multiple tags as shown in figure 3. The tags assigned to each photo are in blue beneath it. You can see how the penguin photos are tagged as both “Birds” and “Penguins” and the parrot is simply tagged as “Bird”. As another example, my wife uses tags to identify photos from across various albums that she wants to get printed at the photo store. Once you have tagged photos you can view them in a pseudo album using the tag view.


=IMAGE=figure3.jpg=Figure 3: A typical digiKam window displaying an album.=


# Viewing and editing photos

Viewing a photo from an album view is done by clicking it. It will then be enlarged in the main pane. This is a fairly new feature, earlier versions of digiKam would open the image in an external window. It may not seem a major enhancement but opening them in the same window is more intuitive and is a great improvement in usability. Information about the photo (such as EXIF data, comments and tags) is available in a fly-out pane on the right. Clicking the enlarged image will return you to the album.

To edit an image you are viewing just click the `Edit` toolbar icon. This action does open it in an additional window. Not only are the expected tools like red-eye reduction and noise reduction present—and easy to use—there is also a wealth of other tools and methods provided to enhance your photos. To be honest, there are probably too many to cover in any great detail here, but I will try to briefly cover some of the more advanced things possible with digiKam.


=ZOOM=You get not only red-eye reduction but a wealth of other tools=

Old and damaged scanned images can be repaired with a single tool and the auto-colour correction takes care of much of the hard work for you. The ubiquitous black and white conversion not only provides the traditional sepia and selenium conversion but allows you mimic (to an extent) the tone of certain 35mm film such as Ilford Delta or AGFA Pan ranges, as shown in figure 4.


=IMAGE=figure4.jpg=Figure 4: Converting an image to black and white=

You can also add textures and borders with a range of parameters such as bevels and artificial wooden frames. As you would expect there are also resizing, scaling, shearing and perspective tools. Finally, in addition to the usual emboss and oil painting filters, you also have some of the more novel ones like infrared film and raindrops. All in all, there are some very powerful but somewhat intuitive tools available.


# Getting your photos out

I said earlier that digiKam ties in very well with KDE and this is evident when it comes to printing. Individual images can be printed from the edit window using the normal KDE print dialogs. For printing a selection of photos or an entire album you’ll need the `print` wizard which is one of the Kipi plugins. This wizard helps you to print multiple images on one sheet in various arrangements before handing over to the KPrint dialogs.


# Enhancing digiKam with Kipi plugins

digiKam is an excellent application but with the addition of the Kipi plugins its usefulness increases by a significant factor.

The KDE Image Plugin Interface (Kipi) is a framework which enables KDE imaging applications, including digiKam and showImage, to share plugins, which makes life easier. Again we come back to the idea of not reinventing the wheel for each application. For applications which support it, Kipi gives a range of additional capabilities which might not be available had they been required to be coded separately for each one.


=ZOOM=Kipi gives a range of additional capabilities=

As mentioned, the print wizard is one of these plugins, but you can also create HTML galleries locally or on remote servers (including Flickr) with a few clicks. Batch image processing enables you to convert or rename images in batches. You can also archive images or albums to CD, scan images in via Kooka, send them by email (allowing resizing and compression before sending) and even create a calendar.


# Conclusion

I work in the IT industry and computers are my hobby so perhaps I am little biased in my review of software aimed at end-users. My father-in-law is not like me; he is more like the typical end-user. (Perhaps a little braver than some in that he is willing to try things out.) Recently, I convinced him to switch to GNU/Linux and a KDE desktop. One of his requirements was a photo management application. I gave him digiKam. A week later he telephoned for some support on Thunderbird and during the conversation he said that digiKam was the best and most easy to use photo application he had come across.

While F-Spot lovers will no doubt argue, that is a sentiment I would echo, particularly when you add Kipi into the mix.


# Bibliography

digiKam website—[http://www.digikam.org](http://www.digikam.org)  
KDE—[http://www.kde.org](http://www.kde.org)  
Gphoto2—[http://www.gphoto.org](http://www.gphoto.org)  
Kipi (KDE Image Plugin Interface)—[http://extragear.kde.org/apps/kipi/](http://extragear.kde.org/apps/kipi/)  
F-Spot—Photo management for the GNOME desktop—[http://f-spot.org/Main_Page](http://f-spot.org/Main_Page)


