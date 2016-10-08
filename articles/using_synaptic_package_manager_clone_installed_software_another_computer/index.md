---
nid: '3787'
title: 'Using the Synaptic Package Manager to Clone Installed Software to Another Computer'
authors: 'Gary Richmond'
published: '2012-07-11 9:37:37'
tags: 'synaptic,backups,repositories,ppa'
license: gpl
section: end_users
main_image: Synaptic_bw.png
listed: 'true'

---
The GNU/Linux ecosystem is blessed with many tools to clone a hard drive image which can be used to reinstall your Debian-based distro in an emergency or duplicate on another machine, but sometimes you might want to do a clean install of Ubuntu on another machine and then add in the extra software you  installed in the original distro. For that you need a combination of Synaptic, the GUI frontend for `apt-get` and a little command line magic.

<!--break-->

Synaptic has been dropped as a default install since Ubuntu 11.10. The Ubuntu Software Centre is now the GUI front end of choice for package management. However, Synaptic _is_ still avaialable to install from the repositories; so, once you have got a basic install done on another machine, search for it in the Software Centre or fire up a terminal and do `sudo apt-get install synaptic`. Now, you'll be ready to transfer in the software from your other computer. 

Once Synaptic is running, select `Save Markings` from the drop-down File menu. You will be prompted for a location. Obviously, save to a USB stick (and make sure too that you check the box marked `Save full state, not only changes` otherwise you may create an empty file!).

=IMG_CLEAR=Synaptic_does_the_heavy_lifting.jpg=Figure 1: Synaptic does the heavy lifting=

It's very fast and you can view the results in any editor.

=IMG_CLEAR=A_list_of_installed_software_viewed_in_Kate.jpg=Figure 2: A list of installed software viewed in Kate=

Installing all that software is simply a matter of opening Synaptic in the other machine(s) and this time selecting `Read markings` from the File drop-down menu and selecting that backup and leave Synaptic to do its work. Of course, some of the packages may have been installed via a PPA and that means you'd be well advised to also backup your sources files, which contains a list of all enabled repositories including the PPAs. Synaptic does not have a facility for doing this, so just copy it (as root) with this simple command: 

`cp /etc/apt/sources.list.d ~/sources.list.d.backup`

and drop the file onto a USB stick and copy it to the same location on the other machine(s). Run Synaptic again and hit the Reload button and the repositories will be read in. that's it!