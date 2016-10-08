---
nid: '2799'
title: 'A world of beautiful broken toys'
authors: 'Terry Hancock'
published: '2008-04-08 13:57:19'
tags: 'defective-by-design,flash-drives,usb,toys'
license: verbatim_only
section: opinions
listed: 'true'

---
Proprietary culture dumps a lot of disappointing experiences on me. I really had this brought home to me by a couple of toys my daughter received for Christmas this year, which just refused to work with our family's Debian-based computers, and I have to wonder: what are these experiences teaching our children?

<!--break-->

One of the strongest memories I have from my toddler years is disappointment at a broken toy. It's a big deal when you're three or four years old. In my case, I found out the dog had eaten one of my favorite bath toys, and I was pretty upset about it at the time. I always flashback to just a twinge of that feeling every time I have one of those experiences of something that is almost, but not quite a really fun toy (especially when I've just shelled out cash for it for my own kids).

# You've got to have standards

Standards compliance is largely an up-market phenomenon. On the cheap side of the technology marketplace, a lot of companies just don't bother. And of course, that's where toys usually fall. These days, though, a number of these toys are technology products that are designed to interface with your computer.

This last Christmas, for example, I thought I would get an inexpensive (and tough) digital camera for my five-year-old daughter. A few years ago, this would've been a pretty difficult prospect, but having seen these things on the shelf at the local Walmart, I thought it might be worth a try.

=ZOOM=It was sold as a "keychain" camera, and being nearly a solid piece of plastic with no moving parts or exposed lenses, it was clearly designed to take a fair amount of abuse=

The one I picked out seemed perfect: it was essentially a USB flash drive with a camera and even a tiny preview display on it. It was sold as a "keychain" camera, and being nearly a solid piece of plastic with no moving parts or exposed lenses, it was clearly designed to take a fair amount of abuse. And at about $30, it was pretty hard to say it was too expensive to try out.

My plan was to buy it in advance and then test the ability to download it onto the (Debian GNU/Linux) computer that my daughter would be using it with. It'd be really cool if I could, for example, find a way for her to import the images into her favorite program, which is TuxPaint.

But then I got into a money crunch right before Christmas (happens a lot), and I had to wait until the last minute before I could buy the camera. So I wound up just wrapping it and hoping it would work. After all, how could they possibly screw this up? It's just a flash memory stick with a camera built onto it, right? It should just mount as any other flash drive would, right?

Well _of course not_. That would be too simple.

To make a long story short, the company, for some obscure and counter-intuitive reason, decided it would be more economically sensible to waste engineering time on designing their very own USB mass storage device interface, instead of using the free one that is made available to all hardware developers worldwide. Uh-huh. _Real smart_.

# More money?

Isn't this really my fault? Was I too cheap? Shouldn't I have just spent more money on a "real" camera?

=IMAGE=c20080402_dont_buy_this_camera.jpg=Don't buy this camera=

Well, the problem is that there really _isn't_ such a camera on the market. Expensive cameras (for that matter, even moderate-price cameras) are designed for adults, and so they provide extra features (such as variable focus) that are nice, but make the camera intrinsically more fragile. They're also awfully large for my daughter's hands. Besides, there's a certain limit to how expensive a product I'm going to let my five-year-old run around with on her own.

I could guarantee compatibility by getting a camera with a removable flash card memory (that way you can just pull the card out and put it into an industry-standard compatible reader). But the truth is, if I can take the card out easily, then so can my daughter, and there's a very good chance that she would just lose it (SD cards are very small!). So I was actually looking at the integral memory design as a benefit.

# Read the package?

Well, yeah, it says right there on the package that it only has support for Windows. But _sheesh_, what doesn't? As I pointed out in my recent article on [Free Software Friendly Hardware](http://www.freesoftwaremagazine.com/articles/purchasing_hardware_for_free_software), _most_ hardware that has Linux support doesn't advertise the fact, and in fact, _often_ has package requirements listing only Windows.

=ZOOM=Well, yeah, it says right there on the package that it only has support for Windows=

Besides, am I destined to be a second-class citizen just because I want to use free software? Is _my daughter_?

I really should have returned this thing. Walmart would've taken it back. Unfortunately, my daughter did get it for Christmas, and although it's a huge disappointment to me, she still appreciates using it as a toy: snapping pictures and flipping through the previews. So, I guess it's not a total loss.

# And another toy...

Happily, she also got a cool little puppy dog toy that has a image slide-show gadget in his tummy (you know, Teletubby style. Yes, it's kind of creepy, but it's not my fault; I didn't buy this one!). Anyway, you obviously just download pictures onto it from your computer, so it's _got_ to be compatible, right? I mean, it really _is_ just a USB mass-storage device.

_Ahem_.

Well, my computer did at least recognize this USB device. It's a "CD-ROM". _Uh-huh_. Once again with the "smart".

=IMAGE=c20080402_puppy_is_a_dog.jpg=This puppy may look cute, but he's a dog by design=
 
Just to add insult to injury, not only does this USB flash drive pretend to be a CD-ROM (and is therefore read-only), it pretends to be an auto-loading Windows CD-ROM with an AUTORUN.INI file and a driver waiting to install itself on my computer.

=ZOOM=Well, my computer did at least recognize this USB device. It's a "CD-ROM"=

Yep, it's a Trojan Horse.

So, even if I _were_ running Windows, this lovely toy would attempt to compromise its security for me. Furthermore, just to trigger my paranoia a little more, the AUTORUN.INI file isn't even fully readable—aside from a one-line message at the top that warns me not to touch the contents of the file, the rest is binary gibberish (which is pretty weird in an INI file, at least the last time I used Windows. Admittedly, that was last century, but still). What is it? Some kind of cryptographic key? An obscured INI file? An executable stored in the INI file? But _why_? "Open your mouth and close your eyes, and you'll get a nice surprise"!

=ZOOM=Why should I spend weeks of reverse engineering time trying to fix what stupid engineers screwed up?=

But I guess Windows users are used to that kind of abuse.

Presumably, this driver that it wants to install is yet another re-invention of the USB mass storage standard, specially designed for incompatibility.

# Community support?

Oh come on. Is it even worth it, for a $30 toy? Why should I spend weeks of reverse engineering time trying to fix what stupid engineers screwed up?

# How are we going to fix this?

I'm not sure I really have an answer for that. It might be that Open Hardware is our only solution. If big producers are willing to waste engineering time and drive up costs in order to ensure that their customers are locked into a particular platform, then I suppose we just can't expect to rely on them much longer. If we let them have their way, then (apparently) we will indeed have a world of beautiful toys that are pre-broken from the factory.

=ZOOM=If big producers are willing to waste engineering time and drive up costs in order to ensure that their customers are locked into a particular platform, then I suppose we just can't expect to rely on them much longer=

Or maybe there will be a wave of nifty Linux-based gadgets that will work. My kids did enjoy playing with a GP2X, for example. I hope to do some more development for it this year. But I don't know if that'll be the answer. After all, those platforms are usually pretty expensive.

As things stand, I just haven't found anyone trying to serve the market of toys for children who use free software, even though I for one would pay two or three times as much for products guaranteed to use free standards. Most of the free-software oriented "toys" are really gadgets for adults, with children's use at best an afterthought. Meanwhile, the proprietary culture is producing cheap, mass-marketed, standards-incompatible technology which teaches our children that only proprietary software works.

# The lesson?

What cost can you evaluate on the disappointment of a child? Or on the value of avoiding it? What does it teach our children when they can't have the things other children take for granted, simply because it was designed not to be compatible? Will they blame their parents for having a conviction to freedom of control over their technology? Do they learn that society is working against them? Do they learn that "all technology is essentially broken"?

The earliest experiences of children are powerful motivators for the adults they will become. Early experiences with technology may determine whether they develop a life-long interest or a deep-seated resentment. Can we afford to let our society ruin those early experiences? And if we can't, how can we stop it?

=TEXTBOX_START=The Problem Devices=
I don't really want to put too much emphasis on trashing these two particular products. They are really just two tiny examples of a much broader phenomenon. However, for the record: the camera was a [Suprema](http://www.goldline-usa.com/camera3.php?table=suprema&ID=71) digital keychain camera, sold in the USA by a company called [Goldline](http://www.goldline-usa.com). I'm not certain of the actual manufacturer or engineering company behind it. 

The photo puppy is a "Photokinz" from [It's Outrageous](http://www.itsoutrageous.com).

Both sites do contain means of providing feedback on their products; it might be useful to remind them that some potential customers value their children's technological freedoms.
=TEXTBOX_END=

