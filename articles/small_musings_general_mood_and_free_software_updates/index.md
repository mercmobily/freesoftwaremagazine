---
nid: '2410'
title: 'Small musings, general mood and free software updates'
authors: 'Mitch Meyran'
published: '2007-07-13 18:44:11'
tags: 'ati,gnash,ntfs-3g'
license: verbatim_only
section: opinions
listed: 'true'

---
Since this is, actually, a blog, I feel entitled to speak my mind in it once in a while. However, being the computer nut I am, most of it is tech-oriented.

If you’re actually interested by this kind of read, prepare your scroll wheel, soften your ergonomically designed backrest, and start reading.


<!--break-->



# Free software updates!


## ntfs-3g, an update on [this post](http://www.freesoftwaremagazine.com/blogs/move_your_data)

Since that last post, several updates have come out:


* 1.516 fixed a vulnerability that would allow root access on a specific situation.
* 1.616 fixed several small bugs and improved portability. `configure` now outputs a warning if fuse isn’t installed in the boot filesystem.
* 1.710 (latest) fixed several other exotic bugs.

Performance hasn’t improved much since that last time. However, Szabolcs Szakacsits (the lead developer and website maintainer) has several ideas on how to improve performance, but several would require improvements in fuse itself.


## AMD/ATI, NVIDIA and... XGI free drivers news (not an update on the [matrix](http://www.freesoftwaremagazine.com/blogs/more_3d_desktops), though)

A major milestone has been reached in the Xorg `radeon` driver: the r500 driver now has 2D+dual head capabilities on several r5xx models (Radeon X1000 series) and 3D acceleration is under work. Developers expect to be able to implement full 2D and many 3D acceleration functions quite rapidly. Still required are video mode initialization codes ([r500 driver announcement](http://lists.freedesktop.org/archives/xorg/2007-June/025506.html)).

On the same note, r300 (and r400) cards will probably get a boost due to driver cleanup and refactoring to share improvements made for r500 and... Nouveau.

Nouveau is chugging along... Improvements are made all over the place:


* `glxgears` works in hardware on more cards—as a consequence of mostly working context switching
* overlays are now better known (Tnt1/2 in hardware, GF1 to FX implemented differently, and emulated in GF6 and over)
* Xv works on more cards now, and plans have been made to implement proper shader-based XvMC on recent cards
* DMA transfers and objects on PCI, AGP and PCI-Express have been vastly improved
* EXA is now more fully accelerated on NV4x

You still shouldn’t use this driver for everyday work, but if you want to use it there is nothing to fear from NVIDIA: they will _neither help nor hinder Nouveau_ ([ABCLinux article](http://www.abclinuxu.cz/clanky/rozhovory/andy-ritger-nvidia?page=1)).

And while I’m at it, I’ll mention an often disregarded (myself included) pioneer in GNU/Linux drivers development, their name them... **XGI**.

XGI used to make video cards on par with NVIDIA’s and ATI’s hardware—however, due to very bad drivers, their cards never reached recognition and some models didn’t even reach chip factories... They were the first, however, to publish the sources, and their free driver is now gaining speed. XGI chips are now found only in server and embedded products, but they keep providing source code. This alone deserves kudos ([Phoronix article on XGI](http://www.phoronix.com/scan.php?page=article&item=717)).


# Tasty stuff online

Web publishing is getting more consequent and varied; in fact, whether you’re looking for novels, comics, music, movies or newspapers, the web is a nice source of entertainment—and usually, for free (when not purely free)


## Fiction/fanfiction

Probably the oldest of all, text-based fictions can provide days of reading for nothing, on any topic you may like. Usually separated in original fiction works (where the author invents the settings) and fanfiction (the author uses a “traditional” published work as a basis to expand on), quality can vary from abysmal to extremely good.

About fanfiction, one of the most prominent basis for fan-produced fictions is Rumiko Takahashi’s Ranma 1/2—some of you may be thrilled by the news that Digital Knights Communication production of Daigakusei no Ranma seem to have resumed their activities ([website](http://www.dkcomm.net)).

Interestingly, this type of publishing comes extremely close to the ideals of free software, as many stories are co-written by several people and revised during their writings, and some even use a branched development mode (Bast’s Anime Adventure notably)—you’re a geek or you aren’t.


## Music

It is nowadays touted as the novel way to spread independant music without having to go through those DRM-championing majors. It has, however, deeper roots dating back to the Amiga era with its `.mod` tracks (which are still used in free software today due to their versatility and very small size). Repositories can conceal real gems.

Webradios are another new media that beats AM in transmission range and equals FM in equality. Travelers can use it to listen to their local favourite station, couch potatoes can travel abroad without leaving their best bottom rester.


## Webcomics

These are more recent—but they’re getting better and better. Unlike newspapers-based strips, these are published on the web first (the author can live off it with using merchandising or printing paper-based compilations, or will just do it for fun).

_Impending Productivity since 1997_, Illiad’s [UserFriendly](www.userfriendly.org) has gotten him quite a lot of fame. Updated daily since its creation, it now amounts to a huuuuge slab of `.gif` files—most of which are hilarious and hit on all the quirks of both techno-geeks and others. A Must Read.

Others such as [Dominic Deegan: Oracle for Hire](http://www.dominic-deegan.com) (puns and alliterations) or [Questionable Content](http://questionablecontent.net/) (emo stuff) have other targets and topics, but still are fun to read. There are several of them, sometimes hosted on specialized sites or directly by the artist.


## Movies

YouTube has made it popular, but ever since the days when RealNetworks and Adobe created streaming video formats (and Macromedia created Shockwave Flash), and before that, the demo scene created computer generated animated graphics, video has been used wildly on the web for many, many reasons.

It is now so flexible you can see it used for anything, and so powerful that some studios actually encourage creation of fan films—most notably Star Trek, for which Paramount has acknowledged remasterings (use of video clips with new, humorous dubbings), parodies ([Star Wreck](http://www.starwreck.com/), which is not only goofy as hell but also incredibly well-made CGI-wise) and parallel stories ([Star Trek: of Gods and Men](http://startrekofgodsandmen.com), starring amongst others Tim Russ, Nichelle Nichols and Walter Koenig. The Star Wars franchise itself isn’t too far behind and several fan-made movies appear here and there for you to enjoy.


## Recently tested games

Maniadrive is for you, _Stunt_ fans. Drive a normal (well, as normal as a reversed Clio) car on crazy tracks, enjoy the physics engine and, on those few artist-designed tracks, the graphics. Most tracks are ugly-looking, but the game itself is very, very addictive. ManiaDrive2 is in the works, and it should solve most problems this first opus has (more realistic physics, much better track geometry).

GL-117 will make you board a fighter plane. Not overtly realistic in Arcade mode, it is still challenging and will make you want to take that control stick out of the mothballs.

Project:Starfighter is an older space shooter from Parallel Realities (they made it before Metal Blob Solid), with various missions, a powerup system based on cash and correct graphics. Strangely coded though, you should expect some strange behaviours (especially when buying powerups!) so save games often on several slots.


# Hard reality

And then, when all this isn’t enough, you have friends asking you for help for this piece of work they need to prototype for next week, and you end up mucking with... Microsoft Access.

You probably don’t know about this, but I’m something of a webmaster—I don’t code THAT much, but what I do is typed by hand, indented, commented, with separation of content and appearance, standards-compiant, and I try to balance the load as much as I can between the server and the client... LAMP is my main development server (with Firefox as a client). This allows me to create moderately complex stuff quite fast, and cleanly.

However, when you can’t install xAMP on a machine (company-locked under Windows without admin rights) and you only have Access available, you end up... cursing. A lot.

First, let me tell you this: this sugar-coated “ribbon” interface used by MS Office 2007 is incredibly confusing: context menus hardly exist, functionalities are hard to find, there’s lots of screen real estate wasted for nothing, keyboard shortcuts are non intuitive... And windows don’t follow an efficient navigation model: use your mouse’s scroll wheel on a just opened Help window, you’ll see... the window underneath scrolls.

The SQL text editor is hardly a model of the genre: unable to do indenting or syntax highlighting, puny debugger, creating anything more complex than a simple SELECT query will require you to have Notepad (which is no Kate/Vim/Emacs) open by your side to feel relieved since the assistant is pretty much useless (I won’t mention the Online unHelper).

To add insult to injury, what should be considered Access’ main feature, that is the part that integrates interface elements and database structures and queries, is Visual Basic based—which should be considered a Good Thing since this is a scripting language. However, the different wizards and assistants create such object structures that, on a given page, there is NO WAY to easily make real what a GUI should be about: generate queries and display the results on screen. Say, using drop-down lists to populate the WHERE clause of a SELECT query, resulting in a nice array.

Finally, forcing the interface into a solution that created code that made sense, I managed to create said interface elements—but they wouldn’t work. Why?

Access disables scripts completely on any unsigned file, even those you created yourself under it—and when you try to run them, it won’t warn you. No, all you get is a small box saying that “some content is disabled”. Nothing more specific, such as “Project XYZ is unsigned, scripts are deactivated”.

I lost several hours debugging a piece of code that wouldn’t run for that very reason. The laptop was very, very close to getting a one-way ticket to Air Defenestration by that point.

The same thing, designed with hand-written HTML+PHP would have taken much less time to shape into running software.


# Conclusion

Once you’ve tasted the freedom of free software and publishing, going back to proprietary software actually hurts a lot—I’ve gotten used to using the software, not fighting against it to make it do what it’s intended to do.

Going back to my webcomics to relax now.

