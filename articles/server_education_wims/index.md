---
nid: '1150'
title: 'A server for education'
authors: 'Georges Khaznadar'
published: '2005-05-11 11:00:31'
tags: 'education,wims'
issue: issue_04
license: gfdl
section: hacking
listed: 'true'

---
I recently encountered a group of very enthusiastic teachers, who wanted to convince me to try a new e-learning environment, with astonishing quizzes, and drills of extreme originality. However, as I’d last used computers in the seventies, I was initially sceptical. Back then computers had just been used to send humans to the Moon. It was hard for me to make the leap from those machines to the machines of today. And quizzes seemed to be a strange use of such a powerful resource.

Nevertheless, I found quizzes to be interesting when they are randomly generated from huge question and answer databases. Wims can do that, and other e-learning systems can do it too.

But Wims can do more: it comes with state-of-the-art syntax analysers, which understand a variety of specialised languages, which enables the server to deal with open answers to open questions.


# The price of e-learning

Computer-aided learning is a good solution for many students, particularly when they need to repeat the same training again and again. Present software tools allow you to design attractive interactions, which emphasize clearly, concepts that are difficult to raise with other more traditional tools.

Have you ever tried to author an interactive exercise for your students? If so you may have found that you worked for an entire afternoon to create an interaction lasting ten minutes for the average student. So the throughput is about 25:1 (25 times ten minutes of work to produce an interaction lasting 10 minutes). This throughput ratio can be bigger or smaller, depending on your ambition and the complexity of the interactive sequence. If your ambition is to produce it as a TV show, a throughput of 30,000:1 would not be surprising.

Now, what if your next class is tomorrow? How can you author an interesting sequence in such a short time? That’s where Wims comes in. It uses powerful generators to translate an educational intention into readily usable interactions. This article explains how it works, and why it’s not possible for so many powerful applications to be packed in a single widely distributed proprietary product.


# Wims as an exercise server

Ever found an interesting server for educational exercises? Not just drills, and quizzes, etc. I mean something really interesting, something you want to use for more than a few minutes. If you have, Wims is a better one. Go to the [Wims site](http://wims.unice.fr/wims), and have a look at these examples:


 | |
-|-|
**Example for the domain...** | **Keywords for the search engine** | 
Interactive geometry | “triangular” (select the first hit) | 
Elementary arithmetic training | “arithmetic table” (select the first hit) | 
Algebra, at a higher level | “gauss” (select the first hit) | 

=TABLE_CAPTION=Some examples=

You can either access the site directly or by going to one of the mirror sites, see the link “mirrors” in the upper part of the main page.


# Two students... collaborate?

Let’s imagine two students who are in neighbouring seats, each with their own computer. They are trying to get a good score in a module dedicated to absolute values in maths.

They are given exactly the same exercise.


=IMAGE=dumb.jpg=Here is what Dean sees=


=IMAGE=clever.jpg=Here is what Clive sees=

As the challenge is important, Dean asks Clive: “Where should I click?” Clive considers his neighbour's display, and says: “Click left”. So Dean understands and gets a good first score. Unfortunately, the teacher configured the exercise to ask the same question many times. As the second figure appears, Dean asks Clive “Where should I click?” and gets the same answer: “Click left”... So now Dean is sure to be on the right path, and when the next question comes along, he clicks left without asking, and again it’s the correct answer. Unfortunately for Dean the correct answer for the fourth question is not the left hand figure. When Dean shouts “Oh what a stupid exercise!” Clive considers the display, and says “Dean, don’t you know? An absolute value must always be positive!”

Now let’s consider the situation: after a few seconds, the two students come to make a verbal exchange at a very high level:

“An absolute value must always be positive!” shows a mathematical rule, which is a highly cognitive object. Clive does half of the teacher’s work.


=ZOOM=When students collaborate on a Wims exercise, they cannot exchange information at low level. So they communicate high-level topics, doing half of the teacher's work=

A little later, Dean might ask more questions, but organising a racket to steal useful answers from clever students is impossible: even clever students are forced to study each individual case before giving an answer. Communicating knowledge at a high level is the only possible way.


# When you get under the Wims hood, you discover powerful engines

Wims is built on top of a Unix or GNU/Linux system, which favours communication between processes.

The official mirrors of Wims currently use the following engines:


<!--pagebreak-->



* Maxima, a Computer Algebraic System which is often compared with proprietary programs like Maple and Mathematica.
* Pari-GP, yet another Computer Algebraic System. Its speciality is the theory of numbers, polynomials and rational fractions.
* Gap, a  Computer Algebraic System specialised in the group theory.
* Gnuplot, for rendering 2D and 3D plots
* Imagemagick, which enables converting series of images to animations
* Povray, to render algebraic surfaces by ray-tracing
* Chemeq, a converter of flat chemical notations to LaTeX, which can perform various verifications.
* TeX, to render algebraic formula (will be backed up by a MathML generator soon)
* Units-filter, which parses the physical quantities.
* Flydraw, a quick and efficient tool to create dynamic images.

However Wims is not limited to this rich set of applications: you can add every other application able to communicate with Wims. The only requirements are to be able to get parameters in the environment string, and to output either text to the standard output or data in a particular file. For example, graphics have to be output as files named insert1.png, insert2.png, etc. Imagemagick allows you to deal with a variety of graphic formats, including JPEG, GIF, animated GIF, PNG, and MNG.


# How can it be so powerful?

Here we reach the main point of this article: how can so much wealth be contained in one product, which can be run even on more modest configurations? If you’re searching for a CAS (Computer Algebraic System) for your students, there is nothing cheaper than $100. How is it possible to have the same thing on-line, with more features, open to thousands of students at the same time?


=ZOOM=The availability of the source code makes it possible to write wrappers that ensure correct collaboration. Adding a new feature to Wims is just a matter of shaping a new glue component, which can be very simple=

WIMS is a Magic Server. That’s because Wims is free software, using existing free software programs.

Let’s consider the proprietary way. Very few companies can afford to control programs of such varying specialities as graphics, mathematics, physics, chemistry, and so on, at the same time. A product gathering this many state-of-the-art applications covering such a variety of domains would imply expensive agreements between different companies, each having to make profit, and concerned by the possibility of diffusion of its knowledge. With such rules, complex software products often become more expensive than the sum of their component parts.

Now let’s consider Wims: it contains a glue engine, able to integrate any application under Unix or GNU-Linux. It is linked to the independent programs, each of which is written by specialists. The current set of components for this glue engine totals roughly 3 MB, whereas the satellite applications sometimes three times as large. With the most powerful satellite applications, no change was made to the code. The availability of the source code makes it possible to write wrappers that ensure correct collaboration. Adding a new feature to Wims is just a matter of shaping a new glue component, which can be very simple.


# You can use loads of pre-developed exercises

You can open a new Virtual Class for your students and assign them worksheets, in a matter of minutes. First find a Wims mirror near you: every Wims site has a link to official mirrors, and the first web site on the list, managed by the author of Wims, Gang XIAO, may be less responsive, particularly when the students of the University of Nice (France) have an exam.

Then follow the link to the “teacher's area”, and another link to create your class. You fill in a form with your name and your e-mail address, you then choose passwords for you and for your class, and you will be given control of a new Virtual Class: just watch your mailbox.

Once your class has been created, you can assign worksheets to your students: a worksheet is a collection of exercises picked in the pool of exercises from the web site. Most of the exercises are configurable, and you can configure the scoring features (severity, importance of the questions, etc). Then you assign the worksheets to your students, who can access them after an authentication step. You can create the students' accounts yourself, or let your students self-subscribe (they will need the password of the class, not your personal password).


=ZOOM=A Wims Virtual Class can contain worksheets, course documents and exams. It has a forum featuring a rendering engine for algebraic expressions=

You can also add exercises of your own, created by the easy authoring interface. A Virtual Class features Course documents, easy to link to exercises or interactive demonstrations, worksheets can be used as exams: then strong anti-cheating mechanisms are activated.


# Creating a worksheet for your students

Enter a virtual class that you have created prior. Once you are authenticated, you enter the main page of the class, and there is a link to create new worksheets. Give it a title and a description, then add exercises you require by cycling through the following steps:


1. Go to main page of the class, and use the search engine to locate relevant exercises.
1. Follow a link given by the search engine, configure the exercise (qualitative and quantitative attributes), and test the exercise.
1. Once the exercise conforms to your requirements, put it in your worksheet (use the link at the bottom of the exercise to insert it).
1. Configure the subtitle of the exercise, the required score (so students must repeat the exercise to reach the score), the weight of the exercise in the worksheet.


# Create a new exercise

Wims new exercises can be authored in two formats: the Modtool format, which gives access to any feature of the Wims engine; and the OEF (Open Exercise Format) format, featuring less flexibility, but very easy to use. The OEF format has powerful primitives, which make sense to teachers: \statement, \choice, \reply, \step, etc.

There is also an assisted composer for the OEF format, which is usable on-line, it’s the Wims module Createxo (follow the link “simple interactive exercises” at the bottom of the main page of each Wims server).


# My first OEF exercise


=IMAGE=exo1.jpg=My first exercise in action, after submission=

Type the following text (or better, just copy and paste it) into the on-line facility for uploading OEF exercises on [this page](http://wims.unice.fr/wims/wims.cgi?module=adm%2Fcreatexo) (then click on the link “raw mode” to be given a text area to paste the source).


<!--pagebreak-->


Here is the OEF source:


=CODE_START=

\title{My first OEF exercise}
\author{Clever Cleverer}
\email{clever@ofset.org}
\license{GPL V.2}

\integer{x1=random(1..9)}
\integer{x2=random(10..19)}
\integer{prod=\x1*\x2}

\statement{A rectangle has a width of \x1 cm and a length of \x2 cm
calculate its area}

\reply{The area ...}{\prod cm^2}{type=units}


=CODE_END=


# Wims for non-scientific topics


=IMAGE=exo2.jpg=The second exercise in action=

Here is the template source for a very simple exercise based on ordering a phrase.

There is very little customization required, just modify the lines 5, 6 and 7. (This template comes thanks to Benoît Markey)


=CODE_START=

1:  \title{Template clickfill}
2:  \language{en}
3:  \author{MARKEY Benoit}
4:  \license{GPL V.2}
5:  \text{phrase1 = the,cat,eats,the,mouse;
6:  the,cloud,hides,the,sun;
7:  what,time,is,it}
8:  \text{phrase = randomrow(\phrase1)}
9:  \integer{i = items(\phrase)}
10: \statement{Please re-write the following sentence in the correct 
     order
11: <center>\embed{reply 1,50x70x\i}</center>
12: }
13: \reply{reply}{\phrase}{type=clickfill}


=CODE_END=

Just copy and paste this source in the same way as the last one, and submit it.

To answer this exercise, one just needs to click on the blue words, or to drag them to the answer area. The question mark can be used to undo the last word.

As you can see, the primitive “\reply{...}{...}{type=...}” is part of the magic of Wims. According to the type of reply expected, one of the powerful analysers used by Wims will be triggered. Below is a table showing some examples of replies, which are returned if you indicate the right response type.


 | |
-|-|
**Typed reply** | **Meaning** | 
2+3/4 | 2.75 (operations can be performed if the configuration allows it) | 
2+3/4x | 2+0.75*x (symbolic formula can be processed) | 
R I | The same symbolic value as R*I, I*R, R*I2/I, etc. It could be about the law of Ohm, U=R*I. | 
1.5e-2 V | 0.015 V, the same meaning than 0.015 Wb/s or 0.015 W/A. The underlying engine knows the International System of Units. | 
1h30min5s | 5405 seconds. Hybrid notations are taken in account. | 
1,2,3. 4,5,6. 7,8,9.  | The mathematic matrix with 3 rows and 3 columns (which has a null determinant) | 
2H2+O2->H2O | The chemical equation. 2 H2 + O2 ----> H2O. Wims can check that it is balanced..  | 

=TABLE_CAPTION=What Wims can understand (Wims also deals with fuzzy text, sets and vectors, etc. )=

In order to maintain huge sources of exercises, Wims may generate statements (with true/false replies) on the fly, using powerful randomizers. Here is a list of them.


<!--pagebreak-->



 | |
-|-|
**Keyword** | **Meaning** | 
Randchar | Returns a random char taken from a string | 
Randfile | Returns a random record taken from a text files. Records are multi-line texts. | 
Randint | Returns a random integer belonging to an interval or a list | 
Randitem | Returns a random item from comma-separated list | 
Randline | Returns a random line from a multi-line text | 
Random | Returns a random floating number belonging to an interval or a list | 
Randword | Returns a random word from a phrase | 
Shuffle | Makes a random permutation from a list (options can be specified to choose the parity of the permutation) | 

=TABLE_CAPTION=Wims’s powerful randomizers=

In addition, there are fast and powerful tools to combine such randomized data in order to produce coherent exercises, such as evaluators for algebraic expressions, simplifiers, formatters for physical quantities (taking in account a precise number of significant digits), plotters, image generators, etc.


# Contribute to the community by creating exercises

Wims enables you to output effective on-line exercises very easily and quickly for yourself and it’s worth sharing these exercises with the community. If there are twenty contributors of equal skill in such a community, each of them can author 5% of the contents, and each can benefit from 100% of the product. In addition, this collaboration often increases the quality of the output, as members want to make their contributions to be perfect. Another beneficial side effect is that bugs are more quickly detected and corrected by a group of contributors.

The mailing list for Wims can be subscribed to on [the Wims subscribe page](http://www.listes.cri74.org/wws/info/wims)—its information is displayed in French, but many of the messages are in English, so read the archives.


=ZOOM=Wims enables you to output effective on-line exercises very easily and quickly for yourself and it’s worth sharing these exercises with the community=

Wims was created by Gang Xiao, who teaches mathematics to first year students at the University of Nice (France). As a consequence the most developed exercise pool is for mathematics, however you can now find an increasing number of exercises in “hard” scientific fields (physics and chemistry, etc). Many of the exercises can be used for other fields and most exercises authored using other tools can be translated to the OEF language.

A subset of Wims can be made compatible with widely accepted standards like SCORM, still a work in progress. However Wims has a unique possibility, which obeys another standard: making software open to human understanding and using open source and free licenses. Other compatibilities have been tested, however at small scale: mathematic exercises not referring to graphics are accessible to blind people, provided they are taught to understand the TeX notation, which is used for any ALT attribute when algebraic formulas are displayed as images. This is also an ongoing work.


# Link a Wims server to your educational Content Management System

Gang Xiao, the author of Wims, has created the possibility to link his server to any other CMS, by means of one particular module, which you can find under the [Protocol for WIMS direct connection with other web servers](http://wims.unice.fr/wims/?module=adm/raw&job=help).

This kind of link has already been implemented between two Wims servers: the “Campus Virtuel” of Université du Littoral (France) and the Wims server of IUFM de Lille (same country). See the [Epistemon project](http://adullact.net/projects/epistemon), which is the CMS developed by Jean-Marie Ball. Developing links with other e-learning systems is a matter of one day of development for a skilled person. You can also find a comprehensive list of free e-learning platforms on the [Wikipedia web site](http://en.wikipedia.org/wiki/E-learning).


# Install a Wims server in your school

Why install a Wims server, when you can just access other ones on-line?

The reasons for this include: increased responsiveness (the transactions are made on a faster bus), independence from other events (for example the server of a university may be less responsive to external solicitations when students are having exams inside), and hosting custom modules (making extra modules searchable or publicly visible requires the acceptance of the web master).

I know of two methods for quickly installing a Wims server in your school, typically within half an hour:


* [Knowims](http://wims.unice.fr/knowims/)
* [Freeduc-CD](http://ofset.org/freeduc-cd/)

Knowims is a CD-ROM based on the Knoppix distribution, and customized by Gang Xiao to embed a Wims server. It also contains many applications, which are interesting to maths teachers. Freeduc-CD is also a CD-ROM based on Knoppix, improved on by the OFSET association. It is targeted at end users in elementary and higher schools. It features over 40 interesting educational applications.

Both CD-ROMs will boot on a variety of Intel-based computers, and a Wims server will immediately launch, so you can try it, from the same machine, or from any machine on the same local network (just browse [Wims](http://ip.of.the.server/wims/) note the final “/”). You will find instruction on how to train people, discovering Wims, who want to learn how to author simple exercises, create virtual classes, etc.


=ZOOM=If the e-learning project you want to run contains exercises, Wims can do it better. It’s free software, so it can be improved=

As long as the architecture of your machine is recognized, it should work, and you should have a proof that the installation on a hard disk succeeded (problems may occur, like power outages, etc, so backup your data). Freeduc-CD comes with many predefined behaviours, which make it easier to launch its services and to add more educational software to those already installed. Currently a CD-ROM based on Knoppix takes up 2GB, but there’s more than 2GB of interesting educational free software, and this is still growing.

Another simple method is to use software in binary packages, and install them on a pre-configured server. Gang Xiao offers RPM packages on the [Wims site](http://wims.unice.fr) and the OFSET association offers Debian packages (add the line “deb ftp://developer.ofset.org/ sarge main” to your sources.list file).


# Conclusion

So if the e-learning project you want to run contains exercises, Wims can do it better. It’s free software, so it can be improved. If the graphical interface is not as nice as the interface of your preferred web site, please consider contributing to a Cascading Style Sheet (CSS), Wims already supports them. If you dream about a feature you never saw implemented, please contact the author of the article, so we can discuss its feasibility, the glue engine of Wims is not that complicated.

Now, if you want to impress your friends, invite them on a tour of a Wims server. Just use its embedded search engine and type one of the following example keywords (Google won’t work, Wims is a web site with an infinite depth, so it blocks web spiders).


* shot
* country
* figures
* animated
* polyray
* vision

Have fun!



