---
nid: '1356'
title: 'GuITmeeting 2005: a short report'
authors: 'Gianluca Pignalberi'
published: '2006-03-03 10:32:29'
issue: ''
license: cc-by-nc-nd
section: opinions
listed: 'true'

---
Free Software Magazine is obviously about free software. Many readers may also know that we create our magazine using free software. But, not only do we use free software, we also develop it.

I have developed the LaTeX class that we use to typeset the individual articles and each complete issue. Even though the class isn’t very well written (it is getting there!), whenever someone asks me to provide our LaTeX class, I do send a complete starter’s kit for turning LaTeX into a magazine typesetter; well... sort of.

Yes, I am a big LaTeX fan.

In Italy we have an official TeX Users Group, based in Pisa, that holds a meeting once a year: the GuITmeeting. I was there, and this article tries to summarize what we’ve achieved.


# The headquarters

The GuIT President, Maurizio Himmelmann, works with the Scuola Superiore Sant’Anna (Sant’Anna School of Advanced Studies). It’s not a high school—it’s an autonomous, special-statute university that operates in the fields of the applied sciences and, as the Scuola Normale Superiore, is located by the side of the University of Pisa.


=ZOOM=The Sant’Anna School was a wonderful location to base the GuITmeeting=

The Sant’Anna School was a wonderful location to base the GuITmeeting. This year’s program was rich in the variety of topics it covered, as will become clear in the following sections.


=IMAGE=guitlogo.jpg=GuIT logo (drawing by Robert Duane Bibby) reproduced courtesy of GuIT=


# The program

The works that were presented were very interesting and showed how TeX is still vital in IT despite it being about 30 years old.

Two very famous guests had the most important contributions: Klaus Höppner, Vice President of DANTE e.V. (the German TeX users group), and Kaveh Bazargan, co-director of River Valley Technologies. Höppner had a complete report titled “Strategies for including graphics in LaTeX documents”; Bazargan presented the last “creature” of River Valley Technologies: “Batch Commander: A graphical user interface for TeX”.

Klaus’s report was interesting for the beginners, explaining the very basic commands and strategies for including graphics in LaTeX documents. However it was also interesting for the “LaTeX professionals”, since it summarized some technicalities which are not always considered, and presented a tool able to convert raster images into vector ones.

Kaveh did a run-time presentation of his program, surprisingly using a Macintosh to present slides (that weren’t written in LaTeX). Batch Commander is simply a GUI for interactively setting-up TeX (LaTeX, ConTeXt) global parameters. To tell the truth, Batch Commander is application-independent, since its author successfully applied it to POVRay too.


=ZOOM=Kaveh Bazargan presented the last “creature” of River Valley Technologies: “Batch Commander: A graphical user interface for TeX”=

After he explained some of the program’s internals, he ran it. He applied some controls to a LaTeX document, via sliders and menus (instead of editing a text file), and it was immediately clear that the controls had been applied to the document. It was impressive seeing the document changing its aspect while Kaveh changed the controls.

He also said that Batch Commander is distributed free of charge, but the question of which license is currently undecided. (Of course, I hope he’ll choose a free license.)

The other reports were presented in Italian. Luigi Scarso was the only person to talk about ConTeXt. Like LaTeX, ConTeXt is a macro package based on TeX. Since it’s younger than LaTeX, it reflects much more recent thinking about the structure of markup. In particular, it can customize its markup to an author’s language. Luigi introduced some document examples written in ConTeXt, and compiled them.

Gabriele Zucchetta, the man behind the Italian LaTeX free manual (currently being written), showed how to typeset chemical formulae using the package _ppchTEX_. As it was originally written as a ConTeXt extension, _ppchTEX_ is not an original LaTeX package. All the same, users can use it with both ConTeXt and LaTeX, allowing either of the powerful typesetters to handle chemical articles amazingly well.

To aid in the typesetting of theatrical manuscripts, Massimiliano Dominici has written the package _dramatist_, which is much more complete than the ones available now in the Comprehensive TeX Archive Network (CTAN) [1]. He presented a report on his package—explaining how it works, its capabilities in typesetting several manuscript styles, and its still missing features.


=IMAGE=guit1.jpg=Kaveh Bazargan (speaking) and Klaus Höppner=


<!--pagebreak-->


The majority of LaTeX users began using LaTeX when they were writing their theses. I was no exception—I started using it under pressure from my professor back in 1999, dropping WordPerfect (at the time I didn’t know I’d drop it forever). When I began using LaTeX I had no sample files, I simply dug into my Linux box and found tons of manuals. Together, Lapo Mori and Fabiano Busdraghi wrote a tutorial to help people like me, explaining how to write (well, typeset...) a thesis in LaTeX. The tutorial, among other things, described which classes and packages should be used to get LaTeX to do what you require and the most common mistakes made by newbies. Fabiano himself presented a talk about this tutorial; his talk was very successful, perhaps because so many students were present.

I, not surprisingly, explained my experience in writing the classes that have been used to typeset Free Software Magazine, part of which I have already covered in a previous article entitled “Creating Free Software Magazine” [2].

Maurizio Himmelmann presented the last talk, prepared with Emiliano Vavassori, which covered a package useful for generating reports with LaTeX. He advised that he currently uses _R_, which is a programming environment aimed at data management and analysis. He explained that, while this environment is very powerful in doing what it’s designed for, it does lack a native report generator; and that an _R_ package called _Sweave_ adds this missing feature, exploiting the LaTeX capability.


=ZOOM=Maurizio Himmelmann showed how LaTeX helps generate reports=

In fact, Sweave does more: it allows users to write hybrid R/LaTeX documents (LaTeX documents with R commands embedded in them) to be processed and typeset. The processing actually runs _R_ to obtain needed results, which then get embedded in the source LaTeX document. The resulting document is then a pure LaTeX document, ready to be typeset in the usual way.


# Additional works

Before dinner we had some time for additional discussion. Some very challenging topics were introduced. Perhaps, the most participated in discussion regarded Gianluca Gorni’s strategy to include animation (he showed a run-time evaluated pendulum) into a presentation. A special mention needs to be made of Diego Frasson, who announced an Italian project to write the Beamer manual. As far as I understood, it won’t be an Italian version of the existing manual, but a new one. It will be written by users for users. Beamer is a LaTeX class written to typeset presentations and slides. Information about it, as usual, can be found at CTAN.

At the end of the day the GuIT guys worked on a “LaTeX help desk”, where GuIT experts were available to help users with problems in the use of LaTeX.

Professor Enrico Gregorio, a longstanding (La)TeX expert and GuITmeeting chairman, corrected me as I misassociated a name to a concept in my presentation: I was talking about the FSM table of contents page, and I explained how I forced LaTeX to vertically fill such a page (which is treated in a special way by comparison with other ones). A vertically justified page is referred to as _normalbottom_, TeXnically speaking. Conversely, a page which is not vertically justified is defined as _raggedbottom_ (this term is also the name of the command which allows TeX to break a page before it’s full, if it judges this choice suitable). Well, I called the FSM page raggedbottom, which—as pointed out by the good Professor—was incorrect.


=IMAGE=guit2.jpg=From left to right: Emiliano Vavassori, Maurizio Himmelmann, Enrico Gregorio, and myself=


# Conclusion

GuITmeeting is still young—there have only been two held now and they only lasted one day. However, the guests are already coming from around the world: DANTE e.V. is one of the most important TeX user groups anywhere in the world; River Valley Technologies is a very important Anglo-Indian firm which provides TeX-based solutions, and its co-director Kaveh is also an editor for The PracTeX Journal [3]. I hope (and I predict) that this growth will be steady. See you at the next meeting.


# Bibliography

[1] [The Comprehensive TEX Archive Network](http://www.ctan.org), 2005.

[2] G. Pignalberi. [Creating Free Software Magazine](http://www.freesoftwaremagazine.com/free_issues/issue_07/creating_fsm_latex/). _Free Software Magazine_, issue 7, 2005.

[3] [The PracTeX Journal](http://www.tug.org/pracjourn), 2005.


