---
nid: '2882'
title: 'Running a GNU/Linux desktop on the web with Ulteo'
authors: 'Gary Richmond'
published: '2008-06-05 20:31:28'
tags: 'desktop,ulteo,webos,storage'
license: verbatim_only
section: opinions
main_image: b.jpg
listed: 'true'

---
Is it possible to develop full GNU/Linux desktops that run on the web and can therefore be accessed from anywhere? We already have a flavour of this with web-based services such as Google's Gmail, Google Docs and online storage space but these are run from the user's own desktop and are restricted to bespoke services. What about full desktops? Enter Ulteo, created by Gael Duval.

<!--break-->

If you have ever used Mandrake (now Mandriva) you will have cause to be grateful to Gael Duval, as he was the founder who helped to make GNU/Linux more accessible for the general user. Despite an acrimonious departure from Mandrake, Duval has not gone off in a strunt. There is inactivity and then there is masterly inactivity. In the latter, Duval has in fact been busy dreaming up something different; the sort of thing that can only happen in a world where information wants to be free and is free and anyone with ability and determination can make it happen. Gael Duval developed Ulteo.

=ZOOM=a world where information wants to be free and is free and anyone with ability and determination can make it happen. Enter Ulteo=

# Ulteo: a desktop in your browser

Ulteo is best defined as being a kind of Desktop on Demand concept, a near full desktop experience which is immediately familiar to any KDE user. Let's take a look at the feature set. First, the source code is published under the GPL v2. Ulteo is hosted on their own servers and it is claimed that their internet connections are very fast; when I logged on to my free account (more of that later) I found the initial desktop screen rather slow--although that may have been due to my machine's specs and not the connection itself. Ulteo has been tested with Firefox (1.5), Opera, Internet Explorer 7 (!) and Safari. Flock should work too. Lovers of Konqueror (including me) are out of luck.

The [Ulteo homepage](http://www.ulteo.com/home/en/ooo?autolang=en) says, somewhat cryptically, that "it is not well supported yet" and "Konqueror is known to be problematic". Pity that. I am a huge fan of that browser, especially the [Webdav protocol](http://en.wikipedia.org/wiki/WebDAV) supported by [Kioslaves](http://liquidweather.net/howto/index.php?id=76). You won't have needed to be a Nobel prize winner to have worked out therefore that Ulteo is accessed from within your chosen web browser. The only requirements are Javascript and the Sun Java Runtime 2.4 environment plugin enabled, and you're good to go. (Ubuntu users--Fiesty and Gutsy--need to ensure that Sun's Java Virtual Machine (JVM) is used.) While the "dependencies" required by Ulteo are relatively frugal and installing/enabling them on any machine under your control is straightforward, matters may be different on computers on workplaces or public spaces like Libraries and Internet cafes whose installation profiles are beyond your control. Memory wise though, Ulteo is not too demanding. 512MBs will suffice, though more will do no harm.

Once you have navigated to the Ulteo page you can sign up for a free account and log on. Once you are logged in you will be presented with a screen which allows to you do some preliminary configuration before you actually access the desktop itself. This includes indicating your connection type, language and screen size. After that, you have a choice to use the full KDE-enabled desktop, Openoffice (anything you save in this stand alone application will be saved for later viewing on the full desktop) or the Virtual desktop. The first two are self explanatory. The last one is not. This is a feature (as its icon indicates) for Windows users to run GNU/Linux on Windows without either dual booting (or _rebooting_, [like Wubi](http:/http://wubi-installer.org//wubi-installer.org/)) or running it as a full default distro. For this to work Ulteo, which may be a Kubuntu-based distro with its roots in Debian, utilizes [coLinux](http://www.colinux.org/) which obviates the need for any kind of virtualization--though it is a 500MB download.

I cannot vouch for how Ulteo's Virtual Desktop works on Windows as I long ago abandoned that operating system, so it will be interesting to watch out for reports and reviews of how well it functions. Doubtless Duval and his team have bench tested it thoroughly, both to increase potential revenue and draw in Windows users to the benefits of free software.

# Starting it all up

## Logging in

=IMAGE=Ulteo_homepage.jpg=Figure 1: Ulteo homepage=

After logging in you will see a modestly configurable screen like this:

=IMAGE=Ulteo_configuration_options_after_log_on.jpg=Figure 2: Ulteo configuration options after log on=

and eventually a familiar KDE desktop will launch inside your chosen browser (and because if this you can of course minimize it just like any other application on you own desktop):

=IMAGE=Ulteo's_KDE_running_inside_a_browser.jpg=Figure 3: Ulteo's KDE running inside a browser=

It is worth looking in more detail at some of these preliminary choices/features. Logging in is handled by the [Kerberos authentication system](http://en.wikipedia.org/wiki/Kerberos_(protocol)), a network authentication protocol in client-server models permitting mutually secure identification and communication over a non-secure connection by using symmetric key cryptography. The connection to Ulteo is through [VNC](http://en.wikipedia.org/wiki/Vnc). VNC (Virtual Networking Computing) is a cross-platform remote desktop system which allows interoperability between Windows, Apple and GNU/Linux; unfortunately, by default it is not secure and can be prone to brute-force cracking. I am not sure why Ulteo didn't opt for [TightVNC](http://www.tightvnc.com/), that it is cross platform and [currently supports fourteen "extensions"](http://www.tightvnc.com/related.html) and configurable compression levels/optional JPEG compression. TightVNC it is not entirely secure either, as although it encrypts VNC passwords everything else is sent "as is" as the developers themselves admit. (Future versions of TightVNC will incorporate built-in encryption.) What price future versions of Ulteo using it, or in the meantime making use of OpenSSH and using SSH tunneling? Well, in fact, Ulteo secures TightVCN on two levels: the whole TightVNC stream is encapsulated by an SSH tunnel and credential information for both VNC authentication and SSH authentication is only valid for one session (it changes every time). That is very reassuring. Still, I am a fully paid up member of the certifiably paranoid club and I think I will continue to do my online banking with a live CD and a [virtual keyboard](http://en.wikipedia.org/wiki/Virtual_keyboard) in browsers like Opera! Sorry Gael.

In fairness to Duval [he has admitted on his blog]( http://www.indidea.org/gael/blog/) that while many applications bundled with the Ulteo Desktop have security features (Thunderbird and Kopete for example) the real concern has to be with the security of the actual servers themselves:

_"Now, there is the question of data that are stored at Ulteo. Right now, I can't tell you more that that. We're doing our best to secure your data. This means security measures on servers, and replication. But I agree that it's not an ultimate solution._

_We plan to provide an encryption feature that would permit us (and you) to store only encrypted data, that could be used/decrypted only by the owner of the data, using his credentials._

_In this case, you would have a local secured directory where you could put all your sensitive data, and this would be the same on Ulteo online services. So in the bad case where you would be stolen your hard drive, or in the case Ulteo servers would be cracked, nobody but you couldn't read your secured data."_

=ZOOM=Gael Duval claims that Ulteo is also safe because "it does not address a file system but a "system image" which is replicated bit by bit".=

Unless you are certifiably paranoid, the defaults will probably satisfy most users that they are reasonably secure when logging in; if even that is not sufficient to calm shredded nerves, then at least ensure that the files on the Ulteo Desktop are not critical or in any way compromising. Further to security, Gael Duval claims that Ulteo is also safe because "it does not address a file system but a "system image" which is replicated bit by bit". The Ulteo system is structured into several "layers". All of them
are read-only (can't be modified), but the top layer is
read-write. Layers are onioned and give the user the illusion that they have a single read/write file system. If you just remove or disable the RW layer, then it becomes a secure system because nothing can be modified on it. 

=TEXTBOX_START=The disappearing competition=
If you are fixated on security to the near exclusion of all else, a better solution may be [Desktop on Demand](https://desktopondemand.com/). Like Ulteo there is a free version (with 250MB of storage). Unlike Ulteo it has built in end to end encryption from the off and it also allows the user to drag and drop files (using the WEBDAV protocol meaning Konqueror comes into the equation), encrypt them with a single click, a file download manager and, most interesting of all, access to a terminal emulator to execute commands in a real Unix shell. GNU/A Linux version is available (though all versions, including Windows and Mac, run on a Linux platform) it does not even require installation. Just download and unzip the file and run Desktop on Demand. It is portable too, as you can even put it on a USB stick and run it from there. It sounds fantastic; too good to be true. In fact it is. Try to sign up for an account and you will be informed that the service will stop at the end of June. It looks as if Ulteo won't be having too much competition and time soon! The nearest to Desktop on Demand is [JungleDisk](http://jungledisk.com/). Doubtless you know of others.
=TEXTBOX_END=

## The desktop

There are no surprises here. It's a KDE desktop. Due to compression, the image is less than crisp and clean and this is really something that the Ulteo developers need to address. You never get a second chance to make a first impression. Regardless of the technical wonders, if the initial appearance is ugly many users may simply not bother proceeding further. On the plus side, I was pleasantly surprised to experience some Ulteo applications like Konqueror, OpenOffice and Gwenview opening very quickly indeed. The major difference from a conventional desktop is the presence of three "tabs": Transfer, Share and Close Desktop. The last one is obvious. The first one will be familiar to anyone who has ever used an online service to upload files. It isn't pretty but it is functional and bi-directional, allowing files to be uploaded from your own drive and downloaded to it also:

=IMAGE=Ulteo's_spartan_transfer_screen.jpg=Figure 4: Ulteo's spartan transfer screen=

# Thoughts on online storage

Having online storage of course is hardly ground breaking. There are many online storage services available with various levels of storage from free to premium rate. Take your pick: [filesanywhere](http://www.filesanywhere.com), [Flipdrive](http://www.flipdrive.com), [Ibackup](http://www.ibackup.com), [IceBackup](http://www.icebackup.net), [XDrive](http://www.xdrive.com). Of course there is always that hardy perennial [Rsync.net](http://www.rsync.net) for backups and if the powerful command line options of Rsync are overkill then you can always run [Grsync](http://www.opbyte.it/grsync/) with a GTK GUI front-end. It should be available in your distros' repositories. [Unison](http://www.cis.upenn.edu/~bcpierce/unison/) is another possibility. Again, with a GTK GUI. You can synchronize locally or remotely (provided you have access to a friendly, preferably free, server!) 

The price and specification in terms of browser compatibility, protocol support vary greatly but what they have in common is that they all do one thing and one thing only. Online storage. No desktop. Only Ulteo does that. If all you want is a bare bones web-based storage facility Ulteo looks like overkill but Ulteo was not designed for that. It was developed for "managing your digital life" and to satisfy that nomadic itch you need to scratch. However, if you are determined to use Ulteo for the full spectrum of KDE there is a solution to the relatively meagre, free storage space on offer (1GB). 

=TEXTBOX_START=The quest for extra storage=
You can launch Firefox from within Ulteo inside the browser running on your own desktop and install the [Gspace extension](https://addons.mozilla.org/en-US/firefox/addon/1593) You will now have over 6GB of storage space for free. Well, that was the idea and it should have worked but I tried several versions of that extension (and other randomly chosen extensions too) but all failed to install with error messages. The error console in the Firefox Tools Menu seems to implicate CSS (Cascading Style Sheets) problems. The free option with Ulteo will give you 1GB of storage space, a timeout of approximately 25 minutes (and possibly longer) and one invite to share your Ulteo desktop with one person:

=IMAGE=Invite_someone_to_view_or_share_you_Ulteo_Desktop.jpg=Figure 5: Invite someone to view or share you Ulteo Desktop=

The paying options give you greater storage space up to 10GB, 10 invites and no timeouts.

The other downside is that, if the extensions actually worked, you would be at the mercy of any changes Google make to Gmail and to browser upgrades made from the Ulteo servers, rendering this and any other extension broken. 

=TEXTBOX_END=

# Is Ulteo for geeks?

I should point out at this juncture that one of Ulteo's claims for ease of use is to free users of the burden of system administration and upgrades to the OS and the applications. For non-power users and newbies this may be music to their ears but to the seasoned geek the problems involved in effectively outsourcing these "burdens" is simply a case of exchanging one set of problems for another. Ease of use for control. A fair swap? This raises another point. Desktop configuration is meagre, confined as it is to changing the appearance. If you wanted to use the command line to do any serious you're out of luck. That is disappointing but only to be expected as having root access to the Ulteo servers on which your Desktop is running could lead to instability and or security issues--to say nothing of being declared _persona non grata_ by Ulteo.

# Installing software

Despite lacking any access to root configuration, what about installing software? I opened Konqueror and navigated to `/etc` and then to `apt.sources.list` to see if any repositories had been installed and were active. I drew a blank. This does not prevent you from trying to install free-standing software. I tried the Opera browser as there are static and shared RPM versions for it on the Opera homepage. This normally works, but with Ulteo it started to download but was then intercepted by Kate starting up, accompanied by a warning of a corrupted binary file if installed. You can only conclude that Ulteo is not, and was never designed to be, a conventional "live CD". That, presumably, is why Duval decided to style it as an Application System (AS). If you just want to sample what Ulteo looks like and has to offer then the Live CD is   a convenient starting point if you are still deciding whether or not to sign up for an Ulteo account; but there is nothing to stop you installing the live CD onto your desktop. (There have been reports of installs taking only between three and four minutes!) Of course there is nothing to stop you running it under virtualization software like [VirtualBox](http://www.virtualbox.org/).

Sound too is a problem. From time to time it is still possible to find a distribution that does not work with the sound card. I tried Ulteo Desktop on two different machines and in both instances sound was not enabled and since configuration is not possible sound is a dead end. I don't think this is accidental. If you upload an MP3 or Ogg music file to Ulteo from your hard drive and then play it you would be effectively streaming media content and that would have the effect on putting significant pressure on the Ulteo servers. Multiply that by thousands of users storing thousands of music or video files and you begin to imagine the effect on bandwidth. It is also highly likely that the need for compression I mentioned earlier makes streaming audio and video erratic. (There is, incidentally, a 10MB limit on individual files.) That concern for preserving bandwidth is understandable but in that case one wonders why the Ulteo Multimedia includes Amarok and VLC. They may well "play" a file but you won't hear it. So, the current version of Ulteo does not support sound but they are working on it and then the multmedia suite will come into its own.

# A quick tour round the desktop

Firing up Ulteo's Firefox inside your Java-enabled browser will present you with a highly customized interface:

=IMAGE=Ulteo's_customised_Firefox_screen.jpg=Figure 6: Ulteo's customised Firefox screen=

Anyone who has made Google their homepage and customised it with iGoogle will recognize this straight away. It's a nice touch but it is not unique. Ulteo claim that using their system allows you to browse anonymously because when you visit any given webpage it is from their servers and therefore not traceable back to the IP address of your ISP. Anonymous browsing is a big and complex subject and many claims have been made for it but I don't think there can be totally anonymous browsing. Someone, somewhere always knows where you have been and where you are going. 

Ulteo's Start Menu is based on the very functional and attractive [KBFX](http://www.kbfx.org/): 

=IMAGE=Ulteo_default_desktop_with_Kbfx_menu.jpg=Figure 7: Ulteo default desktop with Kbfx menu=

The features added by Ulteo are meant to compliment the online experience. In addition to the conventional menu contents there are four unique items: My Digital Life, My Files, Ulteo Web and My Settings. My Digital Life is one of the most interesting ideas. To try it out, save any type of file on the Ulteo Desktop, launch the Start Menu and click in My Files and you will see that file:

=IMAGE=Adding_save_files_to_my_digital_life.jpg=Figure 8: Adding save files to my digital life=

You can then right click the file/files and add them to My Digital Life:

=IMAGE=files_copied_to_my_digital_life.jpg=Figure 9: files copied to my digital life=

The files are all marked with a red X. This looks like they are disabled--but in fact clicking on one deletes it. 

One last feature of Ulteo worthy of mention is found under My Settings in the Start Menu. Click on this and you will be informed that you can associate the local account on your machine with your Ulteo Web Account:

=IMAGE=Ulteo_Account_Association.jpg=Figure 10: Ulteo Account Association=

Click on the Forward button and you will be prompted for your e-mail address and account password:

=IMAGE=Account_Association_Login_screen.jpg=Figure 11: Account Association Login screen=

Once you are logged in Ulteo will synchronize all files associated with your account. This creates an Autosync directory and anything you put in that directory is automatically sync'ed with the online service. That could be particularly useful if you want to access a file remotely but don't have an application to run it on a local machine. Any changes made online will also be automatically synchronised for you local desktop. This will be true for multiple Ulteo Account Associations corresponding to more than one machine. 

Three final features of Ulteo worth mentioning are the Virtual Desktop and Documents Synchronizer for Windows users (obviating the need for a reboot) and logging into OpenOffice rather than the full KDE desktop. The latter has obvious parallels with Google Docs and the former is strictly for Windows users so I will not cover it here. The ability to invite others to view and share you Ulteo Desktop is useful if you are collaborating on joint documents.

# Conclusion

Ulteo is a brave, innovative, useful and interesting concept. It may be unique in terms of the feature mix but it is possible to put together individual packages to mimic them. For the power user who is familiar with protocols and the command line this is meat and drink but for the average user Ulteo packages them altogether in one easy GUI via a web browser. There is of course always a danger that in striving to be a jack of all trades you end up being the master of none but I think that Ulteo has done enough, even at this relatively early stage, to merit inclusion in every user's toolkit. I will certainly be watching it with interest for future developments.