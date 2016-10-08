---
nid: '1755'
title: 'Becoming a free software developer, part III: Programming for the impatient'
authors: 'Rosalyn Hunter'
published: '2006-09-12 6:58:24'
tags: 'programming,python'
license: verbatim_only
section: opinions
listed: 'true'

---
I finally began learning python. I wrote my last program in the 80s in Apple Basic, and here I am again starting to learn a new language. I can already guess what my biggest problem will be. I am incredibly impatient. How can I learn to program when I refuse to read the documentation all the way through? Will I succeed in writing a program or am I doomed to give up? No need worrying about it. I type python on the command-line, and start.

Python is already loaded on my computer, so typing python on the command line gives me the python prompt which looks like three greater than signs in a row. I decide to follow the tutorials by typing into the program and seeing what it returns.

Python.org has got a nice list of beginning tutorials on a page called [Beginner's Guide to Python](http://wiki.python.org/moin/BeginnersGuide). I picked a tutorial to start with called [Learning to Program](http://www.freenetpages.co.uk/hp/alan.gauld/).

I Breezed through the first couple of pages stopping when I found the _Hello World_ program. You aren't really learning to program until you do _Hello World_. The tutorial actually said to write `print 'Hello there!'`, but I am a traditionalist. At the prompt I wrote `print 'Hello world!'` and _Hello world!_ popped up. I was on my way!

In a previous blog, I decided to write a program called period tracker(PT) that counts how many days since a person's last menstrual period. First, I opened a text file and started to think out what logically I had to do to make the program work.

The program requires me to subtract dates from dates. It takes more than simple math to subtract September 27 from October 12. Each month has a different number of days, and the program had to know that. Would I need to construct a table so the program knew how many days were in each month? Would I have to make a calendar counting each day from January first and converting the input dates?

But then I thought, surely someone has done this before. Python has modules that do stuff like this. I just needed to find out which modules controlled these calendar functions. I asked my local python expert (read husband) and he showed me where to find the documentation for python on my computer (mine was in a file at /usr/share/doc/python2.4/html/index.html). I tried to tell him that I had found the documentation on a website but he poo pooed me for trying to use offsite documentation.

Anyway, there were two modules that looked like they might be useful for this program. **Calendar** for general calendar-related functions and **datetime** for basic date and time types. Looking through the documentation, I saw that _datetime_ has a class object called _date_ that can add and subtract dates. My first goal was to figure out how to import and run a module that would subtract a date from a date and return a number.

To load a module I typed `import` and the module name. It explained this in the calendar documentation, but how do I use the class object `date`? I better go back to my tutorial and see if it has anything on modules.

I searched the table of contents and found the page on [functions and modules](http://www.freenetpages.co.uk/hp/alan.gauld/tutfunc.htm). Having skipped a few pages I found it a bit hard to read, but "Faith favors the fearless" or "hope helps the helpless" or something like that. I'm sure that there is some aphorism for blindly going where angels fear to tread. Anyway,  it says that you can use the _sys_ module to exit from python. Cool! I had not even thought about how to leave the program yet.

I skimmed through, and not finding what I was looking for I tried typing a few commands. Just guessing really. Mostly I got back error messages.

At times like these I must pause. I realize that blindly typing things into the computer can have consequences. I realize that doing such things has caused me problems in the past such as the time I reformatted my program disk by mistake. I think that I should be a good girl and calmly read the directions. But the fact is I am not a good girl. I am a nervous, flighty, distractable, impatient woman who wanted to know how to do this yesterday and who has no patience for incompetence. I want it to work, and I want it to work now. Once I have a quick and dirty outline of a program I figure that I can sculpt it into something neater.

When I read the official documentation, I'm annoyed that there aren't more examples. Not understanding the syntax, I type in things that sound reasonable, but are wrong. Perhaps blindly guessing may not be the best way to learn how to program. Who knew?

So I slowly go back and begin reading everything that applies to python modules from the top of the page, then in my python window I type:` print dir(datetime)` and it returns a valid answer this time instead of an error. `['MAXYEAR', 'MINYEAR', '__doc__', '__file__', '__name__', 'date', 'datetime', 'time', 'timedelta', 'tzinfo']`These are the classes under the module _datetime_.

Reading the documentation page, I find that the difference between one date and another is called a _timedelta_. This timedelta number can show me the number of days since the last menstrual period which is the first piece of data that my program will compute. Python modules can do it. I can make this work. I  step back and plan the program again.

Period tracker will have a number of functions.


1. I ask for a list of dates of first day of each menstrual period.
1. Then I subtract them finding the timedelta between each of them.
1. Next I can average all of them and find the average length of a menstrual period.
1. Then I add the timedelta to the last date shown to predict the date the next period will start. I might do this to the end of the year.
1. I should also do a range and compute the percent error in the calculation.
1. I should have some part of the program that looks for missed periods and either inserts a period where there should have been, or removes the data so that it doesn't mess up the average, or flashes a pregnancy alert.

OK, Maybe I'm going a bit too far on the last one. I still need to figure out how to subtract one date from another, and how to write a program in a text file. So far I have only used the command line. But at least I have started now. When you are first learning, you should take baby steps, but sometimes it's hard not to try to run before I can walk.

