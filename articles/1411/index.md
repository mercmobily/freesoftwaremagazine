---
nid: '1411'
title: 'Free art and copyleft conflicts 2: The rationalizations strike back'
authors: 'Terry Hancock'
published: '2005-11-03 22:49:47'
license: verbatim_only
section: opinions
listed: 'true'

---
To re-cap, the problem is that I have a [project](http://light-princess.sf.net) which (at least formerly) used the now-defunct “[Design Science License](http://www.gnu.org/licenses/dsl.html)”. I want to go forward with a more widely accepted license, probably a dual “[GPL](http://www.gnu.org/licenses/gpl.html) + [CC By-SA](http://creativecommons.org/licenses/by-sa/2.5/)” license for the game. This would allow the inclusion of game content in either GPL or By-SA projects. The problem being that there is [concept](http://light-princess.sourceforge.net/Art/Characters/Princess/lp.char.princess.html) [art](http://light-princess.sourceforge.net/Art/Characters/Prince/lp.char.prince.html) by Marc Yang which is under the old license, and I can’t find him. There is also concept art by [Katherine Chi](http://light-princess.sourceforge.net/Old/Image/Character/chi.humdrum.1.jpg), [Daniel Fu](http://light-princess.sourceforge.net/Old/Image/Character/fu.makemnoit.1.jpg), and [“Nezumi” Werhane](http://light-princess.sourceforge.net/Old/Image/Character/nezumi.cat.1.jpg) which involves the same problem, except I know [where to find them](http://light-princess.sourceforge.net/credits.html#ART) to ask for relicensing permission.

I think it might still be reasonable to do this, and I’m going to present my reasons (or rationalizations if you prefer) for why that is—but I invite you to consider these reasons skeptically (I know I am).


## R#1: Interpretation of intent

Okay, the question is, what exactly did Marc Yang agree to when he contributed his work? I don’t actually think he could read the DSL license, which was only available in English. So what he actually agreed to was my interpretation of what the license meant.

So, since Marc was willing to rely on my interpretation, it’s reasonable to assume that he would have been willing to accept my interpretation that the replacement licenses “have substantially the same intent” as the DSL. In other words, if my explanation was good enough then, we might assume that it ought to be now, or at least this is a reasonable default when he himself can’t be reached. Assuming that the other artists who I can get ahold of agree to the change, this argument is strengthened, because it would then be more than just my own judgement.

_Hmmm._


## R#2: It’s not going to be in the game (_VS_ what is a derivative work?)

Next up, there’s the point that this artwork is only concept art. I didn’t really intend to use it in the game, and it’s a fairly trivial matter to ensure that I don’t.

What _will_ be in the game is 2D and 3D character animation inspired by that concept art. Yeah, that’s the ticket “_inspired by_”. Or is it “_derived from_”?

The difference is critical, because the legal distinction between “inspired by” and “derived from” is pretty much that “derived from” means the original copyright covers it as a “derivitive work” and “inspired by” means you got the idea from observing it, but not so much that the original author could claim it was theirs.

Arguably, for example, `gcc` was _inspired by_ pre-existing C compilers, but `egcc` was _derived from_ `gcc`. Linux was _inspired by_ Unix, but SCO Unix was _derived from_ BSD Unix.

So which applies here? It’s a routine practice to import a photo of a model from a magazine ad into a graphics program and use it for a guide in creating a character. Bits of radio and TV have been "sampled" and used directly in making new music recordings. On the other hand, you are infringing on Disney’s intellectual property even if you hand-draw a picture of Mickey Mouse from memory.

Actually, that opens a new can of worms, because it’s not entirely clear whether re-drawing Mickey Mouse is a case of copyright-infringement or trademark-infringement, because Disney has of course, applied both kinds of protection to their characters. In fact, this is probably a good example of why Richard Stallman [warns](http://www.gnu.org/philosophy/words-to-avoid.html#IntellectualProperty) against the conflation of the terms “copyright”, “patent”, and “trademark” into the single term “intellectual property”, and precisely why some industry leaders want them confused. Marc Yang has not, because you don’t get trademark protection unless you explicitly ask for it.

I think the truth is that it’s only trademark protection that covers Disney in that case, and that fan art in general is not a copyright infringement. More to the point, I’m inclined to believe that in my case, as long as the work is not mechanically reproduced, slavishly traced, or otherwise only interpreted trivially, that it is probably safe to consider it non-derivative. It’s probably a stronger case, if elements of the other versions of these concepts are used too.

Under this theory, Marc’s original art stays under the DSL, but this doesn’t affect the game content.

_Hmmm._


## R#3: License doesn’t cover data plus mere aggregation

Another oft-mentioned point is that you don’t have to license a program under the GPL just because you use a GPL compiler to build it, nor because you use a GPL interpreter to interpret it. Contrarywise, you are not forbidden to listen to free-licensed OGG files in a proprietary music player. Neither the player’s license nor the file’s license can taint the other—they are separate items. Putting them together on a disk in order to create a game is just “mere aggregation”, so no problem arises.

This is also a useful idea if we want to have a GPL program with By-SA soundtrack and DSL artwork, as I mentioned in the previous installment. Mixing media is no problem as long as the works remain separable. This of course, raises the legal question of how tightly works have to be bound to be considered “combined works” or “derivative works” versus “mere aggregations” of works on a storage medium. The fact that they are definitely used together on the end user’s computer doesn’t really matter, though, because none of these licenses attempt to restrict what you can do with the works once you have legally acquired them (indeed, it would seem that “fair use” doctrine doesn’t allow a license like that—and the basis for so-called “End User License Agreements” or “contract-based restrictions” is still very shaky. It may never be legal, and it certainly doesn’t figure in this case).

_Hmmm._

So what do you think? Can I get away with it? Will it set a bad precedent if I do? (In other words, will future contributors be reluctant to contribute to the project?) Free licensed projects live and die on issues of integrity, so whatever I do, it had better be fair, and seem that way too.

I could of course take the “conservative” approach and stick with the DSL license, perhaps encouraging new contributions to be dual-licensed. But in fact, this is harder than it sounds. As I’ve mentioned, artists don’t usually want to be bothered with all these legal issues, and just want to create. On the other hand, you have to be very clear about what it means to free-license the work. Given the mindshare that GPL and Creative Commons licenses have, it’s a whole lot easier to explain that to your potential contributors.

Once again, from my “French Connections” (it seems like I’m doomed to write bad-French emails on this project, _sigh_), I have gotten some recent art contributions to the project. These are under a GPL license (or the de facto sort-of GPL but not really terms that I described last time, in that there is no formal licensing kit bundled with them). Trying to get this person to license under the DSL would mean a lot more explaining and more questions about why he should do such a silly thing when he knows what the GPL does, and there are good French translations of it (even an official one, if I’m not mistaken). Likewise, the By-SA license is available in French, so that’s easy to communicate as well.

So far, it is unclear to me if this has a happy ending, though I have a feeling that one or more of the above arguments ought to apply (although I’m also inclined to suspect my own judgement in a matter that I’m probably too close to). I’d welcome any comments on the subject, as before.

