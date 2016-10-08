---
nid: '2804'
title: 'Destroy annoying bugs part 1: FindBugs and PMD doing good work cheaply'
authors: 'Alan Berg'
published: '2008-05-19 10:35:18'
tags: 'opensource-developers,bug,code-review'
license: verbatim_only
section: hacking
listed: 'true'

---
Finding bugs in your code can be quite nasty--especially if you don't know where to look. However, finding bugs _automatically_ does not require astronaut training. I think it's time to leave that "pleasure" to free (as in freedom) automatic static code review tools like the ones reviewed in this series of articles.

<!--break-->

These search-and-destroy missions are just a matter of running a command line tool (or Eclipse GUI). The methodology shakes your source code, kicking the tires and checking the manifest folds of the warp engine, scaring some of the worst issues into the light of observable reports.  Did I also mention the satisfaction involved when splattering bugs? You get them before they get you; all rather proactive and vindictive, the poor fools do not stand a chance.

=ZOOM=Did I also mention the satisfaction involved when splattering bugs?=

By the end of this series of articles, I hope you will have that warm fuzzy feeling. It is great fun watching the birds fly from the grass.  A strong handed technique to hit bugs rapidly and over time accurately. Did I also mention the satisfaction involved when splattering bugs?

The three tools I am going to introduce are:

* [FindBugs](http://findbugs.sourceforge.net/);
* [PMD](http://pmd.sourceforge.net/);
* [TFTP](http://www.eclipse.org/projects/project_summary.php?projectid=tptp), the Test and Performance Tools Platform Project for Eclipse. 

They are all worthy technologies. I will describe hopefully enough to motivate you all to try them out, and perhaps even extend them with custom bug eating rule sets. Finally, you will get to read interviews from two of the leading lights: Professor Bill Pugh for FindBugs and his counterpart Tom Copeland who represents the excellent team effort going into PMD.

This article is split over a number of well-divided parts that represent a partial snapshot of current free software technologies. I have placed special emphasis on Java because it's the language I use in my daily working life (that's my secret identity as a Senior Developer). I am sure that counterpart tooling exists for C and C++ and most other languages, I just have little experience of these domains and will concentrate on where I have practiced and have enough real world experience to discuss.


Read on and be dazzled by the ease of use and economic viability of static code reviews, the searching of code for well-known and disliked bug patterns.

# Why automatic tools?

To steal and better still misquote from a videoed presentation for Google by Bill Pugh: everyone makes mistakes and even the cleverest can, dare I say it, make really stupid mistakes.  We all have our moments of programmer's insanity. Who needs a million monkeys bashing at typewriters when a tired programmer, stressed by artificial time constraints, can press that fatal key combination much more effectively.  To make the situation worse is the disjointed nature of large projects scattered over many continents, consuming hundreds of thousands of lines of code. Even for excellent and well-regarded projects with bug densities ranging from nearly zero to ten significant issues per thousand lines of uncommented code, the process of raw black box functional debugging is economically unfavorable. In the face of these problems, the use of continuous builds with automatic static code reviews is a really sharp and pointed sword to use in the fight for quality, especially if the developers are motivated to clean up their programming bedrooms afterwards.

=ZOOM=The use of continuous builds with automatic static code reviews is a really sharp and pointed sword to use in the fight for quality=

# How do they work?

The word "static" means just that: the source code is reviewed without actually running it. 
  
If you study code long enough you can start to discern common patterns of failure. Each team or coder usually has a list of "favorite" annoying mistakes that others make. For one it will be accidentally throwing null-pointer exceptions, for another it's stupid naming conventions leading to messy code maintenance. Over time these mistakes can become the first and ocassionally only bug set they'll look for - hardly an unbiased review.
 
We all make mistakes and the more you code the more that will happen. Criticism is cheap especially for those who do very little and thus are flawless. The good news is that automatic code reviews are neutral, unbiased, and consistent once you understand them.  The bad news is that some of the rules are not always correct and generate dust, and others are trivial for a given project. Choosing the obviously bad bugs first is a valid attack vector to starting out with this technology.

Imagine, if you dare, that the bullets are flying and there is a smell of frustrated managers and the sound of angry villagers with pitch forks echoing resonantly through the blood encrusted corridors. Under fire I have seen helpful rules such as finding problems begging to be wiped: infinite loops, removing of nullpointer exception locations,  synchronization dubiousness, wasted resources, keeping database connections open and numerous language subtleties. Luckily, the reviews point to a large subset of these randomly distributed and well camouflaged bugs quickly and economically. The automated processes do not get bored or frustrated.

PMD works directly with the uncompiled -- unsoiled by reality -- source. FindBugs looks at the compiled code, the class file, and therefore does not even need the original .java files. TFTP allows the developer to browse their own code and provide a quick fix. Both PMD and FindBugs are simple to use and have plugins for Eclipse and other IDEs. All the tools work surprisingly quickly and measure in total hundreds of rules.

# Coming up...

In Part 2 of this series serves as an introduction to static code review. I will briefly show you how to use PMD, FindBugs and TFTP inside Eclipse, a nice graphical start to a new day.

Part 3 has a FindBugs motif; you will have the pleasure of reading an interview with one of the driving forces behind the tool, Professor Bill Pugh. However, before the interview you will get your hands very dirty, very quickly for a large scale coding project of choice. Within a few lines of bash scripting and a little unzipping you will indulge your wildest Quality Assurance dreams quickly, painlessly, and automatically. It's worth noting that, in Bills experience, about 50% of the high or medium priority bugs found in such missions have historically been proven real. Sure, this may not be true for every project. However, these tools are super viable for the economics of large scale debugging processes, and have the potential to push the communal quality to a greater consistency.  Developers then have more time to concentrate on the deeply hidden and nastier issues. Find out for yourself.

Finally in part 4, mission PMD, I will concentrate my efforts on the basics of PMD rule designing. With minimal knowledge of Xpath you will discover how truly easy it is to make your own custom rules for catching your local menagerie of bugs and mildly stupid inconsistencies. I will also introduced you to Tom Copeland, PMD team member, author of [PMD Applied](http://pmdapplied.com/) and a second book on [JavaCC](http://generatingparserswithjavacc.com/).  Tom certainly knows what he is talking about.

_Sit back, press the big red button and watch the stones fall from on high._


### Acknowledgments

I would like to thank my wife Hester vander Heijden for fourteen years of reviewing my bugs and the Eclipse, FindBugs and PMD teams for building products so excellent and easy to use.

### RESOURCES

* [FindBugs](http://findbugs.sourceforge.net/)
* [Generating Parsers with JavaCC](http://generatingparserswithjavacc.com/)
* [PMD](http://pmd.sourceforge.net/)
* [PMD Applied](http://pmdapplied.com/)
* [TFTP](http://www.eclipse.org/projects/project_summary.php?projectid=tptp)