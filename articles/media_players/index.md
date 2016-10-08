---
nid: '2378'
title: 'Free software media players'
authors: 'Robin Monks'
published: '2007-08-20 1:29:28'
tags: 'ubuntu,media-players,mplayer,vlc,totem'
issue: issue_19
license: cc-by-nc-sa
section: end_users
listed: 'true'

---
Last year, while running Ubuntu, I decided I wanted to watch a video, so I opened it up in the built-in Totem player. What happened next took me back to the dark era of codecs and computing. The XviD video I was watching became pixelated, the video became out of sync; within a few minutes it was unwatchable. I dual booted back into Windows XP, opened up by trusty [MPUI](http://mpui.sourceforge.net/) and watched the video with the free software XviD codecs without any issues. The experience had left a bad taste in my mouth.


=ZOOM=What happened next took me back to the dark era of codecs and computing... The experience had left a bad taste in my mouth=

Last month Tony put out a call for articles, and I suggested media players would be a good area to cover, and he jumped on it. This brings me to here; sitting in front of my word processor in Windows, with Ubuntu running in VirtualBox, and a list of free software media players ready to go! I wanted to choose a broad range of players, so I checked around looking for what other’s had felt were the best free software players. And the contestant’s are...


# Totem


=IMAGE=totem1_t720.jpg=Figures 1: Screenshot of Totem=

The [Totem](http://www.GNOME.org/projects/totem/) video player that ships with GNOME has advanced a lot in version 7.04 of the Ubuntu OS. It will now search for codecs (both free software and restricted, including FFmpeg) for formats it can’t natively play. This feature alone would have fixed my issues from my last Totem experience!


=ZOOM=Totem will now search for codecs (both free software and restricted, including FFmpeg) for formats it can’t natively play=

Playing a video file with Totem (at least if you’re using a GNOME distro which has Totem configured or have installed and configured Totem manually on your distro) is as easy as double-clicking a video file assigned to Totem. Totem also has an easy to use “Play Disk” option under the file menu that lets you play Audio CDs, VCDs, DVDs and—here’s the part I like—data disks with files on them that Totem understands or can find codecs for. Totem was the only player in the round-up with a disk play feature this easy to use.

The bad news is that , although I found it very good for the audio and video I tested, Totem has a GUI that I didn’t find to be very user friendly. Hiding the sidebar helped somewhat, but it still feels like it has the controls of an audio player, and the display area of a video player—but without letting me hide just what I don’t need. A control to hide the video-play and controls would help to alleviate this feeling of rigidness a lot.

All in all, I like Totem the best out of all the players reviewed here, and I can’t help but think the GNOME guys are working hard to keep Totem ahead of the pack. If you’re running a GNOME distro that doesn’t have Totem installed, or you just haven’t tried Totem yet, I urge you to give it a go!


 | |
-|-|
Name | Totem | 
Maintainer(s) | [GNOME](http://www.GNOME.org) | 
License | GPL | 
Platforms | GNU/Linux, Solaris, BSD | 
**MARKS (out of 10)** |  | 
Installation | 10 | 
Vitality | 10 | 
Stability | 10 | 
Usability | 7 | 
Features | 9 | 
Overall | 9 | 

=TABLE_CAPTION=Totem=


# VLC


=IMAGE=untitleduv3.jpg=Figures 2: Screenshot of the VLC media player=

[VLC](http://www.videolan.org/vlc/) is probably one of the more well known players for GNU/Linux. It uses FFmpeg natively (unlike Totem, which will need to download a custom version of the library the first time it requires it). FFmpeg is a free software library for reading MPEG4, AVI, WMV and FLV videos (among others).

Installation on my Ubuntu was as easy as entering “VLC” into the package manager. Depending on your distro you’ll need to get and install VLC differently. Overall, installation and setup was pretty painless.

I did, however, find VLC’s video to look “washed-out” compared to Totem, and finer details didn’t pick up as well. I liked VLC’s controls more then Totem’s, the smaller size didn’t seem to get in the way; although, I found its menus a bit less user-friendly than those of Totem. I really wish it were possible to hide all window components except the video, and the seek bar like you can with [Media Player Classic](http://sf.net/projects/guliverkli/) (also free software under the GPL) on Windows.


=ZOOM=I found VLC’s video to look “washed-out” compared to Totem, and finer details didn’t pick up as well=

Overall, I found VLC more advanced than Totem, but still had a more user-friendly face than MPlayer.


=IMAGE=b.jpg=Figures 3: Quality difference between VLC and Totem, VLC at left=


 | |
-|-|
Name | VLC | 
Maintainer(s) | [VideoLAN](http://www.videolan.org/) | 
License | GPL | 
Platforms | Windows, Mac OS X, GNU/Linux, BeOS, BSD | 
**MARKS (out of 10)** |  | 
Installation | 10 | 
Vitality | 10 | 
Stability | 9 | 
Usability | 4 | 
Features | 7 | 
Overall | 7.5 | 

=TABLE_CAPTION=VLC=


# MPlayer


=IMAGE=mplayer.jpg=Figures 4: Screenshot of MPlayer=

[MPlayer](http://www.mplayerhq.hu/) was next on my list; once again, installation was painless as the Ubuntu package repositories already contained the MPlayer project.

MPlayer was by far the hardest of the programs I’ve tried to configure in quite some time. The website touts a “wide range of supported output drivers” as a main feature, but I found this to be the source of its weakness. It took a lot of trial and error to get the preferences set up correctly. After the correct video driver was set up, it produced an image quality with no noticeable difference from Totem, but it couldn’t maintain a good frame-rate.

To be fair, this is running on a virtual machine emulating a PIII class CPU, and with 512MB of RAM; so it might be able to produce a better frame rate on a better box.

I should insert a quick sidenote here and let you know that MPlayer and VLC are both available for Windows as well, so if you’re looking for a free software player for your Windows computer make sure and give them a try.


 | |
-|-|
Name | MPlayer | 
Maintainer(s) | MPlayer Project | 
License | GPL | 
Platforms | GNU/Linux, Windows, Mac OS X, | 
**MARKS (out of 10)** |  | 
Installation | 10 | 
Vitality | 9 | 
Stability | 7 | 
Usability | 4 | 
Features | 7 | 
Overall | 7 | 

=TABLE_CAPTION=MPlayer=


# Conclusion

I had also tried out Democracy player (now [Miro](http://www.getmiro.com/) ), but it wouldn’t work in my Virtual Machine, so I was unable to review it here to my dismay.

Overall, there are some good choices to pick from when you’re looking for a good free software media player for your GNU/Linux box. And, these aren’t even counting the distributions dedicated just to being a home media center! If your interesting in picking up one of those look no further than [LinuxMCE](http://www.linuxmce.com/), [MythTV](http://www.mythtv.org/) and [Mythbuntu!](http://www.mythbuntu.org/)

What are you waiting for? Go watch some videos! See you next time.

