---
nid: '2074'
title: 'Jim Kent, hero of free and open source software'
authors: 'Gary Richmond'
published: '2007-02-14 22:14:41'
tags: 'linux,genome,celera'
license: verbatim_only
section: opinions
listed: 'true'

---
Percy Shelly averred that poets were the unacknowledged legislators of the world. That was a hope rather than a fact. It might have been true in earlier centuries but the inexorable rise of scientific methodology relegated it as a source of power and influence. Inevitably, the baton passed to science.

Computer designers and software engineers might reasonably claim that they have taken on the mantle previously occupied by their artistic ancestors and everyone is all too unhappily familiar with the baleful, quasi-monopolistic influence of large software companies like Microsoft. Yet, it is not the whole story by any means. All the major players in the world of free software may well feel themselves to be, like Shelly, the unacknowledged legislators of the world given the role they have played in democratizing knowledge and thus empowering people to have control over their digital lives.

If GNU/Linux were a branch of astronomy you would experience little difficulty in navigating the night sky. Against the background of the familiar constellations you could easily name and identify the shooting stars and comets: Torvalds, Stallman, Perens _et al_. However, if you peer a little harder you might just observe a smaller star of the firmament, an unregarded little stellar object in an unfashionable spiral arm of the galaxy; not a supernova but its influence will be felt for decades to come.

You may not find it listed prominently in the free software equivalent of a star catalogue but look up the celestial index under _Kent, Jim_ and there it is. Some people will have heard of him but I suspect that many have not. His story is well worth the telling and I hope that by the end you will agree with me that it is a story of free software heroism and that Kent deserves the soubriquet as one of the unacknowledged legislators of the world.

The opposition to software patents in the free software community is too well known to require repeating here but if defeating attempts to patent software code is important (and it is very important) what about wetware patents? Wetware? That's you and me, the carbon-based lifeforms on planet Earth. More specifically, in computer terms, our source code. It was not invented but represents three billion years of evolution and the idea that you can or should patent this universal inheritance is repugnant (US patent office please take note).

The same reaction to the very idea of patenting our source code was the catalyst for an extraordinary series of events that began with the race to map the human genome. Ultimately, it was a two-horse race between the National Institute for Health (NIH USA), a publically-funded body with financial help from the Wellcome Foundation (UK), and Celera Genomics, a private company headed up by Craig Venter. Venter's goal was to sequence the genome, patent it and charge subscribers to the database a fee for access. This closed-source model was deeply unpopular with geneticists worldwide and the Human Genome Project was founded in response. (There may be some poetic justice in the belief that Venter was allegedly fired in 2002 by Celera after it became clear that selling genome date would not be profitable.)

The task was huge - some think it equivalent to putting a man on the moon - and the problems encountered reflected that. Without going into the complex details of it all the task was, to put it in computer terms, to decompress and extract the biological zip drive that was the 400,000 pieces of data coded in the human genome. This was a data problem that required a high degree of processing power. Venter at Celera was reputed to have deployed the resources of the most powerful civilian computer in the world.

Kent's senior colleague, Dave Haussler, at the University of the University of California at Santa Cruz (UCSC) was working on sequencing the genome and Kent offered his program on worm DNA as a template to assist the human gonenome project. It was, with the luxury of hindsight, a truly historical moment. A series of events was set in train that ultimately ensured that the human genome remained firmly in the public domain.

How did he do it? He armed himself with the GNU/Linux operating system using a Beowulf Cluster across one hundred 800MHz processers with 256MB of RAM each, the VIM editor, the GCC compiler and icepacks every night to stave off the RSI from hell induced by the herculean task of writing 10,000 lines of code, working eighty hours a week for forty days in a converted garage at the back of his bungalow to complete the task! ("He had to ice his wrists at night because of the fury with which he created this extraordinarily complex piece of code...He's unbelievable,this program represents an amount of work that would have taken a team of 5 or 10 programmers at least six months or a year", Haussler said) The result was a program called GigAssembler which allowed the project to organize the data into a coherent sequence and 22 June, 2000 was the day it went live, followed by another historical date: 7 July of the same year Kent and  Haussler posted the results on the web. The genie was well and truly out of the bottle.

History records that the HGP beat Celera by one day but it was declared officially to be a draw and was announced as such at the White House , where, after Kent had uploaded the results to the web and eventually compressed it to a single CD, it was presented and put in a time capsule for posterity. Rightly, Kent was showered with job offers (he declined them) and awards- the most appropriate being the Ben Franklin award from Bioinformatics.org; ironic because Franklin declined to patent his inventions. Oh, and he was also awarded the Overton Prize from the International Society of computational Biology in 2003.

It was a remarkable instance of serendipity. Before his Ph.D in biology Kent had founded and run a software company and led a team of software engineers, so he possessed the necessary computer skills equal to the task. (He wrote paint and animation programs for computers. These included the award-winning Aegis Animator on the Amiga, Cyber Paint on the Atari ST, and Autodesk Animator on the PC.) That provenance is evident in the way he described the task of genome sequencing: it was essentially a task in reverse engineering. DNA was the machine code, genes were the assembler and proteins a high-level language like C. Alright, the analogy has limits of course but you get the idea.

In the spirit of free software Kent released the GigAssembler under a free license for non-commercial use and he clearly understands the significance of open sytems. In an interview with O'Reilly Networks, whilst describing the GPL as "absolutely disastrous" for commercial environments  but "particularly beneficial" for operating systems even "copyleft" seemed too restrictive!  Kent's summary of the value of free software is well worth quoting at length:

_I think that free software for computer operating systems is particularly beneficial. We all want to speak the same language so that we can communicate with each other. We all want to use the same operating system so that we can use our favorite programs everywhere, and so that we don't have to port the programs we've written. An operating system in private hands will therefore tend to die out, become a monopoly, or encourage the people who use it to become a closed group. The pro bono work of the many people developing free operating systems really is helping lift the world out of these three gloomy alternatives. Displacing Microsoft in the Windows/Icon/Mouse/Pointer world may not happen, but I would not be in the least surprised if a computer with good out of the box speech recognition, a nice web browser, and a strictly optional keyboard based on Linux takes over China in 3 years and the USA in 6. Free software, and the low cost, encourages the sharing of information between scientists. If I want to share my work with a colleague, they don't need to spend time or $ acquiring the software needed to review or recreate the work (ever try to buy an expensive piece of software via a University purchasing office?). This also evens the playing field for scientists without the research budgets found at most US universities. I can afford most software through research grants, but a colleague is a less prosperous country may not have the same resources._

This points up the similarity between the methodology of science and free software. Both progress and gather kudos by being open and being open means that the code base and the experiments can be examined in order to debug, verify or refute. If you don't believe me then just recall the episode of Pons and Fleishman and cold fusion. Karl Popper would certainly have approved.

Even peer review can be tainted though. Just as there is high street fashion, there are fashions too in science. Some topics are "sexy" or topical and getting funding, free software or otherwise, can mean towing a particular line in political correctness. Just try getting a hearing or funding to study the correlation between solar activity and global warming and see how far you get. Clearly there is an undeniable human input to climate change but it takes a very brave scientist to swim against the tide and dare to suggest that there may be additional factors. Just ask Henrik Svensmark, a Danish scientist whose finding over ten years in solar activity and climate have been consistently turned down for publication by journal after journal and who only managed to get his research published in The Proceedings of the Royal Society last year. Free software means keeping an open mind.

The Human Genome Project, like the Manhatten Project before it, is big science and that means big funding and the old cliche still stands: he who pays the piper calls the tune. Not for nothing did Eisenhower warn about the military-industrial complex. Open sourcing software or science can be compromised by the politics of its finances. Aubrey de Grey, the gerontologist, has pointed out that being funded by government leaves you hostage to politicians and therefore , at least in a democracy, to the voters and their interests, agendas and lobby groups. If you go down the route of financing from big business it is buffeted by directors, shareholders and accountants and the desire to return a quick profit. Disinterested private finance may be the only unfettered option left, but philanthropic donations without strings are as uncommon as politicians saying they're sorry.

All this may sound a little idealistic, even naive. Perhaps it it, but for all the faustian pacts scientists and software engineers have to make to fund research and for all their all too human foibles, they have done more that any other organised group of human beings to advance and improve this miserable species. If you took science out of the picture a returning visiting alien from Mars would be virtually unable to distinguish between modern man and his far ancestors.

Our progress thus far has been underpinned by pure science and applied technology and the era of computing, particularly free software computing, has acted an an exponential accelerant to the whole enterprise. The next time a clone of John Cleese asks you: "what has free software ever done for us?", go tell them about Jim Kent, not Clarke Kent. As Miranda in Shakespeare's The Tempest said: "Brave new world that has such people in it".


# Bibliography


## Websites

[ http://www.alternet.org/story/10843/](http://www.alternet.org/story/10843/)

[http://bioinformatics.org/franklin/2003/](http://bioinformatics.org/franklin/2003/)

[http://dir.salon.com/story/tech/feature/2003/10/21/genome/index.html?pn=3](http://dir.salon.com/story/tech/feature/2003/10/21/genome/index.html?pn=3)

[http://www.iscb.org/newsletter6-2/overton.html](http://www.iscb.org/newsletter6-2/overton.html)

[http://en.wikipedia.org/wiki/Jim_Kent](http://en.wikipedia.org/wiki/Jim_Kent)

[http://www.oreillynet.com/pub/a/network/2002/12/10/kent.html](http://www.oreillynet.com/pub/a/network/2002/12/10/kent.html)

[http://www.oreillynet.com/pub/a/network/2002/04/05/kent.html](http://www.oreillynet.com/pub/a/network/2002/04/05/kent.html)

[http://conferences.oreillynet.com/cs/os2002/view/e_spkr/1196](http://conferences.oreillynet.com/cs/os2002/view/e_spkr/1196)

[http://www.infoworld.com/articles/hn/xml/02/07/25/020725hngenome.html](http://www.infoworld.com/articles/hn/xml/02/07/25/020725hngenome.html)

[http://www.precarios.org/nrecortes/nytimes_130201.html](http://www.precarios.org/nrecortes/nytimes_130201.html)

