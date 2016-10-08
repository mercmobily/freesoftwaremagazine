---
nid: '1771'
title: 'Vega Strike'
authors: 'Alan Berg'
published: '2007-02-14 6:30:00'
tags: 'vega-strike,game-review'
issue: issue_16
license: cc-by
section: games
listed: 'true'

---
If you are tired of a purely blast or be blasted space fighter simulators, if you like making virtual money and a strong story line—and, yes okay, fighting your way from A to B in large virtual universes—then Vega Strike or one of its mods may be just the free software game for you.

As Napoleon the 17th, I must admit that [Vega Strike](http://Vega Strike.sourceforge.net/) is based within a 3D universe similar to our own, but in a thousand or so years. I should know I was there! Jump drives exist and so too the familiar smell of politics, economics and tribal warring alliances. You may trade and upgrade your ships and fly and fight through a graphically rich environment. Missions are available and the story line does not have to be linear. Better still, this OpenGL application has extra flavors such as a [Privateer universe](http://wcuniverse.sourceforge.net/) and a [Star Trek universe](http://wcuniverse.sourceforge.net/vegatrek/) to explore.


=ZOOM=This OpenGL application has extra flavors such as a Privateer universe and a Star Trek universe to explore=

Politics is fun to follow from a distance, especially when you crank up the game and see a random start up poster subliminally filling your mind with random proganda to support one view point or another.


=IMAGE=f2_2.jpg=Figure 1: Have you the right mindset?=

And this is where I admit to my motivation for writing about Vega Strike. When I was younger, clever, and able to jump tall buildings, I always wanted a [BBC computer](http://en.wikipedia.org/wiki/BBC_Micro). My long forgotten friend George had one of those exquisitely designed computers all to himself and he was always rubbing my face into my inferior and cheaper choice of the [ZX81](http://en.wikipedia.org/wiki/ZX81). Anyway, the BBC computer was arguably the best from its generation, a bit like comparing the style and grace of a modern Apple with the mediocre grey of a standard office PC. To cut a long story short, George insistently played [Elite](http://en.wikipedia.org/wiki/Elite_%28computer_game%29) and I never had enough online time. Well, thank the stars for Vega Strike, which has similar characteristics to Elite. Finally, I can, at last, out bid George and waste my days away.


=ZOOM=Vega Strike has similar characteristics to Elite=

Now that the positive atmosphere is set, I'll quickly show you how to install the game and we can dive into its immersive and addictive aspects.


## Installing on Fedora Core 5

Installing Vega Strike is straight forward, but requires (at the time of writing) a [direct download](http://prdownloads.sourceforge.net/vegastrike/vegastrike-0.4.3-base.bz2.run) from the homepage of the project. As a system admin, you will need to update permissions so that the binary becomes executable, e.g. `chmod 700` and then execute. As shown in figure 2, a screen will pop up and then you will need to decide if you want to accept the default settings. Being of a lazy nature, the default settings looked good to me, so I just agreed without resistance or careful thought.


=IMAGE=f1_2.jpg=Figure 2: Installation tab for Vega Strike=

Next, I ran `vsinstall` and a dialog appeared. After choosing your local machine's optimum values, save and then run `vegastrike` from the command line.


## Installing on Ubuntu

The simplest point and click approach for Ubuntu (I'm using version 6.06 Dapper Drake) is to use the Add Applications feature, which you activate via the `Applications→Add Applications` option that by default sits at the top left hand corner of your desktop. Select Add/Remove application and you will see a basic dialog as shown in figure 3. Tick Vega strike from the games pane and apply. The package manager then asks you for an administrative password, then downloads, and automatically installs. Note you should now find a new Vega Strike menu option set under games. The whole effort from start to finish depends on your Internet bandwidth, but for me this was less than three minutes, not bad for such an excellent and free to use game. (Note: in older versions of Ubuntu the Add Applications feature is not quite as advanced as in Dapper Drake. If you have an earlier version you can either refer to [Simple package management with Synaptic](http://www.freesoftwaremagazine.com/articles/synaptic_intro) by Marco Marongiu or read on and use the command line.)


=IMAGE=v_in.jpg=Figure 3: The Synaptic Package Manager=

If you like the control of the command line then `apt-get` is a valid tool for package installation under Ubuntu. To update the packages available you should run:


=CODE_START=
sudo apt-get update
=CODE_END=

Next you will need to search for the relevant packages:


=CODE_START=
sudo apt-cache search vegastrike
=CODE_END=

And finally install:


=CODE_START=
sudo apt-get install vegastrike
=CODE_END=

Yes, there is a Debian package for Vega Strike, but no RPM. This may be because I don’t have a required YUM repository or more likely it might be a difference in distribution details.


# A super fast tour of the software

I found Vega Strike to be a sensitive package with regard to my graphics cards. On the Fedora Core 5 distribution, with a graphics card built into the motherboard, the game was more than a bit sluggish. However, for my older and obviously wiser Radeon 9000 card, the game was spectacular fun. As is true for many compelling games a little bit of reading is required before properly starting the game. I found the basic tutorial gave the necessary momentum to get going. Therefore, unless you want to be very disappointed, read the tutorial for the prerequisite five minutes first. Okay then, perhaps ten minutes and a cup of coffee.


=ZOOM=I found Vega Strike to be a sensitive package with regard to my graphics card=

When you start the game for the first time I would recommend launching your spacecraft and setting out for a planet as explained in the tutorial. Note: “Shift + M” brings up the help box that details the basic key combinations. Once in the spacecraft after pressing “Shift + M” again you may cycle though the targets via the ‘T’ keystroke. After choosing the target you wish, press ‘A’ for autopilot. You will then have the so-called “SPEC” drive engaged. Pressing “Tab” fires the after burners and, when used in combination with the SPEC drive, it’ll get you places fast. The arrow keys maneuver the craft and the F1 to F8 keys allow you to view the situation from different camera angles. To dock get close to your target, announce your presence with keystroke ‘0’ and then dock with ‘D’. The more you play, the easier the game becomes. You can trade, go on missions, update your spacecraft, and so forth. The better the ship, and the longer you play, the more dangerous your enemies become. That’s the fun part.


# Hints and first impressions

If you have an ecologically friendly printer, I would consider printing out the manual from pages 63-80. For the first twenty minutes of your virtual life follow the tutorial instructions and become one with your secret evil self. Once you have navigated to the mining base and docked (figure 4). You are probably ready to go out and modify your own complex destiny.

After playing the game for a couple of hours I relearned a childhood lesson, I really enjoy making large amounts of money and upgrading ships. The only minor downside was that the game occasionally froze for a good few seconds, though probably the issue was more to do with the status of my aged and senile computer as opposed to inherent issues in the software itself. Thus, once you have succeeded in a mission, remember to save your games.


=IMAGE=f3_2.jpg=Figure 4: Docking for the first time.=

I look forward to the next version of this product and hope that the development community is still active as the game has great potential to become a classic. The current release is version 0.43. I wonder what version 1.0 will look like.

In conclusion, I can now hold my head in pride. The era of the ZX81 inferiority complex is over thanks to relaxing hours spent with the excellent OpenGL application Vega Strike.

