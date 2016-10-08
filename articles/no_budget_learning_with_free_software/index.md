---
nid: '2390'
title: 'No budget learning with free software'
authors: 'Alan Berg'
published: '2007-09-03 3:28:26'
tags: 'ubuntu,education,learning'
issue: issue_19
license: cc-by-nc-sa
section: opinions
listed: 'true'

---
This article describes the work in progress of applying Ubuntu Linux sensibly within an underfunded school, and as part of a wider well thought out and alternative educational structure. I shall emphasise best practices and try my best not to dwell too much on the underlying technologies.


# The school

Education is a fundamental pillar of civilization. Without learning structures, humanity will descend again into the dark ages and superstition will rule. Supporting children in their learning activities is not an optional extra, but a community responsibility as part of the global community that we all live within. Placing these sentiments in context, we all pay our taxes and as part of those taxes, we collectively pay for the educational system that supports our way of life and our betterment in the future. This system mostly works.

The pressure for consistency of quality to some extent enforces uniformity within the school system; the tool of this enforcement is budgetary with a layer of legal requirements. If you step away from the main stream, funding becomes scarce. Methodologies outside the majority view can be dangerous for long-term survival. If a school sits at the edges of common practice, then receiving government funding takes a lot of patience, skill, paperwork and diplomacy. Enter the Guus Kieft School right.


=ZOOM=Enter the Guus Kieft School right=

The [Guus Kieft School](http://www.guuskieftschool.nl/) sits snuggly next to a park in Amstelveen (Holland). The quality of air is excellent and the motivation of the student children (ages 5-14) envelops you on entrance. Positive energy resonates within every nook and cranny of the old scouting building and pleasant mosaics (figure 1) and markings scatter the grounds. My younger son is part of this outstanding enterprise; notice my pride in the statement.


=IMAGE=f1.jpg=Figure 1: Mosaic seen as one walks into the School grounds=

The Guuf Kieft School is based on an [sociocratic](http://en.wikipedia.org/wiki/Sociocracy) organizational model similar to that of the [Sudbury](http://www.sudval.org/) valley school in Framingham, Massachusetts.

The sociocratic approach is decision making by consent and places the student to a great degree at the center of influence. The schools structure enables students free range to learn at their own pace and with their own definitions of direction. For a mildly autocratic parent such as I that can be scary, as you need an element of trust in the process. However, after a year of observing the incremental results on my younger son, I am delighted with this approach’s structural effect of building self-confidence, understanding of social context and plain old knowledge building.

Despite the obvious quality that permeates the project, the school is fairly new in its existence and lacks significant funding. Therefore, the school needs still to tap into government acceptance for long term viability. As a consequence, there is currently a requirement for a low budget, no budget IT policy. Having worked as a teacher, course writer and developer of heavily used scaled up systems it seemed natural to me to want to help define a two-year IT policy to bridge a perceived funding gap.


# Consent driven contracts

It may very well be in the best interests of a lead miner to pollute the upstream river water of a village, but it is definitely not in the interests of the community as a whole. Consent driven policy is very democratic in scope and on average causes the least damage to the local environment. I can say the same for children playing in school time on the internet. The power of the internet is very attractive. However, if a group form around the computer area whose only activity is to shoot as many targets as possible then the ebb and flow of learning of the group and the wider community is disrupted and potentially negative.

Before launching new IT facilities, the students and mentors at the school need to decide a definition of fair usage of the computers. If you do not preplan a codification of best practices then you will risk ending up with a select few monopolizing the internet connection for gaming purposes. In an educational environment, a fast computer with a brilliant graphics card risks the concentration and focus of a whole subset of a school primarily the male segment. Defining a personal contract and allowing the best interests of the whole community to speak through sociocratic processes enables broader advantage.

Per student topics, that the student and mentor need to agree include how to time share, how much of the time the student spends on the computer and for what purpose. Without a containing consent, the lack of school policy may inadvertently place young minds at risk.


# Ubuntu has a positive role to play

Okay, the community has agreed on best practice. Now it’s time for the IT policy to structurally support the governance. The school is small and we already have one laptop connected to the internet. I intend to install two reference machines chock full of free software and show the parents and mentors how easy it is to customize for a particular student’s needs. Better still, I will describe how to copy shortcuts from one machine to another so that with a couple of command line actions the student’s home machine has the same software as at school. If a mentor wishes the student to focus in on a task, or if a student wishes to follow through at home, the learning path is not limited by technology.


=ZOOM=Now it’s time for the IT policy to structurally support the governance=

Before buying the new, let us consider the old. With the help of a kind parent, the school has scored two Pentium 1.5 GHz machines, the memory and hard disk are limited, time to call in GNU/Linux in the shape of Ubuntu. At this point you may well be asking why not [Edubuntu](http://www.edubuntu.org/) or another one of the _many excellent_ [flavors](http://www.linux.org/dist/) of GNU/Linux. The answer is you can, there are many distributions that are viable. However, Ubuntu is a strong candidate. Ubuntu has good solid market penetration and I have no issues in recommending it as a desktop for home use in dual boot mode with Windows or stand-alone. A standard install includes all the software one comes to expect like office suites, multimedia applications, games, etc., and just as importantly a standard file structure and application installation process. I prefer APT over RPM for package management and find from practice that there are very few dependency issues. Finally, Ubuntu is well known and the homepage does promise to continue releasing for a solid number of cycles to come.


=ZOOM=Ubuntu is a strong candidate=

The simpler the approach one takes the less maintenance is required later. I intend the flow of operation for sharing consistency between school and home computers to be similar to:


1. Install Ubuntu with a given version.
1. Install all the educational free software that you can via apt-get or a package manager.
1. Add a user account per student and hence a clean desktop.
1. The mentor sits with the student and agrees which software is useful for a given period and places shortcuts on the student’s desktop for the given piece of software.
1. If the parents wish for a mirror on their home computer then the relevant mentor sends desktop shortcuts with a list of `apt-get` commands via email. Notice that the standard environment enables this approach.
1. The parents downloads the shortcuts to the students desktop at home and then run the enclosed `apt-get` commands to install the software.

Perhaps (at worst) periodically, I may need to explain to the teachers and parents what `apt-get` is or have an install fest for Ubuntu, but this is not a significant cost as the parents are all so friendly.


<!--pagebreak-->



# Installing educational software

De-skilling IT is vital. Technology for the sake of whiz and bang is fun for hanging out on a rainy Saturday afternoon, but only gets in the way and increases support costs in the school environment. I do not intend to micromanage the IT infrastructure. If a recipe for action takes more than a couple of pages of A4 then the chances are that I will be spending unexpected quality time with misconfigured, insecure, virus ridden software. Simple is good, complex we leave to those who maintain grid environments or are paid for this type of noise by the hour

On a sacrificial computer with the current version of Ubuntu select the Add/Remove option from the Applications menu which is normally seen on the top left side of the screen. Click on the Education icon (figure 2) and tick the Periodic table of elements. Submit via the Apply button.


=IMAGE=f2.jpg=Figure 2: Adding or removing educational software from the GUI=

Within in a brief few seconds you have functioning and worthy software (figure 3), which the student can later find under the Education menu item. Debian distributions sport a number of excellent periodic tables including ones that have photographs of the individual elements. I suspect it is now only a question of time before the developers will include multimedia chemistry lessons.


=IMAGE=f3.jpg=Figure 3: A wonderfully exuberant periodic table=

Exploring for a few more seconds you will, with very little effort, discover [Celestia](http://www.freesoftwaremagazine.com/articles/astronomy_software) eye candy for the masses.

My over imaginative brain is fevered with the prospect of one-on-one astronomy lessons based on Celestia and [Stellarium](http://www.stellarium.org/), pointing to energetic events in the simulated heavens and then later electronically controlling a telescope to observe those fuzzy planets. Okay, in reality, a $30 pair of binoculars viewing the moon or globular clusters.


=ZOOM=Celestia eye candy for the masses=


=IMAGE=f4.jpg=Figure 4: Celestia eye candie=

Or how about installing the software Kpercentage (figure 5) which works (despite the K in its name) under the GNOME desktop as well as the KDE desktop. My younger son loves mathematics and I have seen him spend hours on similar software, long after the boundary of my own patience would have been crossed.


=IMAGE=f5.jpg=Figure 5: Rigorously exercising the young mind with Kpercentage=

Many mathematicians have a strong musical aspect to their souls, which Solfege (figure 6) has the potential to support the unlocking of. With Solfege students can learn how to differentiate notes and intervals, scales and theory.


=IMAGE=f6.jpg=Figure 6: If music be the food of life, play C minor=

Moreover, the list goes on and on. For example, my elder son, admittedly at another School is learning European Geography and Kgeography (figure 7) reinforces his scores via good old fashioned repetition.


=IMAGE=f7.jpg=Figure 7: Graphical learning of facts via Kgeography=

The Add/Remove option only displays a relatively limited number of packages. From the command line searching for mathematical packages is as simple as typing the command:


=CODE_START=

sudo apt-cache search mathematics

=CODE_END=

Once you have found your target package to zoom in apply the -f option, for example:


=CODE_START=


sudo apt-cache -f search junior-math

Package: junior-math
Priority: extra
Section: universe/misc
Installed-Size: 36
Maintainer: Ben Armstrong <synrg@sanctuary.nslug.ns.ca>
Architecture: all
Version: 1.3
Depends: bc, bsdgames, snowflake, xaos, xbase-clients
Filename: pool/universe/j/junior-math/junior-math_1.3_all.deb
Size: 1896
MD5sum: 2c746ec40c76ff43c304f63a23983d18
SHA1: 1dd73fe2eb221eba933a67fc8b234187f71b8bae
SHA256: 258c90fc6a24aaa875025b5e893cb8635abec52a6fe4061c1e5dfb4611f248ae
Description: Debian Jr. educational math
 This meta package will install educational math programs suitable for
 children.  Some of the packages use mathematics that is well beyond
 the abilities of young children (e.g. fractals and cryptography), but
 we hope that by using them they gain an appreciation of the beauty of
 math from an early age.  Other packages allow children to explore and
 learn math concepts in an engaging, interactive way.  Some packages
 are more general, providing math activities as only one part of the
 package, e.g. bsdgames includes "arithmetic" in addition to other
 non-math games, and xbase-clients provides xcalc.
Bugs: mailto:ubuntu-users@lists.ubuntu.com
Origin: Ubuntu

=CODE_END=

To install the software type:


=CODE_START=

sudo apt-get install junior-math

=CODE_END=


<!--pagebreak-->


Sending an install script by email is straightforward, simply add the previous line to a text file software_to_install_ref.sh. Send the file as an attachment to the interested parents and let the parent run the command:


=CODE_START=

sh ./ software_to_install_ref.sh

=CODE_END=

The parent will then need to fill their administrative password and the software will auto-magically be installed.

Okay, so I am stating the obvious. However, being obvious does not make the approach less powerful. The fact that this methodology is intuitive actually adds power and value.

At this point you may be wondering why have `ref` as part of the file name. Well, “ref” is actually a placeholder. Every file name should have a unique identifier so that the teacher/parent can go back and find which files were installed and for what reason. A good ref would be something like a date or just an incremented number. The mentor should make notes and perhaps a lesson plan or two based on each ref.

To remove software is just as straightforward:


=CODE_START=

apt-get remove junior-math

=CODE_END=

Therefore, because of the simplicity of it all, the school should also send a remove script at the same time as the add script. This gives the parent/student fine-tuned control.

Even though synchronized installation via email is a powerful learning enabler, we are still missing the synchronization of the shortcuts on the desktop that would allow the student to have a consistent set of environments.


# Creating and sending shortcuts

Just because an idea is simple does not imply that the idea doesn’t have positive potential for creative impact. Placing shortcuts on a student’s desktop at home and at school in a synchronized and incremental way is one of these so called simple ideas.

If you want to create a shortcut for already installed software that appears in the GNOME menu, right-click on the software and an extra set of menu items appear (figure 8).


=IMAGE=f8.jpg=Figure 8: Right-clicking to create shortcuts sometimes does make your life simpler=

Sometimes your favorite software does not exist in the list found in your favorite package manager or, worse still, it does exist in the list but not in the place you were expecting it. _xaos_, as shown in figure 9, is a render of graphically detailed fractals that I have spent relaxed moments zooming down. Not thinking on my feet, I had assumed that xaos was educational and, being lazy, I simply added it from the command line.


=CODE_START=

sudo apt-get install xaos

=CODE_END=

It was only later that I realized that this same application lay under the graphics subsection of the menu.


=IMAGE=f9.jpg=Figure 9: Generating fractals with xaos=

To add an application to the desktop that does not show within the menu, I normally take the easy route. By right-clicking on the top plane where the menu resides and mentions Applications, Places, System you will be first given the option “+Add Panel”. Selecting “+Add Panel” brings up the graphic shown in figure 10.


=IMAGE=f10.jpg=Figure 10: Adding a custom panel=

Clicking on “Custom Application Launcher” triggers the create Launcher dialog, as shown in figure 11.


=IMAGE=f11.jpg=Figure 11: The create Launcher Dialog=

Fill in the details shown. Click on the “No Icon” button and choose an icon of choice. In my case, that was amazingly the xaos icon. Finally press OK. GNOME generates a new desktop icon in the top panel. Drag and drop the desktop item to the main desktop. The new item is just plain text that GNOME interprets and then renders as an icon. The icon activates the given program when the user double clicks. To prove this text derived point, type:


=CODE_START=

more ~/Desktop/xaos.desktop

=CODE_END=

and you will see a result similar to:


=CODE_START=

[Desktop Entry]
Version=1.0
Encoding=UTF-8
Name=xaos
Type=Application
Terminal=false
Name[en_US]=xaos
Exec=xaos
Comment[en_US]=Fractal generator
Icon[en_US]=xaos
Comment=Fractal generator
Icon=xaos
GenericName[en_US]=

=CODE_END=

If a student chooses twenty pieces of software you can imagine sending the parent a 20 line apt-get add software script with a corresponding 20 line apt-get remove software script with the necessary desktop items contained within a `.gz` or `.zip` file. Automation of this is trivial and more a matter of administrative housekeeping. Thus, Ubuntu or another standard environment enables selective learning exercises with just a couple of cheap and easy to describe tricks.


=ZOOM=Ubuntu or another standard environment enables selective learning exercises with just a couple of cheap and easy to describe tricks=


# Conclusions

By agreeing on a standard GNU/Linux distribution and using the over obvious trick of sending desktop links via email, you will find it possible to create a working computing school environment that is potentially synchronized with the clever learner’s home environment. The package management developers have already done the hard work. Why don’t we cheat on our IT exams by making the student’s life easier and more consistent.


# Acknowledgements

I would like to thank Eliane Gomperts for her outstanding efforts and for being the driving force in starting a new mediated learning and, thus, motivating school. Lawrence says “well done”.

