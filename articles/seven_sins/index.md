---
nid: '2079'
title: 'The seven sins of programmers'
authors: 'Steven Goodwin'
published: '2007-02-21 20:25:32'
tags: 'advocacy,programming'
license: verbatim_only
section: opinions
listed: 'true'

---
_[Click [here](http://www.freesoftwaremagazine.com/articles/the_seven_sins_of_programmers) for an expanded, updated version of this blog entry which hasnow been published in issue 17 of Free Software Magazine!]_

Programmers. The system administrators worship their bit twiddling capabilities. The users exchange vast quantities of beer for new features and tools. And the project managers sell their soul when they make the magic work.  But inside the average programmer's psyche are several demons that need exorcising. 


# Pride

This is all too common in programmers. Instead of asking whether a particular function exists, or for the best way to retrieve data from the system, a proud programmer is likely to write their own. Especially when faced with a large, or unfamiliar, code base. By re-inventing the wheel there are now two very similar routines. Not only does this increase the code size, it doubles the amount of maintenance required, creates another opportunity for bugs, and adds inconsistency. Later, when another programmer sees these two functions, they will have to choose between them. Which one will depend on their mood (are they also too proud to seek help?), who's on holiday or who's outside smoking, at the time! This can equally be applied to duplicate constants, member variables or structures.


# Envy

Programmers should improve themselves by learning from others, not blindly emulating them. All coding methodologies (be they syntactical or design-based) come with caveats. A programmer might inline a function with the pre-processor because he's seen it done elsewhere, unaware of potential side effects, as in this classic example.


=CODE_START=

#define SQUARE(x)	x*x


=CODE_END=


# Gluttony

Not an evening at the all-you-can-eat buffet, but the problem of writing too much code. Every hour spent coding will require an extra hour of testing, and possibly two more of maintenance. And guess who gets lumbered with the maintenance?

Worse still, this does not scale. A two-minute feature (or one line bug fix) may also take an hour to test. Whatever your gluttonous reasons are - attempts to impress, an under-staffed team, late night camaraderie, or personal pride - curb them. Spending the whole morning trying to unravel last nights two-minute feature is like the buffet - you get stuffed afterwards!


# Lust

Programmers crave pleasure; they love to 'scratch their own itches'. If unchecked, some developers will write fantastic, innovative, original... and completely unnecessary, code. It could be a new graphics shader, a faster search algorithm or an entire processing engine! Make sure any code written is actually needed. Will it get used? Or will it distract the users who, in turn, add a new plug-in system, just to make use of the code? Is that particular search algorithm slow? Is it on the critical path? Do you need a new engine? Is middleware a viable solution? Have off-the-shelf components been rejected because it was "Not Invented Here"? Curbing programmer lust allows more time spent on the important tasks. Like the software.


# Anger

Do not code out of anger. Do not ignore good ideas, regardless from where they come. If a more junior programmer has a solution to the problem in hand - discuss it. If it works - use it! The engine programmer should not be allowed to implement his own solution just because "He's the engine programmer".

Do not code out of spite. Lead programmers: love your coders. Code reviews, for example, should raise the ability of the whole team, and not be used for leads to show off, introduce new jargon, demonstrate obfuscated syntax or exhibit other prima donna characteristics.

Do not code out of fury. Programmers: love your leads. They distribute work because it needs doing. Don't work on somebody else's tasks because you're more suited, or believe it should have been yours. If you want to move into other areas of programming, talk to your lead. Develop prototypes at home.  Employing enthusiasm in this manner will win more brownie points than ignoring the task list and schedule.


# Sloth

Don't procrastinate! If a particular piece of code is uninteresting or difficult (like an obscure crash bug), more interesting tasks should be available to compensate. Also, make sure all the tasks are clear, consistent and given from one manager. Opposing requests from different managers will make one of them unhappy, and starting such a doomed task is no fun for anybody.


# Greed

This final point is directed more towards management. Everyone should feel valued. Financially and metaphorically. This is especially true during crunch time, when even the most junior programmer can work out their hourly pay packet could be improved by working on the cold meat counter at Tesco! Paying for late night food goes without saying (I hope!), but an occasional pub evening also helps. This gets everyone out the office, showing that management aren't greedy with an employee's time, either. Leads should check for warning signs, like 'funny' comments in the code - "I'll do this properly when I get a fscking pay rise!!!". Follow Dilbert. Less money for staff does not mean more for management.

Naturally, the lead programmer should help prevent such sinful practises. But as responsible professionals, we should all try and curb the devil inside first.

