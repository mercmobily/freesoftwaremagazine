---
nid: '1420'
title: 'Praise for Python'
authors: 'Terry Hancock'
published: '2005-11-12 15:10:04'
license: verbatim_only
section: hacking
listed: 'true'

---
As I was preparing my fourth article in the "Towards a free matter economy" series (parts [1](http://www.freesoftwaremagazine.com/free_issues/issue_07/free_matter_economy/) and [2](http://www.freesoftwaremagazine.com/free_issues/issue_08/free_matter_economy_2/) are already published), I realized I’m continuing to flog the [Python language](http://www.python.org). This is somewhat inevitable, of course, choice of programming language is a “religious” issue, so closely tied to personal preference and experience, that there tends not to be a very “rational” reason to choose one over another.  Nevertheless, the articles would be an intractable mess if I didn’t reduce the field a bit, and Python is what I know and use.

I readily acknowledge that this is a matter of taste, and there are others out there who are just as fanatically attached to Perl, Ruby, or even C. But just the same, I do have my reasons, and I want to share them with you, in case you are looking for a language to learn and you have my problems. And there just isn’t room to explain all of this in the articles.

I probably have the “disorder” known as “attention deficit disorder”. I put it in quotes because I have a problem with labelling personality traits as “disorders”, and I’m pretty sure that ADD is a _selective advantage_ in certain professions, such as programming, though it also has a cost. So although I’m certainly intelligent, I often have a hard time focusing on a task for long periods of time. (This isn’t the whole picture though—when I’m interested in a task I can focus on it for a ridiculously long time and shut the whole world out, which is ironically also considered a “symptom” of ADD, which I think should be renamed “Excessive Self-Motivation Disorder” or “XSMD”. In other words, people who have it resist being told what they should think about. I think this more accurate terminology would make it much clearer why our society is resorting to addicting children to mind-altering drugs to suppress this personality trait. But I digress.)

Nevertheless, I had long ago conquered that particular personality flaw—I completed college, after all, and attended some graduate school. I have a large range of coping mechanisms for focusing on tasks and completing them. The fact that I’ve programmed in BASIC, Fortran, Pascal, C, and IDL pretty much proves this, I think. And during my college years, and for sometime thereafter, I was quite content with these languages, which I got a lot of use out of at work.

I was never a professional programmer, though. I just used my programming skills as part of other jobs, like “astronomical research assistant” or “software support engineer” (NASA contractors can call anybody they like “engineer”, there’s a special exemption in the certification laws—I kid you not, go look it up).

However, I also became the primary caregiver for my children. Not all the time, you understand—my wife and I have been “switching off” the primary caregiver and breadwinner roles every couple of years for the last dozen (actually it might be more fair to say we’ve been rotating: me, she, and nobody). Oh and by the way, anyone who calls me “Mr. Mom” will be shot upon identification. We’ve long had a special word for “male Mom”, it’s called “Dad”. Get used to it. If you’ve ever been a primary caregiver, then you probably know what it does to your head.

“_Cuisinart_”, as [Sunny Baudelaire](http://www.lemonysnicket.com/index.cfm?border=sunny) would say. There’s something about having your train of thought interrupted 16 hours a day, 7 days a week, at about 1.5 to 3 minute intervals. It’s really a kind of psychological torture—it’s probably even documented as such. But seeing as I volunteered, and place a high value on “reproductive success”, I can’t complain too much.

Did you know that there are computers attached to the Space Shuttle’s main engines? Yeah. Just like the ones in your car engine, only a whole lot meaner. It’s hard to imagine a more hostile place to put one: incredible vibration, heat, and acceleration loads all at once (Did I throw you there?). Well, I feel a lot like my brain is that computer.

And like any program running in a heavily interrupt-dominated context, I have to save and restore state very frequently. So, any optimization in that process counts for a lot! Add to that that I don’t program everyday or even every week, but often put projects down for one to two _months_ at a time, and you can see that this is a pretty hard stress test for any development process.

Python wins.

It’s the only programming language I can get anything done with, given this state of affairs. But _why?_

Let me first say “why not” about C and Perl. C is absolutely terrible. It’s incredibly fine grained, requires a lot of extra “boilerplate” code to get things done, and as such, finding your place in a half-worked project is next to impossible. You have to hang on to a lot in your head, and remember. I typically have less than 30 seconds to recover from the typical distraction. (Okay, actually this situation has gotten better, sometimes I can get a whole _hour_ on my own now).

Perl is a great language in that it lets you get a lot done in a small space, and so it’s an improvement. But it also has an arcane and highly symbolic language style. That’s an advantage if brevity is high on your list (and if you can’t type fast, which I obviously can—I am sometimes shocked to find out what bizarre tricks other programmers will use to avoid having to type two extra characters. Not the sort of optimization that attracts me, it’s harder for me to think of the trick than to type the extra characters.).  But it’s a real problem if you frequently walk away from the task and have lots of distractions, because it’s not very self documenting.

Python has most of the brevity of Perl (not quite), but uses reasonably self-explanatory keywords most of the time, which most people find easier to remember than symbols (unless they use them everyday). Certainly, it doesn’t go to ridiculous extremes—very commonly used operators are symbolic, of course, especially when the context is mathematical. And more recent versions of Python have added some less than self-explanatory features such as "list comprehensions".

But it doesn’t change the fact that I can actually get work done with Python, which means I didn’t have to give up on programming altogether, and for that alone, I’m a pretty serious Python loyalist (Thank you, [Guido van Rossum](http://www.python.org/~guido)!).

Other features I’m particularly pleased with:


* Significant whitespace. Everybody complains about this for the first week or so. Then they can’t live without it. It just makes sense for the programmer and the computer to use the same notation to define code blocks (and thus avoid the bugs that occur in other languages which use two different notations which have to agree).
* Class Properties. Also called a “managed attribute”. It means that what was a class variable can be changed to be handled by a function, and calls to the class don’t have to know this. What this saves you from is an entire boilerplate culture of “getters” and “setters” which have made, for example, Java and C++ completely unreadable byzantine disasters.
* Duck typing, and late binding. Objects are just objects in Python—they know what they are, but you don’t have to when managing them. As long as they do what’s expected of them, at least. As the name implies: “if it quacks like a duck, it’s probably a duck”. I’m still moderately impressed that this works as flawlessly as it does, but experience shows it really does.
* “Literate programming”. Python has several features to make self-documentation a lot easier: such as documentation strings and introspection methods. These keep the documentation with the code, which means it tends to stay up to date. Combined with appropriate documentation generators, this can be used to the extreme of “literate programming”, without most of the hassle of the early “web” based frameworks for doing that (which required that code and documentation be written in a complex meta language, then decoded into separate code and documentation sets—it was beautiful, but so complicated almost no one (including me) uses it).

Python is slowly gaining ground in the science and engineering communities. I am no longer heavily involved with astronomy, but the last that I checked into the state of affairs, the [Space Telescope Science Institue](http://www.stsci.edu/) had invested a lot of time and effort into porting code to Python and adapting the long standing Image Reduction and Analysis Facility ([IRAF](http://iraf.noao.edu/)) to use as a [Python module](http://www.stsci.edu/resources/software_hardware/pyraf), and the [SciPy](http://www.scipy.org/) project was going strong.

Python is also all about free software. It is itself free software, of course, but moreover it is optimized for free-software methods. As an “interpreted” language (really it’s a bit more of a “just in time compiled” language, but that’s another can of worms altogether), it always carries the assumption that the source code will go with it, and even without source (.pyc files only), the introspection features make it easy to collect API information when needed. The documentation methodology is lightweight, to take maximum advantage of the limited tolerance that many free software authors have for maintaining documentation, and the language itself is highly economical and clear, promoting both “agile” or “extreme” programming methods and easy project collaboration. So, while Python hasn’t really taken off in the proprietary development world, it is a major player in free software development.

The adoption of Python by so many scientists of my acquaintance, its affinity for free software development, and my own experience with it, are my reason for claiming that Python is a good choice for a project that expects to rely on part-time engineer and scientist programmers for most of its development effort.

