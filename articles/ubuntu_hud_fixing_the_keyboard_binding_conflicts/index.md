---
nid: '3785'
title: 'Ubuntu''s HUD: fixing the keyboard binding conflicts'
authors: 'Gary Richmond'
published: '2012-07-03 3:22:23'
tags: 'ubuntu,hud,keyboard-shortcuts,unity'
license: other
section: end_users
main_image: 800px-HUD_view.jpg
listed: 'true'

---
Last week I finally took the leap and did an online upgrade from Ubuntu 11.10 to 12.04 (Precise Pangolin). To my relief it was a flawless operation and one of the things I wanted to experiment with the much hyped HUD feature which is being slated as a replacement/supplement to application menus. It's a Marmite feature. You either love it or loathe it but what caught my attention was the keybinding used to launch it and how this interacts with its "near neighbours".

<!--break-->

If your install/upgrade to Ubuntu 12.04 went well you should have HUD by default. The developers have set (left) `ALT` at the keybinding to launch it. `ALT` toggles HUD on and off. 

=IMG_CLEAR=HUD,_as_minimal_as_it_gets.jpg=Figure 1: HUD, as minimal as it gets=

However,  as many users have pointed out, this can overlap with certain games and with applications like Emacs and Virtualbox sessions to say nothing of potential overlap with well known keyboard bindings like `ALT+F2` (run command) and `ALT+TAB` (tab through running apps). Changing this in Ubuntu is really simple. You could do it from the Compiz settings Manager (if you have it installed) but it really is so much easier to do it from System Settings.


=IMG_CLEAR=Resetting_HUD's_keybinding.jpg=Figure 2: Resetting HUD's keybinding=


Select Keyboard from the Hardware section.


=IMG_CLEAR=The_most_direct_route_to_configuring_the_keyboard.jpg=Figure 3: The most direct route to configuring the keyboard=


Select the HUD entry and press another key (or key combination) and you're done.

=IMG_CLEAR=Select_HUD_and_choose_Anther_keybinding.jpg=Figure 4: Select HUDand choose Anther keybinding=

I chose right `CTRL` to launch HUD. Choose your own keyboard binding and keep `ALT` free from ovelapping other applications.


