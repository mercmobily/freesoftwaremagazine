---
nid: '2641'
title: 'How to make Jabber calls using Jabbin'
authors: 'Andrew Min'
published: '2008-01-09 1:54:19'
tags: 'jabber,instant-messaging,instant-messeger,instant-messengers,jabbin'
license: verbatim_only
section: end_users
listed: 'true'

---
Jabber is the only mainstream free (as in speech) instant messaging protocol. Unfortunately, most Jabber clients for GNU/Linux only provide options for messaging and group chats, overlooking the audio chatting portion of Jabber (powered by the Google-funded libjingle). Enter [Jabbin](http://www.jabbin.com/), the free Qt-based Jabber VoIP client.

<!--break-->

#Installing Jabbin

As always, the easiest way to install Jabbin is to use your platform's pacakge format. There's a wide range of packages for SuSE, Fedora Core 5, Debian, Ubuntu, Gentoo, Pardus, Sabayon, Mandriva, and Windows at the [official download page for Jabbin](http://www.jabbin.com/int/index.php/download). Unfortunately, the packages can be a little out of date. For example, the Ubuntu package won't even install on the latest Ubuntu (7.10) as it was built for an older version (7.04). Luckily, [there is a 3rd party .deb available of Jabbin](http://code.google.com/p/jabbin-svn-pack-kubuntu/), although it only has [Jabbin's latest SVN version](http://sourceforge.net/svn/?group_id=166861).

#Setting up Jabbin

Once you've finished install Jabbin, open it up and set up an new account (if nothing pops up, go to File→Account Setup, and click the New... button). Type in a name (e.g. `My Jabber Account`), and click the Add button. In the next window, type in your Jabber ID (e.g. `andrew@andrewmin . com`), your password, and any other things you wish to configure.

If you use Google Talk, enter your email as your Jabber ID (e.g. `andrewmin@gmail . com`), open the Connection tab, and select "Use SSL encryption (to server)", "Ignore SSL warnings", "Allow Plaintext Login", "Send Keep-alive packets (for NAT timeouts), and "Manually Specify Server Host/Port". Change the Host to `talk.google.com` and the Port to `5223`. Finally, change to _Misc_ and make the resource `Jabbin`. If you get a server authentication error, just hit Continue.

#Messaging, chatting, and calling

To begin a conversation, just double-click on a buddy or right-click on one and select Open Chat Window. A conversation window will then pop up. You can use emoticons, look up information of the buddy you're chatting with, and send file transfers (though this doesn't work with Google Talk buddies). You can also start group chats by clicking on the Groupchat button on the main toolbar. In the resulting window, type in the _Host_ and the _Room_ and click the Join button (again, this won't work with Google Talk buddies).

Of course, chatting is only half of the fun. The real enjoyment starts when you call people. All you need to do is to right-click on a buddy and click the Make Call button. A small window will pop up, and you will then be able to raise and lower the volume of your microphone and the speakers.

#Conclusion

Jabbin is a great Jabber program. Not only can it do the basic features like message and group chat, it can also do the crucial task of calling. Now, there's no need to download a proprietary tool like Skype or Gizmo. Instead, you can just use Jabbin.

* [Jabbin Homepage](http://www.jabbin.com/)
* [Jabbin's Ubuntu .deb](http://code.google.com/p/jabbin-svn-pack-kubuntu/)