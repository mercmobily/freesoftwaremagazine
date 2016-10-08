---
nid: '2539'
title: 'Google extensions in Firefox'
authors: 'Gary Richmond'
published: '2008-01-30 10:02:06'
tags: 'gnu/linux,google'
issue: issue_21
license: verbatim_only
section: end_users
listed: 'true'

---
I want to take a detailed look at turbo-charging the Firefox browser with an elite selection of Google utilities. Firefox has its critics and its failings, but it has now been downloaded in excess of 400 million times: and as they say “what flies eat, they can't all be wrong!” Firefox is pretty good out of the box, but everyone knows that the functionality of Firefox is extended massively by the simple addition of extensions, [security issues](http://paranoia.dubfire.net/2007/05/remote-vulnerability-in-firefox.html) nothwithstanding.

In this article I will talk about how to extend Firefox so that it plays better with Google.

<!--break-->

My selection of those Google utilities enabled via extensions is of course an entirely personal one, chosen on the basis of my own needs and preferences whilst browsing. My choice? Gmail, GSpace, Better Gmail, Better Gcal, Customise Google, Gmail Notifier, Minimap Sidebar. Phew, that should be enough to be going on with!

<!--break-->

# A Google disclaimer

When Google start talking messianically about what they call their [300 year mission](http://technology.timesonline.co.uk/tol/news/tech_and_web/the_web/article2688404.ece?print=yesrandnum=1192951921156) they start to sound like a cross between James T Kirk and John the Baptist and I start to worry that the "don't be evil" mantra has morphed into the evil empire of Microsoft. When they start talking about linking everyone to everyone and everything else, I can see Richard Stallman scratching his Carpal Tunnel Syndrome. I start to have hallucinations that Google will extend it's reach to extensions called [Google Murder, Google Blackmail and Google Torture](http://www.wired.com/gadgets/miscellaneous/commentary/alttext/2006/06/71094).

Larry Page and Sergy Brin may not be Steve Ballmer and Bill Gates, the Ronnie and Reggie Kray of the computer world, (a right pair of diamond geezers and no bleeding mistake) but a spat with Ebay, the Great Firewall of China and general concerns about personal security when using Google utilities has somewhat tarnished our view of the great search-engine Behemoth. Yet, at least Google has been relatively GNU/Linux friendly. Think Picasa and Google Earth for starters and their sponsoring of the Summer of Code too. Doubtless, they have their commmercial reasons too but at least they have not entered into a duplicitous unanimity with Microsoft on patents—but they _are_ pretty secretive.

However, this didn't stop me from testing these Firefox extensions.

# A note on installing extensions

In this article, I will cover several extensions. In case you are new to extensions, there are three ways to install them:

1. simply click on the _install now_ icon and everything will run automatically

2. right click on the icon, choose _save link as_ from the menu and save the extension to a folder of choice. Then, click on the _File_ drop-down menu and select _Open File_, navigate to the _xpi_ file extension and install. (I'll bet not too many of you will be taking _that_ circuitous route!)

3. drag and drop the _xpi_ file onto a running Firefox and it will do its business.

In this article I will provide direct links to the extensions from the official repositories, and a link to the project's home page when available. Keep in mind that downloading and installing extensions from the official secure website at Mozilla will minimise the possibility of a man-in-the-middle attack.

<!--pagebreak-->

# Gmail and associated stuff

I came late—very late—to Google Mail (Gmail hereafter) but then, I've never been a fashion icon. Cruel necessity, as Oliver Cromwell would have said. Its likely that most people reading this are already using Gmail, but on the off chance that you are not, you can point your browser to [the official site](https://www.gmail.com/) and sign up for the service. 

Since its inception, GMail's feature set has blossomed. When I signed up for Google Mail and installed the Firefox extension I was given approximately 2.9GBs of storage space which I considered to be more than enough for my purposes. The good news, especially for those looking for really significant capacity, is that up to [6GBs will be available by January 2008](http://googlesystem.blogspot.com/2007/10/gmails-storage-increases-dramatically.html). That link will show you your storage space increasing dynamically in real time as part of what Google call their "Infinity+1" storage plan. You would have to be e-mailing on a Byzantine scale to exhaust that kind of capacity, though Google's offering is [far from the largest on offer](http://googlesystem.blogspot.com/2007/08/gmail-top-web-mail-service-with-least.html). It is worth pointing out that you will have access to e-mail attachments up to 20MBs and that will be a more useful feature (your broadband capacity nothwithstanding). A nice feature is that those attachments will be (sent or received) automatically scanned for viruses too. Storage space aside, Gmail gives you obvious portability across various computers and anywhere across the globe where you have access to a machine. The heart of Gmail is features like _labels_, _voicemail_, _chat_ and integration with other Google services as _calendar_, _Docs_ and _Reader_. I will come back to some of these later.

I suppose that Gmail is as good a starting point as any when looking at Firefox extensions, as it will lead into variations on that theme—Gmail Notifier, Better Gmail and FireGPG. So, let's get down to business.

## Gmail Notifier

The [Gmail Notifier](https://addons.mozilla.org/en-US/firefox/addon/173) extension is licensed under the GPL and it is compatible with versions of Firefox from 1.5 to 3.0a6 so most users should be covered. It makes sense to install this before _Better Gmail_ as this extension will enable you to get notifications from within your Firefox browser (once you are logged in) and once you have set that up extension you can start to really put Gmail through it paces with Better Gmail. 

As usual, you will be prompted to restart Firefox to complete the Gmail Notifier installation. Once Firefox has restarted, select the _Tools_ drop-down menu and choose _Add-Ons_ and click on _Extensions_. Scroll down and locate the extension (they will be in alphabetical order). Select it and click on _Preferences_ and you will get the following options presented for your modification:

=IMAGE=Gmail_Notifier_Preferences.jpg=Gmail Notifier preferences=

The options are largely self explanatory and this screenshot illustrates the defaults. You can set them to what suits you best. Perhaps the most interesting feature is the ability to enable multiple Gmail accounts. As this feature impacts upon another extension in this article, I will save it for later, as I will for the checkbox concerning enabling unsecured connections.

By default you will now have a greyed-out icon in the status bar at the bottom of your browser. If you hover your mouse over it it will prompt you to log in. Clicking on it will open a login dialogue box:  once login is effected the icon will change colour to red; as long as you are logged in it will remain in that state. Hovering over it now will advise if there are any new messages (the colour will change to blue); there will also be a notification beside the coloured icon of the number of unread e-mails you have. Depending on how you have set your preferences, clicking on the Gmail icon will either open in a new window, in the current tab, a new tab or an new unfocused tab. If you have set Gmail Notifier's preferences to resetting the notifier counter when the icon is clicked to open an e-mail, it will de-increment each time. Incidentally, just because you are logged into Gmail elsewhere does not mean that you are automatically logged in via Firefox. You will have to log in from within it.

Gmail Notifier is an excellent extension but you are probably wondering why you have to open Gmail to actually see what those e-mails are. Wonder no more. The answer to this annoyance is to set up a live bookmark to take advantage of the fact that Firefox bookmarks can integrate RSS feeds. All you need to do is to create a folder in Firefox bookmarks. Select the _Bookmarks_ drop-down menu and click on _Manage Bookmarks_. Now, select the _File_ drop-down menu and choose _New Live Bookmark_ and a dialogue box will open and you will be prompted for a name, a feed location and a description (optional). Name and description are down to personal preference, but you must follow a strict protocol for the feed title. It must take the following   format:

=CODE_START=
https://username:password@gmail.google.com/gmail/feed/atom
=CODE_END=

The good news is that the connection is SSL secure, but the less happy news is that the username and password are stored in plain text in the bookmark file. Log into Gmail and in the location bar you will see an RSS feed icon. Click on it to add a live bookmark and follow the prompts. Now, whenever Gmail Notifier advises you that you have new mail, just go to your Bookmarks menu and you will see the Gmail/RSS feed live bookmark. Highlighting it will tell you the title(s) of the e-mail(s). Two caveats: first, sometimes the live bookmark and Gmail Notifier will get out of sync in terms of the number of unread e-mails. The solution is simple: just right click on the live bookmark in the Bookmarks menu and select _Reload Live Bookmark_. Second, the feed will not download if there is no new e-mail in the inbox.

<!--pagebreak-->

# A Better Gmail: a better moustrap

The thing I love about open source hackers is that they just cannot leaves things alone. They have an irresistible urge to tinker and improve and Firefox is an Aladdin's cave for such people. The [Greasmonkey scripts](http://www.greasespot.net/) are well known to devotees of the little fox. Wikipedia has an [excellent article](http://en.wikipedia.org/wiki/Greasemonkey) on it. Cleverer people than me (I assume that's most) have bundled together those scripts and produced a greyhound of an extension in [Better Gmail](https://addons.mozilla.org/en-US/firefox/addon/6076) (you can also visit [Better GMail's home page](http://lifehacker.com/software/gmail/lifehacker-code-better-gmail-firefox-extension-251923.php) which adds some serious power features to Gmail as the options below illustrate:

If Pilchards are Sardines on steroids, then _Better Gmail_ is a Barracuda of a fish.  It also comes with a bonus: the formal [approval of Tim O'Reilly](http://radar.oreilly.com/archives/2007/04/better_gmail_1.html).

=IMAGE=Better_Mail_tabbed_options1.jpg=Better Mail tabbed options=

In the _General_ tab you have the opportunity to check boxes for the following options: to have a secure, encrypted connection for Gmail, integrate Google Reader and add a nice little feature to show disk usage as a progress bar. The _Compose_ tabs' most interesting check box is _Attachment Reminder_. This prompts you to attach a file to Gmail in case you forget, where there is a reference to it in the subject of the Gmail. If this feature has been enabled, when you click on send Gmail will prompt you that you have not attached the file(s), with the option to cancel and attach before sending again, or send it anyway. It won't win an award, but it is a nice little feature and even better when the attachment reference was in the main text as well or instead of the e-mail title.

The _Messages_ tab gives you access to several really useful features: _Conversation Preview_ is, I think, one of the best. Once enabled, you will be be able to right click on any e-mail and view its contents without actually opening it in the normal fashion. Additionally, you have options from within this feature to archive or trash the item. It's neat. _Attachment Icons_ looks trite but in fact it could be a boon for the uber-security conscious as it replaces the anonymous paperclip icon which might harbour all manner of unspeakable beastliness. I tried out this one with a PDF attachment and it did the business. (The only downside is that, because Gmail is a web-based tool, attachments are not on your local hard drive and even after the e-mail had been "downloaded" you will still need to download the attachment before you can view it, which may be cumbersome if it is a large file.) _Labels_ is another useful feature for organising Gmail. Once _Better Mail_ is installed and the _Labels_ option checked, you will find a labels box at the bottom left-hand corner of your Gmail screen. If you click on _Edit Labels_ it will bring up a screen and a dialogue box where you can delete, amend or create new labels to manage your e-mails.

Enabling _Filter Assistant_ will render the same functionality as you would expect from a conventional e-mail client like _Evolution_ or _Thunderbird_ either to route desired mail to bespoke folders or to dismiss it as spam or junk. 

The final significant tab in _Better Mail_ is _Sidebar_. The two most useful check boxes to activate are _Add Google calendar Link_ and _Add Google Reader Link_. Once done, these links will be added to Gmail and allow you, if you wish, to access these Google apps from within Gmail itself, without leaving its confines.


=TEXTBOX_START=Using GMail with IMAP and POP=
If you click on the _Settings_ link at the top of the page you will see a number of settings. Select _Forwarding and POP/IMAP_ where you will be able to arrange for enabling these two protocols in Gmail:

=IMAGE=Gmail's_Settings_tab_for_POP_amd_IMAP_configuration.jpg=Gmail's Settings tab for POP and IMAP configuration=

You can choose either option but in either case you will have a fair amount of configuration in your normal e-mail client. This is beyond the immediate scope of this article, but you can get very detailed instruction and screenshots at the [GMail Help Centre](https://mail.google.com/support/bin/answer.py?answer=38343). Once you have followed all these instructions, return to the Settings for forwarding and save the changes. You can  have your Gmail forwarded to your normal e-mail client without logging into Gmail or download it directly to your e-mail program. This should not be confused with setting up a Mail Fetcher facility in Gmail which allows you to download mail _from_ an e-mail client's POP server (providing your ISP supports forwarding), whilst retaining the option to leave the message(s) on the server. You can begin the process of setting up Mail Fetcher in the _Accounts_ tab of _Settings_, second item down. The GMail Help Centre has an [explanation and a howto](http://text.usg.edu:8080/tt/mail.google.com/support/bin/topic.py?topic=1576).
=TEXTBOX_END=

# A Firefox extension for the person who trusts no one

Many Firefox extensions are aimed at users who wouldn't trust their own mothers to kiss them goodnight. If you are one of them, I have an extension for you which integrates with Gmail and will offer a sound nights' sleep, safe in the knowledge no one can snoop or pry on anything you send through Google.

Most readers will have heard of encryption software called [Pretty Good Privacy (PGP)](http://en.wikipedia.org/wiki/Pretty_Good_Privacy) which is used, amongst other things, to encrypt e-mail.  It was only a matter of time before someone decided to write an extension for Firefox. That extension is called [FireGPG](http://firegpg.tuxfamily.org/) and utilizes the open source GnuPG as developed by the [Free Software Foundation](http://www.fsf.org/) and fortunately it supports Gmail. It is not, as of writing, available at the official Mozilla addon site (which would be more secure), but I have had no problems with the above link.

<!--pagebreak-->

However, before you can get it to work in Firefox you first need to install GnuPG on your GNU/Linux box. In many instances this will already be installed. If not, check your software repositories and install it (or get it at [the official site](http://www.gnupg.org/download/)). It is a command-line tool (see `man gpg`) but there are [a number of frontends for it](http://www.gnupg.org/(en)/related_software/frontends.html), the two main ones being _KGpg_ for KDE and _Seahorse_ for Gnome. Either will generate the key pairs you will require to encrypt and sign e-mails. My fellow contributor, Dmitri Popov, has written a [short but excellent howto](http://www.linux.com/articles/62369) on this step. Now you can install the extension and its Preferences screen will give you options:

=IMAGE=FireGPG_Preferences.jpg=FireGPG_Preferences=

The next time you compose a message in Gmail, FireGPG will have added a button called _Sign, Crypt and Send_ which, when clicked, will prompt twice: once for a public key and once for a private key. There will be other buttons too with variations on those options depending on your preferences. (These options will only appear in the compose screen. Doh!) If you trust Google with private keys—and it is a big if—then you now have a secure connection and encrypted mail. Since beginning this article FireGPG has been upgraded (to version 0.4.6) to work with the latest version of Gmail: it creates a button used to add an encrypted file as an attachment.

# Why not use a Better-Mailed Gmail to get stuff done?

Gmail, Better Mail, encrypted Gmail. Why stop there? Why not extend things further and add some really neat organisational elan to Google in Firefox? I mean the GTD (Getting Things Done) extension, the Better Gcal extension and the Minimap sidebar extension.

## GTD: Get Things Done

If you are a control freak and simply must be uber-organized, then this Firefox extension is the one for you. Just when you think that any more extensions to Gmail will require local planning permission, along comes [GTD](http://www.gtdgmail.com/) to add a slew of additional functionality to an inteface already crammed with features jostling with each other for elbow room. In the words of the official website, GTD represents the the ultimate synergy of management and communication whilst guaranteeing safety and security. Gosh! If you are interested in the philosophy behind GTD, Wired Magazine carried an [article on GTD](http://www.wired.com/techbiz/people/magazine/15-10/ff_allen?currentPage=all) in September. You can use the link above to install this super little extension, but happily GTD is now [included in the official Mozilla addon site](https://addons.mozilla.org/en-US/firefox/addon/3209). 

Like FireGPG, with Gmail updating to version 2.0, GTD will not work properly with it unless you revert to running Gmail's older version. Just locate the _older version_ settings at the top right-hand corner of Gmail and click on it and you will see all your configurations for that extensions restored (if, like me, you have already installed GTD). That is the good news, plus the fact that the GTD developers are working on Version 2.0 to make it compatible with Gmail 2.0. In the meantime, the bad news is that if you have selected the older settings for Gmail to restore GTD settings, once you log out and log back in, the newer version of Gmail is back with a vengeance and you are compelled to repeat the settings trick again--and will continue to do so until GTD upgrades; but that is a small price to pay for such a super little extension.

Once you have installed this extension, restarted Firefox and logged into Gmail, you will now see that what it does is to expand greatly the functionality of the Labels feature. Labels now appear under various headings: Contexts, Status, Projects and References with the ability to add as many sub-headings as you want. Whilst all the extra (collapsible) labels reside at the bottom left-hand side of Gmail, three other features are added: a GTD link in the last column of each e-mail, a _Show GTD Search_ link at the top of the screen and a button at the bottom right-hand corner to allow you to print out [Hipster PDA cards](http://en.wikipedia.org/wiki/Hipster_PDA).

Clicking on any of the label categories will open the Gmail Labels Setting tab and there you can select sub-categories or create new ones:

=IMAGE=GTD_labels_configuration_in_Gmail_settings.jpg=GTD labels configuration in Gmail settings=

The GTD search facility opens a dialgue box with many fine-tuning options based on toggled labels, dates and if e-mails are starred or have attachments with the ability to save searches. You can search, then add Categories/Labels and to individual e-mails and when you return to your inbox those e-mails will now be marked accordingly:

=IMAGE=The_detailed_GTD_search_box.jpg=The detailed GTD search box=

Finally, when you want to compose an e-mail you will find that the GTD extension has now given you three options: _Compose E-mail_, _Compose Myself an action_ and _Compose Myself a Reference_. The first one is self explanatory and the other two, when selected, will open further contextual dialogue boxes:

=IMAGE=Gmail_with_advanced _options_from_GTD.jpg=Gmail with advanced options from GTD=

In this feature you can send yourself an action or a reference, including any file attachments, and by clicking on _Add event info_ you can key in the where and the when. Just above the main text composition area there is an action button _more event options_. If you click on it a Google calendar window will open and permit further configuration:

=IMAGE=Google_Calender_triggered_from_within_GTD.jpg=Google calendar triggered from within GTD=

GTD is a power user's delight with sufficient options (seven tabs' worth) to keep the most inveterate tinkerer occupied:

=IMAGE=GTD's_options:_seven_tabs_a_tweakers_paradise.jpg=GTD's options: seven tabs a tweakers paradise=

This is just a flavour of what this marvellous Firefox add-on can do for a Google application like Gmail. The official website will tell you much more and in more detail too.

<!--pagebreak-->

# Better Gcal: Google Calendar with makeup

Google Calendar has some good features but as usual the tinker pixies have been rummaging and come up with an extension called, er, [Better Gcal](https://addons.mozilla.org/en-US/firefox/addon/5299). Like Better Gmail, the aim is simple: to add really useful functionality to Google's default calendar. It is not as feature-packed as Better Gmail but it has some nice configuration options:

=IMAGE=Better_Gcal_Preferences.jpg=Better Gcal Preferences=

These, as with Better Gmail, come courtesy of bundled Greasmonkey scripts and add, literally, a little colour to the calendar. Whether you are using Google calendar as a stand-alone application or integrating it with all the other Google packages, one option you should absolutely enable is to force a secure (https) connection. Depending on the size of your calendar entries, _text wrap events_ is useful. The other check options are essentially eye-candy.

=TEXTBOX_START=**Google Calendar: a word of warning**=
A word of warning about using Google calendar. If you make your calendar public you may, depending on what you put into it, leave yourself open to anything from burglary and identity theft to stalking. I looked at some public calendars of "private individuals" and the amount of information revealed was astonishing and shocking. Information was such that it was possible to see exactly when people would be away on visits or holidays thus facilitating break ins and sufficient personal and financial details to facilitate identity theft. Visit [ this website](http://www.dumblittleman.com/2006/09/how-to-get-robbed-killed-or-stalked-by.html) and see for yourself. It makes sobering reading. The lesson is clear: choose the private setting in Google calendar and if you must share then at least configure it to restrict sharing with specific persons you trust.
=TEXTBOX_END=

# Map you Milk: not an extension but it will extend Google Calendar

Unfortunately, Better Gcal does not do for Google calendar what GTD does for Gmail; if you want that kind of added value, you might want to consider [Remember the Milk for Google Calendar](http://www.rememberthemilk.com/services/googlecalendar/). Go to the RTM homepage, click on _Signup Now!_ and follow the prompts to subscribe to a special calendar which will add small task icons for each day (a blue tick). [Here is a quick guide](http://www.rememberthemilk.com/help/answers/about/googlecalendar.rtm). Those blue ticks will only appear once you have ensured that the _Remember the Milk_ calendar is in your Calendars List and the checklist box is ticked.

Once you have done this, you can click on the task icons at the top of each day in the Google Calendar log in (with the username and password you set up when you installed RTM) and create tasks to view.

Via its _Locations feature_, Remember the Milk gives you a map related to any tasks that have a location component (handy if you  are sharing Google calendar with friends unfamiliar with your locale). This will supplement another Firefox extension called [Mini Map Sidebar](https://addons.mozilla.org/en-US/firefox/addon/5203), essentially Google Maps in a Firefox sidebar. It has many features beyond the scope of this article (the official Add-on site will list them for you).

However, RTM is popular and popularity breeds more demand for feature creep. So, it is no surprise that there is a Firefox extension for this task management tool. It is called _Delegate to Remember the Milk_  and is based on DelegateGCal extension from ano.malo.us. If you are pining like a Python parrot for the RTM features in Google Calendar then [install it](https://addons.mozilla.org/en-US/firefox/addon/5339) and, happy days, a button will be added to Gmail messages to generate messages to RTM that creates a new task. As with FireGPG, this extension has been caught in the GMail upgrade and will only work with the older version, thus requiring a change of version in the Gmail setting I mentioned earlier. However, you will still be able to use it to turn e-mails to tasks whilst retaining a backwards link to the original e-mail--just like that. If you really like RTM you are not restricted to Gcalendar and Gmail; you can have it in the Firefox sidebar too. With the iGoogle gadget enabled, open you Bookmarks Manager and create a new Boobkmark and type in the following URL:

=CODE_START=
http://www.rememberthemilk.com/services/modules/googleig/
=CODE_END=

and ensure that the "Load this bookmark in the sidebar" box is checked. Now, provided that you are logged into RTM you can view it from a Firefox sidebar simply by selecting that option from the dropdown Bookmarks menu.

In discussing RTM I have only scratched the surface of what it can do and how it integrates with Firefox and Google applications. SMS, and instant messenger (AIM, Gadu-Gadu, Google Talk, ICQ, Jabber, MSN, Skype and Yahoo! are all supported). 

# Gspace: free online storage space via Firefox

GNU/Linux users will be be familiar with using _Fuse_ (File User Space) in conjuction with Gmail to create virtual, mountable Linux file system, better known as [GmailFS](http://www.tipmonkies.com/2005/05/31/gmailfs-gmail-drive-for-linux/). GmailFS will effectively allow you to use GMail like a file system. If either Fuse or GmailFS are not in your distros' software repositories, you can get them at [the official site](http://richard.jones.name/google-hacks/gmail-filesystem/gmail-filesystem.html). Many relative newcomers may baulk at installing Fuse Kernel modules (though most recent versions have it installed by default) and chasing up dependencies though the effort will be worth it: you will be able to use Gmail without dependency on browser upgrades which may break the extension (as well as not having to access file commands).

GMailFS isn't the only way for you to access GMail as if it were a remote disk.

If you prefer a Firefox extension which works with Gmail, albeit unofficially, then [Gspace](https://addons.mozilla.org/en-US/firefox/addon/1593) is for you. This is online, remote file storage with bells on. You are only an extension away from up to six Gigabytes of easy and convenient storage capacity via your Gmail account. It is as easy to use as moving files locally on your own computer. Files uploaded to Gmail via Gspace can be accessed and retrieved from anywhere, on any machine--including allowing access for others you trust with your Gmail account details. It's a very useful feature for large files that might choke your normal e-mail client, even on a decent broadband connection.

Once installed, Gspace will add an icon to the status bar in Firefox. From the add-on menu for extensions you can configure Gspace's options and this should be your first port of call:

=IMAGE=Gspace_Preferences_Settings.jpg=Gspace Preferences Settings=

Here, you can set icons, thumbnails, file attachment size, etc. Just click on the Gspace icon to open the application. Depending on how you have configured Firefox, Gspace should open in a separate tab:

=IMAGE=Gspace's_four_pane_interface.jpg=Gspace's four pane interface=

Anyone who has ever used FireFTP, an FTP client extension for Firefox, will recognize the layout: a screen containing the files in your home directory, a screen for transferring those files to Gspace, a Transfer screen and a Status screen (all resizable). Once logged in, select a file, or files, click on the blue upload arrow and the selected file(s) will transfer to the right-hand screen. At the same time, in the _Transfer_ screen on the bottom left, a progress bar will indicate the status of the upload. Any files you upload can subsequently be accessed (and transferred back) from any other machine anywhere with Firefox and Gspace installed. If you now open Gmail that file will show up just like an e-mail which can be viewed, scanned and or downloaded. This feature is useful for transferring large files to anyone with whom you want to share who has a Gmail account, especially for those working, say, in a project group.

One of the best features of the Gspace extension is the range of Transfer Modes which allows you to transfer files, view uploaded picture files and download from a Gmail drive. You can also play your uploaded music files, although you will need the Flash Player plugin for this (Gspace will give you a download link). For this feature, you will need to grant the Gspace extension permission to access external hosts like `gmail.com` and you can get instructions [here](http://kb.adobe.com/selfservice/viewContent.do?externalId=4c093f20&sliceId=1). You can also manage multiple GMail accounts from Gspace but only sequentially, not consecutively, as Firefox maintains cookies across the login session—so, multiple GMail acounts across Firefox tabs is off the menu!

# The best of the rest: a quick overview

I had intended to include [Google Browser Sync](http://www.google.com/tools/firefox/browsersync/index.html). Even though the data is optionally encrpyted using an alphanumerical PIN so that data, passwords and cookies are protected (even from Google?), a better option is to utilise Gspace in conjunction with two excellent little Firefox extensions, [FEBE](https://addons.mozilla.org/en-US/firefox/addon/2109) and [CLEO](https://addons.mozilla.org/en-US/firefox/addon/2942). They will, respectively, allow you to backup all your extensions, themes, bookmarks, preferences, passwords, cookies and profiles _and_ package all extensions and themes into a single installable, compressed xpi file. You can then use Gspace to upload the CLEO file and access it to install everything on a Firefox installation running on another machine anywhere else.

By the same token, [Google Notebook](http://www.google.com/googlenotebook/faq.html) (a scratch pad and shoe in for del.icio.us?) is a nice little research tool to use from within the Firefox browser, especially if you wish to collaborate online and [integrate it with Gmail and Google calendar](http://lifehacker.com/software/geek-to-live/getting-things-done-with-google-notebook-256844.php), but if you want a real power-user's extension for Firefox, then [Zotero](http://www.zotero.org/) is a much better bet. It is stand alone but more powerful, and I use it regularly when researching articles for Free Software Magazine. It's powerful feature set can only really be appreciated by [installing the extension](https://addons.mozilla.org/en-US/firefox/addon/3504).

Finally, whilst it is considered bad manners to bite the hand that feeds you, there is no excuse for allowing Google to take liberties with your security and data. Installing [Customise Google](https://addons.mozilla.org/en-US/firefox/addon/743) will give you access to a phenomenal range of Google settings to improve you browser security. Think of it as a meta-preferences addition to all the other Google extensions.

# Conclusion

Google extensions allow you to ratchet up the power of Firefox and to spend an entire online session without having to leave it's confines. The only caveats are security and [upgrades to extensions and browsers breaking compatibility](http://www.freesoftwaremagazine.com/blogs/how_to_fix_broken_firefox_extensions).

If this little lot is not sufficient to exhaust you or my selection is not to your liking, then pay a visit to a [website that lists no less than eighty Gmail tools and tips](http://geekpedia.wordpress.com/category/gmail/) - and pig out in the Google trough. There should be enough there to last as long as an SCO lawsuit.


