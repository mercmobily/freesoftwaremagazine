---
nid: '2562'
title: 'Free software is cheaper: case study while creating a podcast'
authors: 'Steven Goodwin'
published: '2008-02-04 10:43:22'
tags: 'podcast,tco,price'
issue: issue_21
license: gfdl
section: end_users
listed: 'true'

---
I have a podcast—[The Beer Crate](http://www.TheBeerCrate.com), since you asked—which is written and produced using free software, and released under the CC by-nc-nd license. It's a fun little hobby that keeps me off the street, and gives me an excuse to drink and review beer. But had free software not existed, how much would it cost to produce and host a show using proprietary software? I set out to investigate...

<!--break-->

# Introduction

For many, a podcast features one or more performers sat behind a microphone, and talking wistfully about some random topic of the day. But to achieve any degree of professionalism there's a lot more to it than that. Assuming you have the hardware at your disposal, e.g. microphone, PC, broadband, and hosting server, there's still a script to write, a theme tune to source, a web site to design, and editing to be done on all those constituent bits. All of a sudden, it doesn't seem so simple.

To compute the effective cost of my podcast I'm going to consider the pricing of two alternate, non-free, offerings. One will be a budget solution, and the other will use the standard proprietary software you'd expect as part of traditional employment. 

=TEXTBOX_START=What about shareware and freeware?=
Freeware and shareware have not been considered since they've fallen into disuse of late since the current fighting ground is between free and proprietary software. This is something with which Microsoft have unwittingly helped us--by comparing themselves continually against free software, they've ignored all the possibly solutions that involve freeware or shareware. Consequently, so has everyone else. It's now a two horse race. 
=TEXTBOX_END=

Two offerings might seem limited. However, the cost of evaluating all the possible solutions is more expensive than simply paying for a basic proprietary package. Also, when costing applications, software upgrades are only considered when it's reasonable to expect an end user owning a previous version, from which an upgrade is possible.

# The Script

Before I begin recording, I always write a script for the forthcoming episode. Sure, I improvise when in front of the microphone, and add new things as they occur to me, but for the most part I work from the written word. These words are created in a text editor—usually `vi`. Sometimes it'll be in OpenOffice, or sent as an email to myself using Thunderbird, and occasionally stored on my private 'TODO' wiki—but the script is still generally written in `vi`. If I am to remain true to my word of using equivalent proprietary software, I can't use anything that is free—which includes the tools of GNU/Linux, such as `vi`. So instead, I must purchase a word processor. Sure, I could use notepad... but it'd drive me insane before I'd finished detailing the list of beer festivals. And don't even ask me about my handwriting!

=ZOOM= I could use notepad... but it'd drive me insane=

A quick search provides a sensibly-priced budget word processor called Jarte, which costs $29. I've never used it, but it's certainly cheaper than the so-called industry standard of Microsoft Word, clocking in at $150.

This is not a cheap start.

# The Music

I like music. A lot. So it seemed only right to have a theme tune for "The Beer Crate", along with some audio stings to separate the various segments. In a proprietary world I'd have to buy some royalty-free music. This is when you pay for the right to use the music, without having to pay on royalty each time it's used. There are several sites on the Internet that will provide this—for a fee.

To budget effectively, you need to know what you're budgeting for. My podcast has four main sections: weekly news, articles, "quick tastings", and "try before you die". Ideally I'd like music between each section, plus and intro and outro, making five pieces in total. Fortunately, when music such as this is purchased you often get a theme supplied in 29 and 59 second versions for the same money. Or at least, very little extra money. Additionally, I'd like two stings: one to audibly separate the two articles, and another to be placed between each of the beer reviews in "quick tastings". So to recap, three pieces of music, a theme, and two stings.

## Royalty-Free

Knowing that paying a composer would be prohibitively expensive (start with a four figure sum and work upwards), royalty-free music can be purchased from any number of sites. [Royalty Free Music](http://www.royaltyfreemusic.com), for example, charge $99 for a CD of music, regardless of the number of tracks you use, so with luck I could find everything I wanted on a single disc. In reality, I'd probably need two, but let's keep optimistic. I didn't see any disc with short stings though, so I'll need to buy those separately.

<!--pagebreak-->

An alternative is [OPuzz](http://www.opuzz.com) which will sell you individual samples and music clips. This includes stings for $3 each, and 30 second musical themes for $15. My math skills tell me that 2 stings at $3, and 4 pieces of music, will cost $63. Alas, when I recorded the show’s introduction I found it ran to 60 seconds, so I'd either need to talk faster, or pay an extra $5 for the longer version. Oh, well!

## Creative Commons

The equivalent of free software for artistic works is [Creative Commons](http://creativecommons.org/). This features a number of licenses, all of them cost free. The important thing to remember is that by incorporating the CC music into a podcast you are creating a derivative version, so anything with -ND is not allowed. I discovered this caveat when working on the open source film [Cenobitic](http://www.cenobitic.org) and spent far too long looking for suitably licensed music. It is available, but less plentiful. Sites like [Creative Commons Search](http://search.creativecommons.org/) and the [Internet Archive](http://www.archive.org/) have useful search boxes for this.

=ZOOM=By incorporating Creative Commons-licensed music into a podcast you are creating a derivative version=

## Public Domain

A further alternative is to use public domain material. This might be work that is old and now out of copyright, or that which was released explicitly into the public domain by its author. Sites like [the Open Music Archive](http://www.openmusicarchive.org) provide such material.

Ultimately, the tracks I liked best were some I wrote and released under the CC many years ago! It might be narcissistic, but at least it's free.

# Audio Editing

This encompasses the recording of my spoken beer-induced words, and the effective mixing of it with the music. The basic sound recording applications would work, but cause too much stress. There are two prominent sound editors available, SoundForge and Adobe Audition (formally Cool Edit Pro). These cost between $59.95 and $349.00, respectively. The former looks like an obvious choice. However, for the full version of SoundForge (currently at 9) you will have to hand over nearly 300 notes.

Audio is one of the cases where proprietary software appears to have advantages. My very first episode was edited as multiple clips (for each section of the show) entirely in [Audacity]( http://audacity.sourceforge.net), where the manipulation of 200+ MB sound files became very painful on my PC. I’ve used the proprietary versions before and find they're usually better optimized for handling larger files in smaller memory footprints. So an upgrade would certainly offset the cost of buying more RAM. So while free software might appear to be a non-starter, I had another trick up my proverbial sleeve.

## Sox

After the pain of editing the whole episode in Audacity I found another solution: Sox. This is a command line wave editing package that comprises of a file converter and mixing tool. The latter was interesting. I still created each section of the show as a separate file, but I then wrote and ran a short script to join the music with the spoken content automatically. This included overlaps and subtle cross-fades, saving the time that would have been spent in the audio editor. Time saved every week, as I now type,

=CODE_START=
./makeshow ep12
=CODE_END=

and I get a complete MP3 in the same directory, complete with appropriate ID3 tags (courtesy of `id3ed`).

In adopting this approach I realized I wasn't comparing like-for-like. The scripting tools I'd developed where not available in cheaper versions of the software. Or at least, I couldn't be _sure_ that all the bash magic would be replicated in the budget editions. To do the equivalent tasks, I'd therefore need to pay more money for the full "professional" version. But I'll give them the benefit of the doubt, and believe the entry level software is up to the task.

=ZOOM=As far as sound manipulation is concerned, I'll give them the benefit of the doubt and believe the entry level software is up to the task=

# The Web Site

My current site uses Apache on GNU/Linux to serve the web pages, as you'd expect, to my beer-drinking podcast listeners. I even save money by using virtual hosts, so that my single machine can run all of my other projects. But this is an exploration into the cost of activity, so I have to consider buying a web server.

IIS and Zeus are the first two that come to mind. But like many pieces of enterprise software, the cost varies according to who you are, and how much they want your business. I couldn't begin to guess at the cost, but [one review](http://www.pcmag.com/article2/0,1759,11536,00.asp) clocks the cost of Zeus at $1700 per server. Without Operating System.

[PC World]( http://www.pcworld.com/businesscenter/article/139588/windows_server_2008_pricing_told.html) list the Windows Web Server 2008 as being a better deal at $469. But again, you need to buy an operating system.

<!--pagebreak-->

The cheapest way of doing this is to rent an OS and web server as a hosting package. I used to pay $200 a year for web hosting, database, email, and the like. It's probably now down to around $60, so I'll use that in my low-cost budget. I'll break even in ten years, but which time my beer podcast will be so famous I won't care about the cost!

=ZOOM=this is an exploration into the cost of activity=

Many parts of the web site use dynamic content, such as "quick tastings", and "drinkers diary" which use an SQL database to store the beer reviews and beer festivals, respectively. This would normally push up the price of a like-for-like comparisons. But since this is only a convenience, I don't feel right charging it to the budget.

Additionally, the web site uses graphics. I used free clip art, and self-made buttons using the GIMP. And it shows! But it does the job, since what's important is the beer. But a professional web designer would want PhotoShop to create a logo for "The Beer Crate" and probably some Macromedia tools. A brief Google found these coming in at $235 and $399, respectively. 

At the low-cost end of the market are the sites that build your web page for free, and/or provide templates. The latter require some degree of technical knowledge because you must deploy them yourself, and the former comes with advertising because it's hosted on their server. Because I want The Beer Crate to provide unbiased beer reviews, I can't afford to have someone placing advertisements on my page, over which I have no control. So this option isn't possible.

# Conclusion

So, if I assume that you've bought a PC with an OEM version of Windows (which most people of my generation have) you can save the $199 cost of Vista Home Basic. And the $99 for an upgrade. The balance sheet looks like this:


Task | Budget | ($) | Standard | ($) | Free Software | ($) | 
-|-|-|-|-|-|-|
Writing a script | Jarte | 29 | Microsoft Word | 150 | VI/OpenOffice | 0 | 
Music | opuzz.com | 68 | royaltyfreemusic.com  | 99 | Creative Commons | 0 | 
Audio Editing | Sound Forge Audio Studio | 60 | Adobe Audition | 349 | Audacity and Sox | 0 | 
Web Hosting | A Random Hosting Co. | 60 | MS Web Server + OS (approx) | 600 | LAMP | 0 | 
Web Design | Free Template | 0 | Photoshop+Flash (eg) | 634 | GIMP/Clip art/CC art | 0 | 
  | **Total:** | **217** | **Total:** | **1832** | **Total:** | **0** | 

=TABLE_CAPTION=Cost of "The Beer Crate" with proprietary software=

Can you hear me spluttering yet?

That's between $217 and $1,832 to create a 15 minute weekly podcast! Furthermore, on a couple of occasions, I've needed to check-up on the podcast to make sure I didn't say something I thought I did. In these cases I've often been at work. So, I take a ten minute break and download the file. I then edit it with Audacity, review the script, and re-encode it before uploading it back to the server. Had I not used free software, I'd need another license for the sample editor on my work machine. I just thought I'd mention it...

=ZOOM=That's between $217 and $1,832 to create a 15 minute weekly podcast!=

# Conclusion

So with this level of cost, is it any wonder Microsoft feel compelled to bundle so much software for free with their operating system?

And is it any wonder I use free software rather than proprietary applications?
