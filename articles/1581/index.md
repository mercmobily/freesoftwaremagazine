---
nid: '1581'
title: 'Broadband, standards, and a web of little white lies'
authors: 'Terry Hancock'
published: '2006-06-07 3:00:00'
license: verbatim_only
section: opinions
listed: 'true'

---
One of the frustrating things about standards is that so few people really follow them. Engineers, of course, like to stick to standards, and they understand the importance of explaining things in terms of standards and interfaces. “Documentation” to an engineer is _descriptive_—it tells you what the thing is, what standards and interfaces it conforms to, and (unfortunately), it usually relies on jargon to accomplish this. Of course, the nice thing about jargon is that it turns up pretty well on a Google search (for example, when I wanted to figure out if I was wiring my home network correctly, I got really good hits by typing: '"cat 5e" TIA 568A network "color code"'—all jargon I pulled from the diagrams that came with the tools).

“Documentation” for newbies, however is _imperative_—it just tells you what to do, and doesn't bother explaining. That means that instead of relying on technology standards about the thing you're actually doing, the documentation relies on _platform standards_. In short, it just assumes you're using Microsoft Windows, and ‘what a troublesome person you are’, if you aren't using it. Of course, we all pretend we're conforming to standards, but the truth is that the ISPs tell a few little lies (‘384kbps dn/128kbps up’—but _they_ only have a T1 connection!), as does the manufacturer of the modem and the firewall, and me of course, who had to quietly ignore any questions about operating system in order to evade the standard ‘Oh, we don't support Linux’ response.


<!--break-->


I suppose I'd be happy enough with this situation, if the paperwork for a new service or my new embedded firewall/router included both kinds of documentation.  I might be happy if service technicians actually knew what they were doing, instead of just what they should do.

Somehow, though, I always wind up having to second guess what the “real” meaning of some imperative instruction is.  For example, the sticker covering the RJ45 hub ports says “RUN CD FIRST before connecting cables” (Or what? Will it blow up? Will the firmware fry itself? More plausibly, could it be that there's no documentation for using this thing without some kind of trade secret data being passed to it from a close source Windows-only application? The cynic in me churns with the feeling that I am going to be angry and disappointed in a few minutes and have to chuck this piece of junk back into the face of the person who sold it to me.  Angst and disgust with the System well up within me. I'm starting to feel angry in anticipation...).  Cynic that I am, I blithely assume that this advice has been given under the blind assumption that I am using a certain operating system, but on a lark, I decide to go ahead and put the CD in the drive.

My cynicism is rewarded with an `Autorun.inf` file, so no surprise there. But a little poking around reveals the truth of the situation. They wanted me to put the CD in the drive so they could pop up the manual for the device, which is provided in PDF format. Oh, I see. The little white lie is that there is some kind of critical software on this disk that I must run. The truth is that LinkSys is _too cheap to print the manual, so it's only available as a PDF_.

There's nothing really wrong with that, but the thing that bothers me is: _Why couldn't they just say that?!_ Would it have been so bad to just tell me the truth, “The manual's on the CD, we recommend you read it”?  I know the reasoning of course. They think I'm the kind of idiot, who not only doesn't know how to use a firewall/router, but thinks he's too good to read the manual. So instead of just leveling with me, they've tried to manipulate me into thinking I have to insert the disk so as to _force_ me to read the manual.

But of course, that doesn't really work out as planned if I'm not running Windows. As a minority operating system user, I've conditioned myself to second guess and work around the little white lies in the “documentation”.

Of course, this was after I bought the router. I had to buy it, because the previous one gave up the ghost a long time ago (I'm mystified by what can go wrong with an electronic device with no moving parts, but it did somehow—it wouldn't respond on any of the usual IPs for the web interface, so it's a boat anchor now). Before that, I was stuck with a non-functioning router and an installation technician who needed to test the radio modem (this is actually a big improvement over DSL, where they just send you the kit, and you're stuck with it—even in the not-so-rare case that their equipment just doesn't work, or their network is misconfigured. That's what happened last time I went through this dance, and I spent the better part of a week talking to support representatives on two different continents—the main substance of which conversation consisted of proving to them that I was not an idiot so that they would actually bother to check the problems on their own side (as if I would torture myself by calling tech-support before fully troubleshooting my own equipment!)).

Where was I?

Oh yes, the technician wanted to try just connecting the modem to the computer directly, since my router wasn't working.

This is one point where, I realize, GNU/Linux (or my knowledge of it?) really lets me down. I am a bit of a Luddite when it comes to networking.  I don't do PPPoE or DHCP, I just give my computers static IPs and configure their `/etc/hosts` files accordingly. I do all of this by directly editing configuration files, so I'm reluctant to use any wizards or GUI tools to mess with my networking setup. I actually thought at the time that I didn't have any such tools, although my wife has since pointed out that KDE does include some GUIs for modifying network settings. In any case, there's no way I could rely on a technician to know how to do the job with the GUI or without it. You know he's only going to know Windows.

Unless you're employed as a network administrator, of course, you're not going to know this stuff by heart.  A home networker like me, tends to only learn the details of his own system, and—given that he only messes with it once every year or two—it may be pretty hard to remember that much. Of course, I keep notes, and I have the configuration files themselves (with comments, yes!) to work from, but it's still pretty tedious, and I certainly don't want to fiddle with it if I don't have to. That's one major reason why I prefer to use an embedded router to connect—it provides a standard interface and some separation between my system and whatever the ISP is going to give me).

In the end, we've got it mostly working. I still have some weird problems I'm trying to solve, but I doubt they have anything to do with my own system.

So, why am I relating this story here? Because, this is really one of those dirty little secrets about using a free software system. You have to do it in a Windows world, with all of those little white lies, which all disappear into the woodwork if you just follow the standard assumptions—but which each have to be examined and second-guessed when you are trying to hook up with a free system. You find out which standards have been broken, and how badly, and you have to ask careful questions about the interfaces in use—or, more likely, figure out which little white lies to tell them, so that they will tell you the right little white lies, so you can, with some cleverness figure out what the truth is.

In fact, it's not unlike that logic puzzle with the ‘guy who always lies’ and the ‘guy who always tells the truth’, and you have to figure out what one question you can ask to figure out which door to open.  Except, really, who wants to have to figure out logic puzzles just to get hooked up to the internet?

I think wider adoption of free systems (or indeed, any system other than the assumed platform) is held back a lot by this kind of problem. But what can you do about it? It isn't clear that it's the ‘fault’ of the operating system at all; it's more a problem with the culture. It's not even clear what the O/S could do to compensate for the cultural problem. But it seems to be part of the price of freedom to put up with these kinds of headaches.

