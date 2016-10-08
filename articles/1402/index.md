---
nid: '1402'
title: 'Free art and copyright conflicts'
authors: 'Terry Hancock'
published: '2005-10-27 1:23:01'
license: verbatim_only
section: opinions
listed: 'true'

---
In 2000, I was a much more naive person when it came to both free software and the legal environment in which it exists. To be fair, I suppose I was far from alone.

At that time, the idea of applying free licensing to artwork was pretty new (the Creative Commons hadn’t really built up much steam, even if they did exist, which they probably did, but I can’t remember). There were a lot of theories about the reasons why it was hard to motivate artists to use free licensing, perhaps because an awful lot of people were still fuzzy about why programmers did it.

However, there was definitely an opinion that artists just weren’t having with any of this free licensing stuff. For example, I was told that free software graphic adventure games were missing largely because artists simply wouldn’t contribute to a free software game project.

I didn’t buy it then, and I still don’t—and now I have quite a bit of evidence to back up the point.

Unfortunately, this isn’t sufficient to get me out of the woods, as I will explain.

But, back to 2000...

In order to disprove this preposterous idea that artists wouldn’t contribute to a free project, I decided to start a project at Sourceforge to develop a game, **starting with the artwork**. That became “The Light Princess”, and I found that, indeed, I could find artists to contribute, but I had to work at it. Instead of idly posting a help-wanted through Sourceforge that would be seen only by programmers (like that would help, duh!), I went to places where I knew I would find artists.

First of all, I asked my wife about good, public domain source material for a game. It turns out that she was particularly fond of George MacDonald, and this story in particular (The Light Princess). And of course, due to being written way back in the 19th century before copyright nazism had time to take root, the work had expired into the public domain, which is why, for example, you can find a printed copy from Dover Books, which makes a living out of reprinting copyright-expired books. In fact, they have a very nice, illustrated collection of many of GMD’s books.

Then I set out to find artistic contributors. I knew that SF and Anime fan communities had long traditions of amateur and/or semi-pro “fan artists”, who often went on to do more original work, when they got tired of retreading other people’s characters. Some of these people are amazingly talented. But would they contribute to a free-licensed project? That was the experiment. Because, instead of trying to sell free-licensers on doing art, I was trying to sell artists on free-licensing.

I found anime fan art websites by individual artists, looked at online galleries, and even found a French bulletin board dedicated mostly to artists with an interest in the manga/anime style. You’ll notice I didn’t bother much with Japanese anime art websites—there’s a good reason for that: Japanese amateur manga artists have an ice cube’s chance in a very hot place of landing a professional job as a manga artist.  People in the US and France on the other hand, are very unlikely to be able to overcome their geographical and ethnographical challenges. That means that they are much more likely to try alternative channels to success, which is what free art is.

I didn’t spend as much time on it, but I also hunted down free-licensed musicians. Curiously, the idea of free-licensing musical content, at least for verbatim recording, seems to have penetrated much deeper. After all, there’s a long tradition of illegal but semi-officially sanctioned “bootleg” recordings and I think I’ll leave you to investigate the sticky issue of “internet music file sharing” on your own, as I’m sure you won’t have heard a **thing** about that, right?

But, I’m not really talking about those folks. I’m talking about the guys who actually, for whatever reason, go ahead and use a genuine FSF-Debian-OSI-approved **FREE** license on their works. Yes, the real thing. These exist too, and in somewhat larger numbers than for graphic artists.

I became attracted to the writings of a particular musician/programmer/free-licensing advocate named Michael Stutz, who, wrote a license he called the “Design Science License” to address what he thought were failings of applying a license written with software in mind, like the Gnu General Public License to artistic works.

Dang that was a mistake. I bet on the wrong horse. Not that there’s anything actually wrong with the DSL, but it was a lot like buying a “BetaMax” VCR back in the 1980s. Once VHS took over, you just couldn’t keep using it. Standards matter.

And that happens in the free software community because legal language doesn’t allow us to completely express what we **mean**. Ask any sane artist, who gives you something under a GPL, DSL, or Creative Commons BY-SA license, whether they really care if you re-release it under one of the others in that set, and (assuming they understand what you’re asking) they’ll almost always say “sure, what’s the difference”.  Because, indeed, all of those licenses have almost exactly the same **intent**—they allow the same basic freedoms and require the same basic restrictions.

They’re also legally incompatible. You must ask permission to switch from one to the other, because the nature of the copyleft—that fantastic legal hack we owe to Richard Stallman—relies on requiring that the **same** license be used on all derivative works. Not a license with the **same intent**, the **same** license!

But, you ask: “If the intent is the same, why do you need to change it? What are you really trying to do, you evil license switcher!?”. Well, okay, some people may be up to dark deeds with this kind of talk, but I’m talking about the situation where you want to combine a bunch of free-licensed material into a creative work with a free-license.

Intuitively, you’d expect that to be easy, but the law is frequently counter-intuitive. The trouble is, if the soundtrack is BY-SA, the artwork is DSL, and the computer programming is GPL, what license can I release the whole under?

Answer: you **can’t** release the whole. Period.

Somebody has to give you explicit permission to change the license, or you are just plain out of luck.

To make matters worse, I have to explain this to a not-really-interested artist, who just doesn’t want to be bothered by all these nasty details. I would say “who is also a teenager”, except that they aren’t **now**, this is five years later! Oh yeah, I also have to explain it in a foreign language that I took in school, but never really got all that good at. Je parle tres mauvais francais, and I can’t even figure out how to type the stupid accent marks.

Did I mention yet that I bet on the wrong horse? Yep. The DSL is dead. That is an **ex-parrot**.  Totally disavowed. The Free Software Foundation is the only place you can find a copy, with a cute little disclaimer warning you that “this license is not endorsed by the Free Software Foundation”. Michael Stutz’s webpage which formerly promoted the benefits of the DSL now promotes the benefits of his new book on Linux. More power to him, but where does this leave me?

O-kay. So which license won? Well, the Creative Commons has been very successful in the field of art and music, and of course, the GPL is still with us. The GPL is to free licenses what Unix is to operating systems. It will never die, no matter how decrepit it gets. Having just been burned by the DSL experience, I remained ancy about trusting the durability of the CC By-SA license, so I decided that the GPL made more sense. However, I discussed this with some of the people who are still interested in the project. (After five years! I am amazed, and deeply gratified that there are still any such people. Thanks guys!) And I got persuaded that it might be cooler to dual-license the game, under both GPL and By-SA, thus covering even more territory, and allowing for somewhat simpler accounting for the artistic content (the By-SA is much more economical in the notices it requires, due to the realities of distributing single-file data like song recordings and JPGs that don’t allow for so much meta data—by including an “okay to convert to GPL” clause, dual licensing is achieved and everything is peachy).

Except of course for all that concept art that is licensed under the DSL right now. What do I do?

Well, of course, I proceed to track down the artists. I still haven’t actually emailed them for permission on this, so I don’t actually know yet if they are going to be okay with it, but I also feel a little touchy about making promises to them. After all, I had to table the whole project years ago, and I don’t want raise hopes again unless I’m prepared to deliver (ironically, the project failed for lack of **programmers**, darned hypocrites!). So I’ve promised myself that I will work on the software side until I’m ready for that. But I still wanted to know where to find them, just so I knew.

Well, there were actually four great artists on this project back in 2000 and 2001. I think it’s cool to mention their names, as they are already in the credits: Katherine Chi, Daniel Fu, Corene “Nezumi” Werhane, and Marc Yang. They’re all great, and I highly recommend you look up their work. Unfortunately, one of them, Marc Yang, has apparently been abducted by aliens and taken to a far distant star. Or he’s dead. Or working as a sales executive for Taiwanese computer company (but that seems unlikely—my money’s on the aliens).

Did I mention that Marc designed the two main characters for this game? Yeah. Kind of hard to just cut out of the plan. I do have alternate designs from Katherine Chi, which are really good, but not my first picks for those characters (on the other hand she and Daniel Fu have a lot of other terrific character work—Nezumi is mostly a furry artist, but she did a really nice animal character and great costume design). But the point is, I feel really annoyed at having to make a decision on anything but what’s right for the game, and I’m also pretty sure that if Marc knew what was going on, he wouldn’t want to be cut out. But of course, that’s a personal opinion, not a legal finding.

In my next blog entry, I hope to rationalize my way into a solution for this problem, but we’ll just have to see how successful I am at that. In the meantime, note the comment form—I’m all ears.

