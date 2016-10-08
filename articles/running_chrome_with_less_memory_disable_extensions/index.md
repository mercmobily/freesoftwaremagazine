---
nid: '3763'
title: 'Running Chrome with less memory: disable extensions'
authors: 'Gary Richmond'
published: '2012-06-11 1:48:35'
tags: 'chromium,extensions.addons,memory-management'
license: cc-by-sa
section: end_users
main_image: 4785088364_938a7d0777_m_1.jpg
listed: 'true'

---
In [my last article on Chromium](http://www.freesoftwaremagazine.com/articles/how_purge_memory_googles_chromium_browser) I explained how to add a command switch to the desktop icon's launcher tab to add a Purge Memory button to the task Manager.  Browsers need memory, like memory and in fact love it. They don't give it up without a fight. I'm not belligerent by nature but it's my memory, I paid for it and I want it back. So, here's another trick in a similar vein to force Chromium to relinquish some more.

<!--break--> 

Now, it's unlikely you're using Chromium without having accumulated a shedload of extensions. Prudent housekeping dictates that you will have purged those installed on a whim and subsequently languishing, unused and unloved. Disable, or better still, remove them. The ones left behind are the ones we want to control. As before, right click on Chromium's desktop icon, select the Launcher tab add the `--disable-extensions` switch and close.


=IMG_CLEAR=The_magic_of_command_line_switches.jpg=Figure 1:The magic of command line switches=


Now, when you start Chromium, click on the wrench (top right), select Tools from the drop-down menu and you'll see that the Extension menu entry has been disabled. 


=IMG_CLEAR=The_Extensions_menu_entry_is_now_greyed_out.jpg=Figure 2: The Extensions menu entry is now greyed out=


Open a new tab and type `chrome:extensions` in the location bar and you can confirm that there are none, or rather they have been disabled in this profile.


=IMG_CLEAR=Now_Chromium_thinks_you_have_no_extensions.jpg=Figure 3: Now Chromium thinks you have no extensions= 


Well. The proof of the pudding is in the eating, so let's do a "before and after" shot of memory consumption with Task Manager.

=IMG_CLEAR=Before_and_after.jpg=Figure 4: Before and after=


Finally, you now have the option to run two Chromium profiles: one with extensions disabled (desktop icon) and one with extensions (main menu). Just not at the same time. Oh, and with extensions disabled Chromium will start much faster too. 

 

