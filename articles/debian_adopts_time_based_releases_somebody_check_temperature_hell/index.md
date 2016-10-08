---
nid: '3183'
title: 'Debian adopts time-based releases -- somebody check the temperature in hell'
authors: 'Ryan Cartwright'
published: '2009-07-31 10:13:29'
tags: 'debian,gnu/linux,distributions,releases'
license: verbatim_only
section: opinions
listed: 'true'

---
You may have seen that the Debian project (my particular GNU/Linux distribution of choice) has decided to [schedule fixed time-based releases in future](http://www.debian.org/News/2009/20090729). This has come as a surprise to many -- including possibly some Debian developers --  largely because of Debian's long-standing "we ship when it's ready" policy. So what caused this change of heart and is it a good idea.

# The case for shipping when it's ready

There is a legitimate case which has often been used in defence of shipping-when-it's-ready policies. Such a policy allows you the freedom to ensure the software you ship is stable (in your opinion at least) and has the features you said it would. Time-based releases place pressure on developers and can mean packages are shipped either in a less-than-stable state or the latest version is left out of the release altogether. Debian has traditionally steered clear of placing such pressures on its package maintainers and developers and this has led to it becoming one of the major distributions of choice for sysadmins around the world.

=ZOOM=Debian has traditionally steered clear of placing time pressures on its package maintainers and this has led to it becoming one of the major distributions of choice for sysadmins around the world=

That said Debian in particular has come under significant flak in the past for the time between stable releases. Often some key packages have been a version or two behind in Debian stable compared to other GNU/Linux distributions. This is particularly the case in the GNU/Linux desktop arena. In fact it could be argued that one appeal of Ubuntu was that it time-captured Debian unstable into a "stable" release on a more regular basis than Debian did with its testing version.  The legitimacy of labeling Ubuntu "stable" has been questioned before though, and it is true that Debian stable tends to remain in that state on a more reliable basis. They've even use it a selling point. Their [FAQs](http://www.debian.org/doc/FAQ/ch-choosing.en.html#s3.1.3) contain this statement:

> One can confidently say that the packages do not have any known severe bugs, security holes etc., in them. The packages in stable integrate seamlessly with other stable packages. **These characteristics are very important for production servers which have to work 24 hours a day, 7 days a week.**

and

> _As you can see, stability and novelty are two opposing ends of the spectrum. **If stability is required: install stable distribution.**_

Emphasis mine.

# Why change now?

So why have Debian changed tracks now? The official announcement says:

> _Time-based freezes will allow the Debian Project to blend the predictability of time based releases with its well established policy of feature based releases. The new freeze policy will provide better predictability of releases for users of the Debian distribution, and also allow Debian developers to do better long-term planning. A two-year release cycle will give more time for disruptive changes, reducing inconveniences caused for users. Having predictable freezes should also reduce overall freeze time._

Hang on a second -- _which_ users are being inconvenienced? Most of the Debian users I know are long-in-tooth, died-in-the-wool and other such euphemisms. There's a reason the grumpy sheepdog in the Bizarre Cathedral wears a Debian T-shirt. Most of these users _like_ the fact that Debian shipped when it was ready and not before. Debian stable was always just that -- stable.

And as for feature-based releases: I should acknowledge that Debian has only announced time-based freezes rather than releases. So the code will be frozen every other December. But they have said they plan to release that version during the following summer. Whilst this still gives some ability to delay the actual release, there's not much scope there. What I'd like to know is how they plan to blend time-based and feature-based successfully. It seems to me that one of the two will yield to the other and time usually wins over features.

# An embarrassing dad

This decision has more than a hint of keeping up with the Jones' (or Ubuntus). When discussing this, a friend -- and long-term Debian user -- described this decision as Ubuntu being the child and forcing its Debian dad to dance to the latest tunes. We've all seen (or been) dads who try to dance with the kids -- they end up looking daft.

=ZOOM=This is like Ubuntu being the child and forcing its Debian dad to dance to the latest tunes=

I really can't see why the change is necessary (as opposed to wanted). It's not like there are no other Debian-based distributions with shorter release cycles around. If users want that then why not use one of those?  It will be interesting though to see if Ubuntu base their LTS releases more closely on the scheduled Debian stable releases from now on and I suspect that may have been part of the reason behind the decision. 

# Bad doggy!

So -- if you haven't guessed -- here's my verdict: bad decision Debian. Debian stable has a deserved reputation for -- um -- stability. It has always been feature rather than time-based and many a sysadmin and server has benefited as a result. I fear now that we'll see a decline in the reliability of Debian stable systems now or -- worse -- the kind of release-then-immediate-security-patch mess that is more familiar to user's of a certain proprietary OS. Granted those patches will be more timely and easier to install on a Debian system. I know of several people who use other GNU/Linux distributions and almost all of them are more cautious than I am when it's time to upgrade to a new version. I'm not saying that Fedora, Ubuntu, OpenSuSE et al are not stable when released, but upgrading Debian stable to a new version is arguably less of a worry to the sysadmin involved.

At least it used to be.