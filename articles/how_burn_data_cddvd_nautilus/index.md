---
nid: '3766'
title: ' Burning a Data CD/DVD with Nautilus'
authors: 'Gary Richmond'
published: '2012-05-28 5:23:23'
license: gpl
section: end_users
main_image: 120px-Nautilus-cd-burner.jpg
listed: 'true'

---
Despite the rise of USB sticks for data storage and booting GNU/Linux distros, there's still a place for the humble writeable CD and DVD. Most readers, including me, probably fire up a big hitter like K3B (KDE) or Brasero (GNOME). For me K3B is up there with GIMP, LibreOffice and VLC. It's best in class. However, for simple, quick backup Nautilus gets the job done. Let's use it to burn a multi-session data CD.

<!--break-->

Nautilus is the default file manager for Gnome but it will run happily under any other desktop. Mine is running under XFCE. If you haven't got it, install it via your distro repository. When you start Nautilus the default screen should look like this.

=IMG_CLEAR=Nautilus:_the_default_view.jpg=Figure 1: Nautilus: the default view=

To enable the clever part, select Location from the Go drop-down menu and type `burn:///`and  hit Enter.

=IMG_CLEAR=Look's_like_a_Kio_slave.jpg=Figure 2: Look's like a Kio slave=

Now, split the screen (View > Extra Pane), resize if necessary to view, higlight it to make active, navigate to the directory to back up and drag and drop the files to the other screen. Click on the left-hand pane to make it active again, give it a name and, finally, ignite the burn by selecting `Write to Disc`

=IMG_CLEAR=Split_drag_and_drop.jpg=Figure 3: Split drag and drop=

You'll get a prompt about Windows file naming compatibilities. Choose, and if you want to don't insert a disc and Nautilus will automatically burn an image file which you can burn to disc later (handy if you're on a netbook without an optical drive). If you've inserted a disc it will be detected and you can now select burn parameters.

=IMG_CLEAR=Blank_disc_detected.jpg=Figure 4: Blank disc detected=

Finally, select `Properties` to set those parameters.

=IMG_CLEAR=Select_the_desired_check_boxes.jpg=Figure 5: Select the desired check boxes=

Hit close and then select `burn` and view the process.

=IMG_CLEAR=Burn_baby_burn.jpg=Figure 6: Burn baby burn=

That's it. Nautilus, a Kio-like slave and a Brasero back end. One CD backup.