---
nid: '1862'
title: 'Digital TV, Media Center and how to save a few bucks...'
authors: 'Mitch Meyran'
published: '2006-11-08 5:00:00'
tags: 'digital-tv,media-center,tv-tuner'
license: verbatim_only
section: opinions
listed: 'true'

---
I live in France. Yeah, I’m French. And while you may not know about it, we have both wonderful and damn annoying technologies at our disposal—like free, quite widespread digital TV broadcast. And here’s how I tried to save a few bucks.


# Some history


## Analog TV

The first TV broadcast standard was American: it was black and white NTSC, 30 interlaced frames per second (meaning 60 screen refreshes) of 480 lines. Soon enough, European countries created their own: 25 interlaced frames per second, each made of 576 lines (you would notice that both systems would display the same amount of lines: 14400 per second, right?)

Soon, colour was added to the mix: NTSC saw its frame rate drop to 29.97 because of that, and Europe adopted PAL.

Except France, where we decided to create SECAM. Why?

Of all the “large” countries in Europe, France is probably the most twisted in its relief: hills, mountains, rivers all over the place—and SECAM, while less efficient at colour fidelity than PAL is, just happens to be less sensitive to parasites than PAL (that, and the French always want to prove they can do stuff by themselves).

So, while on one side of the Atlantic you have NTSC (Never Twice the Same Color, as a former colleague of mine liked to call it) which is just horrible at treating film material (how do you convert 24fps film to 30fps?), in Europe you have two standards that actually work quite well together (a SECAM TV set understands the black/white information of a PAL broadcast, and vice versa) and movies just like it (accelerating a 24fps film to 25fps makes an hour go by in 57 minutes—hardly noticeable, and you get a 20% better vertical resolution over NTSC, without mentioning colour fidelity). Now what?


## Numeric formats

Where do those analog broadcasts hurt? To put it simply, the only useable frequency ranges are between 44 and 860MHz. Of those, 44 to 400MHz are used by other broadcasts, and 800 to 960 are extremely bad at distant broadcasting. Add to that the fact that you need to separate those frequencies by a dozen megahertz to prevent them from interfering, and then you need to avoid overlapping from one region to another, that actually limits the number of free channels to a small dozen.

Enters Digital Video Broadcast, or DVB for short.

This system is VERY simple yet quite clever: since VCDs and DVDs have proven the quality and ease of implementation of numeric video encoding/decoding, why not encode said video, compress it and broadcast it? Due to superior compression and self-contained corrective data, four to six MPEG-2 encoded broadcasts require the same frequency range an analog broadcast requires and can travel on longer distances due to the more resilient nature of binary broacasts over analog, which requires every nuance of the radio wave to be kept to make a meaningful image.

Meaning that, using DVB, you get better, more abundant stuff crammed into less space than before. Ain’t that great? In France they decided to call it Télévision Numérique Terrestre (TNT). The 18 national, freely accessible ones will use MPEG2, private, subscription-based ones will use MPEG4.


# Now why do I care?


## France’s twisted TV system

Some channels are state-owned, others are self financed through advertising, others broadcast clear content only part of the time and encrypted stuff that you need a decoder to get otherwise... The state owned ones, although broadcasting advertising, get part of their funding from a yearly tax which you pay for your household; if the best TV set you use is black and white, you pay around 80 EUR. If it’s in colour, it’s around 120 EUR. You can, however, have as many TV sets as you want in your house.

However, anything that isn’t a TV set, yet receives TV signals, isn’t covered by this tax: a computer with a TV tuner is explicitely exempt from said tax, and since I just moved (leaving my TV behind), I decided to save a few bucks and buy a tuner for my computer; not paying the tax actually covers more than twice the price I paid for my TV card, and I decided to get one I thought would be good: the Asus MyCinema 7131 Dual.

No, I’m not stupid, I did my homework: I found several reports of people having used it successfully with Linux—specifically, with the saa7134, saa7134-dvb and saa7134-alsa modules in kernel 2.6.15 and superior.

There is, of course, absolutely NO mention for any support under OSes other than Windows 3.11 to Vista on Asus’ website.


## Wonders and worries

The card is bundled with a software suite, made by Cyberlink: PowerCinema. It requires Windows XP at least, a very tough processor to handle the interface alone, a truckload of RAM, but it has one slight redeeming feature: it works with the tuner without too much of a hassle.

On the Linux side, loading the modules is as easy as typing `modprobe saa7134`; the card is detected, and `/dev/video0` just appears magically. Then I start tvtime.

Nothing.

Thinking that maybe tvtime doesn’t like my card, I install and painstakingly configure MythTV.

Yes, we have no banana.

I check the module’s configuration then hit Google, and I find out that I need to specify the card model: `modprobe saa7134 card=78`. Aaaah, of course...

I hit tvtime again. I get snow—which is, actually, an improvement. Still, I can change channels, getting different types of snow. I then try to set tvtime up again, using the nice text-based scripts to configure it, and I try to get a channel playing.

I’m up the creek with a broken paddle now.

So, I try some brute force detection: I browse the entire frequency range, starting at 44MHz up to 960, stopping one second at every 0.25MHz (or at least, tvtime-search does).

I get 21 positives; five of them maybe, show ghost images. The others show snow.

Thinking that maybe something is wrong with the card, or the antenna cable, or whatever, I decide to give the card’s software a try: I pull a Windows XP CDROM out of the dust, install it (2 reboots), then I install the driver (reboot), then I install the software suite (another reboot), then I notice that I must uprade my video card’s driver if I want to have a somewhat fast interface (yet another reboot), before I can FINALLY start a search for the channels and check if the system is in working order.

It is.

This damned, sluggish software that brings my poor old machine to its knees for stuff as inane as spinning buttons and animated mouse cursor, is able to find six channels in under a minute.

Now, I try to rationalize: since people have used tvtime and MythTV with success on my card, maybe I’m missing something?

Unfortunately, I don’t have internet access in my new place; so I need to wait before I look further into it. I browse man pages and documentation, I experiment with a few settings, look at configuration files more closely...

I’m out of chocolate chips cookies.


## The Graal?

Today, almost by chance, I fall upon a Gentoo tutorial on that very same module: saa7134. I start reading it, to discover to my horror that the previous document I had gotten (a post made on the Ubuntu forum) was incomplete.

Simply put, I had specified a card number to the module, but I didn’t know that this card had several possible tuners, and that said tuner needed to be specified too!

I had read seveal pages of internet stuff.

I had checked `modinfo output`, only to find parameter names with no information on what input they need.

I had read every damned line spouted out by `dmesg`, looking for a possible error.

I had hand-edited config files all over the place, so much that now I’m not even sure were to start to put them right.

Only to find out, in a single, buried article from a distribution almost completely geared towards geeks (even worse than Debian or Slackware) the clearest information about the matter.

The saa7134 module covers several models of chips, each of these being slightly different and impossible to identify that easily, and they can be coupled with an even larger array of tuners—which are, also, impossible to detect automatically.

The easiest way to find the correct one is to use `modprobe saa7134 card=x tuner=y`, and browse every settings until you find the best one.

Why can’t this be written somewhere? Why can’t we have some information about that module, what cards it knows, the settings it requires? I don’t know, but a simple warning if you do a modprobe with no settings, saying “Most cards require specific separate card model and tuner model, type `man saa7134` for a list” in dmesg would have been sooo damn helpful—and would have saved me hours of head scratching, Windows installing, rebooting and all.


# Conclusion

Free software is cool: it is extremely flexible, like this single module can prove: one driver can cover a staggering array of card models, and you already have it on your system. You don’t even need to quit what you’re doing to make it run.

This flexibility is however quite a hindrance when you don’t know its range. This experience I hope, will prove to everybody just how important documenting your code and software is. As you may have noticed, my problem here was not that I didn’t know how to configure the module, it was that I didn’t know what I needed to do to configure it! I didn’t know what were the means at my disposal to exert its flexibility.

Some of you may think that my oversight was laughable, but if I, who have been tinkering with software and hardware for years, couldn’t even have an idea of where the problem was located, how can you expect anybody less experienced to do so?

Now that I have an idea of where to look, I may be able to get rid of that pesky Windows again and enjoy TV on my 3D desktop...

