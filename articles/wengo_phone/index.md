---
nid: '1557'
title: 'Wengophone: VoIP done right'
authors: 'Marco Marongiu'
published: '2006-06-16 15:03:25'
issue: ''
license: cc-by-nc
section: end_users
listed: 'true'

---
A new, full-featured free software application pops its head into the VoIP world, and it nominates itself as the most serious competitor of Skype. Its name is _Wengophone_.


# What is Wengophone?


=IMAGE=Screenshot-1.jpg=Figure 1: Wengophone “NG” 2.0 beta running on a Debian testing=

In short: Wengophone is a communication-over-IP application. With Wengophone you can:


* place voice calls to other Wengophone users
* create audio conferences with up to three users
* place video calls to other Wengophone users
* exchange instant messages with other Wengophone users, or MSN, Yahoo, AIM/ICQ, Jabber and GoogleTalk users;

And this all comes for free. If you also buy credits from Wengo, a French Voice-over-IP service provider that backs the development of Wengophone, you can also:


* place phone calls to land lines at very low rates;
* place phone calls to mobile phones as well, for rates that are still too high for national calls, but very good for internationals;
* send SMS messages everywhere for 8.5 cents Euro (plus VAT where applicable)


=ZOOM=Wengophone is a communication-over-IP application=

This may sound a little like “deja-vue”, so let’s take a closer look at Wengophone and make a comparison with its most famous competitor: Skype.


# Wengophone vs Skype

It was the beginning of 2005 when I discovered Skype; I liked it because it worked and it was multi-platform. Well, it was proprietary software, but there was nothing like Skype in the free software world.


=IMAGE=Screenshot-3.jpg=Figure 2: Skype running on GNU/Linux=

All in all, I was happy with Skype, even if the GNU/Linux client had some “quirks” that made it less functional than I had liked, and needed some tricks to fix (as an exercise, look up “skype_dsp_hijacker” in Google). But, after some months, things began to get frustrating: Skype was acquired by eBay, they were pushing a lot of effort in the Windows version that quickly reached version 2.0 and 2.5beta, while the GNU/Linux version was stuck at the 1.2.0.18 released in October 2005. Skype didn’t show any release plans for a newer GNU/Linux version, no new features were in sight but, above all, no bugfixes were happening.

Some days ago, while I was googling around trying to find if there was any news about a new GNU/Linux release of Skype, I stumbled on the name “Wengo”. I never heard about Wengo before, so I pointed my Google searching toward it, and I got a surprise.

I discovered that Wengo is a French Voice-over-IP company that develops an Internet phone using the standard SIP protocol; they had a so-named “Classic” client for Windows, MacOS and Linux (in DEB and RPM packages!), and were developing a new, full-featured client.

I am all for standards, so that all sounded interesting and I kept reading, going from one surprise to another. I saw that fares were really cheap (actually cheaper than Skype’s); that Wengophone supported SMS messages as well as phone and video calls, and (oh, my!) it was compatible with a load of instant messaging systems! And when it turned out that the Wengophone was developed as a free-software project, I nearly fell out of my chair!

That was all very good to read, and I really wanted to test it. Luckily, they run an “Introductory offer” for new subscribers: when you subscribe you get an unlimited number of two-minute land-line calls for two months for free. So I downloaded and installed the 2.0beta client and placed a call, and discovered that the audio quality was very, very good. I was sold!

This is the story so far. Now I’ll try to do a feature comparison between Wengophone and Skype for GNU/Linux and review all points one by one. I’ll assign +1 (good) or +2 (distinct advantage) points to each competitor for each “yes” in the table.


<!--pagebreak-->



 | | |
-|-|-|
 | Wengo | Skype | 
Free software | yes | no | 
Multi-platform | yes | yes | 
ALSA Audio | yes (in heavy development at the moment) | no | 
Supports phone calls | yes | yes | 
Supports video calls | yes | no | 
Supports SMS | yes | no | 
Good audio quality | yes | yes | 
You are free to choose your VoIP service provider | not yet (will be there in the 2.2 release) | no | 
Standards-based | yes | no | 
Supports Instant Messaging | yes | yes | 
Supports other IM protocols | yes | no | 
Has a large user base | no | yes | 
Centralised, server-based contact list | not yet | yes | 
Stable | not yet (still in development and improving from day to day) | yes | 
Easy to install | not yet | yes (packaged) | 

=TABLE_CAPTION=Comparing Wengophone and Skype=


## Free software

Well, since you are reading Free Software Magazine, I’ll assume that you understand why I consider Wengophone superior to Skype in this respect. If it isn’t clear to you yet, there plenty of articles in this magazine that will help you to understand why. I don’t want to sound like an extremist here, and I’ll give a +1 to Wengo.


## Multi-platform

Having a multi-platform application means that if you have to work outside your operating system of choice, you can still use the application. I think this is a distinct advantage and give a +2 to both.


## ALSA audio

This needs a bit more of explanation. Audio in GNU/Linux means mainly two things: OSS (Open Sound System, born in 1992) and ALSA (Advanced Linux Sound Architecture). With the advent of the 2.6 kernel, OSS was deprecated in favour of ALSA. Skype is using a deprecated sound system, Wengo is not.

ALSA has many advantages over OSS. The main one we are interested in here is the friendliness of ALSA in respect of the access to the sound card. An OSS application tends to take exclusive access to the sound card, not allowing any other application to use it: unless you trick it, you can’t have both Skype and XMMS playing nicely together, for example.

On the other hand, ALSA supports many applications sharing the same sound card, and this is a really good thing. All this is enough to give a +1 to Wengo, even if the ALSA support is still in heavy development at the moment.


## Supports phone calls

Well, we are talking about softphones, so this feature is actually a “must” and expected. +1 to both.


## Supports video calls

This is just a nice feature, not really necessary but a nice-to-have one. Skype doesn't have it in the Linux version, Wengophone has it on all systems. +1 to Wengo.


## Supports SMS

As above, a nice feature. Wengo has it: +1 for it.


## Good audio quality

The audio quality is good in both. I had phone calls with both Skype and Wengo. In particular, I tested Wengo calling Tony Mobily to his phone in Australia: good audio, low latency... Good in both: +1.


## You are free to choose your VoIP service provide

With Skype you are bound to Skype. Fullstop. With Wengophone, plans for the 2.2 release say that you will be able to choose any service provider that supports the SIP protocol. Taking this the other way round, you are not forced to use Wengophone to use Wengo’s services: any SIP application will do. That’s what I call “freedom to choose”, and deserves at least a +1.


=ZOOM=With Skype you are bound to Skype. Fullstop.=


## Standards-based

Using standard protocols means that you are more free to choose which application to use for a service (see above). Wengo supports many different standard (or de-facto standard) protocols, Skype supports itself. +1 for Wengo.


<!--pagebreak-->



## Supports Instant Messaging

This is a nice feature, and both of the competitors have it: +1 to both.


## Supports other IM protocols


=ZOOM=Using standard protocols means that you are more free to choose which application to use for a service. Wengo supports many different standard protocols=

This is a _very nice_ feature: you can still use your IM contacts without having half a dozen IM applications spread on your desktop. Wengo supports a lot of IM protocols, Skype again supports just itself. +1 for Wengo again.


## Has a large user base

According to the status bar of Skype, every day you have more than six million users online during business days; when I started using Skype last year it barely had 4 million users online: that’s a 50% increment in one year and it’s a huge user-base spread all over the globe. Wengo doesn’t seem to have as large or widespread a user base as Skype, which means that at the moment there is still a user community to build, it will take time and it will need _your_ help. This is a distinct advantage for Skype, and a +2 for it.


## Centralised, server-based contact list

Having a centralised, server-based contact list means that you don’t have to keep your contact list in sync when you use an application on two different computers (e.g.: at home and in the office). I have a few Wengo contacts in the office, and a few more at home, and keeping them in sync is a headache already. Believe it or not, this feature is a distinct advantage; Skype has it, and it’s a +2 for it.


## Stable

Well, we are talking about a stable release of Skype versus a beta version of Wengophone (and the beta 1 version actually has alpha quality): it’s clearly an easy win for Skype, at least a +1.

=TEXTBOX_START=Alpha and beta releases=
  What is meant when people say software is alpha or a beta? I’ll pick a couple of snippets from [Wikipedia](http://www.wikipedia.org/), leaving it to you to read the [full article](http://en.wikipedia.org/wiki/Development_stage) if you want to know the whole story.

 
> The alpha version of a product still awaits full debugging or full implementation of all its functionality, but satisfies a majority of the software requirements. It often lacks features promised in the final release, but demonstrates the feasibility and basic structure of the software. The alpha build of the software is the first build delivered to the software testers..  A beta version or beta release usually represents the first version of a computer program that implements all required features although additional features may be added. It is likely to be unstable but useful for internal demonstrations and previews to select customers, but not yet ready for release. Some developers refer to this stage as a preview, as a technical preview (TP) or as an early access.. 

 
=TEXTBOX_END=

## Easy to install

Skype builds both DEB and RPM packages of his software, and has a repository that Debian and Ubuntu users can use to keep the application up-to-date. Wengophone 2.0 beta doesn’t come in a package yet, and hence is not as easy to install as Skype. Of course, when the final release of Wengo is out you’ll have a DEB package just as you have one for the “Classic” client. So for now, it’s +1 for Skype.


## Summing up...

Summing up, I should say that Wengophone beats Skype 12 to 11. It’s not a big win, but if you look at the points where Skype beats Wengo you can expect the situation to change as soon as a stable release comes out (e.g.: Wengo will gain some more points for stability and ease of install with a stable release). Letting it gain other points for the user base will depend on you using it, and getting a centralised contact list may depend on you whether you are a developer... So, download a copy and lend a hand!

=TEXTBOX_START=How far are we from the final release of 2.0?=
  I had a chat via IRC with Julien Gilli, an active member of the Openwengo team. Julien says that the 2.0 final is expected for the end of June 2006. The final release could have a centralised contact list provided via the Jabber protocol. Hence, another important feature could see the light with the final 2.0 release.

 
=TEXTBOX_END=

=ZOOM=A final release of Wengophone 2.0 is expected for the end of June 2006=


# Installing Wengophone “Classic”


=IMAGE=Screenshot-2.jpg=Figure 3: Wengophone “Classic” running on a Debian testing=

Wengophone 2.0 is not yet available in packaged form and hence cannot be installed from a standard repository on an Ubuntu or Debian Linux. If you’re a user of the brand new Dapper release of Ubuntu, you will find the “Classic” client in the repository “universe” and hence you can install it easily using synaptic. Wengophone Classic lacks many features of the 2.0 version, so it can barely give you a taste of it. Debian testing/unstable users have Wengophone Classic available as well. To install it, just follow the instructions found in [my article published in FSM, issue 11](http://www.freesoftwaremagazine.com/articles/synaptic_intro).


# Installing Wengophone 2.0 beta

As I wrote above, there is no pre-built package for installing Wengophone 2.0, so you will have to give up the comfort of your graphic interface and switch to the command line interface. Don’t panic, I am here to help.


## Step 1: Download Wengophone


=IMAGE=Screenshot-4.jpg=Figure 4: Downloading Wengophone 2.0 official beta from the wengo.com site; the link of interest appears zoomed in the red box=


=IMAGE=Screenshot-5.jpg=Figure 5: Downloading one of the Wengophone 2.0 builds from the wengo.fr site; the build you are interested in is usually the last one in the list=


<!--pagebreak-->


First, choose if you want to download the latest official beta from the Wengo site (figure 4) or one the latest periodic build that includes more bugfixes but could hide other problems somewhere (figure 5). In the first case, just download the [Wengophone 2.0 binary](http://www.wengo.com/index.php/mp_download_wp_lin); in the second case, get the last file in [the list](http://wengofiles.wengo.fr/nightlybuilds/binary/NG/GNULinux/).


=IMAGE=Screenshot-6.jpg=Figure 6: Opening the archive directly with the Archive Manager=

If you’re using Firefox to download it, you should have the option to open the file directly with the Archive Manager: just do it (see figure 6). It’s 16MB, it will take some time if you have a slow network connection.


=IMAGE=Screenshot-7.jpg=Figure 7: Downloading the software=


## Step 2: extract the archive


=IMAGE=Screenshot-8.jpg=Figure 8: The Wengophone archive opened in the Archive Manager=


=IMAGE=Screenshot-9.jpg=Figure 9: Extracting the archive with the Archive Manager=

In the Archive Manager push the “Extract” button: a window named “Extract” pops up. In the “Extract in folder” menu choose your home directory, then press the “Extract” button. The archive will be unpacked into your home directory (see figures 8 and 9).


## Step 3: running Wengophone

This could be a bit tricky for the entry-level; don’t worry, it’s nothing special, really.


=IMAGE=Screenshot-10.jpg=Figure 10: Open a terminal from here=

Open a terminal from the Accessories menu (see figure 10).


=IMAGE=Screenshot-11.jpg=Figure 11: Welcome to the wonderful world of the command line!=

You will get a window like the one in figure 11 above. Type in this command:


=CODE_START=

cd wengophone-ng-binary-latest

=CODE_END=

and then:


=CODE_START=

./wengophone.sh

=CODE_END=


=IMAGE=Screenshot-18.jpg=Figure 12: First time using Wengophone? Please create an account!=

A lot of messages will scroll into the terminal, you don’t have to worry about that. After a short time a couple of windows will come up (as shown in figure 12). You don’t have an account yet, so you should click on the “Click here” link.


=IMAGE=Screenshot-19.jpg=Figure 13: Creating a Wengo account!=

Your browser will open a page on the Wengo site (see figure 13). Fill in the necessary information and press the “continue” button at the bottom. You will receive a confirmation e-mail at the address you typed in on the form. Follow the instructions of the e-mail and log in: _Welcome to Wengophone!_


## Hic sunt leones (or: instructions for the brave user)

If you’re a bit more than entry-level, or you’re a System Administrator, you may want to install Wengophone for all users. Here I describe how you could do the installation, but in less detail than above. If you are more than entry level I guess that you won’t miss anything. I also put together some scripts to make this task easier.

First of all, get root access because you will need it. Download the binary and unpack it; then move all the stuff into the `/opt/wengophone` directory (or the one that better suits your taste).


<!--pagebreak-->


Copy the script below in a convenient place, e.g.: `/usr/local/sbin/wengoprep`


=CODE_START=


#!/bin/bash

if [ -z $1 ]
then
  echo "No args!"
  exit 1 ;
else
  echo "WENGODIR is $1"
fi

WENGODIR=$1

cd $WENGODIR || exit 2

echo "Fixating ownerships"
chown -R root:root .

echo "Fixating directories permissions"
find . -type d -print | xargs chmod 755

echo "Fixating executables permissions"
find . -type f -perm -u=x -print | xargs chmod 755

echo "Fixating common files permissions"
find . -type f -print | xargs chmod a+r


=CODE_END=

Make this script executable (with `chmod u+x /usr/local/sbin/wengoprep`) and run it as `/usr/local/sbin/wengoprep /opt/wengophone`; you may want to change `/opt/wengophone` with the directory where you put the files. The script will do several things:


* give the ownership of the package to the root user;
* allow everybody to read in the `/opt/wengophone` directory and subdirectories
* spread the execute permission of some files to everybody;
* spread the permission to access all the Wengophone files to everybody.

Then you will need a convenient way for all users to run Wengophone. If you want, you can copy and use the following script, copying it as `/usr/local/bin/wengophone` and giving all users the “execute” permission with `chmod a+x /usr/local/bin/wengophone`:


=CODE_START=
#!/bin/bash

WENGODIR=/opt/wengophone
WENGOBIN=qtwengophone
WENGODOT=$HOME/.wengophone
WENGOLOG=$WENGODOT/wengo.log
LD_LIBRARY_PATH=$WENGODIR

mkdir $WENGODOT 2> /dev/null
echo "Wengo starting: `date`" > $WENGOLOG
cd $WENGODIR || exit 1
export LD_LIBRARY_PATH
exec $WENGODIR/$WENGOBIN >> $WENGOLOG 2>&1


=CODE_END=

And that’s all! Now every user that wants to use Wengophone should just run the wengophone command with some means. I’ll leave up to you to find the best way for your users to do it.


# Using Wengophone

So you have fired up your Wengophone but it’s so sadly empty and you don’t know what to do with it. Again, I am here to help. I’ll start with instant messaging.


## Using Instant Messaging

You probably have an IM account somewhere already (on MSN, Yahoo, AIM, ICQ, a Jabber service or GoogleTalk). You will be happy to know that it’s not difficult at all to use them all in Wengo!


=IMAGE=Screenshot-14.jpg=Figure 14: Instant messaging in Wengophone=

In the Wengophone window, open the “Wengo” menu, and then “Edit my profile” (see figure 14)

Now, in the “Instant Messaging Accounts” section, press the “Add” button and choose the IM network you are connecting to, e.g.: AIM/ICQ.


=IMAGE=Screenshot-15.jpg=Figure 15: Adding an IM account=

Fill in the text fields in the window like in figure 15, then press “Save”. Press “Save” again in your profile window. It will take some seconds to Wengophone to authenticate, after which you will see your contacts filling your Wengophone! Repeat these steps with all your IM accounts and you’re done!


=IMAGE=Screenshot-17.jpg=Figure 16: Starting a chat; the chat button is zoomed near the Wengophone window=

When you want to start a chat with someone, just click on the contact and then select the “cloud” icon (see figure 16). You will get a chat window where you can type.


<!--pagebreak-->



## Placing a phone or wengo call


=IMAGE=Screenshot-16.jpg=Figure 17: Placing a phone call=

It’s just as simple as typing the full number in the textbox near the bottom of the Wengophone window and pressing Enter. Or, if you have a contact in your list that has a phone number, you can click on the icon near the number. If the phone number is registered but not displayed (e.g., the Work Phone number), then right click on the contact to get a contextual menu, select “Call” and then the number you want to call (see figure 17). Placing a wengo call is no different from this, but of course you will need a wengo user to call.


## Quitting Wengophone


=IMAGE=Screenshot-13.jpg=Figure 18: How to quit Wengophone=

When you had enough of it you can quit it right-clicking on the green ball on the system tray, and choose “Quit Wengophone” (see figure 18).


# Summing up

Wengophone 2.0, when it comes out, will have all you ever wanted from Skype: Free software, multi-standard, supporting SMS messages and video calls out of the box. Don’t miss the opportunity to get an early taste of it and be a part of the free software VoIP revolution. Please remember to give your contribution where you can.


# Thanks

I would like to thank the following people:

**Julien Gilli**, one of the great people at Wengo that are developing this fantastic application. Julien gave me a lot of insight into the development, and his help has been invaluable in getting this article right quickly

Antti "_al_" Laulumaa for reviewing the article and pointing out missing information

All the developers of the OpenWengo project for their great work.


# Bibliography

 [Wengo web site](http://www.wengo.com/)—Wengo is the VoIP service provider that backs Wengophone development

 [OpenWengo web site](http://www.openwengo.org/)—web site of the community and developers of Wengophone

 [OSS](http://en.wikipedia.org/wiki/Open_Sound_System) in Wikipedia

 [ALSA](http://en.wikipedia.org/wiki/ALSA_%28Linux%29) in Wikipedia

 [Skype DSP hijacker](http://195.38.3.142:6502/skype/)


