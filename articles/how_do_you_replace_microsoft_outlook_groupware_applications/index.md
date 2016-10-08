---
nid: '2782'
title: 'How do you replace Microsoft Outlook? Groupware applications'
authors: 'Ryan Cartwright'
published: '2008-03-20 15:42:12'
tags: 'groupware,outlook,mail-clients.-migrating,forks'
license: verbatim_only
section: end_users
listed: 'true'

---
How do you replace Microsoft Outlook? Do you go for Evolution or Kontact? Can a combination of Mozilla Thunderbird and Lighting do the trick? Do you split the features and are there any compromises to be made?

<!--break-->

Regular readers will immediately recognise this as the next in my free software for the voluntary sector thread but the questions I'll be looking at apply equally to other sectors. The background to this is that [Contact a Family][5] have been using Microsoft Outlook XP for about 6 years. We [don't use Microsoft Exchange][6] and we have our own POP3 server with users dotted across the UK. Myself and my team have long had enough of supporting Outlook and recently I've noticed an increase in user complaints about it. Note these are not about the mail server being slow or the levels of spam (although I do get those): these complaints are about Outlook in particular. They range from the way it "forces" you to top-post (yes, this was from an end--user!) through the terrible attachment handling to not permitting spaces in distribution list names. Personally, I dislike the monolithic PST files and the inability to view plain text by default without a registry hack. Yes I know this is possible in 2003/7 but I'm not paying for the upgrade just for that!

#Time for a change

So it's time to change. We're looking at changing a lot more than just the MUA though: IMAP in place of POP3, better automatic server-side inbox filtering, implementing more uniform retention policies and the avoidance of monolithic PST files as a mail store. Ideally I'd like to use Maildir as my store format and most IMAP servers support that. Of course much of this is not dependant upon the MUA but moving to an IMAP/groupware server will usually require additional--and paid for--plugins for Outlook. So we're looking for alternatives.

Any of [Evolution][1], [Kontact][2] or [Thunderbird][3] will do the mail job admirably but Thunderbird is lacking stability on the calendaring side--even with [Lightning][4]. Thunderbird does have the advantage--in this instance--of being cross platform: it has a native Windows client. This would mean I not having to upgrade all of my end-users to GNU/Linux just yet*. I should point out that KDE 4 is being [ported to Windows][7] and will probably bring Kontact with it. Evolution already has a [Windows port][8] but it remains largely untested.

\* _This is a project planned for the future but right now there are a few reasons why it's impractical_.


# Moving away from the desktop

One of the needs of my users is the ability to access their e-mail from home as well. Currently--with our POP3 setup--this is "handled" using third party web-based POP clients but it's not ideal and creates its own set of issues. Moving from Outlook to say another desktop client won't really resolve this. As I've [already mentioned][6] I'm looking into web-based group--ware applications as a solution. The front runners are [OpenGroupWare.org][9] (OGo and no relation to OpenOffice.org), [eGroupware][10] and [phpGroupWare][11]--all three being reasonably mature. The former grew out of the Skyrix proprietary solution. In fact Skyrix is now the "enterprise distribution" of OpenGroupware.org--I guess the relationship is similar to that between Openoffice.org and StarOffice. 

##eGroupware: forks (and knives?)

eGroupware began as a--[quite acrimonious][12]--2003 fork of phpGroupware so the two--kind of--share a common codebase. That said it's been 4 years so there will inevitably be some differences in direction by now. Interestingly the eGroupware project has hit the headlines again recently with the [inclusion][15] and then [expulsion][13] of the Tine2.0 codebase. Normally I see forks, healthy debate and codebase sharing as a good thing but too much of this kind of activity makes me--probably incorrectly--question the codebase itself. Perhaps I am being unkind--and I have not been able to follow the whole situation very closely--but in my experience too much political activity can often distract from the purpose of creating and maintaining good software. Then again one of the purposes of free licencing is so the code will survive even if the project is going through a rough time.

Getting back to the comparison of the three, they all seem to tick the boxes I have in front of me. OGo and eGroupware both claim support of PDA synchronisation--which I know some of my users will want. phpGroupware may well do that as well but on-line docs are harder to find just now and I haven't installed it yet. All three have hardware and OS requirements well within our reach. So it just comes down to how easily they can fit our needs, how intuitive (for my users) their interfaces are and--in the end--whether they will create or save me and my team some work in the long-term. The answers for which will take more space than I have here and which I haven't fully established yet.

#So which way to jump?

I think we'll probably go for a group-ware solution with web-based clients--we already have a well used Intranet and this would make a good addition to it. Not having a specific desktop client will open up the possibilities for migration to a free desktop in the future. We already plan to [migrate to OpenOffice.org][14] and a web-based PIM solution will be the last piece in that puzzle as well. 

I'd be interested to hear from anyone who has been through this--how hard is migration from Outlook (with or without Exchange) to one of these? Comments just below here please.

[1]: http://directory.fsf.org/project/evolution/
[2]: http://kontact.kde.org/
[3]: http://www.mozilla.com/thunderbird/
[4]: http://www.mozilla.org/projects/calendar/lightning/
[5]: http://www.cafamily.org.uk
[6]: http://www.freesoftwaremagazine.com/columns/sharing_without_microsoft_exchange
[7]: http://wiki.kde.org/tiki-index.php?page=KDE4+Windows+Port
[8]: http://shellter.sourceforge.net/evolution/
[9]: http://www.opengroupware.org
[10]: http://www.eGroupware.org
[11]: http://www.phpGroupware.org
[12]: http://osdir.com/ml/web.phpgroupware.general/2003-09/msg00025.html
[13]: http://www.nabble.com/forum/ViewPost.jtp?post=15689869
[14]: http://www.freesoftwaremagazine.com/columns/can_openoffice_do_the_job
[15]: http://corneliusweiss.de/?p=55