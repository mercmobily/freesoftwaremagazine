---
nid: '2557'
title: 'Free software Easter eggs'
authors: 'Alan Berg'
published: '2008-02-20 1:20:03'
tags: 'easter-eggs,fun,wasted-childhood'
issue: issue_21
license: gfdl
section: end_users
listed: 'true'

---
It is grey a dull, overcast day here in downtown Amsterdam. The weather is rather oppressive, summer’s smile long gone and my wine cellar miraculously has grown to quiet emptiness. However, I know a not too-well guarded secret. Hidden in the cracks, just at the edge of your eyesight, is extra humorous functionality in your favourite free software applications. Silent professional Easter eggs are waiting stealthily to make you smile.

<!--break-->

Do not worry; no animals were involved in testing (other than me, myself and I), just Ubuntu 7.10 and an aged and generic desktop. Strap on your goggles, sit firmly back in your comfortable chair, turn the boom box up and relax. Let the games begin and the mutant cow like creature roars desperately for supremacy.

# To be or not to be a bovine

The grey day and lack of viable alcohol sources left me with one choice; to research my next article on GNU/Linux related Easter eggs. What is it with cows and GNU/Linux? Let me answer my own self-serving question and show you some varied and slightly bizarre examples of human randomness. Assuming you are running under Ubuntu from a terminal type:

=CODE_START=
apt-get help | grep -i super

This APT has Super Cow Powers.
=CODE_END=

OK, let us generate some somewhat warped and deranged ASCII

=CODE_START=
apt-get moo
         (__)
         (oo)
   /------\/
  / |    ||
 *  /\---/\
    ~~   ~~
...."Have you mooed today?"...
=CODE_END=

Having fun yet? My brain is starting to bake trying to work out the meaning of it all. There are even serious and well researched Ubuntu [bug reports](https://launchpad.net/ubuntu/+source/apt/+bug/56125) on the subject.

How about trying to use aptitude from the command line to discern a recognizable and potentially disturbing pattern of social humor. Can we get aptitude to talk sense? Let us beat it around the head verbally and see if we can get it to admit its origins.

=CODE_START=
aptitude -v moo
There really are no Easter Eggs in this program.
aptitude -vv moo
Didn't I already tell you that there are no Easter Eggs in this program?
aptitude -vvv moo
Stop it!
aptitude -vvvv moo
Okay, okay, if I give you an Easter Egg, will you go away?
aptitude -vvvvv moo
All right, you win.

                               /----\
                       -------/      \
                      /               \
                     /                |
   -----------------/                  --------\
   ----------------------------------------------
 aptitude -vvvvvv moo

What is it?  It's an elephant being eaten by a snake, of course.
=CODE_END=

Yes now I understand life clearly. Well, if you cannot beat them with sharp pointy objects, then join them I say. Let me introduce to a small program called cowsay, a man’s best friend, a configurable talking cow. Just what you need when you already have multiple personalities and two children. From your favourite terminal, please type:

=CODE_START=
sudo apt-get install cowsay
cowsay what the

 ----------
  what the
 ----------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w||
                ||     ||

=CODE_END=

Cows, cows everywhere and not a pint of milk to drink.

=ZOOM=Cows, cows everywhere and not a pint of milk to drink=

_Warning:_ the following text discusses cows, but the experts among you will of course realize that although the animal in question has udders it is, in fact, a mutated creature of unknown genesis... possibly goat. Cow is the nearest meaningful definition I can find without consulting world-renowned experts who have designed nuclear reactors and viewed, sadly, in a state of pizza engulfed enlightenment, every single Star Trek episode.

<!--pagebreak-->

The GNOME desktop is also a worshipper. In GNOME, pressing `Alt + F2` opens the run command dialog inputting `gegls from outer space` executes yet another variant of a space invaders game with offenders that look like a cow, smell like a cow, but really are not, but hey do I care? no real phasers in sight. See figure 1 for a visual.

=IMAGE=f1.jpg=Figure 1: Holy bovine! And you thought I was strange=

Let us end this bovine like nonsense and move to higher realms of cluelessness, mutual stupidity and mistrust.

# Gaming delight

_Frets on Fire_, figure 2, is not really an Easter egg, just a plain old, jolly good and fun game. The presence of Frets being played by sugar boosted children is similar a very noisy room full of bees and I should know bees are my friends. I have lots of friends.

The noise and the insults in the tutorial really speak to me, especially when the game aims them directly at my elder son. I must practice the approach next time I ask for a pay rise or refuse to give out a week’s worth of pocket money. To install this rock and roll enabled application from the command line type:

=CODE_START=
sudo apt-get install fretsonfire
=CODE_END=

Obviously, you will now find an icon under the Games menu. But be warned, be very warned, the game is addictive and is best served with the bass up high and the neighbours away on holiday.

=ZOOM=Be warned, be very warned, Frets on Fire is addictive=

=IMAGE=f2.jpg=Figure 2: Main screen Frets on Fire=

Hidden in aptitude, figure 3, is a minesweeper game. From a terminal type `aptitude` and once started `Ctrl+T` to highlight the relevant menu. Yes, why not waste time trying to find mines at the company’s expense; it is cheaper than coffee and less likely to send you to the nearest toilet.

=IMAGE=f3.jpg=Figure 3: The mine sweeper game in aptitude=

The OpenOffice.org developers, not to be out done by secret competition, also hide more than complex trend resolving algorithms in their spreadsheets. In any randomly chosen cell input `=GAME("StarWars")` and press return you will now find yourself within a space invaders type feature, see figure 4. Hey hardened gamers, I am not going to mention my final score, but there is no way you are going to beat me ever. I rule and there is no way you can prove otherwise. Now back to the main story.

=IMAGE=f4.jpg=Figure 4: Calc’s version of space invaders=

While we are working really hard on our spreadsheet/game to generate a random smiley type in the `command =TTT()`. Easter eggs are by their very nature hidden; you are only supposed to find the hidden gems and rotten eggs under special circumstance. For example, by deeply mining the code or when they are released on aforementioned holidays. Trying to do my research thoroughly (hahaha!) I searched the apt cache on local machine via:

=CODE_START=
apt-cache search Easter
=CODE_END=

and found to my great delight.

=CODE_START=
wesnoth-ei - Eastern Invasion official campaign for Wesnoth
=CODE_END=

Not that wesnoth-ei is an Easter egg, but it is a rather a good mission for an excellent game, so this is my lame excuse to help interested wesnothnauts to add more fun to these darkening days. So far so good, a few games and an extra mission, how about viewing a few questionable photographs (nudge, nudge, wink, wink).

=ZOOM=How about viewing a few questionable photographs, nudge, nudge, wink, wink=

# Show me a photo

Have you ever wondered what the hard working OpenOffice.org development team used to look like in the StarOffice days, long before steam engines? While in calc type in a cell and press return `=STARCALCTEAM()` and a relaxed and well dressed bunch of reprobates will, as if by c-coding-magic, appear in a separated dialog box. If you can take the strain then feel free to view figure 5, otherwise the exit is to the left.

=IMAGE=f5.jpg=Figure 5: The nearly original Calc team=

For the same affect in the OpenOffice.org word processor, type the magic word StarWriterTeam followed by the F3 function key and finally throwing fairy dust into the air (good for covering the mist from old socks that I suspect you can smell while you are reading this article). A delightful picture coincidentally similar to figure 6 will now appear. I particularly liked the cutouts and think the effect added an air of realism to the whole event. The included text mentions the hard working developers. If you recognize any of the names, the next time you see the developer in cut out pose, pat him on the back and thank him for his software coding efforts. The world is a better place and we do have more choice because of OpenOffice.org and other ODT format supporters.

=IMAGE=f6.jpg=Figure 6: A fake photo of the Star Writer team=

Perhaps we can find a more realistic photograph (figure 7) of the developers in the zenity tool. The tool allows for the easy creation of dialogs of different types. If you input from a terminal `zenity --about` and then type `zen` an extra graphic appears. The realism fooled me for a few minutes until I realized that this was not a member of the Star Writer team. To be honest, my younger son has a Gameboy DS and the figure reminds me closely of a certain commercial figure.

=IMAGE=f7.jpg=Figure 7: A realistic zenike about=

Finally, let’s acknowledge the work done by the large base of Firefox developers. In the address bulk insert about:credits. Wow, so many dedicated hard workers and so much quality effort.

<!--pagebreak-->

# Random bits of knowledge

This section is all about wisdom, funny names and learning from history and nothing about sensible subjects such as the weather or the rather excellent English cricket team and no, England never loses at Ruby, football or tennis. By the end, you will  truly understand  why the Flatulent Elm of West Ruislip needs to be released and so too tight pants, read on, be awed, and then meditate.

Ubuntu 7.10 has the tiny version of vim (a text editor) installed to achieve enlightenment you will need to upgrade, side grade to vim-gnome.

=CODE_START=
apt-get install vim-gnome
=CODE_END=

Running gvim and then typing `:help 42` delivers a massive amount of meaningful wisdom (figure 8).

=IMAGE=f8.jpg=Figure 8: The meaning of life and the grey Dutch weather system=

And have you heard the joke about interesting release names. How about trying `zgrep "The.*Release" /usr/share/doc/dpkg/changelog.Debian.gz`

=CODE_START=
The "Good, clean fun" Release.
The "Bully's Special Prize" Release.
The "On like Donkey Kong" Release.
The "In like Flynn" Release.
The "Maidenhead Creeping Water Plant" Release.
The "Just kidding about the God part" Release.
The "Flatulent Elm of West Ruislip" Release.
The "Or the Wabbit gets it" Release.
The "Paying off Karma at a vastly accelerated rate" Release.
The "Mysteriously Unnamed" Release.
The "Livin' like a good boy oughta" Release.
The "Three banana strategy" Release.
The "Awh, yeah?  Ripper!" Release.
The "Grab your gun and bring in the cat" Release.
The "Captain Tight-Pants" Release.
The "Donald, where's your troosers?" Release.
The "Let the Wookie win" Release.
The DebConf4 Release.
=CODE_END=

I vote to release the tight pants, but only for myself.

Not wanting to be outdone, look through calendar.history: `cat /usr/share/calendar/calendar.history`

And if you want 25 cents worth of advice then in the log on screen `Require Quarter` as user name, then just log on as normal. And, yes if you are thinking of starting your own religion then first see how Mozilla was reborn, figure 9. In the Firefox address bulk type `about:Mozilla` and thus to the brethren was imparted deep wisdom (the musical) and we all laughed happily released from our daily burdens.

=IMAGE=f9.jpg=Figure 9: About Mozilla=

# Final comments

Smarter people than I found most of the Easter eggs, which I then cheaply mentioned in this article. I can only point you back to the original sources mentioned in the aptly named resource section.

If you were looking for a sensible article, sorry, I am more into badly cropped photographs and cow watching from a very great distance. If you know of more nuggets then please add a comment at the end of the article, thus becoming instantly famous for a nanosecond until the spam filter fails on your email client.

And, finally, to the brave developers in this grey corporate world, fighting for open standards and the right to an individual sense of humorous wonderment. I salute you.

Long live the mutant bovine/goat type creature. We are shocked and awed.

=ZOOM=If you were looking for a sensible article, sorry, I am more into badly cropped photographs and cow watching from a very great distance=

# Acknowledgments

To my father hereby known as Lawrence Berg Senior, who gave me an metaphoric Easter egg everyday. And a certain Cook who still puts up with a well known collector of gold plated armadillo’s.

# Mostly random resources

* [http://www.mozilla.org/book/](http://www.mozilla.org/book/)
* [http://www.novell.com/coolsolutions/trench/17293.html](http://www.novell.com/coolsolutions/trench/17293.html)
* [http://www.cyberciti.biz/tips/linux-Easter-eggs.html](http://www.cyberciti.biz/tips/linux-Easter-eggs.html)
* [http://wiki.services.openoffice.org/wiki/Easter_Eggs](http://wiki.services.openoffice.org/wiki/Easter_Eggs)
* [http://ubuntu-tutorials.com/2007/09/14/aptitude-Easter-egg/](http://ubuntu-tutorials.com/2007/09/14/aptitude-Easter-egg/)
* [http://en.wikipedia.org/wiki/GNOME_Display_Manager#Easter_Eggs](http://en.wikipedia.org/wiki/GNOME_Display_Manager#Easter_Eggs)
* [https://launchpad.net/ubuntu/+source/apt/+bug/56125](https://launchpad.net/ubuntu/+source/apt/+bug/56125)


