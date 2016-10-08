---
nid: '2571'
title: 'GPLv3, bug fixes, and complexity'
authors: 'Ciaran O’Riordan'
published: '2007-11-01 19:30:13'
tags: gplv3
license: verbatim_only
section: opinions
listed: 'true'

---
After an interesting free software licensing event in Helsinki, I got thinking about licence complexity. At the conference, people had two types of questions (a) Why didn't [GPLv3](http://www.fsfeurope.org/projects/gplv3/) additionally solve X problem? and (b) Why is it so long?


<!--break-->


In my presentation, predictably, I gave GPLv3 two thumbs up:


* Slides: [Free Software Licences, For Business and Society](http://ciaran.compsoc.com/gplv3-helsinki-2007.html)

This was followed by a speaker who advocated using one of Microsoft's licences which he said was better because it's simpler. This reminds me of a mistake that Joel Spolsky wrote an essay about:


* [Things You Should Never Do, Part I](http://www.joelonsoftware.com/articles/fog0000000069.html)


>    [...]Old code has been _used_. It has been _tested_. _Lots_ of bugs have been found, and they've been _fixed_. There's nothing wrong with it. It doesn't acquire bugs just by sitting around on your hard drive. Au contraire, baby! Is software supposed to be like an old Dodge Dart, that rusts just sitting in the garage? Is software like a teddy bear that's kind of gross if it's not made out of _all new material_ ?. 


>Back to that two page function. Yes, I know, it's just a simple function to display a window, but it has grown little hairs and stuff on it and nobody knows why. Well, I'll tell you why: those are bug fixes.[...]. 

I think this applies equally to licences. GPLv2 fixed a lot of social problems caused by how software was could be distributed. GPLv3 fixes more. Microsoft can write a short, copyleft free software licence because (a) No one's ever going to use it anyway, and (b) They don't care if it does the job properly or not. (Note: I don't know if their licence even is a free software licence. Maybe it is, I just haven't looked into it much.)

The GPL, as far as I know, is the only free software licence that has been tested in court, and it's used by more software projects than all other free software licences combined. This gives it's writers a lot of information with which to do bug fixing, and it gives the GPL a massive responsibility to work solidly.

So, for the question: Why didn't GPLv3 additionally solve X problem? There are three possible answers:


1. The drafters had to avoid adding requirements only for fixing potential problems. Requirements can backfire, so adding them has to be done carefully. This is the reason that there is no patent retaliation clause in GPLv3: what if it some day prevented a free software developer from using his patents against someone who was harming the free software community?
1. Solving problems almost always requires extra words. Everyone wants the GPL to be as short as possible, so the drafters had to stick to only solving the problems that were real, or problems that were simple.
1. Some problems can't be solved in copyright licences. The general danger of software patents is one example of a problem that can't be solved by making a change to our licences. The grey areas of what constitutes a derivative work is another example. (Although, the grey areas aren't as big as some people think anyway.) GPLv3 has reduced the grey areas, and it has made sure that the remaining grey areas should be more similar accross country borders than they were in v2, but no free software licence can make the grey areas go away.

As for the other question: Why is it so long?

One answer is that those extra lines are bug fixes.

Another answer is that clarity requires explicit language. GPLv2's concept of "distribution" is defined in GPLv3. For one thing, it's been renamed to "convey", to avoid clashes with existing terminology in law and court precedents around the world. For another, its definition has been made explicit, to avoid relying on existing meanings in law and court precedents, which vary around the world. This bug fix required extra words, but it actually makes the licence simpler to understand **reliably**. The definition is in the licence, so you should have less need to consult a lawyer in each country.

_(If you like this article, [Vote on FSDaily.com](http://www.fsdaily.com/Community/GPLv3_bug_fixes_and_complexity/) )_

