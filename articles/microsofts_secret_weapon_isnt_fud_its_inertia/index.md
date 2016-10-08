---
nid: '3157'
title: ' Microsoft''s Secret Weapon isn''t FUD, it''s Inertia'
authors: 'Gary Richmond'
published: '2009-06-18 9:08:22'
tags: 'microsoft,gnu/linux,windows,viruses'
license: verbatim_only
section: opinions
listed: 'true'

---
This is a story of hubris, nemesis and very bad language. Mine. We all like to have our egos flattered and I'm no exception, so when two old acquaintances told me their Windows laptops were infected with viruses I knew they were about to put the bite on me. They did. Could I fix them? Well, my vanity was flattered of course but it was to be a salutary experience that got me to thinking about whether it will ever be possible to wean users off Microsoft products.

<!--break-->

When I first started using GNU/Linux my first successful experience was with Redhat 9; once I had given the Alcatel green frog the boot and installed a router I was happily surfing the internet too. The migration from Windows ME was largely painless, saving the learning curve of software installation which was new to me in a non-Windows environment. The developers of various distros had understood that powerful and important as the command line was (and still is) they would need a point and click front end to lure Windows users away.

=ZOOM=The eye candy seems to have progressed geometrically ever since, with distros like Mandriva and Ubuntu leading the charge=

The eye candy seems to have progressed geometrically ever since, with distros like Mandriva and Ubuntu leading the charge. Special effects like Compiz which add little real functionality to an operating system have been added perhaps in the hope of dazzling the Redmondites with the shiny baubles. KDE4 is full of it. Many disgruntled KDE3.5 users regard it, frankly, as broken, a solution in search of a problem. If all of this, any of this, is designed to convert users to GNU/Linux then it isn't working and it won't work. My experience of trying to fix those infected laptops told me why.

# It's the usual culprit

Those laptops had a common problem: Internet Explorer. They were using it as their sole browser and hackers duly used it as the portal to invite themselves into their computers (assuming they hadn't come in via an infected e-mail in Outlook Express). Questioning them, I was depressed at how few precautions they had taken to secure their computers. A virus scanner came pre-installed with the operating system but could only identify viruses. If you wanted to remove it, then it was, you've guessed it, pay up time. It never occurred to them to install a scanner which could detect _and_ remove viruses. Despite installing ClamAV for Windows, I was unable to remove the offenders. I discovered later that the Win32 Cryptor virus seemed to be clever enough to avoid removal by scanners. I tried AVG too. Same result. 

To rub salt into the wound I couldn't even remove the damn scanner either. (It was causing and endless series of pop ups for virus warnings.) Uninstalling under the Windows Control Panel failed. I haven't used Windows for so long that I wasn't prepared to risk a manual removal and bork latops not belonging to me. They were in bad enough shape without me making things worse.

=ZOOM=I realised these were going to be the last Windows machines I was ever going to attempt to fix=

Then, from the subterranean depths of my memory I recalled that Windows had something called Restore Points. Had they set one, I enquired naively? One hadn't. The other didn't even know what they were. So, no possibility of putting Windows back to the last known good state (if that's not a contradiction in terms). 

Wary of even attempting to navigate the digital cesspit that is the Windows Registry to remove the offending virus I opted for the coward's way out and installed Firefox and Opera accompanied by strict warning to avoid Internet Explorer like the plague. At least it made the users less likely to pick up something nasty via ActiveX. I'm ashamed to admit that I even suggested that the best solution might be the nuclear meltdown one: a clean reinstall. That caused confusion too. Use the factory reinstall disc that came with the computer? What's that? In the meantime, stay away from IE and use Firefox. It's got addons, tabs and good cookie controls. What are they? 

At that point I realised these were going to be the last Windows machines I was _ever_ going to attempt to fix. The dubious pleasures of _schadenfreude_ have paled and I weary of its delicious cruelty. The pain of just wading through Windows at all eclipses the illicit rewards of trying to put users on the straight and narrow.

# The medicine isn't working, but keep taking it anyway

=ZOOM=Windows '95, Windows Me, XP and now Vista. Same operating system, same result, madness. Will they never learn?=

I don't think that these users were atypical. Bill Gates and Steve Ballmer should make them honorary employees of Microsoft. Like Jobs, they will never abjure Redmond no matter what torments they are sent. Why? The average computer user doesn't care about what's on a computer until it goes pear shaped and even then they'll plough on anyway and pay expensively to get the problem fixed, effectively acting as dynamic multipliers in the world economy by employing the whole ambulance-chasing industry called security. Or corner some idiot like me, with delusions of adequacy, to fix things for free. Or at least try -- and fail miserably.
 
Albert Einstein said that madness is defined as doing the same thing over and over and expecting a different result. By any measure, the average Windows user must be perilously close to being sectioned under the Mental Health Act. Windows '95, Windows Me, XP and now Vista. Same operating system, same result, madness. Will they never learn?

The real lesson of this sorry episode is that maybe, and I say maybe, the best efforts of Mark Shuttleworth will never be enough to lure Windows users away. It's not a technology problem, it's an inertial mindset problem. He will persuade a small number of the curious to jump ship but these will be mostly power users who probably didn't need all the graphical bells and whistles in the first place.


# Safety in fewer numbers

It is said usually that there is safety in numbers, in the sense that Wildibeests congregate in numbers to cross Alligator-infested waters. The opposite maybe true for GNU/Linux. The superior coding and security notwithstanding, the market share of GNU/Linux is, paradoxically, it's best protection from the problems besetting my two acquaintances. 

It's simply not productive to write viruses and Trojans for several operating systems, ten browsers and six e-mail clients. Write for one operating system -- Windows -- and deliver your payload to that 95% of the market share. So, small is beautiful, less is more.

=ZOOM=Having your operating system on a computer after it rolls off the production line is a priceless advantage that money can buy=

So, what about Windows users? First, make sure users migrate because _they_ want to; educate them about GNU/Linux, but make sure they migrate for the right reasons and the right expectations. Turning GNU/Linux into brainless eye candy will cause few to migrate and only end up alienating traditional free software users into the bargain. Windows has one asset that simply cannot be trumped: the fact that it got to the office and home desktop first. Not better, just first and that simply chronological fact is the reason, and ultimately the only reason, that it has overwhelming market share. Having your operating system on a computer after it rolls off the production line is a priceless advantage that money _can_ buy.

# Just let them go cold turkey

Sometimes you just have to cruel to be kind. Keep fixing Windows and they'll continue to use it. Junkies. Recidivists. Serves them right. At least you shouldn't collude with them.

=ZOOM=and if you've paid expensively to have Windows fixed, send the bill to Microsoft=

The next time someone corners me in an alleyway looking for a Windows fix, I'll be telling them I've retired from the repair business. (Come to think of it, I'll also have stopped effectively subsidising Bill and Steve's most excellent rip off.) 

I've learned my lesson. I hope they have too. Stop using Windows. Install GNU/Linux. Simple as that. Oh, and if you've paid expensively to have Windows fixed, send the bill to Microsoft.