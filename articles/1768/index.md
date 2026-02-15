---
nid: '1768'
title: 'Copyright, bad faith, and software licensing'
authors: 'David Sugar'
published: '2006-09-19 0:29:00'
tags: 'copyrights,fsf,licensing,proprietary-software'
license: verbatim_only
section: opinions
listed: 'true'

---
Robin Miller recently published a story on Newsforge about "Stan" [1], as an example of a situation that demonstrates proprietary software is a danger to business continuity.  I found this story interesting since I think Mr. Miller came close to correctly identifying a core issue, which is that the proprietary software business model as it exists today both facilitates and encourages vendors to act in bad faith.  However, it did not need to have been this way, and really comes down to misuse of licensing along with some deliberate abuse and exploitation of existing commercial law.


# Software definitions

In theory, there should exist two kinds of software; "contract" software, which is contracted for private use, and "copyrighted" software, which is sold between unrelated parties.  What we call free software is actually a special case of the latter.

"Contract" software, is software produced under a contract presumably negotiated in good faith under conditions of equal bargaining by two or more parties, or even that may be produced by individuals as employees for private use by a company under what is in effect an "employment contract".  In fact, most software written today is neither what I generally refer to as "proprietary software", which is something separate, nor software distributed as "free software", but rather contract software, and I find no ethical issue of direct concern in the practice of such software contracting in itself.

Software, as a fixed expression of ideas, is also assumed to be subject to copyright. Copyright can be thought of, especially in the American tradition, as if it is a special kind of contract.  It is not one negotiated directly by the individuals parties involved in the transaction themselves, but rather is a little like a contract that had already been pre-negotiated under terms pre-established by the national government between copyright holders and society as a whole.


# The American concept of copyright

Copyright is, in the American tradition, offered to copyright holders to encourage publication, particularly of new ideas, by providing a temporary restriction on the public's rights, often as a means to enable monetary gain.  This temporary restriction is not unlimited either in duration or scope, as it cannot strip users of other natural rights, and so is further balanced by the idea of fair use [2], also known as fair dealing.  Some nations, in fact, even go further by including not only copyright, but also fair use, as part of their national constitutions.  Hence, like in a contract, we have a bargain that has been negotiated, between copyright holders and users, with both parties having specific obligations to each other.  Copyright is not meant to maximize copyright holder's profits, but rather to provide sufficient incentive to promote publication.

While the public's right to distribute (publicly copy) or sublicense is embargoed temporarily during copyright, part of the copyright holder's obligations to the public includes the ability of the public to reclaim a work when copyright has expired.  Private copying, such as in one's own home for personal use, is often a more contentious issue, particularly in regard to the 4th Amendment, and fair use tries to address this issue as well.  In fact, existing copyright law does not trump human rights, and hence fair use provisions do explicitly allow both for some form of at least limited private copying.

Similarly, copyright law cannot actually exceed first amendment free speech protections, and hence, in American law, there are provisions made in fair use that are consistent with the idea that a copyrighted work can be parodied, the work can be "discussed", explicit portions (excerpts) used for educational purposes, etc.


# Copyright and software

Of course, the concept of copyright was originally developed around a 17th century book publishing model, where a few explicit authors would undertake writing of a "work".  This model breaks down when we consider that software can be written in very small assemblies that can be collected together from thousands of individuals, organized, and presented as a new "work".  Furthermore, there are all forms of transitory "copying" that may occur in software, and our internet connected work, including caching, loading of programs and media into volatile memory, etc., which were not originally foreseen.  Each of these have meant changes made in the evolution of copyright law over time; some often very poorly done in a one sided manner, clearly at the public expense.  However, the principal of copyright remains that of a trade-off of privileges and obligations, even if often today an unbalanced one. [3]

While the book publishing model is not quite correct for software, it is possible to use traditional understanding of the ethical application of copyright in books as a starting point to understand how copyright can be ethically applied to special cases such as software.  However, it is first necessary to consider what software is, and how it differs.

First and foremost when we talk about software, we have the question of source code.  If the purpose of encouraging publication through the limited privilege of copyright is to "promote the progress of science and useful arts", as stated in the U.S. constitution, this is only possible with software by including publication of the source.

Imagine if a scientific paper, which is copyrighted, were published in a strange Tibetan dialect that nobody speaks, and the copyright holder refused to permit translation.  It may well be within the domain of privilege under copyright to do this, since art and many other kinds of original works can also be copyrighted in whatever form they appear, and separating one use case without harming others would be difficult to achieve.  However, the result of doing this would clearly undermine the actual intent of copyright.  This is one reason why the free software movement believes so strongly on source code publication as an ethical principal, as a right and freedom that users must receive.

One should not confuse this to mean that free software is based on copyright.  There are a variety of ways to arrive at software freedom, although all ultimately derive from the most basic human freedom of all; the freedom to think.  Copyright is just one path that involves this most basic freedom.  While we do not all come to free software from the same motivations or principles, we do all recognize what it is and recognize the same basic principles, perhaps best expressed in the FSF definition of free software. [4]

Along with the ethical question of source availability would come the freedom to make at least some private copies, and to use parts of a program, perhaps for example libraries and functions that contain file conversion routines, as well as the right to create interoperable works, and to make private modifications.  While not including all the freedom as we recognize them in the free software movement, proprietary software that is distributed under the privilege of copyright should clearly do so by offering at least some of the freedoms that we do recognize.

Finally, when we speak of software, we are speaking of something that is also in part math and science, as well as a medium for expression of ideas.  The question of math is important since natural laws, constants, properties of nature, etc, generally cannot be copyrighted or patented.  For this reason, there is reason to suggest that ethically copyright should be less restrictive for software than for other kinds of works.

While I personally do not believe in developing and selling my own software in a proprietary manner, I think it is important to further divide proprietary software between those who chose to do so under the terms and conditions their society do legally permit through copyright, and those that do not.  This further distinction is important for questions that are often not directly addressed, but are of supreme importance to those who are employed in the software field when choosing whether it is at all ethical or acceptable to work for a specific proprietary software vendor, and if so, under what conditions.

This distinction is also important as we will shortly see because there are many who have not considered the ethical implications of or questions raised software freedom, but that do try to engage in business practices that they believe are ethical.  It serves no purpose to insult such people and companies, but rather it is essential to further educate them.


# Can proprietary software be ethical?

The FSF has a definition for "ethical" and "non-ethical" proprietary software that I think confuses, as it is based in part on the idea of whether a device or product is "field programmable".  For example, some have concluded from this that perhaps proprietary software contained in ROM is ethical to write, while that delivered in eeprom is not.  However, the choice between delivering a product with a fixed ROM, and eeprom, is often simply an economic one over which part number is used.  Clearly there are no single rule that can define what is "ethical" and "unethical" software, and, further while we all agree what free software is, we have a range of opinions in the software community as a whole of what constitutes "proprietary" software, and when it is unethical.  So I have considered looking at this question a little differently.

For example, I am not of the belief it is automatically harmful for those who sell binary only proprietary software using traditional copyright protection, such as offering proprietary software for embedding in a hardware platform that most users do not have an ability to acquire themselves; for example, an aircraft navigational system.  Instead, it is clear one must carefully consider the ethical implications of working on any proprietary software, but clearly there are cases where no one is harmed directly.  Furthermore, while there are those cases those where harm does occur, we must recognize that this most often happens from ignorance and/or acceptance of flawed business practices rather than from deliberate anti-social malice or unethical intent.  I imagine there are some people involved in free and open source software today who do find themselves employed by vendors that do form the latter category, as well as many other individuals who work for such vendors who are not (yet) part of our movement.


# Misuses enabled by proprietary software

However, I have nothing but contempt and loathing for those individuals and organizations that sell proprietary software under the business model of using EULA's and/or software patents in an attempt to further restrict and deny user's their existing natural and constitutional rights, and who try to mis-use contract law to bypass the obligations they are meant to accept in exchange for enjoying the special privilege of copyright protection.  Those who work on such software for such organizations should be openly shunned by their peers and organizations worldwide and held in the same contempt as the local cut-purse that also prays on the weak and ignorant.  Such vendors should be brought into federal court under misuse of copyright and stripped of those privileges they have demonstrated such contempt for. [5]

While some say that these kinds of software vendors treat their customers as thieves, in truth they operate by fraud and deceit, cheating their customers through legal tricks operating as contracts of adhesion [6], such as exemplified in the infamous Microsoft EULA.  Indeed, while Microsoft has often claimed to patent things which have actually proven to be other people's work, in the WinXP version of their EULA they may finally have an original idea; a contract in which one party (Microsoft) reserves the right to breach any terms. [7] 

Hence, speaking for myself, this is where I might draw a further distinction between proprietary software that is often sold perhaps ethically challenged, but still "legally" in good faith, and proprietary software that is deliberately sold in bad faith under unfair and deliberately deceptive business practices.  When Robin Miller suggested that proprietary software was a danger to business continuity, I believe he understated the potential problem.  Sociopathic companies that engage in bad faith proprietary software are not only a danger to their immediate customers, or even to those who practice software development, but rather damage society as a whole.


# Bibliography

1. [Newsforge, "Why Proprietary Software is Dangerous for Business"](http://software.newsforge.com/article.pl?sid=06/08/14/202229)

2. [Stanford, "Copyright and Fair Use"](http://fairuse.stanford.edu/Copyright_and_Fair_Use_Overview)

3. [Stallman, "Misinterpreting Copyright"](http://www.gnu.org/philosophy/misinterpreting-copyright.html)

4. [FSF, "The Free Software Definition"](http://www.gnu.org/philosophy/free-sw.html)

5. [Digital Law Online, "Copyright Misuse"](http://digital-law-online.info/lpdi1.0/treatise15.html)

6. [Encylopedia Britannica, "Contracts of Adhesion"](http://www.britannica.com/eb/article-21772)

7. [Infoworld, "A Contract Only Microsoft Can Break"](http://www.gripe2ed.com/scoop/story/2006/9/4/235357/7375)
