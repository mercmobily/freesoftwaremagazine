---
nid: '2380'
title: 'Computer role-playing games for GNU/Linux '
authors: 'Matt Barton'
published: '2007-11-14 14:28:44'
tags: 'games,rpgs,role-playing-games,rogue,nethack'
issue: issue_20
license: cc-by-nd
section: games
listed: 'true'

---
Of all the various types of computers games out there, my favorite is the computer role-playing game, or CRPG for short. Almost everyone has heard of classic CRPGs like Ultima, Baldur’s Gate, and Fall Out, but what about free software CRPGs? In this article, I take a peek at what’s out there.


<!--break-->



# Introduction

Do you ever get tired of listening to gamers who insist that all the best games are for consoles or Windows, so why bother with GNU/Linux? Do you have colleagues who maintain that GNU/Linux is suitable only for serious work, and that games are frivolous and unimportant? I can’t tell you how many times I’ve heard people go on about how expensive games are to produce, and how they just couldn’t possibly work under a GNU license. Even Richard Stallman once told me that games shouldn’t be treated the same way as other programs, and that he had no problem with separately licensing the creative material (story, characters, graphics, music) and the engine it ran on: “A game scenario can be considered art/fiction rather than software. So it is okay to split the game into engine and scenario, then treat the engine as software and the scenario as art/fiction”. Many free software advocates agree with this view, but others wonder whether we should really view writing fiction any differently than writing code. After all, everyone knows that fiction isn’t always read purely for pleasure, but rather to learn something or experience a new perspective. Stallman himself wrote a great short story called [The Right to Read](http://www.gnu.org/philosophy/right-to-read.html), which you should read if you haven’t already. If that doesn’t prove the point, I don’t know what will!

But wait, you say, games don’t have anything to teach. They’re just simple diversions; just amusements to wile way the idle hours. This may be true for some people—I’m thinking of those whose idea of “gaming” means booting up solitaire, Tetris, or a Mahjong and literally killing time. There are many of these simplistic games available under the GNU license, and several are highly polished and as good, if not better, as many of the proprietary “casual games” being sold in stores. I have nothing against this kind of gaming, but it’s not what people like me are interested in. My two favorite genres of computer game are graphical adventure games (GAGs) and computer role-playing games (CRPGs). These games provide a much more intense experience—they’re addictive and really get you emotionally invested in the outcome.

For this article, I’ve chosen to focus on free software CRPGs currently available for GNU/Linux. Sadly, there aren’t many worthwhile GNU-licensed CRPGs available, and it’s clear that there is a great deal of work left to be done. Nevertheless, a few ambitious developers are moving forward, and I want to tell you about a few of the more interesting projects.


=IMAGE=NetHack.jpg=Figure 1: NetHack is a cult classic CRPG and is quite fun, even with character set graphics=


# Roguelikes

By far the most popular CRPGs for GNU/Linux are “roguelikes”. Put quite simply, a “roguelike” is one of the many games that follow in the footsteps of a very popular UNIX classic called Rogue, which was itself based on older and lesser-known CRPGs for mainframes and the PLATO learning system. There are a few things you should know about Rogue. For one thing, it doesn’t have the kind of graphics you see in most videogames. Instead, it uses Ken Arnold’s “curses” library to make a sort of graphical interface using a terminal’s character set (i.e., the different symbols you can make with your keyboard or with special codes). To put it simply, instead of a graphical image of a wall, you’ll see rows of pound signs and slashes. The main character is represented by the @ symbol, and monsters are usually represented by the first letter of their name (Z for zombie). This may sound primitive, but remember that the alternative was to have no graphics at all, and rely purely on textual descriptions (think of games like Zork and Colossal Cave). One very nice thing about Rogue’s “graphics” is that you don’t need to make a map on your own—the computer does it for you!

Besides the innovative “graphics”, Rogue also offers some pretty compelling gameplay. It’s a very intuitive game that’s easy to learn, but hard to master. The basic mission is to descend down to the 26th level of a dungeon, fetch the Amulet of Yendor, and get back to the top. Of course, achieving this goal will mean fighting plenty of monsters along the way. Thankfully, relatively lightweight monsters roam the top—the deeper you go, the bigger and badder the monsters. Thankfully, your character will learn how to fight better as he gains experience, and he’ll find better weapons and magical items to help vanquish his foes. Another nice touch is that the dungeons are randomized, so that it’s virtually a new game every time you sit down to play it. Many people really enjoyed and continue to enjoy the original Rogue, but of course hackers wanted to find ways to explore further possibilities. A series of forks developed, and eventually enough of these games were available to warrant coming up with a name for the genre—“Roguelike” seem to fit.


# Nethack and Angband

There are many Roguelikes, but two of the most popular are [NetHack](http://www.nethack.org/) and [Angband](http://www.thangorodrim.net/). NetHack is famous for being one of the first games to be developed using the internet (that’s where it gets its name). It’s actually based on an older Roguelike named “Hack”. Hack added some neat features to the mix, such as pets that would follow the character and help him out, and shops where you could buy items (rather than just finding stuff lying around). NetHack adds even more features, making it a very sophisticated and well-loved Roguelike. An even more feature-rich version of the game is [Slash’em](http://slashem.sourceforge.net/), which stands for “Super Lotsa Added Stuff Hack Extended Magic.” Angband is based on the writings of J.R.R. Tolkien. Instead of fetching an amulet, the mission is to gain enough power to take on the evil Morgoth, Lord of Darkness. Both NetHack and Angband were and still are quite popular.


<!--pagebreak-->



=IMAGE=Angband.jpg=Figure 2: Angband is similar to NetHack, but with subtly different gameplay=

Roguelikes are a lot of fun, and if you’ve never played one, I would strongly suggest checking out Nethack. There is a bit of a learning curve in learning the keyboard commands and interpreting the symbols on the screen, but the effort pays off. These games really get at the essence of what makes so many CRPGs fun to play: exploring dungeons, fighting monsters, and building up a powerful character. Though you can play these games for long periods of time, I think of them more as “quick fixes”. You don’t have to sit through boring stories or waste time reading pre-scripted dialog from stereotypical characters. Who needs cut-scenes anyway? Just load up a roguelike and start hacking and slashing without all the frills. If you die, so what? It’s easy enough to start over with a new character, and the randomized dungeons keep you from getting bored.


# Other Roguelikes

There are many other modern roguelikes that might tickle your fancy, such as the NES-themed games available at the [Villa of Darkness](http://www.santiagoz.com/web/news.php), where you can find roguelikes based on Castlevania, Metroid, and Zelda. Then there’s [Diablo Roguelike](http://diablo.chaosforge.org/index.php?module=gallery), an interesting game indeed, since many critics argue that Diablo is itself a modern roguelike. You might also want to try [Ivan](http://ivan.sourceforge.net/download.html), a roguelike that uses SDL for its tile-based graphics. It’s definitely worth checking out. If you’re looking for something with an older pedigree, try [Moria](http://www-math.bgsu.edu/~grabine/moria.html) or [Ancient Domains of Mystery](http://www.adom.de/). There are many, many roguelikes still in active development all over the net—too many to list a brief article! Check out the [Roguebasin](http://roguebasin.roguelikedevelopment.org/index.php?title=Category:Roguelike_games) for a big directory of them.


# Roguelikes with advanced graphics

However, most of us are using personal computers with a great deal of expensive graphics technology. There’s an instinctual need to play games that feature more than just simple character graphics (ASCII, ANSI, and so on). Most of us also have sound cards and speakers, so why not add sound effects and music? Why not make a roguelike as audio-visually impressive as any CRPG currently on the market? There are two answers to these questions.

The first is that graphics and sound merely distract from these games. People who hold this view argue that you should use your imagination to make that Z look like a terrifying, rotting zombie; hear his awful moaning in your mind. Try to visualize the corridors you are walking through, feel the damp and the chill; feel the heat and smell the smoke from the torch burning brightly in your hand. After all, they might say, this is how it works in _real_ Dungeons & Dragons. The dungeon master tells you what a room looks like, and you’re supposed to picture it in your mind; she doesn’t just turn on a TV or hand you a photograph. This is a good answer for many fans of roguelikes; people who need graphics and sound are just lacking imagination. 

The second answer is that there’s really no reason why we can’t add graphics and sound. Some people may prefer the old style, and there’s nothing wrong with that, but others enjoy graphics and sound and want them in the game. Many of the games mentioned above do have simple graphical interfaces available, though featuring the same gameplay. However, let me just say now that none of your Windows or console buddies are likely to be impressed with even the best of these efforts. The interfaces still continue to rely on a lengthy list of keyboard commands or hard-to-navigate menus, and the graphics make the 1997 game Diablo look next-gen. 


# Iso-Angband and NetHack: Falcon’s Eye

To learn more about the development of some of the more ambitious efforts, I spoke with Jaakko Tapani Peltonen and Hansjoerg “Hajo” Malthaner, developers of NetHack: Falcon’s Eye and [Iso-Angband](http://www.simugraph.com/simutrans/iso_angband/download.html), respectively. Hajo’s game is graphical but pays homage to the original; for instance, your character is shown as a floating @ symbol. It’s a charming game, but somewhat difficult to control owing to the isometric view (it takes some getting used to). Unfortunately, the project is now defunct, though you can still download the game. Hajo just didn’t feel that people were interested enough in his project to warrant the time he was putting into it.


=IMAGE=Iso-Angband.JPG=Figure 3: Iso-Angband is an isometric game with an interesting tileset=

What was the problem? According to Hajo, “The big problem was acceptance. Not technical issues; these were solvable—but acceptance was low. Some people were almost openly hostile towards the idea of a graphical frontend”. Hajo also cites some “political” problems with the Angband community, who didn’t seem to be too keen on Hajo’s bold vision.

I was a bit down after hearing from Hajo; I liked his game and was sad to hear that it was no longer being developed. Fortunately, Jaakko’s Falcon’s Eye project seems to be going much better. Jaakko feels that there has been great interest in his project: “In more concrete terms, there have been over 178,000 downloads on Sourceforge.net of the Windows version alone (over 230,000 of all packages in total”. Furthermore, some distros are including the game. He’s also received over 1,000 emails about the game! 

Jaakko feels that audio-visuals are important to attract new people to the game: “non-graphical roguelikes may seem disappointing compared to commercial games, despite the complexity of the underlying gameplay”. Jaakko also feels that roguelikes are easier for aspiring developers to build than other types of CRPGs. This “do-it-yourself aspect” gives the game an additional boost at a time when commercial CRPGs cost millions of dollars and need armies of professionals to complete.


<!--pagebreak-->



=IMAGE=Falcon_Eye.jpg=Figure 4: NetHack: Falcon’s Eye has better graphics, but no animation=

I played Falcon’s Eye for quite awhile, and had a great deal of fun with it. The team has even created a nice introductory sequence, and the music is very pleasant. Overall, I was very impressed with the game, though I must admit it is not perfect. Perhaps the biggest problem is that the characters aren’t shown walking around the dungeon; instead, they simply zap to the next location on the grid. Animation is severely lacking, giving the game an unpolished feel. I also think the interface is difficult and should be much more intuitive. Perhaps they should look at the radial-style interfaces of some of the newer commercial CRPGs, or building a tutorial into the game that would familiarize new players with the basics. These tutorials are a “given” in almost every commercial CRPG. As with Iso-Angband, I also had some difficulty moving around, though one nice touch here is that you can just use the mouse to click on where you want to go. In short, the game has promise, but it still has room for development. Jaakko told me that the project has been forked, and a newer version of the game called Vulture’s Claw is floating around the net. However, I was unable to find and download a version of it.


# Lost Labyrinth and Adonthell: Waste’s Edge

I also tried [Lost Labyrinth](http://www.lostlabyrinth.com/index.php?p=screenshots) and [Adonthell: Waste’s Edge](http://adonthell.linuxgames.com/), two games that reminded me of the Japanese-style RPGs find on the NES and SNES game consoles. These games are all based on the old Ultima games, particularly Ultima III. To put it bluntly, you get a top-down view and cute, munchkin like characters, and lots of dialog with the people you encounter. Lost Labyrinth maintains the turn-based style of a roguelike, but Adonthell is set in real-time, with fluid motion. Both have slick interfaces and are fairly easy to learn. Although I liked both of them, Adonthell seems to have a richer story and more interesting characters. Unfortunately, I’m not a big fan of this type of CRPG; the cartoony graphics put me off.


=IMAGE=Lost Labyrinth.jpg=Figure 5: Lost Labyrinth reminds me of a console role-playing game=


# Conclusion

In short, I failed to find a GNU-licensed CRPG that really impressed me. The best of the lot are the many roguelikes, which I love to play, but their “quick and dirty” style gameplay is definitely no substitute for the long, drawn-out campaigns you get with commercial CRPGs like Neverwinter Nights and Diablo. I hate to say it, but maybe GNU developers should look beyond Rogue for inspiration—it’s “been done” in my opinion. What I think would be illiant idea would be for GNU game developers to go back and look at some of the earlier CRPGs, and also some of the tabletop, pen-and-paper role-playing games that never made it into computerized form. I’m thinking here of the many spy (Mercenaries, Spies, and Private Eyes) and WWII (Top Military System) role-playing games, as well as the science fiction game Traveller and Steve Jackson’s The Fantasy Trip and GURPS. All of these sources would be great for inspiring a new CRPG that will get us away from the rather clichéd system of Dungeons & Dragons. Don’t get me wrong; I love TSR and D&D, but there are other models out there, and they have massive (if not even better) potential to make awesome new CRPGs.


=IMAGE=Adonthell.jpg=Figure 6: Andonthell: Waste’s Edge is focused on story and characters=

I would also want developers to play some of the more innovative of the older CRPGs, such as Planescape: Torment and Ultima IV. These games really explored new strategies for gameplay, and put the focus on things other than combat. There’s also the Fallout series and the earlier Wasteland, games set in post-apocalyptic times and which are radically different than the average swords and sorcery games. I’d also recommend the console game Chrono Trigger, which is my favorite console RPG. It features a very good story and interesting characters, and the style of gameplay shouldn’t be hard to adapt. It seems to me that the first priority should be building a suitable engine, and then follow a Neverwinter Nights model to encourage users to build their own campaigns. This way, you get the programmers (building the engine), artists (tile sets and character models), musicians, and, of course, storytellers all doing what they do best.

