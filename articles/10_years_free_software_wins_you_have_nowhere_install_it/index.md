---
nid: '3371'
title: '10 years on: free software wins, but you have nowhere to install it'
authors: 'Tony Mobily'
published: '2010-07-29 8:14:29'
tags: 'linux,gnu/linux,android'
license: verbatim_only
section: opinions
main_image: hide.jpg
listed: 'true'

---
I am typing this as I am finally connected in shell to my Android phone. The prompt reminds me that it's based on the Linux kernel (it's free), the Dalvik virtual machine (it's free), and free libraries. Millions of Android devices are shipped every day, each one is a Linux system. Today, it's phone. Soon, it will be tablets: Android 3.0 (coming out at the end of the year) will finally be very suitable for tablets. Apple alone will have to face fierce competition on pretty much every front. Microsoft... who? They are more irrelevant every day. I should be happy, right? Well, sort of. Looking back at how long it took me to get this shell prompt makes me worried. Very worried. We are heading towards a world where we no longer own the hardware we buy -- and there is no point in having free software if you can't own your hardware.

=TEXTBOX_START=Apollo Project  and Contact Management=
Drowning in your TODO list? Need some [todo list software](http://www.todolistsoftware.us/)? Trouble organizing project and contacts?
Try Apollo, project and contact management done right.

[http://www.apollohq.com](http://www.apollohq.com)

A single-page Ajax application that finally looks and feels like an application.
=TEXTBOX_END=


<!--break-->

# Upgrading my Hero

This is the long story. In August last year (2009) I bought my HTC Hero. Mind you, I bought it. I didn't get it with a lock-in carrier plan -- I own this little white box, including its funny chin added by engineers who probably drank too much. When I bought it, it came with two things: Android 1.6, and a promise from HTC that the update for Android 2.1 would come out "soon". Just to be exact, my HTC was the "Telus" version -- I paid $100 more for it, because it works on UMTS at 850Mhz, which happens to be the insane, non-standard frequency that ex-monopolist Telstra uses for its 3G data plan.


=TEXTBOX_START=The 19th USENIX Security Symposium=
Join us at the 19th USENIX Security Symposium, August 11–13, 2010, in Washington, D.C.

Whether you're a researcher, a system administrator, or a policy wonk, come to USENIX Security '10 to find out how changes in computer security are going to affect you. The 3-day program includes an innovative technical program, starting with a keynote address by Roger G. Johnston of the Vulnerability Assessment Team at Argonne National Laboratory; invited talks, including "Toward an Open and Secure Platform for Using the Web," by Will Drewry, Google; a refereed papers track, including 30 papers presenting the newest advances; and a Poster session displaying the latest preliminary research. Gain valuable knowledge on a variety of subject areas, including detection of network attacks, privacy, Internet security, Web security, and more.

Register by July 19 and save! Additional discounts available!
[http://www.usenix.org/sec10/fsm](http://www.usenix.org/sec10/fsm)
=TEXTBOX_END=

HTC has historically made smartphones based on Windows Mobile. In order to turn Windows Mobile from a bad joke to something that is actually usable, HTC developed "Sense". Sense can be summed up as a bunch of custom modifications to the phone's user interface. When HTC got their hands on Android, they must have had two pretty scary thoughts: the first one was that Android by default came with a very good UI which didn't need the kind of tweaking Windows Mobile needed. The second one was that they had to come up with _something_ in order to give HTC some competitive advantage. So, they ported "Sense" to Android -- which makes it a little bit sluggish, it's totally not necessary, but it's there and it does improve in several departments (the keyboard being one of them).
This has some implications. The main one is that when a new version of the Android system comes out, HTC needs to apply Sense to the new version, test it, and make sure that it works. This takes a lot of time and effort. So, as a result, at this point _the Telus HTC Hero still runs on Android 1.6_. Yes, that's incredible. HTC and Telus keep on telling customers that it's not their fault, Telus hasn't requested it, HTC hasn't released it yet, and so on.

(And if you thought that Motorola would be any different, you are out of luck: they have "Blur" instead of sense, and they are about as responsive as HTC in terms of upgrading their phones to Android 2.1).

So, here I was: I needed to update to Android 2.0 or 2.1, since I needed to share my Internet connection while travelling. And couldn't. I will say it again: I couldn't. The phone was like Fort Knox. I wasn't "root" on my phone: I was a normal user. The only privilege I had, was that I could _use_ it. I couldn't boot from another operating system. I couldn't see the file system. I couldn't do and see anything other that what HTC decided I could do or see. The story goes on with me spending hours, and hours, and hours getting my phone "rooted".
It went more or less like this:

* Format my SSD flash memory stick, edit it by hand and stick some black magic code at the very beginning of it. This is apparently so that the phone doesn't complain if you _downgrade_ its ROM.

* Downgrade my system to the previous version, which was vulnerable to an exploit that allowed people to become root. This was the hardest thing to do, and was possible thanks to the previous step.

* Install a program that changed the boot loader into something useful, by exploiting the bug in the ROM I installed

* Install a new ROM -- my own, finally.

Yes. That is right: I had to _hack into my own computer/phone in order to do whatever I liked doing with it_.

# Where do you go?

I couldn't tell you "don't buy HTC", for two reasons: the first one is that HTC phones are actually painfully good. My HTC Hero is way better than an iPhone, has a long battery life, great reception, its CPU is fast... yes, it's a very good device. The second one is that from what I saw, pretty much every other phone maker is the same. They won't let you access the boot loader, and -- worse -- they won't release software upgrades for their phones because they want you to _buy_ the next model, with the next version of the software.

Google also stopped selling the Nexus One, which came "rooted" (meaning that you could easily install your version of Android on it as you like).

Basically at this point when you buy an Android phone, you have to hope that the very keen Android-hacking community has come up with a way of hacking into your own phone -- or you are royally stuck with whatever the phone came with.

So, right now if you buy a laptop and you want to run GNU/Linux on it, you have to worry about what piece of hardware won't work on it (I have two laptops, on one the Microphone and the fingerprint login won't work, on the other one the external speakers won't work). If you buy an Android phone, on the other hand, you have to hope that it's actually possible to hack into it and install whatever you like on it.

(I am not an Android developer, but I _think_ it's possible to purchase a "Dev" device from HTC, which allows you to flash a ROM. However, that's not good enough. You shouldn't have to spend more money on a developers' device on order to do whatever you like with it).

# Free software becoming meaningless

Android is indeed free software. You can get it, download it, run it on an emulator, change it, redestribute it, etc. However, mobile phone makers are locking everything in, so that you can't actually use this software in any useful way -- unless you are willing to spend hours hacking _your own device_.

I am not sure people ralise the gravity of this. It's as if a company sold you a laptop with GNU/Linux preinstalled, but that hardware didn't have any way to chose which device it will boot from, and you _didn't have the root password_.

If you think "big deal", think again. For example, being simply a user you cannot:

* Share _your_ internet connection
* Use _your_ phone as an access point
* Use _your_ phone for anything that might possibly displease your carrier
* Explore _your_ own file system and see how things actually work

The last point might not affect many people, but the other ones definitely will. And I am sure there is plenty more.

# My proposed solution

When I write articles like this, I always make sure that I have at least one suggested solution (otherwise I will end up sounding like a grumpy old man who doesn't have anything useful to say).
My solution is very simple: forcing hardware producers to sell their phones with a boot loader, in order to install your own custom ROM.
This could be done in such a way so that if you do access your boot loader, you lose your warranty (although this would be insane). There could be a per-device password, or _whatever_ way that will basically differentiate you from "common" users who don't feel the need to actually own their own devices.

This should be done _forcefully_. This means that they shouldn't have a choice. It should be done by law, or by contract (in the software license maybe?).

Otherwise, in the long term, we might end up having this great piece of software, and nowhere to run it. Now, that would be ironic.