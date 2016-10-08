---
nid: '2961'
title: 'Is Microsoft trying to kill Apache?'
authors: 'Gary Richmond'
published: '2008-08-08 17:32:25'
tags: 'microsoft,gpl,apache,copyleft'
license: verbatim_only
section: opinions
listed: 'true'

---
When the story about Microsoft shelling out $100,000 to Apache for ASF sponsorship broke across my radar it rather tickled my funny bone and my curiosity. When ASF Chairman Jim Jagielski declared that "Microsoft's sponsorship makes it clear that Microsoft "gets it" regarding the ASF" I had a fit of the giggles--and then, like many others, I started to ponder on the reasons why and what it actually meant.

# I'm not paranoid, but...

I am largely immune to conspiracy theories. I don't believe that the American government is behind a cover up at Roswell, but I am prepared to believe that when a company with the track record of Microsoft starts insinuating itself with Apache it is not with the well being of others in mind. The phrase ["extend, embrace and extinguish"](http://en.wikipedia.org/wiki/Embrace,_extend_and_extinguish) (E3) is virtually synonymous with Microsoft. The beast of Redmond's mercenary joyride down the digital highway is littered with unsuspecting roadkill and you really do start to wonder if Apache will need to re-read the Highway Code. Let's see if we can tease out just what is going on.

It has long been a mantra invoked regularly that "this year is the year of Linux on the desktop" but no-one ever says that about GNU/Linux on the server--because it has been "Linux on the server" for quite some time. Up to June of this year Apache had just over 49% of the server market. That distinction says it all. Microsoft may or may not be concerned about any inroads to its desktop market but it would certainly like to increase its presence in the server market (its FUD in respect of [TCO](http://en.wikipedia.org/wiki/Total_cost_of_ownership) is legendary). The relative stability and security of the GNU/Linux operating system is of course a given and when it runs the Apache web server they seem to have all the aces. This much we know. So what exactly did Microsoft do?

# Microsoft buys its way in

=ZOOM=For Microsoft that kind of money is the equivalent of that coin you lost down the back of the sofa last week=

Thanks to their bloated coffers, funded by the hated Microsoft tax, amongst other things, it was a financial non event for them to stump up the $100,000 per year to become a [Platinum sponsor of the Apache Software Foundation](http://www.apache.org/foundation/sponsorship.html#WhatIsProgram). For Microsoft that kind of money is the equivalent of that coin you lost down the back of the sofa last week. It goes towards supporting thirty five projects as well as all the usual administrative and legal expenses. Nothing untoward there. However, when you start to look at the matter of software licences the picture becomes more interesting.

# All licences are not equal

Most users of GNU/Linux will be familiar with the [GPLv3](http://en.wikipedia.org/wiki/GNU_General_Public_License#Version_3). It is certainly the most well known but it is not the only one and whilst Richard Stallman and his colleagues are quite evangelical about protecting the unsullied purity of that licence, others are not quite so scrupulous. There are quite a few variations and the Apache software licence is one of them.

The Free Software Foundation [(FSF)](http://www.fsf.org/) never accepted that the Apache Licence v2.0 was compatible with the GPLv2 and even though it now acknowledges compatibility between the Apache Licence and the GPLv3 it does not distribute software under that licence. Please, please correct me if I am wrong but it seems that the problems arise because the Apache licence is not viral and does not support [Copyleft](http://en.wikipedia.org/wiki/Copyleft#Is_copyleft_.22viral.22.3F). (In fact the Apache licence is not even "weak copyleft". It allows for the use of source code for both free and proprietary software) This means that programs written under the GPL could not link to other programs whose libraries were GLP-incompatible.

=ZOOM=since Microsoft managed to get OOXML adopted as an ISO standard it tends to leave a bad taste in the mouth. Yes, the good guys lost. Again=

Given these differences it is not difficult to see that Microsoft would find Apache a relatively attractive target as it licence is not as restrictive as the GPL.

Clearly Microsoft have not forgotten the profitable lessons from its extinction of the Mosaic browser by Internet Explorer. Like Apache, its open source licence was weak in terms of protecting itself from predatory monopolists like Microsoft who licenced it from [Spyglass](http://en.wikipedia.org/wiki/Spyglass,_Inc.) and then proceeded to shaft them by giving the browser away free, gutting Spyglass's licence revenue.

That adds a whole ironic dimension to Steve Ballmer's accusation that GNU/Linux was ["a cancer that attaches itself in an intellectual property sense to everything it touches"](http://web.archive.org/web/20010615205548/http://suntimes.com/output/tech/cst-fin-micro01.html). Who is the cancer here? This "support" for "open source" of course comes hard on the heels of co-operation between Apache and Microsoft to support the [OOXML file format](http://en.wikipedia.org/wiki/Office_Open_XML) in [Apache's POI project](http://poi.apache.org/) and since Microsoft managed to get OOXML adopted as an ISO standard it tends to leave a bad taste in the mouth. Yes, the good guys lost. Again.

# In one leap, from participant to contributor?

If I understand it properly Microsoft will now contribute patches for [PHP[(http://www.php.net/) under an FSF [LGPL](http://en.wikipedia.org/wiki/LGPL) (lesser GPL) They chose well. The LGPL permits source code to be used with proprietary programs. All the advantages without too many restrictions. Nice.  

That recognition perhaps brings us to the kernel (no pun intended) of Microsoft's motives. It has a vested interest in improving interoperability between PHP and Windows as this would help it reduce the drift of PHP to GNU/Linux platforms. Coughing up $100,000 would be a minuscule price to pay for stopping that drift but it is also an admission than Apache has beaten Microsoft's [IIS](http://en.wikipedia.org/wiki/Internet_Information_Services) (Internet Information Services). Or perhaps it will only be a Pyrrhic victory of sorts. Microsoft are now free to take Apache source code and proceed to amend, tweak or customise it to the point of what Bruce Perens has called ["engineered incompatibility"](http://itmanagement.earthweb.com/osrc/article.php/3762786/Bruce+Perens:+Microsoft+and+Apache+-+Whats+the+Angle?.htm) At that point Microsoft could repeat the successful disaster of bundling Internet Explorer with Windows, only this time it would be Apache and with all the attendant broken web standards that tormented web developers--but this time on the server instead of the desktop.

# What's to be done?

Perhaps the time has come for a review of the multiplicity of available licences, if only to protect free software from cynical predators like Microsoft. Safety is not necessarily always in numbers. Sometimes diversity can be as much a weakness as a strength. Ideally GPLv3 should be the role model here. It is the one licence most impervious to these stalking horse tactics and it is no surprise that Gates and Ballmer have always reserved their most vitriolic bile for the GPL. Stallman's seeming obduracy, eccentricity and unswerving take on the "political" nature of proprietary software will prove to be the best protection we can have in such circumstances. 

=ZOOM=Such misplaced generosity will simply invite Microsoft to pick off the Lamp stack one component at a time. Microsoft certainly "get it". Do Apache?=

Perhaps too it is time to reconsider a definition of cross platform that either restricts access by way of tighter licencing along the lines of the GPL or simply abandons making free software available on Windows altogether. I know that one of the ideas driving the cross-platform ethos has been that "information likes to be free" and to let Windows users sample GNU/Linux software on a proprietary operating system in the hope that they will be sufficiently enamoured to make the switch to using that sampled software on a GNU/Linux platform. That's certainly how I made the transition, but how many others do? Besides, reciprocity is, by definition, a two-way street and so far it's all been one-way traffic.

Perhaps the good folk at Apache know what they're doing and can handle Microsoft. Perhaps not. The precautionary principle has damaged the practice of science in the area of public policy but for once I agree with its caution. The [Recidivists of Microsoft](http://www.kmfms.com/whatsbad.html) should not be given the indefinite benefit of the doubt. Such misplaced generosity will simply invite it to pick off the [Lamp stack](http://en.wikipedia.org/wiki/LAMP_(software_bundle)) one component at a time. Microsoft certainly "get it". Do Apache?