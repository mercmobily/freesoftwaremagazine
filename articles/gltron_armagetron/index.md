---
nid: '1786'
title: 'The free Tron Universe—Armagetron'
authors: 'Alan Berg'
published: '2007-03-26 6:30:00'
tags: 'tron,game,armagetron,gltron'
issue: issue_16
license: cc-by
section: games
listed: 'true'

---
After all these years, I still remember the sounds and primary colours associated with the climatic lightcycle scene in the 1982 Walt Disney film TRON. As the noise-ridden cycles raced to certain destruction, synthetic electronic reverberations could be felt throughout the whole audience and my bones at the cinema. Sure, since my long forgotten childhood there were a couple of well-made arcade games. However, nothing really forced those memories to the fore until my elder son played Armagetron Advanced and smashed my virtual existence into all kinds of ugly jelly shapes at great speed via my house net.

This article will explain installation and the basics of game playing. I hope you get as much fun out of what, at first glance, looks too simple to be true OpenGL game. Sit back, turn your 5.1 speakers on, set the sub woofer up high, and vibrate violently as you duck and weave to certain victory or the shadow of defeat.

**Health Warning:** Hum—being prodded by a stick—please do not turn your woofer volume up so high as to damage your hearing or generate violence from your nearest and dearest... not that I’ve ever done it, nor am I still limping from the almost fatal mistake.


## Installation

Armagetron is a free software project licensed under the GPL. The game being based on the OpenGL framework runs fluidly on most platforms including Windows, Linux, and Mac variants.

**Note:** Obviously, I naturally assume that you have a live connection with the internet.

Visit the project's [home page](http://armagetronad.net/) and download to your home directory the current and most suitable package. Commands similar to the following should deploy (run these commands in the same directory where you downloaded the game's file):


=CODE_START=

chmod 700 armagetronad-0.2.8.2.1.i686-generic-linux-gnu.package
./armagetronad-0.2.8.2.1.i686-generic-linux-gnu.package


=CODE_END=

A dialog will appear that will ask you for the administrator password. After filling in, the system will deploy the package system wide for all users and create a menu item under "games".

You will have installed "Armagetron Advanced", the advanced and now official version of the popular game.




=IMAGE=home.jpg=Figure 1: Armagetron Advanced Home=


## Winning the local race

It sounded so simple. Steer a digitized lightcycle around an enclosed arena. Force the slightly-crazed AI competitors to crash violently into the generated walls that you so carefully leave behind your cycle’s exhaust. Achieve victory, fame and a lasting control over your own computer. So simple, no challenge you may think. How can artificial outwit the living persona of TRON, the man they call the hard straight liner. Okay, no one has called me that, but maybe they will. Well, try riding the light yourself. The pain is still fresh in my scorched fingertips. Therefore, my elder son is better. I don’t care.


=ZOOM=It sounded so simple...=

Let’s start with a straightforward race: you, Captain Brave Heart or Queen Cool, against a slow moving AI with low intelligence. Then we are going to zap up the IQ of the AI monsters, the number of self same monsters and speed of the game. Finally, how about racing against other online misfits and chatting at the same time.

Before playing for the first time, if you are similar to me (sorry to insult you) and like to use arrow keys for steering your lightcycle steed, instead of letters such as ‘z’ and ‘x’ then you will need to modify your player settings. To start the games in Ubuntu select the menu item `Application→Game→Armagetron`. After the splash screen has finished making you wait, you will find yourself looking at the main display options. At this point, select Player Setup/Player 1 Settings and change the name to your online pseudonym. Names similar to “Zot The Remorseless” or “The Man With The Porsche” are standard conventions. Being bori— sorry, sane—I chose Alan.

To modify the keyboard settings select Input Configuration as shown in figure 2. To change settings press the Enter key over the relevant entry and then assign a key by pressing it. Move through the key bindings via the arrow key and, when you’re done, press the Escape key three times to find yourself back at the main menu.


=IMAGE=f2.jpg=Figure 2: Input Configuration=

To start your first game select Game/Local Game, at this point you will find yourself in a grid with one other cycle. The grid is large and the opposition is as stupid as always. Hey, if they weren’t stupid, then they would be riding tanks. You won’t get too much pleasure from this level. However, it does give me a chance to describe some basic features and allow you to build your familiarity. This is always a good idea before spilling your virtual ego over your elder son’s shoes.

Firstly, you need to know about grinding. If you get very near to the wall generated by the opposition or your self you will start to accelerate. The grinding invokes images of sparks flying from the side of your lightcycle as the cycle grinds the walls. The main advantage of grinding is that you can overtake and then try to force the opposition to crash. Therefore, your main navigation tools are left, right, brake and grind. Once you have mastered these basic skills you are ready for the big time.

Chatting is possible and even useful when playing as a member of a team. However, like chatting on a mobile while driving a car with the baby in the back, I would advise against it. Anyway, taunting might be fun, but I find winning more addictive.

To change setup while playing, press Escape and the main configuration options will appear. In single player mode, the game very politely sleeps while you are busy fiddli— sorry fine-tuning.

Back to the chase. After getting used to one enemy of humanity, it is time to take four of the AI’s on and split the screen so that you can view the world from the your perspective at the same time as one of your enemies. Split screens are excellent for playing a game live locally against one or more of your competing friends/evil doers. It is a great joy to share the same keyboard and fight to the death, though my sons are a little too efficient for my liking. All this positive resonance is enhanced by the modern trend of 20 inch or greater wide screen TFT monitors.


=ZOOM=Split screens are excellent for playing a game live against one or more=

Firstly, add extra AI to push your alleged talent to the highest levels. Once in game press the Escape key and choose Change Game/Game Setup, select AI Payers and choose the number 4 to start with. Next, artificially pump up the generic IQ of your adversaries via the obviously named option AI IQ. Notice that you may also change the game type here as well. Last Man Standing makes sense as the game stops when only one human is left. Free style just keeps going and going until all humans are dead.

To split the screen (figure 3) to function effectively for two local human players (player 1 and 2) return to the main menu via the Escape key and then select Player Setup/Viewports: Horizontal splits. If you wish to be specific about which player is presented where then you should try out the Assign Ports option.


=IMAGE=f3.jpg=Figure 3: Screen grab of split screening in action (just before I crashed)=

By now you should be able to play locally, kill your friends, well, up to three of them, and know when to swipe the keyboard away at crucial moments. Sure big monitors help, but a little aggression and threats about pocket money seem to get me on the winning side of the local competition.


=ZOOM=Sure big monitors help, but a little aggression and threats about pocket money seem to get me on the winning side of the local competition=


## Networked fortressing

Strong and cool, certain in your foolishness you are now ready to face the bitter reality of online highly competitive grinding. However, before doing so I would recommend reading the details on your cereal box and visiting the official WIKI and absorbing the basic [skill building section](http://wiki.armagetronad.net/index.php/Building_Your_Skillset).

Now let the games begin. From the main menu select Network Game/Internet Game. Choose a server whose description looks vaguely interesting and start playing.

If one of the human players is misbehaving then there are two extra options to deal with the situation, in game press escape to get to the menu. You will now notice (figure 4) the Police option, which allows you to vote to kick a player out of the game or silence their insistent and rude chatting.


=IMAGE=f4.jpg=Figure 4: The Police menu is extra for networking games=


## Final Comments

From what seems such a simple game, as soon as you add such elements as split screens and online gaming, the play evolves to the addictive. I particularly like the physical interaction of using one keyboard with a couple of competitors/sons and the noise made by the sub woofers of my cheap and reliable 5.1 speaker set. I can never get too much of the powerful atmospheric low-level hum of the oncoming lightcycles.

Moving forward you may consider hosting your own server or trying out the different server patches and thus game plays. For the budding artists customizing the look and feel with _moviepacks_ is a necessity. Giving back to the community can only improve the whole. Enjoy, have fun, and do not become too humiliated.


# Resources and further reading

[Armagetron Advanced homepage](http://armagetronad.net/)

[Armagetron Advanced WIKI](http://wiki.armagetronad.net/index.php/Main_Page)

[Building your skill set](http://wiki.armagetronad.net/index.php/Building_Your_Skillset)

[Download page](http://armagetronad.net/downloads.php)

[Tournaments](http://wiki.armagetronad.net/index.php/Tournament_Hub)

