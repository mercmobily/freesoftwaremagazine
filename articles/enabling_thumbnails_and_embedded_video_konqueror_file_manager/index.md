---
nid: '3799'
title: 'Enabling Thumbnails and Embedded Video in the Konqueror File Manager'
authors: 'Gary Richmond'
published: '2012-08-31 7:13:42'
tags: 'konqueror,kde,filemanager,video,thumbnails,mplayer,kmplayer'
license: cc-by-nc-sa
section: end_users
main_image: 5724685279_1c21078f9f.jpg
listed: 'true'

---
Spare a thought for old time stalwarts like Konqueror. Many great features have been stripped out but it's still a a great file manager (and a decent browser) even if Dolphin has been promoted as the default file manager of the KDE desktop. Back in the day, Konqueror was able to handle lots of media without having to open a separate application. I want some of that functionality back for those times when I just want to view it quick and fast without all the bells and whistles--and the good news is that it's not difficult to do.

<!--break-->

# Video thumbnails

The first thing I need to do is to get video thumbnails back in Konqueror (like Nautilus). All you need to do is install `mplayerthumbs` from your distro's repositories via the package manager (or `apt-get install mplayerthumb` or `yum install mplayerthumbs`--as root, of course). Now, when you re-visit Konqueror's and Dolphin's Settings you'll see an entry under the Previews tab called `Video Files (MplayerThumbs)`.
 
=IMG_CLEAR=Check_that_box_to enable_your_thumbnails.jpg=Figure 1: Check that box to enable your thumbnails=

Check it and apply your way out and now Konqueror will show video thumbnails. You might need a restart for Konqueror for this to take effect. Oh, and make sure Mplayer is installed! OK, we've got thumbails. What about some actual celluloid?

# Embedded video

Do you want to view those videos directly in Konqueror? Me too. How? Back to Settings, then File Associations > Video and select each file format in turn and in the Embedded tab check the `show file in embedded viewer`. 

=IMG_CLEAR=Embedding_video_will_use_KMPlayer_as_a_backend.jpg=Figure 2: Embedding video will use KMPlayer as a backend=

Now, any video will play inside Konqueror (but not in Dolphin). And that includes viewing video directly from a CD or DVD. Better still, split the screen and copy the CD or DVD to your chosen directory using drag and drop. Playback is _instantaneous_. Blazingly fast. This all works because Konqueror uses KMPlayer as a plugin using Phonon (so make sure it's installed too).

Finally, no video player worth the name is without full screen mode functionality. To get it in Konqueror when a video is playing just click on the little down arrow of the controls (the same as in KMPlayer) and a number of options will pop up. Click on Full Screen to enable and hit the `F` key to escape. (This will also works even if Konqueror is running in tabs.)

Konqueror. You just can't kill a good thing.