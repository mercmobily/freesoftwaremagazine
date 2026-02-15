---
nid: '2747'
title: 'Twinkle: My favorite SIP program'
authors: 'Andrew Min'
published: '2008-03-11 8:22:21'
tags: 'voip,twinkle,sip'
license: verbatim_only
section: hacking
listed: 'true'

---
I've been looking for an SIP program for a long time. Linphone, OpenWengo, and Gizmo all failed to work with my Logitech AK5370 USB microphone (ah, the joys of drivers!). Eventually, after about half a dozen programs, I gave up. Then, out of the blue came [Twinkle](http://www.twinklephone.com/), a Qt-based VoIP phone.

<!--break-->

# What is Twinkle and how do you get it?

Twinkle is, as I mentioned above, an SIP program. SIP is a protocol for voice-over-internet-protocol (VoIP). Basically, it enables users to call each other using only their computers and a microphone. It's also an open protocol; so, unlike a closed protocol like Skype, you can use any program that supports SIP rather than being tied to a specific client.

Since Twinkle is a popular program, it's already in most of the repositories out there. Debian and Ubuntu users can install the _twinkle_ package in their repositories, while openSuSE users have Twinkle pre-installed in the DVD version. You can also compile Twinkle from source, though you'll need Qt's headers and a few other libraries (_don't_ use Qt 4.4, use 3.3.0 or later). See the Twinkle homepage for more information.

# Setting up Twinkle

The first thing you need to do is get an SIP account, which is similar in concept as an email address. For this article I'm using one from [sipphone.com](http://sipphone.com/), but you can use one from any SIP provider out there (though SIPphone offers several nice features, which I'll detail below). First, create an account at [the SIPphone signup URL](https://signup.sipphone.com/new-users/app?class=NewUser;proc=start). Then, open Twinkle. If it's the first time you run it, a wizard will be activated. Otherwise, go to File→Change User and click Wizard. Either way, enter a name for your profile (e.g. SIPphone) and hit next. At the following screen, choose `SIPphone!` as your service provider. Enter your user name (e.g. `andrewmin`) and your password that you got when you signed up in their respective fields and hit OK. At the next screen, make sure your profile is checked. Now, you should be connected.

=IMAGE=figure_1.jpg=Figure 1: Configuration for SIPphone=

# Trying out Twinkle

Now that you've got Twinkle set up, it's time to call someone. Instead of bugging a random person, you can simply call an echoing service. To do so, type sip:username@domain.com in the Call: field and hit Dial (`sip:echo@proxy01.sipphone.com`, the SIPphone echo tool, and `sip:enum-echo-test@sip.nemox.net` are two good echo services). Anything you say into the microphone should be instantly echoed back to you. If it doesn't, check your audio settings under Edit→System Settings→Audio (try changing from OSS to ALSA).

=IMAGE=figure_2.jpg=Figure 2: Calling the echo bot at nemox.net=

# Twinkle Tricks

One really nice feature for KDE users is the integration with KAddressBook (the Address Book section of Kontact). All you have to do is add an SIP address in the phone field (e.g. `sip:andrewmin@proxy01.sipphone.com`) and Twinkle will automatically pick it up when you click the Address Book button (next to the Call field).

But what if you don't use KAddressBook (or KDE, for that matter)? Well, Twinkle also offers a very nice built in address book. To set it up, click the Address Book button (next to the Call field) and click on the Local address book tab. Then, click Add to add a person to your list. To call the contact, just double click on the name and the person's name will be put in the Call field. Then you can just click the Dial button to call.

=IMAGE=figure_3.jpg=Figure 3: My (very short) contact list=

Sometimes when you're talking to a robot at the other end of the line you are asked to use a dialpad. However, you may have noticed that Twinkle... doesn't have a dialpad. Luckily, that's easy to fix. Just click inside of the Display text area and type whatever you want using the numbers on your keyboard. Every number will be sent over the airways to the recipient.

Another really neat trick is the ability to run scripts on certain events. For example, you can have a KDE dialog pop up when you have a call coming in. It's simple to do: create a Bash script (e.g. `kdialog --title "Incoming Call" --msgbox "Dude, you've got a call waiting!"`), save it with a .sh extension (e.g. `twinklecall.sh`) in a place you'll remember (e.g. `~/twinklescripts/`), and make it executable (`chmod +x twinklecall.sh`. Then, open the scripts dialog in Twinkle (Edit→User Profile→Scripts) and put the location of the script (e.g. `~/twinklescripts/twinklecall`) in the field you want it to be executed (e.g. the Incoming call field). Now, every time that event is triggered, your script is run.

=IMAGE=figure_4.jpg=Figure 4: Using a [Zenity](http://fosswire.com/2007/12/23/gtk-dialog-boxes-from-shell-scripts/) script for a GTK dialog box=

Sometimes, it's important to have a encrypted line. Twinkle offers this in the form of ZRTP/SRTP encryption (David Sugar [has a good article on this topic](/articles/secure_voip_calling_free_software_right_to_privacy/) ). To enable it, open the Security dialog (Edit→User Profile→Security) and check Enable ZRTP/SRTP encryption. Note that if the other party doesn't have this feature enabled, the encryption may not work.

# SIPphone tricks

One of the few things Twinkle is missing is built-in voicemail (it supports third-party voicemail, however I couldn't figure out how to set up SIPphone with it). Luckily, if you're using SIPphone, it's extremely easy to set up a voicemail. Just dial `sip:record@proxy01.sipphone.com` and follow the the onscreen instructions.

Another nice feature is the ability to do a voice conference using SIPphone (Twinkle doesn't yet have this ability). To set it up, go to [this Gizmo address](http://www.gizmoproject.com/conf-calling.html?utm_source=welcome&utm_medium=email&utm_campaign=autoresponder) or dial `sip:CONFERENCE@proxy01.sipphone.com`.

# Conclusion

Twinkle is an extremely powerful and handy SIP client. It's my current client, mostly because it just works terrifically. So if you just something that works great, Twinkle is a great option.

# Links:

* [Homepage](http://www.twinklephone.com/)
* [User group](http://tech.groups.yahoo.com/group/twinklephone/)