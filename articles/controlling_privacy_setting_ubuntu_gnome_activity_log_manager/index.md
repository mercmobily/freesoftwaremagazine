---
nid: '3794'
title: 'Controlling Privacy Setting in Ubuntu with Gnome Activity Log Manager'
authors: 'Gary Richmond'
published: '2012-08-19 6:35:27'
tags: 'ubuntu,gnome,privacy,zeitgeist'
license: cc-by-nc-sa
section: end_users
main_image: 3488350975_e76c5653f9_z.jpg
listed: 'true'

---
Whenever the The Electornic Frontier Foundation (EFF) commends Ubuntu for "retrofitting operating systems to support privacy against local attackers" as a worthy objective, I'm inclined to sit up and take notice. Since Ubuntu Precise Pangolin (12.04) these privacy setting have been integrated out of the box as a feature in the System Settings menu. It's called Activity Log Manager (previously Zeitgeist Global Privacy), a GUI frontend to partially control [Zeitgeist](http://zeitgeist-project.com/). It's what powers Ubuntu's Dash in the Unity desktop. Here's how to use it to control what the Gnome activity log is recording.

<!--break-->

When you open the System Settings menu (top right-hand corner of your screen) it will appear under System. (If not, search for it under "Activity and Privacy Tool Manager" and install it from the Ubuntu Software Centre--or just `apt-get install` it). Click on the Privacy icon and the application will start.

=IMG_CLEAR=Your_protection_starts_here.jpg=Figure 1: Your protection starts here=

You will be presented with three tabs. If you just want to prevent _all_ logging of your activities, just toggle it on/off with the Record Activity button. However, the core of this tool is the ability to be selective. You can "blacklist" activities and applications. Activity can be deleted according to a given period of time. Click on the drop-down arrow and choose from the available options and hit delete. Simple.

=IMG_CLEAR=Time_based_options_for_deleting_activities.jpg=Figure 2: Time based options for deleting activities=

Selecting `Advanced` gives the user the ability to specify a time between two dates.

=IMG_CLEAR=If_you_can_remember_what_you_were_doing,_choose_your_dates.jpg=Figure 3: If you can remember what you were doing, choose your dates=

The Files tab enables you to block activities by category and for good measure also allows you to stop the logging of, say, data in sensitive folders too.

=IMG_CLEAR=Block_logging_of_specific_activities_and_folders_too.jpg=Figure 4: Block logging of specific activities and folders too=  

Just click on the + button (bottom left) and add a folder. 

=IMG_CLEAR=Blacklisting_your_password_directory_is_a_safe_bet.jpg=Figure 5: Blacklisting your password directory is a safe bet=

Finally, blacklist applications. Same method as for activities. 

=IMG_CLEAR=Adding_specific_applications_one_by_one.jpg=Figure 6: Adding specific applications one by one=

That's it. It couldn't be easier. However, this tool has limitations. Many blacklisted applications will continue to log other stuff (such as Bash history, Pidgin and Empathy chats and websites visited in browsers like Chrome and Firefox) so you'll have to configure them separately if you want to really stop them snitching on you. And it's a Gnome tool only too.

The next step is to use APIs to let non-Gnome applications know what logging you've blocked, and to follow suit.




