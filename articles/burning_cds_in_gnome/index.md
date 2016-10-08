---
nid: '2020'
title: 'Burning CDs in GNOME'
authors: 'Robin Monks'
published: '2007-04-20 6:30:00'
tags: 'gnome,cds,burning,ripping'
issue: issue_17
license: cc-by-nc-nd
section: end_users
listed: 'true'

---
The GNOME desktop environment comes with a simple and single-minded CD burner application built into the Nautilus file manager (not dissimilar to what Microsoft bundles with Windows XP’s Windows Explorer and Vista’s Explorer) that can handle a lot of your file burning needs. But what do you do if you need more complex tasks done, like burning or ripping an ISO file, or creating an audio CD?

When Nautilus begins to feel cramped and underpowered, it’s time to begin looking at some excellent free software utilities to fill the gap. Each one has its own unique style, benefits and weaknesses. All of these can be installed by following the directions on the project’s website, or by using your distribution’s package installer. I’ve tested these programs on [Ubuntu](http://ubuntu.com/) 6.10 (Edgy) and with a $69 LG CD/DVD super-multi burner I picked up at the local office supply store.

A quick note on some common disk burning terms is in order. Firstly, “burning” a disk is adding files to a CD or DVD using a laser. “BurnProof”, “BurnFree” and similar technologies are designed to allow disk burning applications to recover if at some point the drive is burning data faster than the application can send it. “Ripping” is the process by which data (usually audio tracks) are copied from a disk to the hard drive. Finally an ISO is the standard file used to represent a CD image, it contains all the files and folders to be burned to the disk and usually has a `.iso` extension.


=ZOOM=When Nautilus begins to feel cramped and underpowered, it’s time to begin looking at some excellent free software utilities to fill the gap=


# GnomeBaker


=IMAGE=FSM - GnomeBaker.jpg=Screenshot of GnomeBaker’s project view=

[GnomeBaker](http://gnomebaker.sourceforge.net/v2/) (registered as a [SourceForge](http://sf.net) project since late 2004) takes the approach of integrating with the GNOME desktop as much as possible, even using the native GNOME folder bar. It also boasts a large array of features; it can blank CD-RW and DVD-/+RW media, copy CDs and DVDs, burn and create ISO files (including copying an existing disk to ISO) and create audio CDs.

GnomeBaker also allows disk burning “projects” to be saved and reopened later, perfect if you need to make a lot of CDs, a few at a time. It also had the most disk burning options of the utilities reviewed here; with speed, mode, file system, BurnFree, and meta data options.

However, this plethora of options can be confusing at times, and GnomeBaker provided limited to no help on the features it provided (such as BurnFree, a tool to protect against bad writes); probably leaving those without knowledge of what the options do to stare and ponder. These downfalls limit GnomeBaker to being more of an “experts” CD burner.

There are some features GnomeBaker lack, namely “ripping” audio CDs and DVD video to hard drive. Also, it isn’t possible to select whether a disk is to be closed after writing (not closing a disk allows you to burn files to a disk now and then add more files to the same disk again later, until the maximum limit of the disk is used—a useful recycling feature).


 | |
-|-|
Name | GnomeBaker | 
Maintainer(s) | Luke Biddell | 
License | GPL | 
Platforms | GNU/Linux | 
**MARKS (out of 10)** |  | 
Vitality | 8/10 | 
Stability | 9/10 | 
Usability | 5/10 | 
Features | 7/10 | 
Overall | 7/10 | 

=TABLE_CAPTION=GnomeBaker=


# Brasero


=IMAGE=Brasero-project.jpg=Brasero’s project window=

[Brasero](http://perso.orange.fr/bonfire/) (the project formerly known as Bonfire) takes a different approach, it focuses on simplicity and usability, and succeeds by having a more task-based interface than GnomeBaker, and simpler options. When you first open Brasero you are presented with four options: Audio Project, Data Project, Disk Copy and Burn an Image.


<!--pagebreak-->


Brasero also has the option to save the disk layout as a “project”, to be reused later. Like GnomeBaker, Brasero also had the option of burning a set of files to an ISO, and allowed disks to be copied to ISO. It also shares some of GnomeBaker’s weaknesses in that it cannot “rip” Audio or Video from disks. That said Brasero does give the option of leaving a disk open to add more files later, something GnomeBaker lacked.


=IMAGE=Brasero.jpg=Brasero’s task-based layout makes it easier to navigate=

Brasero keeps its advanced options in a separate “properties” window out of the way of users who don’t want to configure those options, or don’t know how. “Burnproof” (the equivalent to GnomeBaker’s “BurnFree”) is also available, and enabled by default.

Overall, Brasero is a much simpler disk burning solution, and has a nicer user experience over GnomeBaker. I would recommend this for those who don’t want to think much about their disk burner, and just want it to work.


 | |
-|-|
Name | Brasero | 
Maintainer(s) | Philippe Rouquier | 
License | GPL | 
Platforms | GNU/Linux | 
**MARKS (out of 10)** |  | 
Vitality | 9/10 | 
Stability | 10/10 | 
Usability | 9/10 | 
Features | 8/10 | 
Overall | 9/10 | 

=TABLE_CAPTION=Brasero=


# Serpentine


=IMAGE=Serpentine.jpg=Serpentine’s project window=

[Serpentine](http://s1x.homelinux.net/projects/serpentine/) is an Audio CD burner bundled with Ubuntu Edgy, and available separately for other GNOME desktops. It’s a work-alike for the audio CD functions of Brasero and GnomeBaker. It accepts many playlist formats as well, including those of Rhythmbox. You probably wouldn’t need Serpentine if you had one of the above disk burners, unless you needed to use one of these less-common playlists.

However, when used separately for audio CD mastering, Serpentine is great at its job; and it’s perfect for those who just want to burn audio CDs.


 | |
-|-|
Name | Serpentine | 
Maintainer(s) | Tiago Cogumbreiro | 
License | GPL | 
Platforms | GNU/Linux | 
**MARKS (out of 10)** |  | 
Vitality | 10/10 | 
Stability | 10/10 | 
Usability | 9/10 | 
Features | 8/10 | 
Overall | 9/10 | 

=TABLE_CAPTION=Serpentine=


<!--pagebreak-->



# Sound Juicer


=IMAGE=Sound Juicer.jpg=Sound Juicer’s project window=

[Sound Juicer](http://burtonini.com/blog/computers/sound-juicer) is an Audio CD “ripper”/“juicer” also bundled with Ubuntu, and available as an RPM for other GNU/Linux distros. It’s the only application reviewed here that can “rip” music from a CD, useful for making smaller audio files from a CD for use on a portable music player. It supports ripping into OGG, FLAC and WAV natively.

Sound Juicer requires some custom configuration to rip to MP3, the legality of which is somewhat questionable. There are two good how-tos I’ve found for enabling MP3 support [here](http://www.emcken.dk/weblog/archives/99-MP3-encoding-with-Sound-Juicer.html) and [here](http://www.emcken.dk/weblog/exit.php?url_id=485&entry_id=99). Because MP3 is a patented technology, many free software programs opt for free standards, like OGG and WAV, but if your portable player only supports MP3 you’ll need to utilize one of these solutions.


 | |
-|-|
Name | Sound Juicer | 
Maintainer(s) | Ross Burton | 
License | GPL | 
Platforms | GNU/Linux | 
**MARKS (out of 10)** |  | 
Vitality | 9/10 | 
Stability | 10/10 | 
Usability | 8/10 | 
Features | 8/10 | 
Overall | 8.5/10 | 

=TABLE_CAPTION=Sound Juicer=


# Conclusion

Overall, there are a lot of great programs that can make your disk burning life with GNOME a lot easier. I encourage you to try out some of these programs, and find what you like. I focused only on the GNOME desktop, but all of these tools can be installed on KDE too as long as GTK is available. Likewise, you can easily use [KDE](http://kde.org/)’s [K3B CD Kreator](http://www.k3b.org/) on GNOME (but you’d need to install all of the KDE libraries to do so).

Hopefully, you’ll find this information to be helpful the next time you take a journey through the disk burning jungle. Until next time.

