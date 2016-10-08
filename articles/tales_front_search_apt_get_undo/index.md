---
nid: '3375'
title: 'Tales From the Front: in Search of APT-GET UNDO'
authors: 'Rosalyn Hunter'
published: '2010-08-13 12:53:52'
tags: 'debian,gnu/linux,kde,apt,x-server,crashed-system'
license: verbatim_only
section: hacking
listed: 'true'

---
I am currently in that level of hell reserved for people who upgrade their GNU/Linux system too quickly.  I have for some time now been happily using KDE 4 with the plasma desktop enjoying the cute little animations and eye candy, and learning to use the task-bar and widgets. Then my bliss was interrupted by a simple mistake. I decided to upgrade. I forgot that my `/etc/apt/sources.list` was set to load experimental versions of the software, and now my X-server system is broken. It is only now that I am discovering that there is no `apt-get undo`.

<!--break-->

But to understand best how I got here, let me give you a little history. This year, I saved my pennies and bought a laptop -- an Acer Aspire Timeline which has a rated battery life of 7 or 8 hours. I wanted this because of my habit of stopping in the middle of projects and carting my laptop around with me. I'd get up in the morning, start a project, close the lid, and hours later open the lid and finish. This doesn't work if your laptop has only a two hour battery life.

=ZOOM=After all, the new version was just a bug fix, right?=

So, happily, I bought the laptop and wiped windows off of the system, installing Debian GNU/Linux in its place. The problem was that, at that time, there were no drivers for my laptop in the 'stable' version of Debian, so I had to download drivers from the 'unstable' version of the software.

Now Debian has at least three versions of their software available at any one time. The main Debian GNU/Linux system is called 'stable'. The version with some newer components is called 'testing', and the version with all of the brand-spanking-new software that is largely untested is called 'unstable' or 'sid'. It is named after the demented kid in the original Toy Story movie. This image is there to remind you that if you want to run your system with only experimental software, then you are crazy.

Now I am not insane normally, but I do like to be on the cutting edge, so I run my system on 'testing'. It allows me to try out programs a little earlier, and makes me feel a little bit adventurous, but sometimes the software still has some annoying bugs in it.

Back to KDE 4. I was running the plasma-desktop and kept getting crash errors. It was weird, because for the most part the system didn't stop working, but I got errors saying some part of it had crashed. Most of the time I could ignore these and go on. Even so, I went to the [KDE main site](http://www.kde.org/) to see if there was a bug fix. Reading the page, I saw that KDE version 4.4.5 was mostly just a bug fix. Maybe if I could just upgrade this one program, I would stop the crash warnings. After all, the new version was just a bug fix, right?

Now although you can with some software just download a version from the website of each provider and set it up independently, Debian is an integrated system with dependencies. The proper way to get new software is download the official package using their `apt-get` program. Now you have to realize that normally I love `apt-get`. I've even made comments like "`apt-get happiness`" and other silly jokes of the type usually reserved for python programmers. But when I decided to upgrade to the 'unstable' version of KDE in order to get that "bug fix" I was making a mistake.

You see, KDE is not just one program, and it has _lots_ of dependencies, so when I upgraded the program, I upgraded all these dependencies as well to the 'unstable' versions, and one of them was not quite ready for prime time. The result was that when I try to login, after a few flashes of the screen, I get thrown out of KDE to the blinking cursor of the command line.

=ZOOM=Lack of access to the internet makes me feel a bit like I've gotten a partial lobotomy=

Now the command-line doesn't scare me, but not having an X-server does. It means no music, or videos, or access to my web browser! Now I don't know about you, but lack of access to the internet makes me feel a bit like I've gotten a partial lobotomy. It's amazing how senile you feel when you can't remember the name to a movie and their is no IMDB or Wikipedia to search.

I have to get it to work again or... or... the alternative is not worth thinking of! And so I read the man page in search of the undo button. There has to be an `apt-get undo`. Just let me undo the last thing I did, and go back to the blissful world where all I had were a few crashes that really didn't hurt anything instead of this black flashy nothingness of despair.

But what I find after a borrowed search on my husband's computer is that the official policy is that people shouldn't ever downgrade packages. The system isn't designed to do it, and there are tales on the internet of people who have tried and been stuck with hopelessly broken systems. So there is no easy way to do it.

But I tell you that people make mistakes, and until we in the free software community start making allowances for people's stupidity instead of sitting on our high-horses talking about how 'those "win-doze" people are sheep who want everything done for them', we are never going to get the GNU/Linux platform on the majority of desktops.

=ZOOM=The official policy is that people shouldn't ever downgrade packages=

I tell you (from my text editor) that a broken X-server is every bit as traumatic as the old "blue screens of death" were, and it doesn't help when one realizes that searching for help usually reveals nothing but a few snide insults and a comment that when you start needing to downgrade packages, you're only a step away from needing to reinstall your system.

So what is the point of this article you ask? What do I want?

Well, I would love the APT developers to write an undo function of some kind into the apt program; I would love somebody to fix the bug in x-session that makes KDE crash on login; and I would love people in the free software community to be a little more tolerant of people who don't always do the right thing the first time. I would love everyone to help free software newbies, and congratulate them on daring to try to solve their own problems rather than mindlessly following the crowd because it's easier. But most of all, I just would like my x-server to work, and to see my desktop again even without the eye candy.

So when my courage comes back, I'll try removing individual packages the old-fashioned way, and hope that I'll get back some kind of desktop system. And yes, I'll file the bug report when I get my browser back.

Wish me luck!