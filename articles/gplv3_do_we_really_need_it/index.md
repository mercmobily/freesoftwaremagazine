---
nid: '2060'
title: 'GPLv3: Do we really need it?'
authors: 'Wouter Verhelst'
published: '2007-02-13 11:47:38'
tags: 'gplv3,licenses'
license: verbatim_only
section: opinions
listed: 'true'

---
I assume that people who read freesoftwaremagazine.com will most likely be aware of the fact that the Free Software Foundation is working on an update to the GPL version 3. If you're not, a number of articles and blog posts [have been written](/taxonomy/term/152) on the subject. But with the Linux kernel developers stating that they oppose many of the changes, and with some people licensing software explicitly as "GPLv2" rather than "GPLv2, or any later version", one could wonder whether the whole update effort makes any sense.


# Differences

Let's have a look at the most important changes between version 2 and version 3 of the license:


1. Definitions and wording have been changed so as to not rely as much on US copyright law as version 2 did.
1. Additional clauses have been added that try to counter DRM.
1. Anti-patent clauses have been extended.
1. An entirely new section has been added to enumerate a number of restrictions which any developer can add to the license, in an effort to make it more compatible with other free software licenses.


# Opinions, opinions

Much of the disagreement with the direction the GPLv3 is going stems from the anti-DRM clauses. Many people feel that DRM is orthogonal to free software; that writing software which implements DRM functionality is not inherently wrong. The Free Software Foundation disagrees; in their opinion, anything which restricts a users' rights to use the software as they wish should be abolished. This includes DRM.

One could say that this indicates one of the major differences between the open source and free software movements: where open source is a methodology to improve software quality, free software is about freedom. Creating software that implements DRM technology should be possible using any _methodology_; however, creating software that restricts a users' freedom to do what they wish with the software is perpendicular to the intent of ensuring their freedom by writing free software.

These differences in opinion have been rehashed for quite some time in many places on the Internet, and the anti-DRM clause alone has been reason enough for some people to claim that the GPLv3 is unneeded. But that statement ignores the other differences between the GPLv2 and GPLv3.


# The point of the non-DRM changes

Internationalizing the license is not critical to the continued legal value of the GPL. However, clarifying a license so that its intent is clear using terminology of any jurisdiction can only be a good thing. While this change alone is not why the GPLv3 is needed, it certainly is an argument in its favor.

Being compatible with more free software licenses is a laudable goal that the GPLv3 tries to accomplish. License proliferation has been a constant source of problems to the free software movement as a whole; the ability to combine GPL'd software with more free software than is the case with the GPLv2 will allow the free software movement to do more with the available software out there. This can only improve and stimulate innovation, which is wonderful.

Finally, extending an anti-patent clause so that it is clearer and catches more cases of patents which stifle free software innovation may just help in reducing the effect that patents have on free software. It probably won't help us get the world rid of software patents; but since free software and software patents are incompatible by definition, explicitly stating that is a good thing.


# Conclusion

The GPLv3 tries to accomplish many things, some of which may be incompatible with the goals of the open source (as opposed to free software) movement. But even if you feel that these parts are unnecessary and should not be added to the license, I feel you should agree that the other parts _are_ a good thing, and should be welcomed. For one thing, it would remove the OpenSSL/GnuTLS problems...

