---
nid: '3581'
title: 'Dialog Recording with Audacity and a USB Microphone'
authors: 'Terry Hancock'
published: '2011-10-28 11:49:35'
tags: 'movies,audio,audacity,sound,lunatics,microphone'
license: verbatim_only
section: end_users
main_image: audacity-linux.png
listed: 'true'

---
<!-- Dialog Recording with Audacity and a USB Microphone -->

Home recording is not that hard or expensive to do, and Audacity provides a great tool for recording and editing dialog. I recently got the equipment together to do decent voice recording for our "Lunatics" video project. Total cost was under $150.00 for a condenser USB microphone system, and the sound is a tremendous improvement over my previous attempts. Now our biggest challenge is the room acoustics.  So far, we're having a lot of fun recording dialog.

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies, _Marya Morevna_, through the [Morevna Project](http://www.morevnaproject.org) and [Lunatics](http://lunatics.tv), which we are working on as Anansi Spaceworks.
=TEXTBOX_END=

# Digital Voice Recording

PC microphones _can_ be very cheap. I've found electric condenser mics as low as $2 on sale, and $10 is a very common price. Such microphones usually plug into the microphone port on your sound card (or the built-in sound system on your motherboard.

This is adequate for many purposes, but if you want to capture an artistic performance -- a dramatic reading for [LibriVox](http://librivox.org/), for example, voice acting for an animated film, or music -- you'll need something a bit more serious.

Another problem of course is that Linux sound card support can be touch-and-go with some proprietary hardware, so the sound card support doesn't always work, and even when it does, sometimes it's more effort to get it working than it is worth.

Nowadays, though, you can get microphones -- even very good microphones -- that come with their own analog-to-digital conversion and attach via your computer's USB ports. I'm not certain how widely my experience will apply, but I have now tried two different USB microphones on two different computers (including a $40 [dynamic mic](http://www.amazon.com/gp/product/B000ULQTE0) which I wrote about in a [previous column](http://www.freesoftwaremagazine.com/columns/post_christmas_review_tech_toys_and_gnu_linux_compatibility)), and both worked the first time without a hitch.

This Summer, we hope to record a "temp track" for our pilot episode of "[Lunatics](http://lunatics.tv)", using just our own voices -- which means me, my wife (who is also the writer), and of course, our children, who we've recruited for the project. Even though this is probably not the final soundtrack, it was clear that we'd need a better microphone.

# Equipment

So I finally bought a mic, and so far it has worked beautifully for what we need. It is high enough fidelity that we are now concerned about the acoustical qualities of the room we're using for recording. Unfortunately, we are recording in my office, which has rigid, parallel walls made out of highly sound-reflective drywall, so it's pretty "live" acoustically -- we're thinking of building sound dampeners from corrugated cardboard boxes.  But that's for another day. Even with the less-than-perfect recording booth, we've now got much better sound.

Here's what we bought for this (the links are to Amazon, which is where I bought them, but of course they are available from other retailers):

* [Audio-Technica AT2020 USB Condenser USB Microphone](http://www.amazon.com/gp/product/B001AS6OYC) ($99.95)
* [Musician's Gear Low Profile Tripod Base Mic Stand Black](http://www.amazon.com/gp/product/B0018TC7BW) ($9.99)
* [Nady SSM-3 Shock Mount](http://www.amazon.com/gp/product/B0002F4WC0) ($14.99)
* [Nady MPF-6 6-Inch Clamp On Microphone Pop Filter](http://www.amazon.com/gp/product/B0002CZW0Y) ($16.09)

Total cost: $141.02

=IMAGE=fig_microphone_rig.jpg=Our microphone rig setup and working (note the blue LED that tells us the mic is on)=

This makes an excellent recording setup, as far as I can tell -- though I admit that I've only been doing this work for a short while.

The microphone itself actually comes with a tiny tripod stand, but I need the larger stand to provide a solid mounting place for the pop filter and sufficient leverage to use the shock mount. The shock mount holds the microphone to one side, so it's necessary to have a fairly strong and well-balanced stand to avoid tipping over. I chose this particular stand because it relies on a broad footprint rather than a heavyweight base, and it's somewhat cheaper. I need a stand of some kind to hold the pop-filter. It also folds up well and can be stored easily when not in use.

For those who are not so familiar with microphone technology, let me explain these choices:

=ZOOM=In general, condenser microphones are the highest fidelity - they have less inertia, and so they can keep up with high-frequency sound and rapidly-changing sound better=

In general, condenser microphones are the highest fidelity -- they have less inertia, and so they can keep up with high-frequency sound and rapidly-changing sound better. The drawbacks (the reason dynamic mics are still used for some purposes) are that they are a bit more fragile and they tend to pick up noises from air-movement (such as wind or breath sounds). They are also more sensitive to direct vibrations transmitted through the microphone stand. In other words, they are very sensitive, and this has both advantages and disadvantages.

Of course, you should avoid hand-carrying a microphone any time you can (more vibration and stray-sound problems), so we need a stand. The shock mount dampens most vibrations coming up through the stand, and the pop filter prevents breath movement from hard plosive sounds (like "p", "b", "t", etc) from striking the mic and making a characteristic "pop" sound on the recording).

=ZOOM=This microphone has a "cardioid" pickup pattern=

This microphone has a "cardioid" pickup pattern. The word means "heart shaped", but the real point is that it is somewhat directional -- the microphone picks up sound from directly in front of it much better than it does from the side, or from behind. If you are addressing the mic from the front, you are "on mic" and if you address from another direction, you are "off mic". This is the preferred pickup pattern for commercial voice work.

# Setup

Setup in Audacity is easy. Plug in the microphone to the USB port (it should automatically be detected if you have hotplug working). Open Audacity. Then just go to Edit->Preferences->Devices and then, under "Recording" select the microphone (in this case, "AT2020") from the device list. And set the recording mode to "Mono" (this kind of microphone only records a single track).

=IMAGE=fig_audacity_devices.jpg=Setting the recording device in Audacity=

I set the recording volume using the KDE mixer tool.

=IMAGE=fig_mixer.jpg=Setting the microphone capture volume with the KDE mixer applet=

After that, it's just a matter of setting the volume level -- be sure to keep it low enough so that you don't get clipping (i.e. when the sound is loud enough to overflow the digital representation). Audacity marks clipping in red (rather than the usual blue), which makes it much easier to spot.

# Results

I will be posting some of the voice work I've been doing in the near future -- both the dialog work for [Lunatics](http://lunatics.tv) and some dramatic readings I'm doing for public domain literature (starting with George MacDonald's "The Light Princess", which I've been wanting to record for years now).

This microphone has been a great improvement over attempts I've done in the past with cheap electret condenser mics, and it does have better definition and response than the dynamic microphone we tested earlier. It is _not_ the most expensive microphone around -- there are some $1000 microphones out there sold for studio use. Possibly if we had an ideal studio recording environment we might notice enough problems to justify such expenses, but as it is, we'll do much better to use this microphone and try to work on improving the acoustics of the "recording booth."

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=