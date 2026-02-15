---
nid: '2170'
title: 'Freemind in your kitchen'
authors: 'Gianluca Pignalberi'
published: '2007-06-27 6:30:00'
tags: 'freemind,mind-mapping,mind-maps,recipes'
issue: issue_18
license: cc-by-sa
section: end_users
listed: 'true'

---
Tired of reading recipes the usual way? Frankly, I am. I find them more interesting, as well as easier and faster to read, by representing them as mind maps [3, 4]. In this article I have two goals: to demonstrate an alternative format for presenting recipes, and at the same time to provide a short users’ guide for Freemind [1, 2]. As I progress through the article I will also be describing a recipe that you can try for yourself—enjoy the meal!


<!--break-->


=TEXTBOX_START=Textbox 1: The recipe —Mario’s fettuccine—=
  **Ingredients** (4 servings)

Fettuccine 280g

Butter 200g

Bacon 200g

Milk 0.50 litres

Parmesan 40g

Strip the bacon and put it in the frying-pan along with the butter. Let the bacon cook until it turns golden brown; meanwhile, cook the fettuccine in about 3 litres of boiling salted water. Drain the fettuccine when it is _al dente_ and put it in the frying-pan over a hot ring. Pour in the milk and the grated parmesan, frying and combining them, until the milk curdles and serve immediately.

**Glossary**

_Fettuccine_: a kind of noodles, about half a centimetre in width, usually made with eggs.

_Al dente_: indicates that the boiled pasta is no longer hard, but not yet soft like wet cement. Usually, it is sufficient to boil it according to the time indicated on its box but as a guide to deciding when the pasta is “al dente” you can use the following criteria: if it sticks to your teeth because it’s still hard, you need to boil it a bit longer; if it sticks to your teeth because it’s too soft (similar to cement) then you’ve boiled it for too long and need more fettuccine.


=TEXTBOX_END=

# Don’t be at the window, start entering the main door

Returning to Freemind, the very first thing you will need to do is download the software. Go to the project’s website and choose whether to download the minimum or the maximum version; I downloaded the minimum version but choose whichever suits you best.

After you’ve prepared whichever package you downloaded you will be ready to run it. In GNU/Linux you can launch it with the following command, after navigating to the directory where you extracted the downloaded archive:


=CODE_START=
 
$ freemind.sh 


=CODE_END=

in a few seconds your desktop will show the window in figure 1.


=IMAGE=freemind_main.jpg=Figure 1: Freemind’s main window, as it appears the first time you run the application; in the future, you will be presented with the most recent mind map=

If you open a new document you will find it is not completely empty: it shows a single node, i.e. your mind map’s root. You can edit its text, change its colour, add icons and much more, by right-clicking on the node and selecting the appropriate option from the context menu.

We want the root node to contain the recipe’s name and a picture as well (as shown in figure 2).

=TEXTBOX_START=Textbox 2: A very short summary of mind maps=
  The mind map’s ancestor, the _concept map_, was created in the light of David P. Ausubel’s ideas of _... learning_. By transforming experiences into concepts and giving them meaning they no longer remain separate entities but arrange themselves into groups, or “maps”: this approach mirrors the way our brains learn.

A mind map is a sort of simplification of the concept map because it only allows hierarchical links: a mind map is a diagram used to represent words, ideas, tasks and other items all linked to a central idea. They have many different uses ranging from acting as a study aid to an organizational aid, to problem solving and decision making.


=TEXTBOX_END=

<!--pagebreak-->



=IMAGE=freemind_recipe1.jpg=Figure 2: Root final aspect of Mario’s fettuccine mind map=


# Fathers and sons

The first thing in any common recipe is the list of ingredients and a mind map will show this as a series of child elements. Since Freemind only allows mind maps to be represented “winged” we can only add children to the root’s left and right.

To insert a child of the currently highlighted node press the `Ins` key; if you press the `Enter` key you add a sibling (this is true except for the root node which can’t have any siblings!). Figure 3 shows what an example map would look like at this point.


=IMAGE=freemind_recipe2.jpg=Figure 3: The recipe’s map with some child nodes=

Parents and children are automatically linked with an “edge”; Freemind, unfortunately, doesn’t allow you to label edges directly but you can always simulate labelled edges with a node. There are two ways to make a node and an edge rest on the same level: either by changing the edge’s text size, or by dragging and dropping the node into a suitable position. In figures 4 and 5, I show both ways to accomplish the aforementioned task.


=IMAGE=isa_1st_way.jpg=Figure 4: Line up two nodes to simulate a labelled edge: select the node to be transformed into an edge and reduce its text size=


=IMAGE=isa_2nd_way.jpg=Figure 5: Line up two nodes to simulate a labeled edge: drag the node (an ellipse indicates the selected node) and drop it to a suitable position=

A parent can show its children (an explicit path), or it can hide them (an implicit path, or short form). The root node can only show them, so the recipe’s “short form” will be made from the root and its immediate children, i.e., the ingredients. Figure 6 shows a mind map with both explicit and implicit paths.


=IMAGE=freemind_recipe3.jpg=Figure 6: The recipe grows. Some nodes are implicit, while others are explicit=

You can make child nodes look however you like—for example, I find colour codes work very well when I’m trying to organise myself. Moreover, a mind map is, in my opinion, more useful than a traditional recipe: to know how to use an ingredient you have to read a recipe very carefully, but in a mind map you can immediately see how an ingredient is used by the number of child nodes it possesses.


# Free join

Creating a tree diagram using mind mapping software is tricky because it is not usual for two parents to share a single child. Undoubtedly, there are cases where this would be useful, particularly when working with recipes: Freemind does make this possible, however, with its `Insert→Add Graphical Link` feature.

To use this feature hold the `Ctrl` key to select two nodes: the first node you select will be the link starting point and the second will be its end point and will be represented as a Bezier curve with an arrowed head.

Freemind will also allow you to add a local hyperlink which will take you directly to the linked node when you click on it; you can also point a hyperlink at an external resource such as a local file or a web address. In both of these cases the node will have an arrow icon to its side which indicates the presence of a hyperlink.


=IMAGE=freemind_recipe4.jpg=Figure 7: The recipe’s mind map is now complete, with all the nodes, edges and links in the right place=

=TEXTBOX_START=Textbox 3: Mind-manual and mind-system=
  When you open the help menu you are presented with a mind map that explains how Freemind works and explains some of its more common features; if you require more help there is also an online manual.

The program also provides a file browser, which will display the root directory’s content as a mind map; to view a file, Freemind uses another file browser such as Nautilus or Konqueror. You can set your favourite browser, as well as all of Freemind’s other parameters in the `Tools→Preferences` menu.


=TEXTBOX_END=

# And now, let’s work

Now that I have explained what a mind map is and how to create your own one, you’re left with the hard work: find all the ingredients and cook the meal. My father tells me he invented this recipe and that he believes it could be appreciated all over the world because of the ingredients, some of which are widely used so the taste shouldn’t seem too exotic.

Even though I used to dislike my father’s recipes, as they are not light at all, I do like this one and would recommend anybody try it!


# Bibliography

1. [Freemind’s official site](http://sourceforge.net/projects/freemind).

2. [Freemind Project’s main page](http://freemind.sourceforge.net/wiki/index.php/Main_Page).

3. [Mind mapping](http://en.wikipedia.org/wiki/Mind_map).

4. [Mind maps and mind mapping](http://members.optusnet.com.au/~charles57/Creative/Mindmap/index.html).

