---
nid: '2871'
title: 'Asus EeePC, Part Four: A miscellany of Tips and Tricks'
authors: 'Gary Richmond'
published: '2008-05-22 9:14:29'
tags: 'extensions,eeepc,webcam,battery,overclocking'
license: verbatim_only
section: announcements
listed: 'true'

---
Since the first three parts of this series came out, ([One](http://www.freesoftwaremagazine.com/columns/asus_eee_pc_ultra_portable_laptop_gnu_linux_pre-installed), [Two](http://www.freesoftwaremagazine.com/columns/asus_eeepc_part_two_setting_full_kde_gnu_linux_experience) and [Three](http://www.freesoftwaremagazine.com/columns/asus_eee_pc_part_three_alternative_distros)) the beginning of May has seen the launch of the new EeePC 900 series; it's slightly larger and heavier, with a nine-inch screen and higher resolution. The Xandros OS is the same and therefore the tips and tricks in this last part should apply equally well. Yes, the E900 series has a larger screen but you make as well make the most of every available seven or nine inches. Other tips and tricks aimed at boosting performance should also apply.

# Battery life

Battery life, and ways to preserve/extend it, are a hardy perennial of the laptop user's agenda. The EeePC is no different. You might expect that a machine with such a relatively low specification would be parsimonious in respect of power consumption, but the battery default is four cells (with an option to upgrade to a longer-life six-cell version) and the average charge gives approximately between three and three and a half hours. Your mileage will vary considerably depending on various setting and the [power-draining external devices you have plugged in](http://wiki.eeeuser.com/hardware_power_consumption).

=ZOOM=thankfully the designers have shipped this machine with easy configuration options right from the keyboard=

The EeePC is best described as a miniature road warrior, the sort of device you take with you to catch up on e-mail, browse the web or perhaps do a bit of coding or word processing. For all of these things the default settings may be excessive and a drain on valuable battery life when you are out and about and far away from a power point. Thankfully, the designers have shipped this machine with easy configuration options right from the keyboard. Let's take a quick run through them.

The default screen is bright and you will soon discover you that can in fact manage with much lower backlight levels--ambient daylight conditions notwithstanding. Reducing the brightness levels down to conserve battery life is simplicity itself: press the `Fn+F` and the `Fn+F` key combination to increase or decrease the level respectively. You can, depending on the application you are running, find a level that is consistent with ease of viewing and power saving. The same method can be used for other settings too. If you want to automate brightness control (based on detecting battery/AC status) without manual intervention, fire up your chosen text editor and [copy and paste the following scripts](http://wiki.eeeuser.com/howto:automaticbrightness)--courtesy of the good folk at the eeepc users' wiki.

Probably the most important saving you can make is to temporarily disable the Atheros built-in wireless card. This is one of the largest system power drains, so unless you need to be on the internet, disable it. Again, toggling `Fn+F` will do the trick. (If you forget the status of the card, the blue LED at the bottom right of the EeePC will indicate that it is on). The final feature that can be controlled easily and directly from the keyboard is muting the speakers. `Fn+F` does the trick. With all those features enabled easily from the keyboard you should be able to get the most out of your battery--and if you upgrade to the six-cell version (about £50) you should see some impressive road life in your EeePC before it starts gasping for an electrical outlet.

These keyboard-adjustable features discussed above are the Xandros default and the insanely massive popularity of this machine have ensured a rush of customised GNU/Linux distros which, inevitably, have endeavoured to mimic those features. For a list of feature/distro compatibility for them see [Part Three](http://www.freesoftwaremagazine.com/columns/asus_eee_pc_part_three_alternative_distros) of this series.

#Webcam

The arrival of the E900 Series EeePC notwithstanding I would gladly have forgone not only the speakers but the webcam too, in order to free up some valuable screen space. However, the webcam also uses up valuable battery life, so it's well worthwhile configuring it too.

To enable/disable it on an _ad hoc_ basis open a console on the Desktop and type the following:

`echo 1 > /proc/acpi/asus/camera`

To disable it change the 1 to a 0:

`echo 0 > /proc/acpi/asus/camera`

The [eeepc wiki has a script](http://wiki.eeeuser.com/howto:controlcamera) to simplify this with a toggle command. If even having to open a console to toggle the webcam status is too much bother for you, there is a [GUI solution in the form of an icon in the system tray](http://wiki.eeeuser.com/howto:controlcamera) which uses a source tarball downloaded with wget to install itself. For a quick fix, hit `F2` to access the BIOS on boot up, navigate to the Advanced page, then to Onboard Devices and enable/disable the webcam.

# Overclocking


=ZOOM=To hackers, overclocking the EeePC is irresistible =

The EeePC is not exactly superfast as the spec. has been designed to keep costs down. The processor is rated at 900MHZ but actually runs at 630MHZ as the FSB (Front Side Bus) has been set at 70MHZ. Overclocking the FSB to 100MHZ will run the processor at the advertised 900MHZ. To hackers, overclocking is irresistible and if you are one them and want to extract the last piece of juice from the processor you _can_ overclock it. Warning: that _may_ consume more power (affecting battery life), produce more heat, _may_ cause the fan to kick (thus consuming even more battery power) and may cause system instability/crashes.

The usual port of call for this is the BIOS and [compiling and installing a Kernel module](http://code.google.com/p/eeepc-linux/) for the purpose. Not everyone fancies trying that, so a [pre-compiled binary is available](http://kibobo.free.fr/EEE/acpi/eee.ko)--but it may only work with the 2.6.21.4 -eeepc kernel version. There is a third option if you are running Ubuntu 7.10 (Gusty Gibbon) on the EeePC: [install this script](http://code.google.com/p/ubuntu-eee/downloads/list) and you will be able to toggle overclocking by using the Fn+F6 key combination. You can find install instructions at [Tuxfamily](http://ubuntu-eee.tuxfamily.org/index.php5?title=How_to_use_the_ubuntu-eee_script)

(The debut of the Asus EeePC 900 series renders any overclocking tweaks superfluous as it comes with the Celeron processor running at the full 900MHZ (so the battery tweaks should still apply). If you can wait until June the EeePC will come with the much anticipated 1.6GHZ Intel Atom processor. GNU/Linux is not Windows though. The monolithic nature of Redmond's product means little option to radically downsize the distro to offset an underpowered processor. The Unix community is spoiled for choice with minimal distros like Damn Small Linux (DSL), Puppy Linux and TinyMe (PClinuxOS variant) which run lightening fast even on relatively slow processors and low memory in both live and installed modes.) 

# When you are out and about you don't need suspend to RAM

Suspend to RAM (STR) is a useful feature on a laptop when you are at home and your computer is relatively safe. It is also, incidentally, a useful little battery power saver, as in STR mode power consumption can be as little as five watts. (Therefore it is less useful when on AC power.) The EeePC excels as a mobile road warrior but you are unlikely to need or want this when you are out and about. Fancy (closing the lid and) leaving it unattended while you pop out for five minutes? No, I didn't think so. Let's hack it.

The first thing you need to know is that STR works when the laptop lid closes and activates a script. That script is located in `/etc`. The full path is `/etc/acpi/lidbtn.sh`. As root, open your text editor of choice (Kate, Kwrite etc) and open that file path. That script iself then calls up another script called `suspendtoram.sh` and this is the script that needs to amended by the simple insertion of `exit 0`. This should be placed at the very top of the script, as the new first line. Save this change (which can of course be reversed) and in future closing the EeePc's lid will only cause the screen baclight to turn off and come back up again when the lid is re-opened. It would be useful to amend or write a script to toggle this selective feature to differentiate between running on battery or AC power. 

# Freeing up your real estate: less is more

Location, location, location. That is the rallying cry of all estate agents everywhere (sorry, "Realtors" to our loyal subjects in the American colonies). It is a good rule of thumb, even in the current credit crunch, and you can never have to much of it.

It is one thing however to ramp up the performance speed of the processor and upgrade memory but to see the results in full 3D technicolour it's nice to have a good-sized canvas to work on. Short of serious DIY on the speakers, webcam, fittting a new screen or upgrading to the E900 series there is no way to increase your real estate, so you've got to make the most of what you've got. That means using the best browsers in class and configuring them to maximize all available space.

## Opera and Firefox

Digressing briefly, to make the most of the EeePc's processor and memory, and to set up my own personal comfort zone, [installing Dillo is always my first port of call](http://www.freesoftwaremagazine.com/columns/dillo_the_lean_browser). It's lean and fast but it is not exactly configurable for our purposes, though you can hide the toolbar and have a really large browsing canvas (toggle the icon at the bottom right hand corner of Dillo). 

=ZOOM=Firefox needs a pruning makeover to utilize precious screen space=

GNU/Linux without Firefox would be as incredible as Microsoft without patent claims, and Xandros on the EeePC duly has Firefox preinstalled. As is though, it needs a pruning makeover to utilize precious screen space. Yes, you could use Opera too--I know. It is not free software but it was born for the EeePC. It is stable, fast and _highly_ configurable--without the bloat of Firefox's extensions. First, Firefox though.

# Firefox

Out of the box, two things you can do straight away: clear the taskbar away by clicking on the chevron at the far right hand side,  and free up a small portion of the screen (especially useful if you height setting is high); and use the `F11` key to toggle Firefox in full-screen mode and back again. The downside to this is that you capture valuable space but lose some browser functionality which can only be "retrieved" by mastering keyboard shortcuts. There is another way--the ubiquitous Firefox extension.

##Space-saving extensions

These extensions are a godsend to the EeePC. They won't make for the the most visually pleasing experience but they will do the job of giving you acceptable browsing with maximum viewing area. However, even before you install any extensions there is a lot you can do to increase the browsing space on Firefox. Customize the menus and toolbars, reducing them to the minimum you regard as necessary to work. Just select the customize option from the Toolbars drop down menu and drag them off the browser. Ditto with the View Menu: hide any toolbars/panels you think you can manage without. You can leave it at that but if you decide to install extensions, space saving or otherwise, you will already have freed up some space for some of the inevitable clutter the extensions themselves create (though, customize the extensions toolbar options too!).

Here follows a list of extensions (in no particular order) which use a variety of configurable features to extend browsing space, without crippling functionality:

**[Personal Menu](https://addons.mozilla.org/en-US/firefox/addon/3895)**

Allows you to hide menus (and whole Menus Toolbar) and compact then into one button. Great space saver.

**[Tiny Menu](https://addons.mozilla.org/en-US/firefox/addon/1455)**

This replaces the standard menu bar with a tiny menu popup

**[No Squint](https://addons.mozilla.org/en-US/firefox/addon/2592)**

Allows you to adjust the default text zoom level--and remember the zoom level on a per site view. Made for the EeePC.

**[Stylish](https://addons.mozilla.org/en-US/firefox/addon/2108)**

Often described as the "Greasemonkey for CSS" and used in conjunction with [Userstyles](http://userstyles.org/) you can par down Firefox to the bare bone: including search box auto expanding on search query focus, combined Stop/Reload button, reduction of standard menu to Firefox icon (mouse-over expansion) and auto-hidden status bar.

**[Fullscreen](https://addons.mozilla.org/en-US/firefox/addon/1568)**

Toggling `F11` will of course render Firefox in full screen mode but this extension will auto hide the toolbar (Firefox 3.x has an auto hide feature built in) but retain all open tabs. Well, every little helps.

**[Autohide](http://www.krickelkrackel.de/autohide/autohide.htm)** 

Not available as an official Mozilla addon but worth installing. It's also nicely configurable. It gives you a fullscreen browser whilst retaining the toolbar. (If you're really paranoid download first and scan it for any funny business.)

**[FaviconizeTab](https://addons.mozilla.org/en-US/firefox/addon/3780)**

Reduces the space taken up when many tabs are open. Adds another item to the tab context menu which contracts the tab down to favicon size. Combined with Autohide, it is a dream ticket for miserly space savers.

**[Littlefox](https://addons.mozilla.org/en-US/firefox/addon/307)**

Minimal theme that frees up a little more valuable surfing real estate.

**[Microfox](https://addons.mozilla.org/en-US/firefox/addon/354)**

More of the same--as Littlefox.

**[miniFox](https://addons.mozilla.org/en-US/firefox/addon/607)**

A re-design of the original Firefox theme by Gerich and Horlander. Minimum size combined with maximum space. Ideal for the EeePC.

**[miniFoxFlat](https://addons.mozilla.org/en-US/firefox/addon/1202)**

Another minimal screen space saver. "2D-flat looking".

**[Window Resizer](https://addons.mozilla.org/en-US/firefox/addon/1985)**

Probably designed for web developers to test different screen resolutions but it can be used to experiment with the EeePC. The EeePC comes with a VGA out to view output on other screens. It would be interesting to know if and how this extension would work with this feature. It may well be superfluous.

You may know of additional (and better) extensions but these ones should be enough to be going on with. If you are a Firefox power user, typing `about:config` in the location bar will give you access to a lot of Firefox settings; if you know those concerned with the browser chrome, you can sculpt your space to suit. Using `about:config` could dispense with some of these extensions but you will have to know your way around there. If you want to explore further and reclaim space for Firefox on the EeePC [Mozilla has a very good explanation](http://kb.mozillazine.org/Firefox_:_FAQs_:_About:config_Entries) of what it all means.

**Tip:** The Flock browser runs well on the EeePC and most of the above extensions designed for version 2 of Firefox should work with it too.

Firefox and extensions are a moving target, so your mileage may vary both in terms of compatibility with each other and with the other extensions. Experiment and get the configuration that suits you and the EeePC best.

# Opera on the EeePC

No, not a musical detour--just a great browser. Opera scales beautifully on the EeePC. Fullscreen mode (toggle `F11` or `Esc` to return to normal mode) really does look like a fullscreen on steroids (your entire screen is the website. No icons, toolbars. Nothing) but you can do so much more. Incidentally, as the EeePC is not the fastest kid on the block, it is a good idea to launch it minimally by starting it from the command line in a console _without_ the built-in mail client, chat and newsfeeds. Just type `opera --nomail &`.

=ZOOM=Opera scales beautifully on the EeePC. Simple as that=

Opera's zoom capability is a killer feature for the EeePC. If that then means you have to scroll horizontally to view a website just use the "fit to width" facility (Tools→Preferences→Webpages, select "fit to width") and do so in conjunction with zoom feature (control the middle scroll wheel for _ad hoc_ zooming or View→Zoom→Set percentage for a more "permanent" solution). Say goodbye to horizontal scrolling. It is also possible to rearrange the toolbars and general appearance of Opera to minimize the "chrome" and maximize the viewing area. Opera is _highly_ customizable and what you can do with it to increase your viewing real estate is too extensive to list here, but a good start is to point your browser at [a neat little video over at Cybernet News](http://cybernetnews.com/2007/08/08/cybernotes-configure-customize-the-toolbars-in-opera/) to see just what can be done. 

If that is not enough for space misers, Opera has skins (aka themes in Firefox) and, unlike Firefox, Opera will allow you to preview them and then either install or decline them. Installation is immediate. No restart is required. There are many to choose from and you should be able to find a minimalist skin to increase your viewing space in conjunction with customising the toolbars and icons. (The only thing that could make Opera better on the EeePC would be Firefox-style extensions. Opera will boast of course that it has already incorporated many extensions features into the main body of the browser. If you want to know more [take a look this comparison between 150 Firefox extensions and Opera](http://files.myopera.com/Rijk/blog/extensions.html?Wednesday,%2014-May-2008%2013:12:31%20GMT) and how to incorporate some Firefox extensions features into Opera that aren't already there.)

# Changing the default cursor

Out of the box, the default Xandros mouse cursor is large--relative to the small screen. If this irks you or offends your aesthetic sensibilities it can be changed easily. Providing you have enabled repositories (as described in [Part Two](http://www.freesoftwaremagazine.com/columns/asus_eeepc_part_two_setting_full_kde_gnu_linux_experience) of this series) you can use either Synaptic to search for cursor themes or open a console and install it/them with the usual `apt-get install`. Before that try `apt-cache search cursors` and see what is available. There are a number to to choose from. The most extensive, both in terms of size and design is _xcursor-themes_, but here is a list of runners and riders from which to choose a suitably-sized cursor: _crystalcursors, dmz-cursor-theme, comixcursors, Chameleon-custom-theme_.

You can see and download a great collection of cursors for KDE at [kde-look](http://www.kde-look.org/index.php?xcontentmode=36&PHPSESSID=c6fe26cc01ca1f15d6514bd184abc096) and for Gnome head over to [Gnome-look](http://www.gnome-look.org/index.php?xcontentmode=36). You can of course manage cursor themes from the KDE Control Centre under Mouse and the cursor themes tab (gconf-editor in Gnome)--including adding new themes from there as well.

Well, all that should be enough to help to get the best out of the default Xandros distro on the EeePC. There are many, many more tips, tricks and hacks to enhance your experience on this wonderful little machine. Murphy's law says that, inevitably, I have missed or left out the one you were looking for. Sorry about that--but Google and [the wiki at eeeuser](http://wiki.eeeuser.com/) are your best friends. Go get 'em!

# Conclusion: Linux, that's part of Vista - right?

=ZOOM=the popularity of this little wonder is going to go through the roof. Asus have struck the motherload=

Since I began this four parter on the EeePC, four important things have happened. First, the 900 series has been launched and it has a bigger screen. [Comparisons with the 701 models notwithstanding](http://www.eeeuser.com/2008/05/04/eeeusercom-eeepc-900-in-depth-review/) there is no doubt that the popularity of this little wonder is going to go through the roof. Asus have struck a mother-load and practically invented a method for printing money.

However, that is the least of it. Second, Xandros took the decision to go with a GNU/Linux distro and have repeated this strategy with the latest version. GUN/Linux is persisting. Evidence seems to suggest that most buyers of the EeePC are staying with the pre-loaded GNU/Linux distro. That is critical. Persistence will spread the word about free software and what people are happy to use today on the EeePC may transfer to regular laptops and desktops tomorrow too.

Third, Asus have now released an [SDK](http://en.wikipedia.org/wiki/Software_development_kit) (software development kit) for the EeePC. It also contains a copy of the Xandros Open Circulation Edition which runs on the EeePC and a VMware image for testing and debugging purposes. The highly creditable [VirtualBox](http://www.virtualbox.org/) can therefore be used to run it without even having access to the EeePC itself. The EeePC user site has an [excellent guide]( http://wiki.eeeuser.com/howto:virtualeeepc) for running the EeePC OS virtually. The SDK allows software engineers and developers to create applications for the EeePC--and it's hot. 

The Asus site has been hammered as people [download it](http://support.asus.com.tw/download/download.aspx?model=Eee%20PC%202G%20Surf/Linux&SLanguage=en-us). (You can also download it at [Sourceforge](http://sourceforge.net/project/showfiles.php?group_id=215613)). If these are slow on a less than stellar broadband connection, the good news is that it has also been [mirrored as a torrent](http://linuxtracker.org/download.php?id=83eb9dabed61950b7a9ccdbd48f741dcc49617e6&f=Asus%20Eee%20PC%20SDK%20%202008%20beta%200303.torrent) and if you want to see if the wait is worthwhile you can always [sample first what the SDK has to offer](http://www.theblackbox.org.uk/xandros_asus_software_development_kit_10.pdf). All of this can only be good for the future of the further adoption of free software on this ultra portable, miniature computer.

=ZOOM=well, I haven't laughed that much since my pet Vole Eric died=

Last, Asus must be feeling like a cross between John the Baptist and the computer that designed and built Deep Thought in The Hitchiker's Guide to the Galaxy. They have paved the way for those machines to come, whose operational parameters it is not fit to compute. Seriously, already the EeePC is facing lots of competition with varying competitive prices and specifications and running GNU/Linux too: MSI Wind, OLPC, Elonex, Everex Cloud, HP Mini Note and the Jisus (no, that's not a misprint and it will be launched on a Sunday too. Not 1st April). The competition is hotting up and the Unix community can only benefit from it.

[Even Microsoft want to get in on the act](http://www.pcadvisor.co.uk/news/index.cfm?newsid=13011) and Windows is an option on ultra low cost laptops (ULPCs) too. However, in true Redmond mode it will allows manufacturers a steep discount on Windows XP Home (for between $26 and $32)  -but with the restriction that it must be installed only on ultra portable laptops with screens no bigger than 10.2 in, no touch screen and hard drives limited to 80GB. Oh, and did I mention, memory no greater than 1GB and a (single core) processor no greater than 1GHZ? Yes, that's Microsoft way of life...

=ZOOM="[Low-cost PC makers] have made some good inroads with open-source, and Microsoft wants to put a stop to it", the official said=

Let's hope the PC vendors don't fall for this Faustian pact. What doth it profit a man if...? As Microsoft have estimated sales of ULPCs up to thirteen million next year it is clear they don't want to miss out and would be happy to choke off GNU/Linux on ULPCs (and protect sales of conventional laptops and desktops running XP and Vista too) with these squalid tactics. Microsoft call it competition. You couldn't make it up.

Recently, I asked the young assistant in my local 3G shop if their 3G USB modem supported Linux. "Linux", he said, "that's part of Vista. Right?" Well, I haven't laughed that much since my pet Vole Eric died. Asus are probably laughing all the way to the bank too. Deservedly so. They're not the only ones. For years the serried ranks of faithful GNU/Linux evangelists have solemnly intoned the sacred mantra of "next year will be the year of Linux on the Desktop". Hopefully that young man won't have to ask that semi-rhetorical question in the future for it could just be that this time they are actually right and that the critical tipping point will be judged by historians of computing to have been the long march lead by the brave little EeePC. A David among Goliaths indeed.