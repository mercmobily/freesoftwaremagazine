---
nid: '2563'
title: 'Mandriva 2008 VS Ubuntu 7.10 Gutsy Gibbon'
authors: 'Mitch Meyran'
published: '2007-11-09 22:54:59'
tags: 'ubuntu,gnu/linux,mandriva,comparisons'
license: verbatim_only
section: end_users
listed: 'true'

---
For those of you that follow my blog, you must have noticed that I’m a Mandriva user. Recently though, I took an interest in Ubuntu: I installed version 7.04 on a laptop, and it did look interesting, enough to make me doubt my commitment to Mandriva’s products.

Thus, when 7.10 came out with a bang in the media, and I got another laptop to de-borgify, I downloaded the Ubuntu 7.10 ISO along with the install CD for Mandriva 2008.0 Free.


<!--break-->


So, I did a test drive, trying to level the field as much as possible. Here are the results.


# Test hardware and distributions

I tested the latest version of both Mandriva and Ubuntu on various desktop and laptop systems with various hardware configurations (and with them, the distribution it ended up running):


* Packard Bell laptop, Celeron M, 512MB of RAM, integrated ATI graphics. Troublesome sound and wi-fi card. Running Ubuntu 7.04.
* Dell laptop, with SATA hard disk drive, 2GB of DDR2 RAM, Athlon64 X2 mobile, discrete ATI graphics. Running Mandriva 2008.0 first, then finalized with Ubuntu 7.10.
* Personal workstation, discrete NVIDIA graphics, 2GB of DDR RAM, Athlon64 X2. Running Mandriva 2008.0.
* Job workstation, discrete low-range NVIDIA graphics, 1.5GB of DDR RAM, Sempron64. Running Mandriva 2008.
* Job workstation (assistant), discrete low-range NVIDIA graphics, 768MB of DDR RAM, Sempron64. AGPGART detection problems on cold boot, running Mandriva 2007.1.
* Test workstation, various graphics cards, 512MB of DDR RAM, AthonXP. Running both Mandriva 2008.0 and Ubuntu 7.10 (dual boot).
* Dell laptop, SATA, 2GB, Core2 Duo, NVIDIA graphics. Installed Ubuntu 7.10 first, now running Mandriva 2008.0.

To those telling me I didn’t test enough generic hardware, please direct your messages to /dev/null :). These systems have various levels of power and resources, and different hardware add-ons. Some are very close and allow direct comparisons, first between revisions, then between distributions in general. The following article is written based upon my experience with running and tweaking these systems.


# Discovering Ubuntu

I had tried Ubuntu a few times before: version 5.04 and 6.10 notably. I must say that, at that time, it felt awkward, unstable (hard crashes) and slow compared with my Mandrake/Mandriva system. A little while ago, I had to overhaul my colleague’s laptop; at the time, I decided that I had better use the most well-known distribution out there, and I downloaded Ubuntu 7.04. This choice helped me compare Feisty (7.04) with Gutsy in this blog entry.


## Installing Ubuntu Gutsy

Installing Ubuntu Gutsy (7.10) from the LiveCD was indeed comfortable and felt very stable: since the LiveCD worked, I knew that most of its hardware worked. I hit a snag, though: I wanted to keep a small Vista partition around (just so that support didn’t become a hassle in case of hardware problems), yet Ubuntu allowed me limited options: shrink the Vista partition and create swap and “/” partitions, use the whole disk for swap and “/”, or do everything manually. The manual interface was quite limited in my opinion, but still allowed me to do the job (I really, really wanted a separate /home partition). After a few more questions, the install process started—fast.

There was no difference between 7.04 and 7.10—the installer remained identical. So, if you’ve installed 7.04, you should be able to install 7.10 without a problem (barring possible regressions).


## Running Ubuntu Gutsy

First of all, I was impressed with the great level of integration the desktop showed: installing proprietary hardware drivers was a snap (required for wi-fi and graphic cards), adding new software was really easy, most (if not all) settings were sensibly located, and all the hardware was well configured.


## The wifi saga

The wifi card, which was using the rt61 driver without success, had problems: networks could be detected but not connected to, and WPA support shone by its absence. Moreover, even when not used and uninstalled, the wifi card would eventually hard-lock the system (!).

Thus, I had to physically remove it from the system, and replace it with a Belkin wifi key...

...which was recognized, installed, configured and used in as little time as it takes to plug the key in, select a network in the network manager, and paste the WPA public key when prompted for it. On that account, the Ubuntu system had me bluffed.

Installing that same wifi key under Vista required me to manually extract essential files from the installer package, and shove it down Vista’s throat—literally.


## Sound

Another problem I had was with the sound chip: for it to work properly, I had to install the Linux development packages, compile the latest version of ALSA, and install it—no problem (this is most likely to be a non-issue with 7.10 anyway, due to the upgraded kernel, which comes with a more recent driver version for this sound chip, as is confirmed by some posts on the Ubuntu forums—however, I can’t dist-upgrade this laptop to 7.10 as I don’t have constant access to it any more).

While installing Ubuntu 7.10 on the first Dell everything went the same way—except, the Ubuntu progress bar isn’t visible (incompatible kernel framebuffer?). The hardware is otherwise entirely recognized and installed. On the second Dell laptop, however, I again had sound trouble—solved with an ALSA upgrade to 1.0.15.


## Graphics

ATI/AMD recently released a much better driver than what they proposed before: fglrx version 8.42.3 not only improves stability and performance from the RADEON 9500 up, it also adds support for Composite and AIGLX across the range! However, I just couldn’t make it work on either laptop—making Compiz unusable on these machines. Driver versions provided through all (whether 7.04 or 7.10, official, universe or multiverse) Ubuntu repositories were too old.

All in all, Ubuntu 7.10 was functional out of the box, and very well optimized with only a little digging required to make it fit perfectly with the system it was installed on.

However, I soon hit a wall: Ubuntu is so graphically advanced that the command line is almost unreachable—which I soon found quite annoying: no “root” account, manual overrides in config files don’t always work, and several operations that should not require a reboot, well, did.

This was true for Ubuntu 7.04, and it still holds true for 7.10, although a few new wizards have appeared to make the transition a bit easier—so, for a few things, this darned command line isn’t necessary any more. Moreover, instead of enabling desktop effects voluntarily, the system automatically detects what the hardware can support, and loads Compiz directly. A tab has been added to the appearance panel, which allows the user to dynamically switch desktop effects between disabled, on and maximum, instantly.


# Mandriva 2008.0

**Install it!**

I didn’t perform a dist-upgrade of any of my Ubuntu systems; I hear that it may work, or not. On a Mandriva system, there are similar problems: upgrading a distribution is not always safe (as a matter of fact, upgrading from 2007.1 to 2008.0 trashed some of my RPM databases so hard they ended up impossible to restore). On the other hand, Mandriva still defaults to a “small“ root partition, keeping “/home” untouched: reinstalling a similar selection of packages will have you back into your usual work environment in not much more time than the upgrade would have taken.

While Mandriva’s installer wizard feels a bit “drier” than Ubuntu’s, it is more powerful in many aspects: a hybrid CD-ROM allows you to install either 32- or 64-bit version, in many different languages (available language selection is on par with Ubuntu’s). In my opinion, the left-hand progress list (visible during the installation) gives a better idea of what is left to do compared with Ubuntu’s method of saying... nothing.

The partitioning utility also gives you the ability to shrink existing partitions, use the full disk or go manual; but then, the manual interface gives you a visual representation of existing partitions, and provides you with an “Expert” mode (under which all known partition types are available); the “auto partitioning” button will save you a lot of hassle. Essentially, when you have freed enough disk space, pressing the button” will instantly create “/”, a swap and a “/home” partition. It may also ask you for a “/usr” partition (recommended for server use).

You then create the root and a user account, select your packages (default selection is good enough for most) if you want a fully manual install, or, if you have access to all of the “main” repository, a complete KDE, or GNOME, or “alternative” environment (Enlightenment, Xfce, IceWM are available too) before going to a recap of what will be configured; here, you can set up all network connections, the X server, printing capabilities, security, running services... Or just leave them to default and start the install.


## Using Mandriva

For the sake of comparison (and because I just like it), I configured Mandriva to use GNOME instead of KDE; while not the default window manager, GNOME is not a second-class citizen under Mandriva. The biggest difference between the two is that the GNOME control panel has been removed—you are supposed to go through the MCC for most tasks. GNOME-specific settings can still be found under the “system” menu, and are fairly consistent across both distributions.


## Setting Mandriva up

However, the real strength of Mandriva is that, while it is perfectly possible to use it full-time with a GUI, most of its tools and functions are also available in command-line mode: you can run a Mandriva system through an ssh session with little in the way of difficulties, and several script managing daemons reduce reboots to a bare minimum (i.e., for kernel updates or improperly reset hardware state).

Updating sound drivers will require a mere “service alsa restart” to look for (and list) applications using sound, save mixer settings, unload all sound-related modules, reload current modules, and reload mixer settings. Same with HTTP, Samba, CUPS... Similarly, tools to configure network connections, X settings, 3D effects settings, mouse and keyboard settings, locale settings, etc. provide an ncurses interface with very similar features to those ones found under their X counterparts.

Moreover, Mandriva got lauded for their clever little applet for 3D configuration back when 2007.0 came out; in version 2008.0, you have a choice: no 3D (!), Metisse (a Project Looking Glass-like system), and Compiz—the latter can be used in “native” mode (AIGLX) or through Xgl. Compared with Ubuntu’s, it is thus far more powerful, yet a bit less practical as it requires you to close the session when switching effects on or off (this is probably due to Xgl and Metisse concerns, as both would require a session restart anyway).

However, not all is rosy. Several niceties found under Ubuntu, like the Wifi manager or automatic sensors detection, have to be installed manually; read/write NTFS is on by default but has to be enabled through the partitioning utility (it will download and install ntfs-3g by itself), or install ntfs-3g yourself (but then, you can install it from sources, or install the slightly outdated one in the repositories); configuring new repositories is still a bit of a hassle, even though the repository manager has gotten much more efficient and streamlined over its 2007.0/2007.1 predecessor.

I also plugged the Belkin Wifi key into a Mandriva system. Nothing happened; so I went into the Mandriva Control Panel, and chose “Add a Network Connection”. Selecting Wireless, it asked me what hardware I wanted to install, citing two detected devices (both referred to the same hardware, but only the second answered—the wizard was basing itself upon udev...); it then downloaded its firmware, loaded the module, asked me for network details, and I was browsing with the best of them.

Many tools are provided to make configuration easier: the smart package manager works a lot like Synaptics, and can advantageously replace urpmi; the MCC covers most administrative tasks you may need; and several utilities, which had for a long time been awkward to use, got reorganized, slimmed down and fixed—and most retain their ncurses-based interfaces.

Personally, I prefer Mandriva’s hardware manager over Ubuntu’s: more details, more features. Still, most hardware installations will require a form of user intervention, while Ubuntu took Plug’n’Play to a new level.


# Mandriva vs. Ubuntu: a matter of performance

What defines performance? Is it measurable? Or does it depend on several factors? I will sum up what I found out about both distributions here. Of course, your mileage may vary; I didn’t do precise measurements, but I did submit both systems to inexperienced GNU/Linux users, and introduced them to it. For me, performance is not how much HP a system outputs; it’s about how fast it allows you to do something.

As I said, to level the playing field, both distributions are using the GNOME desktop (and it just so happens that both Mandriva 2008.0 and Ubuntu 7.10 use GNOME 2.20). This gives Ubuntu an edge, as it is natively designed around GNOME, while Mandriva is by default installed with KDE.


## Boot time

Both boot reasonably fast; on identical hardware, there is no clear winner. As mentioned, Ubuntu 7.10 had trouble displaying a progress screen on an ATI 1100 IGP—but X loaded normally. On the other hand, Unbreakable X made sure I would get an X server anyway. The screen problem could come from an incompatible ATI kernel framebuffer; since Mandriva uses a generic VESA one, it is less prone to this kind of problem.

No system is ever perfect; as such, it is always useful to be able to track what happens to a system at boot, and to see where it freezes. Now, both Ubuntu and Mandriva provide a loading bar at boot. However, Ubuntu will remove it only in case of a problem (or it will freeze while keeping you in the dark), while Mandriva allows you to see hardware detection and daemon loading messages with a key press.

Mandriva 2008, with its service set-up interface, allows easier tune-up than Ubuntu; you can disable services you don’t want to load at boot time, speeding up the process. For example, if you don’t use a local printer queue, why would you need cups, and if you have one but not an HP printer, what is the use for hplip?

While Mandriva doesn’t provide Unbreakable X, in case X won’t load, the dm daemon provides debugging information and loads an ncurses interface so that you can reset X.org. In the worst case scenario, you can delete X.org’s config file; X will rebuild a basic one, dm will try loading it thrice, then ask you to manually configure X. More often than not, it’s a matter of accepting autodetected values, and letting dm restart.

I was also confronted with some strange behaviour: when trying to set up the login screen with a navigator (so that users could merely click on their profile), Ubuntu would sometimes load it, sometimes not. Mandriva didn’t fret; moreover, the complete separation of root and other accounts allows for a no-password connection to a user account, while still protecting sensitive areas with a password.

In short, Mandriva allows you to start your session faster than Ubuntu with only a few tune-ups. On default settings though, both are created equal.


## First use

Ubuntu 7.10 comes with everything out of the box: network manager, updates notifier, power saving features, hardware sensors, NTFS read/write configuration and installation, proprietary drivers and applications management... As soon as you’re done installing Ubuntu, you can use it fully. On top of extended compositing capabilities and read/write for NTFS, 7.10 brings refinement and a more contrasted wallpaper, on top of some extra speed and smoothness.

Mandriva 2008, on the other hand, requires some fiddling to perfectly fit with what one would expect of it. Don’t get me wrong, most useful applications are here, and installing any complete environment is but a meta-package away. Hardware sensors don’t come out of the box: you need to run lm_sensors to get them all, and then you have to set up the applets... While Ubuntu also provides lm_sensors, “easy” sensor modules (such as Athlon64 internal CPU sensors) are detected and loaded.

As such, this is an overwhelming victory for the Ubuntu camp: Feisty Fawn was already quite good, but Gutsy Gibbon sure squeezes the juice out of your hardware right away.


## Mandriva’s shortcomings

Mandriva was long decried for its awkward graphical installer, rpmdrake, which required four separate interfaces to work: an installer, an uninstaller, an updater, and a repository manager. Starting with version 2007.0, these interfaces were merged, and in version 2008.0 add/remove became one while updates added a different layout for extra information. It also took a page out of Ubuntu’s book by adding an “add/remove program” icon to the application menu. Ubuntu still has the edge in speed here, thanks to Synaptics (although Mandriva provides smart, which is essentially Synaptics for RPM, but not used by default), and also a user-rated application search engine, where Mandriva merely sorts packages by use, categories and sub-categories.

Another problem with Mandriva was that you either loved the themes, or hated them. In version 2008.0, the “Ia Ora” themes are still present, but the fonts have changed: Red Hat’s Liberation fonts are used all over the place. They bring a crispier display, save on screen real estate and don’t get blurry when filtering is on—even subpixel filtering looks better. Of course, the scary looking monster of 2005LE is history; icon sets are slick and gained some more contrast; and opening sounds are less intrusive (to me) than Ubuntu’s.

Both distributions can deal with various uses; Mandriva comes with a very large repository of user-contributed free software, but Ubuntu dwarves it easily. Please note, however, that when you reach over 20,000 packages (as is the case for Mandriva, too), there is very little chance that you can’t find what you’re looking for.


## Ubuntu’s shortcomings

Using a system for the first time sure gives you a lasting impression, and I can’t fault people for using Ubuntu: on the matter of ease of use, it sure beats any other operating system I’ve seen—Mandriva included. However, you _can_ very well use Mandriva with its default settings—and don’t forget that this is the free edition! Powerpack comes with a different set of applications pre-installed, which may reduce some of the gaps found here.

There is also one area where Ubuntu 7.10 proved slightly trickier than both Mandriva and Feisty Fawn: the installation of the Flash plugin. Mandriva and 7.04 rely upon Firefox’s integrated plugin search system, which works much, much better in 32-bit mode than Ubuntu’s wizard (it crashed on me; I had to use Synaptics to install it, and restart Firefox to use it); on the other hand, Ubuntu 7.10’s wizard has the advantage of providing Gnash as a fallback option (which works for 64-bit), while Mandriva leaves you guessing as it provides it too (and a plugin for Konqueror, too), but you will have to install it yourself.


## Non-free drivers

If you want to install proprietary drivers (essentially, 3D drivers), both are pretty much a wash: Ubuntu provides a manager that seats on your notification area, while Mandriva will merely inform you that a proprietary driver is available if you care to use it, if it appears on a repository when you configure X.org. Thus, Ubuntu makes it a bit easier, but on the other hand, Mandriva gives you a bit more options to tune up either drivers (typically, Freedesktop’s Ati drivers provide EXA and Composite acceleration; the latter is enabled by default, not the former).


## Mandriva—just tweak it

But then, here is where Mandriva pulls slightly ahead: due to its older roots, Mandriva doesn’t let the command line fall into disarray; setting up a new graphics driver should be done with X turned off, and there, merely by allowing easy management of daemons and services and a fully fledged root account, setting up a new driver, while not being a breeze, is at least possible without too much head scratching... And a lot less reboots.

Ubuntu provides several versions of the proprietary ATI driver: version 8.37 takes care of “older” hardware, while 8.41 is there for RADEON HD. However, version 8.42 came out recently, and it brought many, many improvements to ATI cards from the r300 up—including AIGLX support, and I wanted to see Gutsy Gibbon in 3D. Mandriva comes with several versions of the fglrx driver, but also with current 6.6.3 r300, abandoned avivo, and nascent radeonhd driver—and if that’s not enough, a CVS extract of future 6.7.0 r300.

Installing a driver myself proved inconclusive. Unbreakable X was, I suspect, reversing every and all changes I made to X to make the system work with the new driver. I did try to build a package, then to install it manually, then to find a pre-built package: nothing. Well, maybe in a few weeks...

On the other hand, I have the bad luck of owning a very fickle digital flat panel—a Viewsonic vx2025wm—which is known for a very moody numeric connection. NVIDIA driver versions past 97.55 would constantly make it go black and show an “out of range” error—luckily, Mandriva sticking to age-old rules of logs and using existing low-level systems made overriding NVIDIA’s blob’s failing detection routines not a breeze, but not a harder fight than it needed to be—something I couldn’t fathom ever happening under Ubuntu without turning off Unbreakable X—in which case Mandriva’s error detection and fall-back systems just rule.

Moreover, for business use, Mandriva’s numerous installers (found inside its Mandriva Control Center, MCC for short) are extremely useful: installing several printers, be they connected locally, over a network, or connected to a networked machine, is a breeze; Samba configuration requires zero config file editing; network management can be done through the same applet Ubuntu 7.10 provides, but also through several wizards that allow any type of network connection known to man to be configured.


# Conclusion

Well, finally, what can be said? Both distributions have their pros and cons. Mandriva has recently consolidated its product lines and offers, allowing users afraid to be on their own the reassurance of paid for support while leaving a very convincing offer available to free software users, while Ubuntu is appearing more and more often pre-installed on consumer computers—and version 7.10 should be even easier to pre-install.

I would close this little comparison with what I think those distributions are for: Ubuntu (and 7.10 more than ever) is good for a no-nonsense, powerful, integrated system where everything works out of the box with minimal or no support, while Mandriva is more for the curious user, even if a beginner, who doesn’t want to waste too much time installing a working system, and then tweaks it the way he wants it to be. However, of the two releases, I find Mandriva 2008.0 a bit more polished than Ubuntu: some translations are missing in Gutsy Gibbon, and the welcomed Flash/Gnash installer just didn’t work. It may need a few more updates to work, while Mandriva 2008.0, for once, worked well right out of Release Candidate status.

