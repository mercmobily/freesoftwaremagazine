---
nid: '3300'
title: 'Can''t Program, won''t Program? Then Mash the Web with Mozilla''s Ubiquity'
authors: 'Gary Richmond'
published: '2010-04-29 10:37:16'
tags: 'firefox,mozilla,mashup,persistence,ubiquity,taskfox'
license: verbatim_only
section: hacking
listed: 'true'

---
Like any other aspect of life the internet is awash with hype. And snake oil salesmen. It's lure exceed the benefits those spam e-mails promise that inundate your inbox with offers of little blue pills to reach those parts of your anatomy other chemicals just can't reach. However, sometimes the hype is not just, well, hype. 

Mozilla's Firefox browser has been downloaded more that one billion times and its success is reflected in the millions of downloads of one of its killer features: addons (or extensions, as we geriatrics called them). The Browser operates under a [tri licence](http://en.wikipedia.org/wiki/Tri-license) and the addons for it are overwhelmingly free and open too. They empower the user and extend the browser. They help to put the user in control. Ubiquity does this in a way that makes web mashups creative fun and allows you to command the web, not just surf it, without any need to be a programming master of the universe.

<!--break-->

# It's alive and it escaped


=ZOOM=Ubiquity is trying to move to the point where entirely natural language can be used to interact with the internet=

It started off in a Petri dish in [Mozilla Labs](http://labs.mozilla.com/) before it escaped into the wild as a [fully fledged addon](https://addons.mozilla.org/en-US/firefox/addon/9527). The addon has been described, variously, as the social command line for the browser, a Web 3.0 mashup, verbing the internet and many more superlatives. Mozilla itself describes Ubiquity as _a unique pseudo-natural-language input method_ and with numerous iterations Ubiquity is trying to move to the point where entirely natural language can be used to interact with the internet--obviating the need for specialist programming skills. Ubiquity "hides" the relative complexities of Javascript and HTML-based API. 

Since it's launch the free software community has piled in to add to Ubiquity's eighty plus built in commands. They run to thousands. You can subscribe to them, hack them, create them and share them with other users. Nothing proprietary in sight. That kind of freedom encourages experimenting and growth. For example, Ubiquity comes with a Twitter command installed. Like my [FSM colleague Ryan Cartwright](http://www.freesoftwaremagazine.com/columns/identica_how_free_software_can_drive_social_networking_revolution) I also like to use [Identi.ca](http://identi.ca/). It's free and open. So, it was only a matter of time before users hacked the Twitter command and then wrote a separate one too. (Ubiquity is a useful tool for anyone who can't program but that doesn't mean you _can't_ program with it. Like Raindrop it fits all sizes--end users and developers alike. And like raindrop it uses Bespin, both for writing new commands as well as hacking existing ones.) That's the power of non-proprietary software. Have I whetted your appetite, excited your curiosity? Yes? Then let's discover what it is, how it works and what you can do with it.

# What, how and why

Like Chief Dan George in _The Outlaw Josey Wales_ I'm always looking to get an edge before the white eyes of proprietary software sneak up on me. Ubiquity gives me that edge, with no cost and no catches. The edge I'm always searching for of course, is the ability to get things done as quickly as possible and in as few moves as possible--and with software that is free of all proprietary blobs.

The best way to explain this is to install the addon (see above) and restart the browser--of course. You'll know you are in slightly different territory when you access Ubiquity's Preferences and instead of the usual interface you see a new browser tab:

=IMAGE=The_About_Ubiquity_tab.jpg=Figure 1: The About Ubiquity tab=

It has improved considerably since it got past the Mozilla Labs security guards. The first, best and most important thing you should do is to to take the interactive tour by clicking on the embedded link. This will give you a feel for the addon and what it is and how it does things. 

when you've finished that, Settings should be your next port of call. By default Ubiquity launches with the `alt` and `space` key combination but this does not work on my machine running Ubuntu 9.10. Clicking in the Key Combination box and selecting a new combo allows me to start Ubiquity with `ALT` and `U`:

=IMAGE=Set_up_Ubiquity_the_way_you_want_it.jpg=Figure 2: Set up Ubiquity the way you want it=

Later versions can be toggled on and off with a button selected from customise toolbar option in the View dropdown menu (although you still use the `Esc` key to hide it). You'll notice one other important option here. By default, in Language Settings the Parser 2 box is checked. You may find that some older commands you subscribe to are "out of date" with the latest version of Ubiquity. A command will install but fail to run. If you type `list` in a running instance of Ubiquity it will show you all commands, including built ins and subscriptions.


=IMAGE=Ubiquity's_list_of_all_commands.jpg=Figure 3: Ubiquity's list of all commands=

Any incompatible commands will be flagged up with an `old api` icon. Unchecking the Parser 2 box should enable them. If you hover your mouse over the `old api`button there is a tool tip to tell you that it can be converted to work with Parser 2. However, before you to start clickng [view this video howto](http://vimeo.com/5691107) or [read about how to convert commands](https://wiki.mozilla.org/Labs/Ubiquity/Parser_2_API_Conversion_Tutorial). You also have the ability to unsubscribe any of the commands you download as well as viewing the `source code` for them too--which is a great way to see how they were were coded, and hack them as well if you have the necessary programming skills. Viewing the source code also allows you to copy and paste it to an external editor to study it and hack it.

=ZOOM=By now you are beginning to realise that this addon is rather different from anything you have installed before=


By now you are beginning to realise that this addon is rather different from anything you have installed before. You might also be experiencing a strong sense of _deja vu_. If you've ever used [Enso](http://www.humanized.com/enso/) (some of whose developers now work on the Ubiquity project), [Silverlight](http://silverlight.net/) or [Moonlight](http://www.mono-project.com/Moonlight) then the underlying concept will look familiar. However, Silverlight is a proprietary Microsoft product and Moonlight is an open source port of Silverlight but it uses [Mono](http://en.wikipedia.org/wiki/Mono_(software), a Novell product. That alone will alienate many free software users who don't like Mono and especially the company that signed a patent deal with Microsoft. Ubiquity has no such proprietary strings attached. And it does a lot more too.


# Google stuff

Ubiquity comes with a lot of built in commands. Typing `list` (and hitting Return) will bring them up. For example, with Ubiquity running start typing with the letter `g` and Ubiquity will start suggesting stuff. The more raw text you input the more suggestions will appear. You can navigate these suggestions either by using the arrow keys or the mouse and then clicking on the tab key for auto completion. At this point you can do really neat stuff like making entries to Google Calendar:

=IMAGE=Use_Ubiquity_to_add_an_entry_to_Google_calendar.jpg=Figure 4: Use Ubiquity to add an entry to Google calendar=

Once you have composed an entry and hit return a small pop up will confirm that the entry was successful (and if you are not logged in Ubiquity will prompt you for your details). Now when you check Google Calendar from Ubiquity that event displays:

=IMAGE=Google_Calendar_pulls_in_Ubiquity_data.jpg=Figure 5: Google Calendar pulls in Ubiquity data=

and clicking on it opens Google Calendar for that entry. Ubiquity also allows to to check your Calendar entries too:

=IMAGE=Use_Ubiquity_to_check_stuff_too.jpg=Figure 6: Use Ubiquity to check stuff too=


Emailing (and finding contacts in your addresses) follows a similar pattern, the only difference being that Ubiquity will insist on opening Gmail itself rather than simply doing it seamlessly. So, here is the Ubiquity command and the result:


=IMAGE=Type_em_and_then_tab_to start_an_e-mail.jpg=Figure 7: Type em and then tab to start an email=


=IMAGE=Email_ready_to_go.jpg=Figure 8: Email ready to go=


Next to e-mail and calendaring, Google Maps is one of its best known products. Type `map` (tab) and key in an address and Ubiquity will call it up for you. Enlarge it and click on `insert map in a page and it will insert the map (not the link to it) into Gmail where you can also resize it too if you wish, add text and e-mail it along with any message. If you need more than one map you can repeat the process.


# Twitter

You'll not be surprised that Twitter is a built in command. It has basic functionality. Just typing the letter `t` will bring it up as one of the options. Select it in the drop down list, tab it and start tweeting:


=IMAGE=Familiar_and_with_a_character_count_too.jpg=Figure 9: Familiar and with a character count too=


When you're finished hit return and you status is updated. You will see it in any web interface or desktop client when you log in to your account. Now, it gets interesting. I'd like to extend what I can do with Twitter through Ubiquity. It's time to install a new command (and yes, someone has hacked Ubiquity to make Identi.ca work too).


# Crazy fun, but also a bit dangerous


This is one of Ubiquity's best features but also the potentially most fraught. It's a sure thing that you'll want to add commands or even write or hack your own. Why stop now, just when you beginning to enjoy it? If it's the former then, as with installing anything there is always a potential security risk, however small. Despite the fact that Mozilla has a "repository" for addons on a secure _https_-hosted site, they cannot guarantee the addons themselves and this is even more true for Ubiquity commands in the wild. In fairness, Mozilla were planning an equivalent secure repository for commands but in the meantime you can [find many of them on their Wiki](https://wiki.mozilla.org/Labs/Ubiquity/Commands_In_The_Wild). Just as well, as Mozilla's current command portal, [The Herd](https://ubiquity.mozilla.com/herd/) is not functioning and has not been for some time. It's covered in scaffolding undergoing a rebuild and it's not likely to be functional until Ubiquity in reincarnated under [Jetpack](https://jetpack.mozillalabs.com/) which is actually [available as an addon](https://addons.mozilla.org/en-US/firefox/addon/12025) and once installed allows you develop HTML, CSS and JavaScript-based addons (using Bespin and Firebug. You may recognise Bespin as a coding canvas from [Raindrop](http://www.freesoftwaremagazine.com/columns/open_messaging_open_web_installing_and_configuring_mozilla_raindrop_ubuntu_9_10)) as well as install existing addons.

When you find a command that you want from the Wiki list, click on it and you will be taken to its page and in a familiar addon sense of _deja vous_ a banner will pop up along the top of your browser:


=IMAGE=A_subscription_prompt_for_a_Ubiquity_command.jpg=Figure 10: A subscription prompt for a Ubiquity command=


Click on Subscribe and another luridly-coloured tab opens warning you of all sorts of potentially dire consequences if you install this command:


=IMAGE=A_warning_and_the_command_code_too.jpg=Figure 11: A warning and the command code too=


If the thought of having your underpants stolen holds no fears for you and you feel like a lucky punk, go right ahead, make your day and select "I know what I'm doing. Subscribe me to it!":

=IMAGE=Subscribe_if_you_dare.jpg=Figure 12: Subscribe if you dare=


You'll get a message to confirm that the command has been successfully installed and you can check the details for using it by opening Ubiquity, typing "list" (return) and you will be taken to `chrome://ubiquity/content/cmdlist.xhtml` in a new tab (from where, incidentally, you can also navigate to new commands at the Mozilla Wiki link cited above). From there just select "Your Commands" from the menu at the top of the browser to view the command(s). 


=ZOOM=if ideas being mooted for pipelines for Ubiquity and its successors come to anything, a really functional command line for the browser will have arrived=


Any commands you install that don't work properly or just don't tickle your fancy can be removed by clicking on the unsubscribe link to the far left of each command. That's it, simple to install, easy to remove--and no browser restarts either. The list command returns a list of built in and downloaded commands so there no likelihood of confusing it with the familiar `ls` command in a Unix terminal. However, things are more familiar with the `history` command. Like the terminal command running `history` in Ubiquity will list all the commands you have used. The display is not static. You can select one and run it. Handy. Command-line users will feel right at home here and if ideas being mooted for pipelines for Ubiquity and its successors come to anything a really functional command line for the browser will have arrived.


# Making Ubiquity more ubiquitous

I have barely touched upon the number of Ubiquity commands, both built in and downloaded. Even as Ubiquity is being upgraded and refined plans are afoot to incorporate it into the address bar. If you think that is just Awesome in the location bar, think again. Awesome is about _where_ you want your browser to _go_, Ubiquity is about _what_ you want your browser to _do_.

Nevertheless, a development will probably be in the form of [Taskfox](https://wiki.mozilla.org/Taskfox) which will incorporate some of the features of Ubiquity into a future version of Firefox. You can view a [video demo](http://labs.mozilla.com/2009/04/taskfox-prototype-ubiquity-in-firefox/). If you like what you see [try out the demo](http://azarask.in/aza/TaskFox). This will open a window which replicates a simple location bar view:

In a nice recursive touch, I took this screenshot with the Ubiquity [screengrab command](http://purplefloyd.wordpress.com/2008/10/05/screengrab-ubiquity-script/). Start typing, say, W, and Taskfox will suggest Wikipedia. Hit tab for auto competition and type in a topic. I typed Ubuntu. The format of the results is very interesting:


=IMAGE=Like_Ubiquity_but_running_in_the_location_bar.jpg=Figure 13: Like Ubiquity but running in the location bar=



It is Wikipedia but it looks like Taskfox has formatted it in a particular way. Scroll down and Taskfox reveals that many sections have been truncated with Show/Hide buttons. Click on any of them to expand the categories. However, if you scroll to the very bottom of the page there is an option to "view this page on regular Wikipedia". Click on it and you are back in familiar territory as if you had navigated to it in the normal browser fashion. Directly below option is the real clue however. There is an option to disable mobile site permanently so I assume that Taskfox is using a browser view of the type used in mobile phones. Something really neat happens too when you search for video in Taskfox. Typing V suggests "video search". I followed that with James Taylor (who else?) and then clicked the link on the right which brought up a YouTube video to play:


=IMAGE=TaskFox_allows_you_to_play_the_video_in_line.jpg=Figure 14: TaskFox allows you to play the video in line=

You can do the same in Ubiquity but you only get the top results. In Taskfox, if you scroll to the bottom you will see more numbered results in the Google manner. However, if you prefer, you can click directly on the link for a video and it will open in a separate tab in a bigger screen. The Taskfox demo also currently supports Google, Twitter, calculate and translate. Twitter, like Google, was predictable but Twitter does not work as well as Ubiquity. Where Ubiquity will post Tweets and Dents seamlessly (logins notwithstanding), Taskfox does not. It opens a Twitter tab even if you are logged in and copies your post and you still have to update it from there. However, Taskfox has a feature Ubiquity does not, the ability to drag and "tear off" Taskfox results in the manner of detachable tabs in Google's Chrome browser (though not resizable). Experiment with the arrow keys too. As you might expect, they allow you to navigate back and forward.

At the time of writing, Mozilla has announced that Ubiquity has effectively been put on the back burner but that doesn't mean that it's defunct. Lessons have been learned and they will be integrate features into Jetpack and Taskfox in upcoming releases of Firefox. The latest release of Ubiquity (0.1.9.1) was on 20th January. At more than 400,000 downloads Ubiquity has legs and Taskfox will simplify the language interface and operate directly from the location or search bar. The real challenge for Ubiquity and its successors will be to cope with massive popularity of Firefox and the fact that localizations have to cater for up to seventy languages, which may be more manageable in a GUI browser but less so when it has the capacity for a command line interface. 

 
# With Ubiquity Persistence pays

Ubiquity will doubtless migrate directly in some form to the Firefox toolbar but if you can't wait and would like to sample it's potential delights then show a little persistence, so to speak. It's been bundled with versions of Ubiquity for some time.

To run it simply type `chrome://ubiquity/content/persistence.html` in the Firefox address bar and it will pop up:


=IMAGE=Persistence_default_screen.jpg=Figure 15: Persistence default screen=


Tip: If you will be using this frequently it makes sense to bookmark it and open it in a separate tab. That's efficient but it disables the customize toggle which reveals the coding boxes. To re-enable it just reload the page. (This is not necessary if you use the Speedial addon to "bookmark" it.) You'll see a Firefox "instance" inside Firefox with radio buttons for selecting Mac, Windows and GNU/Linux version views:
 
=IMAGE=With_options_to_code_and_view_for_three_Operating_systems.jpg=Figure 16: With options to code and view for three Operating systems=


Typing the letter w in either the location or the search bar for example (toggable from the radio buttons) will bring up a list of commands: 


=IMAGE=Wikipedia_in_the_URL_bar.jpg=Figure 17: Wikipedia in the URL bar=


If you select the search bar radio button, the "results" will display there and if you edit the underline scheme in the CSS coding box you can customise the appearance:


=IMAGE=What_you_can_do_with_a_little_css.jpg=Figure 18: What you can do with a little css=

Alright, it won't win any awards for web design any time soon but it does show what can be done.

You won't be able to _use_ those options, only _customize_ the appearance and the functionality of Ubiquity designs by editing the coding boxes above and  whilst you can submit and upload your masterpiece you can't save it locally--though, hopefully this will be a feature in the live release. 

The best thing to do if you want a quick guide to how Persistence works is to [view the video](http://mitcho.com/blog/projects/the-ubiquity-persistence-project/). If you know some CSS, Javacript or HTML you can experiment and function. If you manage to put together something interesting click on the link at the top of the page and submit your masterpiece to Mozilla. The other link allows you to view other submissions (and copy and paste them to run in Ubiquity?). What will happen Persistence now as its fate is linked to Ubiquity is moot but as it is designed to run in the location or search bars it will likely persist in Taskfox. When Jetpack comes on stream Mozilla will finally have abolished the need for browser restarts. Until that time, Ubiquity is already ahead of the curve. Features can be added without restarts, including, code changes and testing. 

# And finally

Security has been an issue with Ubiquity, running arbitrary, remotely-hosted Javascript in the browser (hence the big red warning boxes). I do worry about that too but when Jetpack is implemented security will have a much higher priority and Ubiquity will be built on top of Jetpack. In the meantime, it is comforting to report that, to date, there have been no reports of maliciously-intended Ubiquity commands spotted roaming in the wild. Hopefully, by the time Jetpack is fully implemented, Mozilla will have ironed out the problems with The Herd which was envisaged as the backend search engine to collate users' command subscriptions (a rewrite is under way). 

=ZOOM=Reports of Ubiquity's death have been greatly exaggerated. Not so much dead as resting after a long squawk=

When I started writing this article Ubiquity was going full pelt. For various reasons, a combination of inertia and going off at different tangents, I put this piece on the back burner--just like Ubiquity and, like Ubiquity, I came back to it. Ubiquity will be back too, in some form or another. Reports of its death have been greatly exaggerated. Not so much dead as resting after a long squawk. It will reappear in new plumage called Jetpack and or Taskfox. And better.  