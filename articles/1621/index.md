---
nid: '1621'
title: 'This is a sad, slightly unreal IT story'
authors: 'Tony Mobily'
published: '2006-06-22 8:33:56'
tags: 'wifi,airport,ms-server,iis'
license: verbatim_only
section: opinions
listed: 'true'

---
I had to spend 9 hours in Miami, waiting for a connecting flight. 9 hours wasn’t quite long enough to go out and about, but was long enough to get bored to death.

So, I decided that I would pay $7.95 for a “day pass” for the Wifi connection. The WiFi connection at the Miami airport is managed by people who don’t seem to know enough about computers to manage a home gaming LAN, let alone use Microsoft Server software for a real-life application (and, surprise surprise, nothing works).

What happened while I was trying to get my connection is simply unreal. It’s a story that is just hard to believe. Normally, when you are in a per-pay Wifi network and haven’t paid, you are redirected to the system’s home page. In this case, it didn’t happen—not easily. The redirection was glitchy and the WiFi home page had broken images.

There were other people using laptops. So, I asked around: “Are you getting wireless?”. We became a little club of unhappy WiFi users at Miami airport. I guess I did what I normally do—try to get things to work, somehow. I started going around asking for information. The hotel reception (which hosted the access point) had no idea what I was talking about when I said “Wifi”. The “Information” desk told me to go to ugly, expensive Internet kiosks. Another employee told me “We don’t have no Internet here”, but he was probably annoyed because I interrupted his **personal** phone call when I asked for help.

I went back. One of the people in our “WiFi club” was Allison from IBM Toronto Development Lab. Allison was on the phone with tech support. Well, so much for my macho “I’ll fix it” attitude... she had already gone much further that me! The number for support was 877 294 9434.

I asked her to pass me the phone as well. I discovered that they were “working on the servers and rebooting them”, and that the system should be back online in “ten minutes or so”.

I asked: "You use Microsoft servers, don’t you?" Unix servers very rarely need reboots.

“Yes, we do.”

“Gee good luck, I feel for you”

“Yeah, I know, I do too.”

Great. I hung up.

Allison was given a longer explanation: they said “We are expanding our network, that’s why we had to shut down the servers, so we now need to reconnect them and reboot them”. That’s Windows for you. After a little while I managed to **purchase** (let me emphasise this better: **PURCHASE**) a login and a password throught their web site. This is it, I thought. I am in. I receive login and password:

Your UserId is: jdw08313

Your Password is: jdw08313

This is when this story becomes sadly funny. When I typed the user name and the password in the login screen, I got this nice image:


=IMAGE=thank_you.jpg=Thank you?=

Gee, the server is not good enough to actually say “thank you”. Oh well... I could have lived with a bit of rudeness, if the connection was actually up. However... no, it wasn’t. Still no connection.

However, Allison noticed that _her_ connection was up! I don’t normally feel envious. However... well, this time I just did, I must admit. Allison and I admitted that we were email junkies. She was about to get her fix. I... well, probably not. She opened her email, and she had her first nice surprise: _three_ emails from the billing department at the airport. Allison was charged _three times_!

She called up to sort it out, selecting “billing enquiries”. She looked at me. Smiled. It was a bitter smile.

“You’re not gonna believe this. You really aren’t. The message says that if you wish to get a refund, or ask a billing question, you need to _send an email_”.

Of course I am not gonna believe this. I am not gonna believe it because I have experience with credit cards as a _merchant_, and I _know_ that they can’t do that. They _need_ to provide billing helpdesk in order to honour their contacts with the credit card company.

I asked her to borrow her mobile phone again. I tried to call the support number back. I had to bear hearing a recorded voice that confirmed that their systems were functioning properly. Eventually, somebody picked up the phone. The conversation went like this:

“How can I help you?”

“I am at the Miami airport, and I am trying to connect to WiFi but It doesn’t seem to (click)”.

Nice.

Allison confirmed that the same thing happened to her _twice_ to her when she rang: the minute she mentioned “Miami” and “WiFi”, the line went dead.

Even nicer.

I called back, again. This time I managed to keep the person on the line. He explained that they are restarting the servers, and would try to get an ETA. A few seconds later, he returned:

“It should work again in _one hour_ or so.”

I couldn’t resist. “Well, since I was charged for a 1 day pass, can you please refund my credit card right away?”

“You need to call back and follow the menu options for that, sir”.

“Err... yes, the trouble is, I am at the airport, and as you can probably guess, I will be in another country tomorrow. Allison just followed those instructions, and she was told that she should send an email. You know, I would _love_ to send an email, but I’d really like to talk to somebody right now...”

“Sir, you need to call back and follow the instructions.”

“Right. I’ll call back and follow the instructions.”

I hung up.

This sad story becomes worse. I connected to their server, and I got this page:


=IMAGE=under_construction.jpg=Under construction=

Under what?

The web server was IIS. Go figure.

I talked to Allison a bit. She told me what she does (she used to be a programmer!). At the end of our conversation, she gave me [this link](http://www.angustheitchap.com). She told me to go and check it out. I would have loved to, but I am stuck in Miami and...

Oh well. I guess it will need to wait till tomorrow.

So, here I am. I am in Miami, USA, I paid for my connection, and I can’t connect to the internet.

Here is a point list, in semi-random orders:


* Anybody who uses Microsoft Server products for anything important or mission critical has a rather considerable IQ problem. I mean, I can’t remember the last time I saw a Microsoft server under some stress and functioning properly. I can think of Helena, a friend of mine who had her account disabled because “Mac Mail had crashed the _university’s_ mail server”. I can think of my bank, switching to Windows for Internet Banking, and then switching back to Unix after loosing countless customers and vast amounts of money. The list goes on and on. Mind you, I am talking about servers that _do_ something—an IIS server that displays an “installation is successful” page doesn’t count.
* The Miami Airport uses Microsoft Server products for something important.
* The IT people at Miami Airport should be _sacked_ very, very quickly, because they used Microsoft servers that “needed to be rebooted to expand their network”. Hello? Does anybody here know what a server actually _is_?
* I want my money back—NOW. The only reason why I don’t feel like sending an invoice to Miami Airport is because I got to write a blog entry.
* The IT people at Miami Airport are inept, because 1) They charged my credit card while the servers were being maintained 2) They use Microsoft products 3) They were unhelpful from a technical point of view 4) They weren’t even able to offer a refund on the spot given the circumstances
* If this is how Miami Airport’s management deals with WiFi internet, I feel uneasy about flying in and out of their airspace.
* The IT people at Miami Airport are inept. No wait... did I say this already?
* We have a **social responsibility** to let managers know that we will not put up with Microsoft Server products doing anything remotely important. This is probably the most important part of this email.
* In Costa Rica, anybody gets free internet access after filling a simple questionnaire. The major difference is not that it’s free— but that it _works_.
* I feel the need to make sure that their credit card merchant provider _knows_ that they are not providing phone customer service (which they should), and are not delivering the product customers pay for. And... yes, get a refund.

From a human point of view, I really do feel for those poor system administrators who are trying to work out why the server... no, wait, the assembled PC with Windows NT 4 (I am only guessing). The “server” is probably giving a strange error message at boot time, or it has a corrupted registry, or whatever. I really, honestly, do feel for them from a human point of view. If I knew where they were, I’d make them tea, I’d tell jokes, I’d try to keep them smiling. From a professional perspective, they should learn Unix (GNU/Linux, AIX, Solaris, whatever), or find another job.

Please.

