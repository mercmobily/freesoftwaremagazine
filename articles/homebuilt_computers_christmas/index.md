---
nid: '3075'
title: 'Homebuilt computers for Christmas'
authors: 'Terry Hancock'
published: '2008-12-31 0:59:31'
tags: 'linux,olpc,building,computers,splash'
license: verbatim_only
section: end_users
listed: 'true'

---
In tight economic times when I was growing up, my family generally had "homemade" Christmases, where all the gifts were handicrafts they had made. It takes a lot of time, but it does save money, and in all honesty, those were some of the best I can remember. This year, I'm following much the same pattern, though my skills are different (I couldn't knit a sock to save my life, and while I can sew, I'm not exactly good at it): this year I'm giving my kids (refurbished) computers.

<!--break-->

Refurbishing computers is something I've been doing since I've been using computers. My wife used to jibe that I'm not so much a computer "geek" as a computer "redneck" ("You might be a computer Redneck if... your present motherboard has been in four other computers", apologies to Jeff Foxworthy).

=ZOOM=Refurbishing computers is something I've been doing since I've been using computers=

It's really this kind of do-it-yourself value system that led me to free software in the first place. For me this is a way of life, handed down over generations, right back to when my ancestors moved here and built cabins out of logs and mud.

The technology has improved by leaps and bounds, but the ideal of self-sufficiency has never gone away, you just can't get that level of self-sufficiency with software you can't even recompile. So I learned to program, and I learned to use free software, and today I'm passing these same values onto my own children.

# The computers

The computers themselves are hand-me-downs: circa-1998 HP Pavilions (by a happy coincidence, I got two nearly identical computers from two different family members). Both were in fair condition, mostly in working order, but extremely dirty.

=ZOOM=The technology has improved by leaps and bounds, but the ideal of self-sufficiency has never gone away=

These computers have approximately 500 MHz Intel Pentium-III CPUs, 168-pin SDRAM memory modules, and hard drives of 20 GB and 30 GB. They do have built-in sound and video drivers, based on the Intel 810 motherboard chipset, although the sound system appears not to be supported in ALSA. This is probably fixable in a number of ways, but I'm leaning towards the "pay $10 for a compatible soundcard" solution, though it's going to have to wait until after Christmas (it's either that or try to get my old ISA-bus Soundblaster 16 to work, but I'm not sure it's worth the effort).

=IMAGE=hp_pavilion_refurb.jpg=One of the two HP Pavilions I refurbished this Christmas for my children=

Although the computers only had 64MB and 128MB of RAM when I got them, RAM of that type is pretty cheap, and I was able to upgrade both to 256MB, which though not large by today's standards is enough to run the KDE and Gnome/GTK applications my kids are most interested in.

=ZOOM=Many people would probably discount these computers today, but with a GNU/Linux operating system, they have more than enough power=

Many people would probably discount these computers today, but with a GNU/Linux operating system, they have more than enough power: the windowing systems are more efficient, because there just isn't so much pressure to add bells-and-whistles to them. So, yes, they won't be using 3D desktops, but they probably won't even notice the speed or RAM limits of these computers.

# Washing the computers

Although electronically, HP Pavilions are pretty conventional for their time, they have rather unique case designs with extensive plastic coverings. These were, as I mentioned, very dirty.

However, with care, it is possible to remove them (they are attached with "one-way" plastic tabs that have to be carefully pried and pushed through the openings in reverse. I removed all of these plastic elements (except the base, which wasn't too bad anyway). 

Then, I carefully laid them out on the racks in a regular portable dishwasher (yes, the same one we use for our dishes). You can wash them on a low-heat cycle, just like any "top rack safe" dishes. This is very effective at getting off old oily sticker residue and other kinds of dirt accumulation. You do have to make sure that they are thoroughly dry before attempting to reinstall them.

=ZOOM=Cleaning mostly consists of using compressed air, and wiping things clean with an alcohol-soaked paper towel=

For the rest of the system, cleaning mostly consists of using compressed air (for this level of cleaning, you need a compressor, not just a "can of air"), and wiping things clean with an alcohol-soaked paper towel (or other lint-free wipe). There are a lot of tiny crevices inside of a computer, and you have to get into them and get rid of the dust if you want the system to be usable.

# Installing the operating systems

Yeah, I said "systems", because I actually made these computers triple-boot: Debian "Lenny" GNU/Linux, FreeDOS 1.0, and (ugh, I know) Windows 98SE. As it happens, I have licensed copies of Windows 98SE from a long time back. I won't buy Windows again, but since the kids do keep getting undocumented and incompatible hardware, as I've [mentioned before](http://www.freesoftwaremagazine.com/columns/free_software_and_gadgets_world_beautiful_broken_toys), and I do have a substantial pile of legacy Windows games from the 1990s that the kids are interested in, it makes sense for them to be able to run both (I have little fear they will get hooked on Windows, since all their favorite software is in Debian anyway).

=ZOOM=I actually made these computers triple-boot: Debian "Lenny" GNU/Linux, FreeDOS 1.0, and Windows 98SE=

For the record, I attempted to use ReactOS 0.3.7 on these systems, but I had substantial installation problems. I will probably attempt that with a later version.

It turns out this is pretty easy to do with Grub these days. I was quite surprised. It is true that Windows will trash the Master Boot Record (MBR), but it's trivial to fix it, and Grub's chain-loading worked flawlessly.

FreeDOS is, as the name suggests, free software. It's intended mainly for those of us who still have legacy DOS software. As of version 1.0, it appears that the kernel emulates MS-DOS 3, while the command line interface is based on the features of MS-DOS 6. I was very impressed with the installation process, and I expect to be able to use this for some of the older games that we still have. However, there is some software that won't run, including the Windows 98SE `setup.exe` executable (which caused a bit of trepidation, since I couldn't find my original boot floppy -- remember boot floppies?).

# Personalization!

This is the really fun but also astonishingly poorly-documented part. It is now possible, with a fairly small amount of effort to personalize a lot of the boot and desktop experience on a computer. You can:

* Specify a GRUB boot menu splash image
* Use "splashy" to customize the Linux boot process
* Create a KDM theme to customize the login screen (this goes beyond the simple change of background I documented in a [previous column on XDM, GDM, and KDM](http://www.freesoftwaremagazine.com/columns/configure_xdm_gdm_or_kdm))
* Create a special splash image for when KDE loads
* Add sounds to boot-up, login, logout, desktop-switches, error-messages, and any number of other "system notifications"
* Change your icon set
* Change the color scheme and GUI theme in KDE

(No doubt you can do these with Gnome as well, but we use KDE).

=ZOOM=For the most part, I found the easiest way to learn how to create these themes was to acquire an existing theme and reverse-engineer it=

For the most part, I found the easiest way to learn how to create these themes was to acquire an existing theme and reverse-engineer it (expand the tarball and study the contents). I hope to write some better documentation over the coming weeks right here in Free Software Magazine.

In any case, I was able to get the systems set up to suit their names (which my kids picked themselves).

# Why am I telling you this?

Over the next few weeks, I hope to document the technical details of the challenges I've faced in putting these systems together (I know I've been very sparse on details in this column). Although it's unlikely that you will face exactly the same problems, I hope that the information will be transferable to other refurbishment and installation projects.

What I'm doing for my own kids, is something many of you reading this could do for yours, or indeed, in this time of giving, for someone else's kids. Old computers which you no longer find useful, can, with a little love, become useful first computers for children. There are many charities that do this, but building one or two yourself is good for the soul. Consider volunteering to help provide systems for kids in your area.

=ZOOM=Computer technology isn't just a toy for kids, it's an enabler that makes them able to reach much more of their full potential=

Alternatively, there are still a couple of days left on the [Give One, Get One](http://www.amazon.com/gp/browse.html?ie=UTF8&marketplaceID=ATVPDKIKX0DER&me=A34NLXJLC88VVS) program for the [One Laptop Per Child](http://laptop.org) project, which is _still_ committed GNU/Linux laptops, despite all of the flap you may have heard because they also "possibly will support Windows as well". I understand the political issues that Windows support introduces, but the OLPC program is still an amazing project which is worth your support, and which still has a strong commitment to free software. With the support of Amazon's online shopping system, the project is also a whole lot easier to support this year.

Either way, I encourage you to contribute if you can. Computer technology isn't just a toy for kids, it's an enabler that makes them able to reach much more of their full potential. And in a world  full of crises, more human potential, more completely realized is precisely what we need.
