---
nid: '2399'
title: 'Writing screen and stage plays with Celtx'
authors: 'Anthony Taylor'
published: '2007-07-02 18:25:30'
tags: 'writing,howtos,celtx,screenplays,stageplays'
license: verbatim_only
section: end_users
listed: 'true'

---
Finally, there is a free software package that makes writing screenplays easy.


<!--break-->



# On inspiration

Richard LaGravenese.

Yes, I said Richard LaGravenese. In case you don't know him, he wrote Terry Gilliam's movie, "The Fisher King," among others. He is also the only reason in the world I write screenplays.

Okay, strike that. He is the only reason in the world I _want_ to write screenplays. In fact, I have written only one. It's a good one, too, all funny and clever and witty and dialogy and whatnot. But I wanted to write it because of the emotion, wit, and excellent dialog of "The Fisher King". I figured, "Hey, if this Richard LaGravenese can do it, I can too".

I wrote it the hard way. I used the [OpenOffice Screenplay Template](http://www.geocities.com/n2geoff/OO/oo.html), which, though nice, doesn't have all the frills a good screenplay program should have. I also tried [LyX](http://www.lyx.org/), which includes a screenplay template. Although better than nothing, neither of these were completely satisfying, either.


# Enter the Celtx

[Celtx](http://www.celtx.com/) is a program designed for pre-production. It includes features for creating storyboards, schedules, and best of all: screenplays. It's easy to use standalone, but provides features for on-line collaboration as well.


=IMAGE=celtx1.jpg=Figure 1: Celtx welcome screen=


## Licensing strangeness

Before going much further, I should point out the [Celtx Public License](http://www.celtx.com/CePL/). It's based on the Mozilla Public License, only with one set of additional weirdness:


>V.2. Other Products.. Celtx may include Covered Code in products other than the Celtx's Branded Code which are released by Celtx during the two (2) years following the release date of the Original Code, without such additional products becoming subject to the terms of this License, and may license such additional products on different terms from those contained in this License.. 

Near as I can tell, this means that any code distributed as Celtx (the software) may also be incorporated into other products and distributed under different terms by Celtx (the company).

Then there's the next term:


>V.3. Alternative Licensing.. Celtx may license the Source Code of Celtx's Branded Code, including Modifications incorporated therein, without such Celtx Branded Code becoming subject to the terms of this License, and may license such Celtx Branded Code on different terms from those contained in this License.. 

Celtx (the company) also reserves the right to distribute Celtx (the software) under another license entirely, including any contributed code. This is, I assume, so they can sell the product under different terms to other customers under the Celtx brand.

All-in-all, these restrictions don't seem to change the terms of the MPL much at all. Mostly it seems to affect branding, and the reservation of rights therein. As _all_ MPL code may be incorporated into non-free products, there doesn't seem to be any shenanigans going on.

But, I'm no lawyer, just a geek.


## Installation

Celtx is distributed as a gzipped tar file. Simply download it, and use your package manager to install it in a convenient location. Or, from within a shell, follow these simple instructions:


=CODE_START=

wget http://www.celtx.com/download/Celtx.tar.gz
gzip -dc Celtx.tar.gz | tar xvf -


=CODE_END=


## Launching Celtx

From within your favorite file manager, double-click the file named `celtx`. Or, from within the shell, try this:


=CODE_START=

cd celtx
./celtx


=CODE_END=


## Starting a new project

Click on the "start a new project" button. Fill in the name of the project and click OK. Now is the hard part: writing a script.


=IMAGE=celtx2.jpg=Figure 2: writing a script=

Celtx provides unobtrusive hints as you type. For instance, while typing a line, you may hit the tab key to transform the line into a character line, or hit the enter key to transform it into an action block. In all cases, Celtx helps you through the steps of formating your script.

Celtx has a storyboard mode to help you out. You can upload storyboard images, move them around, and "play" the storyboard. This should help with technical issues such as pacing. If you are producing your own screenplay, this is an invaluable tool for blocking and arranging scenes.

You can add other items to the project, as well. For instance, if you are writing a stageplay instead of a screenplay, simply click on "File" and choose the "Add Item" menu item. Select "Stageplay," give it a name (such as "Stageplay") and click OK. You now have a stageplay as well as a screenplay. You can remove the screenplay, or any other item, by clicking it, and selecting "Delete Item" from the "File" menu.


## Online features

Celtx has a few online features as well. For instance, to collaborate on a script with another author, you can both sign up for accounts, upload the project, and co-author the next Hollywood blockbuster from opposite sides of the world. Or, you can ask or answer questions in the many interesting [Celtx forums](http://forums.celtx.com/).


# The hardest part of all

Now that the "Alien Insurance" script is complete, I don't know what to do. I don't know how much trouble Richard LaGravenese had selling his script for "The Fisher King," but I doubt it was easy. And, considering the vast difference in quality between his script and mine, I suspect I have a much harder time ahead.

If you are writing a script, either for screen or stage, and you love free software, I suggest giving Celtx a try. It can't help you sell your script, but it can make the writing of it a bit easier.

