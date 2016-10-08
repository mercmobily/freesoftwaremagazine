---
nid: '3758'
title: 'How to Purge Memory in Google''s Chromium browser'
authors: 'Gary Richmond'
published: '2012-05-15 1:29:27'
license: cc-by-sa
section: end_users
main_image: 256px-Chromium_Logo.jpg
listed: 'true'

---
Since its launch, Google's Chromium browser has proved to be immensely popular. Chromium introduced many new and innovative features but it also brought along with it a familiar problem. Memory hogging. However, as Google released subsequent versions they addressed it. This short article will show you how to gain some traction over Chromium when, after prolonged browsing, it starts to seriously hog that resource.

You don't need to be a web browser developer or a coder. All you need is Chromium's built-in Task Manager and a command line switch. 

<!--break-->

The Task Manager will display all the running processes inside the browser and, more importantly, how much memory they are using. After you launch Chromium, the Task Manager can be accessed from the wrench icon at the top right hand corner of the browser.

=IMG_CLEAR=Task_Manager_from_the_Tools_menu.jpg=Figure 1: Task_Manager_from_the_Tools_menu=

However, keyboard shortcuts are better. `SHIFT+ESC` will bring it up much faster.

=IMG_CLEAR=Task_Manager's_Running_processes.jpg=Figure 2: Task Manager's Running Processes=

There are five tabs running in this screenshot but no way of reducing the memory foorprint. The solution is to add a command line switch. How? Simple really: we need to add it Chromium's desktop launcher. If you don't already have one, just locate the browser in the appropriate menu and drag it onto the desktop. All you then have to do is to add that switch. Right click the desktop icon, select Properties, and then click on the Launcher tab.

=IMG_CLEAR=Add_the_switch_in_the_launcher_tab.jpg=Figure 3: Add the switch in the launcher tab=

Type in `--purge-memory-button` after `/usr/bin/chromium-browser %U` and you're done. Now, when you start Chromium from the desktop icon Task Manager has an added button.

=IMG_CLEAR=Now_Task_Manager_has_a_purge_button.jpg=Figure 4: Now Task Manager has a purge button=

Click the purge memory button and watch those stats drop. Result.

=IMG_CLEAR=Memory_be_gone_!.jpg=Figure 5: Memory be gone!=

That's all there is to it.
Final note: if you launch Chromium from the menu, you won't have the purge button in the Task Manager.