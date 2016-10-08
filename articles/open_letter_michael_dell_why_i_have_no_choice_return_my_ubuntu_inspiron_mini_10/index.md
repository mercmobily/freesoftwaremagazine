---
nid: '3195'
title: 'An Open Letter to Michael Dell: Why I have no choice but return my Ubuntu Inspiron Mini 10'
authors: 'Tony Mobily'
published: '2009-08-24 9:43:37'
tags: 'dell,inspiron,inspiron-mini'
license: verbatim_only
section: opinions
listed: 'true'

---
_UPDATE: as it turned out, I was shipped a faulty item by Dell. They changed the motherboard, and things worked smoothly. However, at the end of this exercise I learned that the selection of machines available with Ubuntu is still quite small -- hopefully they will extend it soon_

Dear Michael,

I have been a fan of yours for many years -- since I was a kid in fact! I watched as you created Dell, one of the first ("the" first?) companies that sold computers by mail order. I watched you become wealthy, successful, and then retire, only to come back to Dell to remind its managers what they seemed to have forgotten: listen to your customers. I watched you embrace GNU/Linux; I remember thinking: I wonder if people realise what this will actually mean. I am sure he does.

So, here I am: I bought an Inspiron Mini 10. I have no choice but return it. And now I can't stop wondering: how could Michael Dell get it just _so_ wrong?

<!--break-->

(I apologize for the length of this letter. Open letters should be straight and to the point... but this one is too detailed to be short. I hope you will still read it)

Let me explain. I ordered my Dell Inspiron Mini 10 on the 18th of June. When I ordered it, I noticed that while the Windows XP models were shipped within two or three days, mine would have taken about _three weeks_. It will be worth the wait, I thought. I did feel a level of discrimination, but hey, you were selling GNU/Linux laptops, and waiting three weeks was better than nothing.

For once, I did not check the machine's specs. It came with Ubuntu, it was _born_ with it and that was good enought for me. I was going to leave it as it came. Maybe Ubuntu 8.04 wasn't the latest version, but I didn't care -- for the _first_ time, I could finally buy a GNU/Linux computer that just worked!

The computer arrived much earlier than expected. It was shipped eight days later -- rather than the twenty one days your site had forecast. I wondered how many people had given up buying one due to the horrific three week wait. On June 26, the machine left Dell. A few days later, it reached my eager hands.

I travel quite a lot. In the end, I only managed to get my hands on this computer last week, August 12, while in Italy (where I still am, and about to go to Australia). I turned it on, thinking: the first time I turn on a laptop that just works!

But it didn't. As soon as the wireless card coughed into life, the computer froze.

Let me say this again: it froze.

A fantastic friend and IT scientist was sitting next to me as this happened. He looked at me. He said "This is impossible. They can't sell something that doesn't work. It's like... it's like selling a toaster that only gets the bread warm. Or... it's like... it doesn't work".

At that point, I actually hoped my computer was faulty -- I must be the only person on Earth who would even hope for that! I persisted and tried a few more times -- the little beast would freeze within three and six minutes. Guaranteed.

I searched online. Mine wasn't an isolated cases -- other people experienced freezes too with Inspiron Mini computer in their stock installation. I wasn't the only person who'd bought a toaster that only made warm bread.

Further online research revealed that tech support would have asked me to reinstall GNU/Linux using the install disk that came with the computer. I did just that. Result: it still froze, no improvements.

That's when I called the friendly tech support at Dell. This was my very first call to tech support of any kind. The technician, with his happy and broad Indian accent, explained to me how to run the hardware tests, a necessary step before he could pass me on to the Ubuntu specialists.

When I spoke to the Ubuntu specialists (I was on hold for only 20 minutes, which was great), I could hear that he was anxious to help me, but had no idea why the computer froze. He told me to reinstall it from the installation CD. I told him that I just did. He told me that the computer must be defective, and I should return it to Dell. I explained that I was travelling. He told me to call Dell, Italy, to arrange it. He couldn't answer the question "Do I have world-wide warranty?".

I installed Ubuntu 9.04 on it, and -- guess what? -- it no longer froze. However, there was another "little" problem: the VGA it comes with is only supported in Vesa mode by Ubuntu 9.04. It's a Poulsbo controller, which is very new and not recognised by the Xorg server. I was disheartened: I knew there was a way to get it working, because otherwise it wouldn't work in Dell's own version of Ubuntu 8.04. So, back online, asking the Google oracle for help -- which worked: I found out [how to install Ubuntu 9.04 on the Dell Mini 10](http://mok0.wordpress.com/2009/05/25/ubuntu-on-the-dell-mini-10-2/) -- by adding the "PPA" packages from the Ubuntu team. Following the instructions is not the easiest thing to do: you have to go through the comments to find out how to add the PPA's public key, and how to install the PPA kernels -- the latest Ubuntu kernel update breaks the new PPA xorg drivers (no 3D though). 
My last sentence sounds like a tongue-twister. It can be translated as "If you are just an end user, you can choose between a laptop that will freeze within six minutes, call your favourite GNU/Linux geek to get the graphics working, or more simply, just return the beast to Dell.

After all this, I discovered that my work was for nothing. Even with the new drivers, the system still freezes. It just takes a little longer to freeze - about an hour, an hour and a half. But it freezes.

This is why I decided that I would return the unit -- in a hurry. And ask for my money back, in an even bigger hurry.

I don't get it. When you build a computer for the GNU/Linux market, the single most important thing to do is use parts that you know will work well with GNU/Linux. Out of the box. There are plenty of cheap Intel-based cards that are well supported -- all of them would be a much better choice than the Poulsbo chipset that is new and hardly supported. The same applies to the wireless card: Broadcom has been Linux-unfriendly for years!

I will be returning my laptop, Michael. I must say that I am immensely disappointed. When I purchased it, I was pleased that I was giving money to a great company that sold GNU/Linux laptops. Now, I don't even know how to feel -- for myself, and for all those people who will buy a Ubuntu laptop, and will find themselves lumbered with something that simply won't work.

Thank you for listening to your customer,

Tony Mobily
Free Software Magazine
http://www.freesoftwaremagazine.com

P.S.
The touchpad is borderline unusable. When you click the buttons, the pointer will move. This is an engineering problem... did they even try dragging things around when they tested the touchpad's prototype?
