---
nid: '2351'
title: 'Zonbu GNU/Linux computer'
authors: 'Jeremy Turner'
published: '2007-08-22 10:35:29'
tags: 'open-hardware,hardware,zonbu,environmentally-friendly,green'
issue: issue_19
license: cc-by-nc
section: opinions
listed: 'true'

---
Zonbu GNU/Linux is a new, environmentally-friendly, compact PC available from [Zonbu](http://www.zonbu.com). It includes some features that really make it stand out from other PCs. Last, but not least, it comes with GNU/Linux. In this article, I will give you some of the highlights and thoughts of my experience with Zonbu.

The Zonbu GNU/Linux computer is small, about the size of a book. It is virtually silent, since it has no fans or other moving parts. Zonbu really looks cool enough for the geek. It’s black and silver (with skins on the way), and has a bright blue power LED on the front. The rear of Zonbu includes several common connectors, making Zonbu a drop-in replacement for older computers. The best part of all is it eats up only 10 watts of power.


=IMAGE=zonbu-back2.jpg=Figure 1: The rear ports of the Zonbu GNU/Linux computer=


=ZOOM=One major benefit of online storage is all documents are stored off site=


# The network experience

The Zonbu GNU/Linux computer uses the ability for users to connect with their data in a new way. Zonbu uses storage space on a remote server in place of a traditional large local storage device.

As opposed to most traditional computers which store programs and data on a local hard drive, Zonbu uses storage on their servers, syncing to a local cache to operate. Zonbu includes only a 4GB CompactFlash card with GNU/Linux pre-installed. The operating system takes up about 1.5 GB, while the remaining 2.5 GB serves as a local storage cache for the internet data. This does not necessarily mean that Zonbu must be connected to the internet at all times; however, only the local cache will be accessible. The Zonbu operating system appears to use a customized version of Gentoo along with the XFCE desktop environment, although it is difficult for even an experienced GNU/Linux user to tell.

One huge benefit with storing all of your data securely online is that, by definition, your data is stored off-site. If a Zonbu box were to fail, the user would be able to get a new unit and be working on their documents again. Zonbu provides some other means of storing documents. The simplest way of getting documents to the online storage space is to copy them into the /Documents folder. This kicks off the synchronization process. Other methods of getting data onto the online storage include a web interface and a Microsoft Windows client.

Although I couldn’t get an exact measurement, some uploads to the Zonbu server seemed painfully slow at home. While this is most likely a limitation of a pitiful upload connection speed, moving to another location with a faster speed did not seem to improve the experience. However, if you use the local cache all of the file transfers happen in the background. If Zonbu is shut down before data synchronization is complete, it resumes on the next login.


# The software experience

The user experience really seems geared towards the non-geek. Three icons sit atop the grass-clad house desktop which include the user’s documents, the trash bin, and “Neighborhood” (which is a link to SMB/CIFS workgroups, computers, and shares on the local network). Also, applications are not named by their official names (Firefox, Evolution, Banshee, GnuCash, etc), but by their function (“Web Browser”, “Mail and Calendar”, “Music Library”, “Personal Finance Manager”, etc.). After launching the particular application, the normal title appears in the title bar (or wherever is appropriate).

The bottom panel includes icons for a Start menu (an icon of a map and compass), Firefox, Evolution, a drawer for OpenOffice.org (Writer, Calc, and Impress), a drawer for searching (local computer, internet), a drawer for media (media player/MPlayer, and Banshee), a “show desktop” icon, the task list, system tray, process load indicator, and date/time applet. The default size of the bottom panel is a whopping 54 pixels. But that aside, the panel looks well organized and intuitive to navigate.


=IMAGE=zonbu_start_menu.jpg=Figure 2: Zonbu desktop with Thunar file manager=

The Start menu continues some of the same methodologies of Zonbu. The entries are easily grouped and named in a very user-friendly fashion. There are icons for the user’s documents, Firefox, Evolution, local search, help, and shutdown. There are also submenus which group the rest of the applications. These submenus include Office (OpenOffice.org, Adobe Acrobat Reader 7, and GnuCash), Publishing (the GIMP, Scribus, and Nvu), Multimedia (Media Player, Banshee, F-Spot, GNOME Sound Recorder, Recording volume level indicator), and Internet (Firefox, Evolution, Skype, GAIM, Azureus, and aMule). There is a large collection of games, some of which include SuperTux, Frozen Bubble, Chess, Sudoku, Freeciv, Nibbles, Mahjongg, and Same GNOME. The rest of the Start menu includes an Accessories menu (Calc, Xfburn, Eye of GNOME, Mousepad, GNOME Screenshot, and File Roller), Control Panel menu (includes options for changing desktop, keyboard, mouse, volume, networking, screen saver, and other settings).

Zonbu users will find two special options of the Control Panel as being of a bigger importance. The Storage option is a custom application which shows the status of the user’s on-line storage. This menu provides the status of both the internet storage space and the local cache. Also, there is a button which will show a log of the actions left to do, whether synchronize up or delete. The synchronizing application doesn’t seem to be extremely efficient. For instance, it will list files as needing to be uploaded, and then it will list them later on as needing to be deleted. In order to save some bandwidth, it would be nice if the application could detect files that really do not need to be uploaded. It was not apparent that it did so. There is a button that will open a window to show files that are currently being transferred in the background. In my testing, that was not functional. I could open the log of files to be transferred and get an idea of what was happening, but I didn’t get a nice progress meter. Another item in the Control Panel of interest is a link to Zonbu’s website, but more specifically to the user’s account settings. From this web site, you can change your account settings, get support, view forums, and more.

Another sub-menu on the Start menu is the System menu. This menu gives you options to open a terminal, run a command, open the task manager, or even reset the device to defaults.


=IMAGE=zonbu_no_windows_exe.jpg=Figure 3: Zonbu doesn’t run any Windows executables=


# Tinkering with the software

For those geek types who like to tinker and investigate, there also is a way to get [a root prompt and add additional packages from portage](http://www.zonbu.com/company/developer.htm). Zonbu [has made patches available](http://oss.zonbu.com/overlay/) that they have applied to the software, so you could recompile and install your own versions. Additionally, they offer the full Zonbu distribution available as a download, so that anyone can install it on an ordinary PC, using their own [Amazon S3 storage account](http://www.amazon.com/s3).


# The hardware experience

Under the hood, Zonbu houses a VIA CX700 chipset, and the VIA Esther processor at 1.2GHz. The front of Zonbu has a USB port, power button, blue power LED and green HDD activity LED. The blue power LED seems very bright. It produced a noticeable glowing circle approximately 12 inches in diameter against a wall several feet away. The rear of Zonbu contains a plethora of ports commonly found on all PCs. The only option for video is VGA, at a maximum resolution of 1400x1050. There are 5 USB ports, both 3.5mm mic and headphone jacks, RJ-45 Ethernet, keyboard and mouse PS/2 ports, custom 5V power adapter jack, CompactFlash slot, and a power switch. There is also a hole for a wireless antenna, which looks to be a possible add-on down the road.

The sides of Zonbu are not flat but laid out like a grill in such a way to help dissipate heat from the unit. I never noticed heat to be an issue. It did get quite warm to the touch, but that is expected since there are no fans inside to blow out hot air. Zonbu only uses 10 watts of power, so it could be a huge relief on your electricity bill as well.


# The price

Zonbu sells for $99 with a 2 year storage plan contract. Storage plans run from $12.95 per month for 25GB of storage up to $19.95 per month for 100GB. If you would like to buy Zonbu with a month-to-month storage package, the one time cost rises to $250. Zonbu carries a 3 year limited warranty, and also provides free recycling of the unit.


# Who is Zonbu for?

Zonbu would fit very well for someone who wants a simple, task-based computer system with included online backup. Geeks who have a primary computer will definitely enjoy this unit as a secondary computer for various applications around the house.


# Who Zonbu isn’t for?

Video editing would not be practical with the CompactFlash card and slower processor. In order to expand the local storage, you will need to purchase an external hard drive. Also, the $250 price point (without a pre-paid service contract) comes very close to the price of a low-end OEM PC or even a decent refurbished PC. If you have a flakey high-speed broadband connection (dial-up users, forget about it), you will not be able to access all of your online files. Installing more applications requires gaining root using the console, which maybe be daunting for some users.


# Final thoughts

Zonbu is a very simple system. It is geared for users who may not necessarily care what operating system they are using, but someone who just wants a functional system. Zonbu does exactly that. The software is very straightforward to use. Zonbu is very environmentally friendly. Not only does it not require a lot of power to run, it also does not contribute to noise pollution.

