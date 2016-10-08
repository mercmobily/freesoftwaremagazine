---
nid: '2560'
title: 'How to fix broken Firefox extensions'
authors: 'Gary Richmond'
published: '2007-11-01 1:26:32'
tags: 'firefox,extensions,xul,guid'
license: verbatim_only
section: end_users
listed: 'true'

---
There are few certainties in life. Death, taxes and Microsoft FUD are three of them—and the fact that, sooner or later, upgrading Firefox is going to break one or more of your killer extensions.

Internet Explorer can only dream of the wonderful extensibility of Firefox but with an ever bloating feature set and the pace of browser upgrades comes complexity. Firefox is a moving target. Unlike the glacially slow upgrade path of Windows, Firefox is the very paradigm of open source/free software development. It has gone through more upgrades than Steve Ballmer has launched patent lawsuits, and because it is free software, professionals and keen amateurs can tinker with it to destruction—and frequently do.

Extensions are just XPI files: standard zip files containing an install script or manifest at the root of the file and some data files. They are perhaps the best feature of Firefox but herein lies the Achilles Heel of the wunderkind of browsers. Many extensions are maintained by private individuals on their own websites and may get out of sync with later releases of Firefox (this is true even on the official Mozilla Addons website!). Fortunately Firefox (and indeed the whole Mozilla suite—Thunderbird and Sunbird) is free, W3C compliant and based on a cross platform, extensible interface called [XUL](http://en.wikipedia.org/wiki/Xul) (pronounced _zool_). Once you know that and can use various web programming tools, you have the keys to the kingdom and that knowledge and keys provide you with the confidence and skills to keep your extensions working with Firefox.

Firefox without extensions is like Laurel without Hardy, Bush without Blair (sorry, little bit of politics there) so it will seem a little anorexic to run it without them and, even worse, to upgrade for the latest features and discover that one or more extensions has now been disabled. This article will look at various ways to retrieve the situation by hacking the Firefox profile manually, editing the Firefox preferences, installing an extension specifically to do it the easy way and troubleshooting extensions problems generally.

**NOTE: You will be dealing with Firefox install files and profiles; so, prepare for potential disaster and backup your profiles, extensions and any other valuable data!**


# Firefox Preferences

On of the best things you can do is to ensure that Firefox extension upgrades do not happen automatically. To ensure that this cannot happen and give yourself some breathing space open Firefox and select _Edit→Preferences_, go to the _Security_ tab and check _Warn me when sites try to install add-ons_:


=IMAGE=Make_sure_the_addon_warning_box_is_checked.jpg=Make sure the addon warning box is checked=

In the _Advanced_ tab it is perfectly safe, indeed sensible, to leave the _Automatically check for updates to installed add-ons_ checked, but do not automatically accept a prompt to upgrade Firefox unless you are confident that it will not break any of your extensions. Decline the offer until such times as you have checked out issues of compatibility first:


=IMAGE=Automatically_check_for_updates_to_installed_add-0ns.jpg=Automatically_check_for_updates_to_installed_add-ons=


# Fixing extensions the quick and easy way

When I was a student, I recognized that most of my contemporaries resembled electric currents. They took the course of least academic resistance in order to get from A to B. If Firefox had been around then, they would have adopted the same strategy and you should too. Why hack XUL files when you can click your way out of trouble? In short, if the hoary chestnut of extension incompatibility rears its ugly head, why not use an extension to sort it. (That's a mixed metaphor isn't it? Sorry, I have an incurable predeliction for bad puns and mixed metaphors.) How clever, how Firefox!


# And so to bed: nightly test tools

Extension developers do their best to keep up with Firefox compatibility but it is unreasonable to expect them to keep their finger on the pulse at every moment. An extension called [Nightly Tester Tools](http://forum.addonsmirror.net/index.php?showtopic=3436) will help  you breath life back into that swathe of disabled extensions on zimmer frames. You can get it. It is, as the name suggests, it is a test tool extensions designed for programmers and testers of nightly Firefox builds, but it contains an option to make all disabled extensions compatible. Once you have installed it and restarted the browser, select the _Tools→Add-ons_ and view your extensions. You can now right-click each one and click on _make compatible_. Doing it all in one pass and then restarting Firefox should enable them all. However, if this seriously borks your browser, you will not know which one(s) did the dirty deed; so, it might be a good idea enable each extension one at a time: that way you will be able to identify the miscreant(s). Even then, although everything may appear mimsy in the borogroves, it may need a few days testing the newly-enabled extensions to ensure they are working fully as they should be. If they are playing up, go back to _Add-ons_ and either disable or uninstall it/them.


# Catch 22: Nightly tester tools isn't compatible!

Now, those of you who have not actually fallen into a coma this far will have noticed the potential banana skin. You wanted to install _Nightly Tester Tools_ to re-enable those killer extensions you just can't do without and, bang, the tested itself isn't compatible! Well, it had to happen. Sooner or later you have to let go of mummy's aprons strings and venture out into the big bad world on your own. In short, it's time to get down and dirty with raw, naked text.

One of the easiest manual hacks you can do falls into that well-known category, a "no brainer". With Firefox open, type the following into the URL location bar: `about:config`. These configurations are legion, arranged in alphabetical order and for that reason it was jolly decent of those nice developers at Mozilla to provide end users with a filter too, to make preferences easier to find:


=IMAGE=About_config_with_filter_set_to_extension.jpg=About:config with filter set to extension=

This is essentially an XUL page inside the normal HTML display of Firefox.(If you want to know what this thicket of configurations does you can get a list of documented preferences in friendly HTML format at [Mozdev](http://preferential.mozdev.org/preferences.html).) The configuration you are looking for is searched for by typing `app` into the filter field. Scroll down to the Preference Name `extensions.lastAppVersion` and you will see your version of Firefox (and of course you can confirm it by simply going to the _Help_ drop-down menu and selecting _About Mozilla Firefox_). Now, before you install any potentially problematic extension, highlight the entry, right click it and you will see the following options:


=IMAGE=A_dialogue_box_prompted_by_modifying_the_string_value.jpg=A dialogue box prompted by modifying the string value=

From the available options choose _Modify_ and a dialogue box will pop up, prompting you to input an amended value which will be higher version number of Firefox which will allow your extension to work. Once you have then installed the problem extension in question, you should reset the value in `about:config` to the original value of the installed version of Firefox. The good news is that doing this will not have any effect on those changes you've just made, as Firefox will only check this change once and not every time you restart it. The bad news is that this will not revive disabled extensions already installed. That problem can be addressed by more direct manual hacking, as you will see below.

One more hack before we say goodbye to `about:config`: you can also force Firefox to ignore extension compatibility checking. This time. instead of modifying an existing setting you can create one from scratch. In the `about:config` screen right click anywhere and from the options select _New_ and then _Boolean_; you will be prompted for a Preference Name. Type `extensions.checkCompatibility` and set it to `false`, close Firefox and then restart it. This should result in most of the problem extensions working, although there may be problems with really old ones, including erratic or unpredictable behaviour, If that is the case, you may want either to disable them or unistall them altogether, or remove that configuration setting.

Incidentally, if the raw appearance of Firefox's `about:config` is a bit too full on for you, there is always... yes, you've guessed it, an extension to take the pain and the strain. It's called [Preferential](http://preferential.mozdev.org/installation.htm) (again from Mozdev). This will render the configuration options a little more intuitive (like Opera's `about:config` which, Mozilla developers, please take note, comes as a Preferential-style default, not an add-on).


# Max version: a hardcore hack

A final way to get a reluctant extension to play ball is perhaps the most interesting one. It is not the easiest method but if you want the bonus of learning about how Firefox organizes itself, it really is worth the effort.

To effect this hack you will have to first enable viewing hidden files (that is, those file starting with a period). To do this in KDE, open Konqueror, select the _View→Show Hidden Files_. Previously hidden files will now be revealed, characterized by that period and a slightly faded appearance—but these files are very much active, as we shall see. To enable them in Gnome, fire up the Nautilis file manager and do the same as for Konqueror.

Once you have enabled this feature, you are now in a position to navigate to the relevant configuration files for Firefox. Scroll down the hidden directories until you come to the Mozilla folder. Open it and you will see a folder for Firefox. Open it: you will see a number of further folders, depending on how many profiles you have created. In my case the bulk of the installed extensions are in the _default_ profile. Opening that will reveal another nest of folders and files, one of which is _extensions_. That is the one you need. Open it and you will see folders corresponding to all the actual extensions. In my case fifty four to be exact! Sad. Time for a spring clean:


=IMAGE=A_selection_of_Firefox_extensions_viewed_in_Konqueror_with_their_GUIDs.jpg=A selection of Firefox extensions viewed in Konqueror with their GUIDs=

By now you will have noticed that the extension names do not exactly trip off the tongue: `{a7c6cf7f-112c-4500-a7ea-39801a327e5f}`, to take an example at random. A few words of explanation are in order here. All Extensions have a unique thirty-two alphanumeric character identifier (a 128 bit number) which the author will have obtained when creating the extension. It is called it's GUID (Globally Unique Identifier) If you only have six extensions installed and only two are broken, finding them, even with the cryptic GUID, will not be too painful—but fifty four? `About:config` can be of some assistance here. In the filter bar for it, if I type `extensions` and scroll down to the bottom the GUID is displayed on the left and on the far right you will see a meaningful description:


=IMAGE=about_config_identifies_some_extensions.jpg=about:config identifies some extensions=

By my count that's only thirteen extensions. What happened to the rest? I don't actually know! Despite researching the matter I have not come up with an explanation: if anyone can suggest why I would love to know. The good news is that from Firefox 1.5 it is recommended to use a string in the form of _extension-name@creator-domain_. This can be in an e-mail format without actually being a valid one (and in fact I have a few like that; the majority are not) but this does not solve the problem you can see above. The solution, appropriately, is an extension: [Mr Tech's Local Install](https://addons.mozilla.org/en-US/firefox/addon/421). Once installed, you can open the extension preferences, navigate to the _My Config_ tab and check, under the _Exports_ tab, the GUID box and in the _Descriptions_ tab check the _Extensions_ box. Apply the changes and Ok your way out. Now, when you open the Add-on menu option from the _Tools_ drop-down menu and hover your mouse over the _Options_ icon, it will reveal the tooltip _My Config_. Click on it and Mr Tech's Local Install will open: at last you have a readable extension name corresponding to it's GUID (and as a nice bonus, if you click on the hypertext link a tab will open in Firefox in the extensions' homepage):


=IMAGE=MR_Tech's_local_install_matches_extension_names_to_GUIDs_Result!.jpg=MR_Tech's_local_install_matches_extension_names_to_GUIDs_Result!=

Well, it's been a long way round the houses but we finally got there. Now you are in a position to easily identify the offending extension by cross-referencing its name against the GUID and armed with that it becomes much easier to find it in the extensions directory in _.Mozilla_. Once located, click on it and you will see that it contains more folders and files. The one we are interested in is _install.rdf_ and it looks like this:


=IMAGE=The_line_containing_the_max_version_number_is_the_one_to_edit.jpg=The line containing the max version number is the one to edit=

This extension (chosen at random) is _Oboe_, a sidebar for loading MP3 files from the MP3tunes locker. The line you would need to edit is `em:maxVersion="2.0.0.*"`. If this extension version were incompatible with higher versions of Firefox, it would not have installed and it would be necessary to change that extension number to a higher one. In this instance, Oboe will work with all Firefox versions up to 2.0.0. The asterisk at the end is a wild card, there so that small, incremental upgrades, e.g., 2.0.0.3, will work too. If you want it to work with version 3.0.0 just amend that line, save the change and close your editor. (Note: As this file is in your local folder you will not need root privileges to edit it.) You also need to delete the extensions cache too, in order for Firefox to pick up and read from the changes made to the _install.rdf_. (Don't worry. Once you have restarted the browser it will reappear, updated, where you deleted it. It's in the _default_ folder under the Firefox folder in the hidden Mozilla directory.) Finally, go back to _Add-ons_, enable the extension in question, close Firefox and restart it and you should have a working extension.


# Help! I've trashed Firefox

Depending on how you to decided to fix a disabled extension, you may find that even if all appears to go well, restarting Firefox fails, or opens but certain features fail or malfunction in some way. The first thing to do if Firefox fails silently is to open a console and type `Firefox` to see if any error messages come up, and copy and paste it/them into Google to find a solution. Better still, if the error message is extension related then before you start editing files create Firefox Profile(s) so that you can experiment: if it goes belly up you can try to fix it or just delete that particular profile.

The easiest way to set up a profile is to right click on Firefox's Desktop icon, select _Properties_ and in the _Application_ append the following text after the Firefox name in the _Command_ box: either `-p` or `-profile manager`. Give the profile a suitable name that reflects the fact you are using Firefox for tweaking configuration files. The next time you start Firefox, it will ask you to choose you profile: from here you can create, amend or delete to your heart's content.

If you are still having problems, your best bet is to start Firefox in what is called _Safe Mode_. To do this you will need to fire up a console and type `firefox -safe-mode`. Firefox should now start but all extensions will now be disabled, including any offending ones which caused the problem in the first place. It is simply a matter of disabling/removing the relevant extensions, closing Firefox and restarting it in the normal manner. You can find out more about [using Safe Mode](http://kb.mozillazine.org/Safe_mode) from Mozillazine.

If you prefer, you can install Firefox from the [Klik website](http://firefox.klik.atekon.de/) and use that as the browser template to experiment with extensions. If you hose it completely you can simply delete the klik app. and download it again. It is a stand-alone application. The Klik website contains [easy instructions](http://klik.atekon.de/) to enable the Klik client in Konqueror.


# Conclusion

As the co-creator of Firefox, Blake Ross, has said, if software is an art then he must be the only artist in the world advocating defacing his own work—and Firefox attracts the most dedicated, constructive defacers in the free software community. You can—and should!—join them in creative hacking to make Firefox _your_ Firefox, extensions and all, a browser that works the way you want it and does what it is told. Hell, it's not Internet Explorer!

