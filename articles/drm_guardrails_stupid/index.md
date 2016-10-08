---
nid: '1622'
title: 'DRM, guardrails, and the right to be stupid'
authors: 'Terry Hancock'
published: '2006-06-19 4:00:00'
tags: 'drm,newsletter'
issue: ''
license: verbatim_only
section: opinions
listed: 'true'

---
I’m a big believer in rights. I believe in the right to speak your mind, the right to act however you want, as long as you aren’t interfering with others’ rights; I even believe in more controversial rights like “the right to die”, and one of my favorites is the right to be _stupid_.

What do I mean by that? Well, I think that if people want to jump out of airplanes, down cliffs, or free-climb El Capitan, like Captain Kirk, they should be allowed to do that—even though it’s very clear that they may be stupid things to do that are likely to get them killed. One of the more powerful and hard to refute arguments for Digital Rights/Restrictions Management (DRM), though, is that it can be used in life-critical systems to prevent failures due to users’ own modifications—and it seems to me that this is a sticky case of balancing the right to be stupid with the right to be ignorant.


<!--break-->


The flip side of that right to be stupid is the responsibility to not be ignorant. If you are free-climbing a 100 meter cliff, you need to realize that you are taking your life into your own hands. Furthermore, you (and your next of kin) have to give up the right to blame somebody else if you die or become severely injured as a result of your own stupidity.

Of course, there is a flip-side to this. Favoring the “right to stupidity” does not include a manufacturer’s right to sell you a circular saw with no guard on the blade—because you, as the end user, have little power to control that practice. So we have legally-mandated vendor obligations.

=TEXTBOX_START=Book Competition!=
This week we are giving away a copy of[Learning Perl](http://www.freesoftwaremagazine.com/articles/book_review_learning_perl) by Randall L Schwartz, Tom Phoenix, and brian d foy.

All you need to do to enter is check out the [latest book competition announcement](http://www.freesoftwaremagazine.com/blog/1) on our blogs page.

GOOD LUCK!

_Thanks go to _[O'Reilly](http://www.oreilly.com/)_ for providing this fantastic prize._


=TEXTBOX_END=
Meeting those obligations is a bit like requiring the Park Service to put a guardrail along the viewing areas along the side of the Grand Canyon. But do we need it to be a federal offense to climb that fence?

DRM can be used as a kind of guardrail, too. Consider for example, the embedded system that controls the anti-lock brakes that you very likely have in your car. Free software advocates argue rightly that free and open development methods are likely the best way to make those systems foolproof. But consumers (and therefore manufacturers who serve them) want to make sure they can’t be tampered with, and DRM seems like the right tool to do that with. After all, the promise of DRM is that you can’t change the code—that if the code is modified, the whole system won’t work (ideally, the car wouldn’t start). This could save your life.

But it also denies the possibility of the off-road racer who wants to modify the code to work better for him. If he’s willing to take the risk, then he should be entitled to—it’s his car, and he should have the right to be stupid with it if he wants to.

After all, I _can_ remove that guard off of my circular saw, or lock it into the open position (and there are a few practical reasons for doing so). This is a bit like having the key to the DRM—which is what the new GPL version 3 asks for.

It’s a bit trickier with software though, since I could carefully remove the guardrail DRM and then pass the crippled result on to someone else who would be unlikely to figure out what I had done. If the system failed as a result, it’s very likely the original manufacturer who would be sued, not me—and that’s why DRM that is unbreakable (by virtue of law—specifically the Digital Millennium Copyright Act (DMCA)) is attractive to the manufacturer. That’s where the “right to be ignorant” comes in—it seems like an excessive burden for the person I passed the software on to to be able to figure out what I did. That implies that he should have the “right to be ignorant” of what I did without endangering himself. Our comfortable, low-risk society depends on a lot of this kind of ignorance, and given the complexity of the world around us, this may be an unavoidable necessity.

One compromise that occurs to me, is a crack-the-case rule: what if the manufacturer provided a mechanical means to disrupt the DRM? We’ve all heard of mod-chips, but what if the GPL version 3 required that the “mod” be included with the product? That might sound difficult, but it isn’t—all you’d need is the lowly “jumper”, which is a pretty cheap piece of technology. Put a jumper block inside the case, so that that would-be tinkerer has to crack the case and set it.

This strikes me as adequate proof that the user really did want to change the code, and if you put one of those special “WARRANTY VOID” stickers that leaves an identifiable trace behind if it’s broken or removed over the seam in the case (as is done all the time with videotapes, for example), that would seem to serve both parties—the manufacturers (and anyone who buys the used equipment) gets a physically-verifiable disclaimer of responsibility, and the hacker gets the freedom to hack the hardware he’s bought and paid for.

Right now, the GPLv3 insists on a software key to be able to sign software for embedded devices—but I wonder if there’d really be any problem with the key being hardware, provided that the necessary hardware is included with the product?

Just a thought...

