---
nid: '3424'
title: 'Saving Identica and StatusNet?'
authors: 'Chris Watkins'
published: '2010-10-07 7:32:50'
tags: 'spam,identica,statusnet'
license: verbatim_only
section: opinions
listed: 'true'

---
There is a significant spam problem on [Identi.ca](http://identi.ca), and it looks like some fresh ideas are needed to crush it. Here are mine, and a few ideas that I like from other people. 

Identi.ca is the open microblogging site based on the StatusNet software. It's a fantastic service, with features that leave Twitter in the dust. But spammers are not being caught and banned quickly. Users are becoming frustrated.

Marketing accounts, with names like scooterforsale, cheapwidebeltsanders, mastercrafttablesawspowertools, bestbuyfinancialcalculator, ad nauseum, seem to make up more than half of the members of any [Identica group](http://identi.ca/group). They often don't actually spam the group (though sometimes they do, and eventually get removed), but they make it hard to look through the genuine group members. This is a pity, as the "group" function is one of the features that sets StatusNet apart. 

So, this is brainstorm time. Share your ideas in the comments. 

Disclaimers: I am not a coder, and it's possible some of these features have been implemented without me finding them.

# Anti-spam ideas
If there are more than n group addresses in a notice, prompt a CAPTCHA. Other triggers can be added - e.g. repeated @ notices. (Thanks [tamasrepus](http://identi.ca/conversation/47635548))

Add a "sandbox" feature. Sandboxing would prevent problematic accounts from sending direct messages, having their messages appear in the public timeline, joining groups, or posting to existing groups if they're a member. Any @ messages would not appear in the target's timeline. The only way to view their posts would be to go to their profile.

If marketing accounts are considered acceptable as long as they don't send direct messages or post off-topic to groups (which seems to be the case), then at least add a "permanent sandbox" option. This is like regular sandbox, but either:

* allows only silent membership of groups (they can effectively subscribe to the groups like an RSS feed, but can't post and don't appear in the member list.)
* (much easier option) removes any existing group memberships and prevents new ones. 
* then again, maybe this is a weaselly option and it's better just to ban them.

Use flagging to automatically sandbox spammers. (Based on the suggestion at the [Status.Net wiki](http://status.net/wiki/Spam)):

* CURRENT SETUP: The UserFlag plugin lets users mark any profile on the site as 'flagged', which puts it on a list for site moderators to check out and if possibly block/delete.
* PROBLEM: It's not working well - very slow, doesn't give good feedback to the person reporting (am I wasting my time?) and it's hard to tell if anybody's watching the flag list.
* SOLUTION: When n users have flagged the profile (n might be 10, 20, 100), the account in question is automatically sandboxed until @support looks at it. 
* POTENTIAL ISSUE: The system might be used to target a genuine user, for whatever malicious reason. Somehow flagging by new accounts, or accounts which have themselves received flags, should not count towards auto-sandboxing. 

Define "trusted users" to be able to perform certain anti-spam actions - maybe their flags would count as x flags, or they could sandbox an account on sight. Obviously to be used with care, the greater the powers are. Start with a simple algorithm based number of followers, number of posts, number of posts to groups, length of time they've been registered, and number of times they've been flagged. (Perhaps, number of times they've been flagged by anyone who has been flagged less than n times.)

A spam-checking bot - I'm sure these exist already, but I'm thinking of one with the power to flag (at "trusted user" level) or even sandbox in extreme cases:

* The bot can rely on keyword and Bayesian filters and/or the "Bad Behaviour" software - it can be fairly strict since it's only adding them to a list for checking (or at most sandboxing them) rather than auto-blocking them. 
* A separate test, or a separate bot, to filter out the almost-certain bots and sandbox them immediately - e.g. repeated posts with multiple @ or multiple group tags, in a short space of time, along with certain spammy keywords, such that a genuine user would find it hard to trigger it by accident.

A public "maybe-spam" list for all messages that have been flagged at least n times, where dependent on a simple trust metric; or which have been added by a spam-checking bot:

* This public list becomes a place that trusted users can go and shoot down spam if they feel like it. With the auto-sandboxing for accounts that get repeatedly flagged, this should allow spammers to be quickly removed from view. 
* Add an "unflag" option for "Trusted users", to remove accounts from the list. (This still has to be transparent, so a list of removed accounts should be viewable.)

There are more suggestions [on the wiki](http://status.net/wiki/Spam), and people like [antispam](http://identi.ca/antispam) and [spammer007](http://identi.ca/spammer007) will have more ideas.

I'm not wedded to any of these suggestions, but something needs to be done. I think it's too much to expect more than a couple of these suggestions to be implemented soon, but my request to the StatusNet developers is: at the very least, auto-sandbox accounts after a certain number of flags. That one measure will empower the community, give us a quick reduction in spam, and give a quick boost in goodwill towards StatusNet and Identi.ca.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Chris Watkins, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)".
=TEXTBOX_END=


# Notes on the author

Chris Watkins is the co-founder of [Appropedia](www.appropedia.org) - wiki for sustainability, development, ICT4D.

