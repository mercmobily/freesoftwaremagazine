---
nid: '3011'
title: 'Ten easy ways to attract women to your free software project'
authors: 'Terry Hancock'
published: '2008-09-22 10:35:23'
tags: 'free-software,community,women,development'
license: verbatim_only
section: opinions
listed: 'true'
book: making_the_impossible_happen_the_rules_of_free_culture
book_weight: '11'
layout: book.html

---
The gender inequality among developers and supporters of free software is stunning. Less than 2% of us are women, according to studies conducted for the European Commission. Why? The evidence says we're driving them away. There are even some pretty good published guidelines on how _not_ to drive them away. What's missing is a practical implementation strategy: here I present _ten_ relatively simple changes in how you run your project, to make it more attractive to would-be contributors—especially women.
<!--break-->

=IMAGE=c20080918_pie_charts.jpg=Yes, there is a problem. Data from [1]=

There's a lot of research on this subject, and if you are interested in a deeper understanding of the problem, then you'll want to go and read some of the notes. The FLOSSPOLS[1] study is particularly informative, and although long, it is well structured, and has good summaries. Val Henson wrote an excellent HOWTO[2] on the behavioral issues, which I highly recommend you read. A lot has been written about how big the problem is, the factors that are probably contributing to the problem, and even some broad social and political ideas about solutions.

To put it _very_ briefly, the studies conclude that there is no dearth of women interested in computer science, nor women capable of doing it well, and there are excellent reasons why women should be involved for their own benefit and for the benefit of the community[1]. But the community's process is exceedingly male-centric and hostile to anyone who doesn't fit that mold—a problem confirmed by the few pioneering women who do participate[2-9]. The recommended solutions primarily involve intentional cultural changes that need to happen to avoid the hostility and make the field more accessible.[1,2]

I'm going to assume that you're already sold on the value of inviting more women into our community, or at least committed to stopping the things that drive them away. But what are you going to do about it? As a free software project leader or founder, you make a lot of fundamental design decisions about how you're going to run your project. And that's where I think that change needs to start: make one project friendlier. Then another, and so on.

In my opinion, the key is the technology problem. Online society is a product of its participants, but also of the _landscape_ artificially created by the software that we use in our production process. That toolchain has been crafted almost entirely by men, and unconsciously, _for_ men and their social needs. Women's needs have been ignored, if not actively derided. And surprise, surprise... they don't show.

It's time to fix that. Here's a list of ten not-so-difficult process decisions to make in laying out a new project, or to adopt in an existing one. Nine of these ten suggestions do _not_ involve any special treatment for women (the tenth does, but only in a trivial way). Making your project friendlier and more open to new contributors will attract some men as well as women. But it is women who will benefit the most from these changes[10].

# 1 Use forums instead of mailing lists

> "When asked about the large gender imbalance in FLOSS [free software] development, many women relate stories about harassment or other inappropriate treatment at a FLOSS meeting or in a FLOSS newsgroup. Since most FLOSS projects aren't affiliated with a company, university or other accountable body, civilized behavior isn't enforced." —— Michelle Levesque/Greg Wilson[5]

> "Just knowing that there is one other person in the group who is willing to publicly disagree with the 'bad apple' will help immensely, and will make women more willing to stay." —— Val Henson[2]

=IMAGE=c20080918_civilized_forum.jpg=A web-based forum typically provides much better ability to moderate and maintain community behavioral standards. Like a campus security phone, the mere existence of a "Report to moderator" link deters most serious abuses, and other features create a friendly and inviting atmosphere which encourages good behavior (Credits: Brian Schulman/CC-By-SA 2.0, Terry Hancock/CC-By-SA 3.0)=

## Reasons

* Community standards are easier to maintain
* Avatars create a face-to-face-like feeling that encourages "more human" behavior
* Badges and ranks afford a better understanding of how representative any poster is
* Signatures and avatars provide a form of graphical self-expression more comfortable for women than the sorts of posturing and crowing behaviors that fill this role for men
* Out of channel communications allow "meta" conversations to happen without disrupting the forum: you don't have to post to counter a flame, you just vote it down or report it to a moderator
* Things like gender status and dating information can be communicated in profiles, by those who want them, and ignored by those who don't, eliminating the motivation for talking about it in a thread

The absolute number one problem with women joining free software projects is that, from square one, they have to put up with jerks. If you're on the job, you put up with jerks, because you have to. But would you do that to yourself, just for fun? No. And most potential contributors—especially the new ones and the ones you most want—are here for the _fun_.

Val Henson's "HOWTO Encourage Women in Linux"[2] pretty much covers the behavioral issues and what needs to change, but it says little about how to make these changes happen. As a leader, you need a way to set community standards and enforce them. Despite a certain "Wild West" charm some of us feel about the libertarian environment of internet text forums, no one seriously needs to tolerate flame wars. They are _not_ constructive, and you can always argue the same points in a civilized tone.

So ban the jerks and put the fun back in for everyone. Mailing list software is lousy at moderation options, so don't use it! Set up a web forum in your CMS, on your server, or use a paid or free forum hosting service. Have the conversations there: for users _and_ developers.

Forums are a lot of fun once you get used to them, and women like them for other reasons besides the feeling of a "safe haven". They also promote more camaraderie and social behavior than do mailing lists, contributing to a greater feeling of "constructive leisure". Women often collaborate on projects _in order_ to socialize, so this is a good way to encourage more serious contributions.

It goes without saying, of course, that you need to have forum behavior guidelines and you need to enforce them. Empower moderators to take on that job (and women often _will_ volunteer for this kind of job if you ask them nicely).


# 2 Use flat conversation rather than deep-threads: "who" not just "what"

> "While it is possible for a programmer to be relatively successful while being actively anti-social and programming does tend to attract people less comfortable with human interaction, computing is as social as you make it. [...] For me, programming by myself is less fun or creative than it is when I have people around to talk to about my program." —— Val Henson[2]

=IMAGE=c20080918_who_vs_what.jpg=Women are much more likely than men to communicate for the sake of communication and for the bonding value. Men often grudgingly communicate in order to solve a problem (though sometimes that's a act). (Credits: Henri Bergius/CC-By-SA 2.0, Pingu1963@Flickr/CC-By 2.0, Terry Hancock/CC-By-SA 3.0)=

## Reasons:

* Flat threading environments encourage a simpler "logic of conversation" that is more like a face-to-face discussion
* It is easier to track _who_ is talking, not just _what_ they are talking about, and this is likely to matter more to women, for whom individual relationships in the community are generally more important than just mining it for information
* Flat threading encourages smaller, more focused conversations with intentional topic-setting, these are likely to be easier for all newcomers to follow, not just women

This is a much more subtle and less obvious point. When confronted with the observation that women often prefer flat-threading to deeply-nested topical threading, some people leap to the conclusion that this is a product of limited experience with the technology. However, I'm convinced that it's more than that.

The key is the nature of the information and the psychological needs of the participant: if you are there primarily just to grab some information and go, then deep threading serves you by categorizing information. But if your reason to be there is largely social—you want to be in the company of like-minded people discussing a subject you love—then flat threading serves you by providing a better conversational context.

Women feel a stronger commitment to contribute when they are surrounded and depended-upon by people they consider friends. So ironically, these behaviors, which may not sound very productivity-oriented, will result in greater productivity.

In the same way, I recommend keeping IRC sessions small and intimate, with "teams" targeted to solve particular problems. Make arrangements for online "sprints" in this way, so that people with "lives" (which a lot of women do have) can work these projects into their time. But _don't_ try to run continuous massive IRC sessions which you would have to dedicate your life to in order to follow.


# 3 As much as possible, use wikis instead of version controlled archives

> "Being good at computing is considered to be an activity that requires spending nearly all your waking hours either using a computer or learning about them. While this is another misperception, women generally are less willing to obsess on one topic, preferring to lead a more balanced life. Women often believe that if they enter computing, they will inexorably lose that balance, and avoid the field altogether instead." —— Val Henson[2]

=IMAGE=c20080918_light_weight_process.jpg=If you look at the traditional ways women collaborate on projects, you'll see a much lighter-weight process with lots of give and take, and contributions made in lots of small ways in parallel, rather than "rewrites" or "versions" made in large blocks. For women, the higher social interaction this requires is part of the payoff (Credit: claygrl@Flickr/CC-By 2.0)=

## Reasons:

* Women _like_ working cooperatively, they don't just tolerate it
* The "reputation game" is much less important to women than is "belonging" to the group
* Everybody has a browser, but women may have less control over what equipment and software they use, especially as beginners
* Even if women do have the control they need to install development environments, they generally don't want to waste as much time "fiddling with the tools", and want fewer obstacles to simply getting the job done
* Women are more likely to want to discuss or seek approval for their changes, owing largely to confidence issues

Wikipedia has a much more representative group of contributors than does free software in general. One reason is that it doesn't take much "buy in" (time risked) to participate. You see something wrong with an entry, then you punch "edit" and fix it—there's no big barrier to overcome, so you don't have to be as extremely motivated to overcome it. 

It's too bad that there's not yet any good way to implement source code version control via a wiki-like environment (how would you test the changes?), but it's absolutely feasible for everything else in a project: documentation, textual and graphical resources, and so on.

# 4 Use very-high-level languages (Perl, Python, Ruby, etc)

> "Another important point is that Free Software development is often done as a hobby, just for fun, and in one's spare time. Where is a woman's spare time? After their working day, most of them still have the second working journey, which is at home, taking care of the home, the children and her husband. If the men can have the privilege of doing Free Software in their spare time, sitting in front of the computer and having some fun coding what they want, women in general don't have this privilege." —— Fernanda Weiden[9]

> "It matters when you have kids, it really does" —— Mitchell Baker[9]

> "So I set out to come up with a language that made programmers more productive, and if that meant that the programs would run a bit slower, well, that was an acceptable trade-off. Through my work on implementing ABC I had a lot of good ideas on how to do this." —— Guido van Rossum (on his motivation for writing the Python programming language).

=IMAGE=c20080918_make_time_count.jpg=Women often find themselves in various support and care-giving roles. These are interrupt-driven lifestyles in which the large blocks of time required by traditional programming methodologies are hard to come by. But modern very high level programming languages can make shorter sessions productive (Credit: LizaWasHere@Flickr/CC-By-SA 2.0)=

## Reasons

* Women have less time for buy-in to the technology.
* Time often comes in smaller chunks, as it must be fit in around responsibilities like support and care-giving roles in their families
* Unexpected interruptions and the resulting uncertainty of time intervals spent programming is an even bigger issue: you never know whether you're going to have time to put back together what you just took apart
* For reasons of low confidence and a later start in programming, many women today will simply lack the faith that they can fight through to the end on a large, complex problem in a language that doesn't make it easy
* Modern Very High Level (VHL) programming languages like Python, Perl, and Ruby can often condense out the busy work of programming, providing a better use of the time available
* A language that emphasizes readability, like Python, can make recovering from an interruption easier, and less time is wasted as a result

This one was a deeply-personal revelation. For years during high school and college, I programmed in BASIC, then FORTRAN, and then C and C++. I felt pretty good about it, and like most hackers, I put in some long late night sessions of programming.

Then, sometime after college, we had our first child. After that, I found I couldn't program any more. Seriously. There were just too many interruptions. As soon as I got back "up to speed" with the software I was working on and "recovered state" enough to make the next logical step, I would get another interruption, and the program would go back on the back burner. Later, I'd find myself having to puzzle out what I had written a day, a week, or even a month in the past.

When I finally did get back into programming, it was through free software, and someone on my first project recommended I try Python. It was amazing. I could get stuff done again. That's both because Python code is more compact and because it is more readable.

Now the kids are school age, and I have more time, but I'm too hooked on the rapid productivity of Python to go back now.

# 5 Follow "extreme programming" ideas

> "Like any other discipline, computer science is easier to learn when you have friends and mentors to ask questions of and form a community with. However, for various reasons, men usually tend to mentor and become friends with other men. When the gender imbalance is as large as it is in computer science, women find themselves with few or no other women to share their interests with." —— Val Henson[2]

=IMAGE=c20080918_pair_programming.jpg=Pair programming is so "girlie" it ought to giggle. Seriously. Extreme programming plays to women's strengths and mitigates their weaknesses. And it works pretty well for men too (Credit: Improve It@Flickr/CC-By-SA 2.0)=

## Reasons:

* Test-driven development turns long-delayed gratification into lots of little wins, each one a confidence-building victory which women, who often lack confidence in their technical abilities, need to see
* Pairs programming is a very "feminine" way to work, in close knit teams, observing the code together. Two sets of eyeballs find more bugs, and there is no better time to find a bug than right after (or even before) you make the mistake
* Getting rid of the male "power-world" of hierarchical programming teams is a definite win for women, who prefer flatter "peer" structures

One wonderful trend, largely motivated by free software development is so-called "Extreme Programming" (XP). In my opinion, it's actually a very "feminine" way to work, and in any case, it directly confronts some of the obstacles that women face with programming. There are plenty of other reasons to use XP methods, but attracting women developers is a good one.

One issue that may be a problem is that women may not easily be able to find partners for pair programming sessions. It may be desirable to try to simulate this experience with small (tiny) IRC chat sessions and some means of viewing the same code as it is being worked on.


# 6 Replace pecking-orders with affirmation processes

> "Interestingly, rude responses are often given by people who are in the process of gaining a reputation. It is often as if lower ranking participants try to build their reputation by either responding rudely and thereby implying impatience with the ignorant, or by showing off the extensiveness of their knowledge, instead of providing an uncomplicated answer." —— FLOSSPOLS[1]

> "Often, the only reward (or the major reward) for writing code is status and the approval of your peers. Far more often, the "reward" is a scathing flame, or worse yet, no response at all." —— Val Henson[2]


=IMAGE=c20080918_thank_you.jpg=How hard is it to say those two little words, "Thank you"? Men often won't care (but some will). Women often will care, and the cold shoulder of not responding to a contribution with some kind of acknowledgment is truly unacceptable (Credits: shellac@Flickr/CC-By 2.0, bandita@Flickr/CC-By-SA 2.0, Gisela Giardino/CC-By-SA 2.0, Nyenyec@Flickr/CC-By-SA 2.0, yasmapaz@Flickr/CC-By-SA 2.0, Emily Jones/CC-By 2.0, Open Clipart/PD)=

## Reasons:

* The cult of personality is all about glory and honor, things that matter a lot to men, but are usually of secondary interest to women
* Macho superiority contests are generally boring to women, and let's face it, they're dumb
* Women don't like to "blow their own horns", but they love to be appreciated, and they'll do more work when they are
* Subjective reputation is often flat-out wrong and very, very biased. Objective measures are useful to see what the score _really_ is, especially when the players are not equally forthright
* Explicit acceptance rituals encourage a feeling of "belonging" that is more important to women than it is to men, and more important than a competitive desire to "lead the pack"
* It builds confidence and encourages people to contribute if they get tangible feedback and recognition for what they do

It's important to realize that flame wars and other male dominance contests _do_ serve a social function. They are a very primitive way of evaluating the importance and value of individuals in the group. Knowing "who's in charge" is something that makes it much easier (especially for men) to cooperate. Men, either instinctively or through childhood experiences, know how to play this game, and they do it unconsciously.

Women's methods of achieving the same goals are very different. They revolve around higher levels of cooperation, less competition, and much more careful attention to _affirming_ other people in the group. Women care more about "belonging" than about "winning". They don't care so much about "glory", but they care a lot about being "appreciated".

So concentrate on positive reinforcement of good behavior and good contributions. When someone does something helpful for the project, recognize them for it. Give them more responsibility. And—on the forum—give them some token (a label or avatar) that recognizes what they've done. That way, there isn't the necessity to crow about it. People will be able to tell in an instant who has made real contributions.

Women, because of shyness, low confidence, or social admonitions against "putting themselves forward", generally won't take these titles for themselves. They have to be given them by others, or they don't feel that they count. Being "appreciated" or "useful" was the point of the contribution.

All too often, that just doesn't happen in the free software process. People spend hundreds of hours writing and/or improving code, and what do they get for their trouble? Often not much.

Spend some time lurking on a female-dominated forum or mailing list if you want to see what I'm talking about. Women actually do this amazing thing of _encouraging_ and _complimenting_ each other. Above all, they _remember to say 'thank you'_ when somebody does something good for their community.


# 7 Don't discount what women do

> "Opening up our definition of hackerdom to include such traditionally female concepts as user interface and psychology, written and verbal communications, group interactions (both electronic and face to face), et cetera, may be a valid alternative to requiring women to fit the existing hacker mold. Additionally, it may result in communities and processes which are even more powerful than our current models." —— Kirrily "Skud" Robert[6]

=IMAGE=c20080918_dont_discount_womens_work.jpg=Women do important things, but gender politics often lead to 'women's work' being degraded or discounted. Don't fall into this trap (Credits: Seth Anderson/CC-By-SA 2.0, SocialTechnologies.com/CC-By 2.0)=

## Reasons:

* Good software is a lot more than just "code"
* Documentation is no easier to write than code (unless you do it very badly)
* Marketing, graphics, logos, icons, and just generally helping people are also important
* Given a safe and affirming environment, women will do a lot of the stuff that men don't want to do on a project, and which is _absolutely essential_ for the project's success
* Artificial distinctions like "Turing-completeness" are a silly way to divide the world: HTML, SVG, XML, and SQL are no easier to write than C, Java, or Python, and just as important to many projects
* Systematically undervaluing women's work is a holdover from archaic and sexist gender politics, it's just a way of perpetuating them

There is a pattern (in all of society, not just in computing) of systematically trying to devalue anything that is done by women as somehow less important or less difficult than anything done by men. Perhaps this is because men feel a need to "be important" and women mostly just feel they need to "be useful".

But the reality is that the jobs traditionally done by women are often just as difficult and just as critical to success as any of the jobs that men traditionally do.

Often enough, documentation, web pages, and other "non-programming language" products are the areas where women will first contribute code (notably these are areas where the male-dominated field of free software is consistently weak!). Value it for what it is, and don't make artificial distinctions about it. A contribution is a contribution. And those who today write documentation may write code tomorrow—_if_ you don't drive them off in the meantime.


# 8 Emphasize community process over manufacturing products

> "Computers are still seen as boy’s toys – even before going to the university many boys are ready to work with technology and develop careers in technical fields. Women, most of the times, need to dedicate much more time to study and professional improvement. In the FLOSS community, what is more important is the exchange of knowledge–through codes, documentation, debates and ideas. It’s like a library, a huge live encyclopedia available. This is very important for women and can be very helpful to their development." —— Sulamita Garcia[7]

=IMAGE=c20080918_community_services.jpg=Woman helping a man at a Debian conference. (Credit: emmma peel@Flickr/CC-By-SA 2.0)=

## Reasons:

* The manufacturing and product-ization of software is artificial and antithetical to the nature of free software
* Service and support areas are the _profit center_ for free software, so they deserve more respect

The model of software as a defined "product" to be "manufactured" by a certain "release date"  and "sold" is a highly artificial one, created primarily to make proprietary software companies viable. The reality is that creating software is a much more creative give-and-take process.

This really should be a no-brainer. In the proprietary software world, creating software is a profit center (you sell copies of your code), whereas providing service and support is a loss-center (because you typically included some kind of support in the sale price of the copies you sold, and you won't get that back on a regular basis). In the free software world, things are usually exactly the opposite: you make nothing from actually delivering code, because people can get it for free and copy it as much as they want, but you can make money from selling service and support contracts through a number of different business models.

Women, of course, tend to gravitate much more to support roles than men do. Yet they receive very little acknowledgement for this. See anything weird? Yes, that's right, the women are doing the big money work. So why is there so little appreciation of this fact?


# 9 Create a formal mentoring and induction processes

> "LinuxChix started as a space for women who worked as techies to come together and get support. Generally when these women joined us they felt happy and surprised that there was a group of women discussing technology and that they were not alone." —— Sulamita Garcia[7]

=IMAGE=c20080918_mentoring.jpg=Programming, like sewing, is largely a "tacit" skill, which is best learned by doing and by watching others (Credit: Seth Werkheiser/CC-By-SA 2.0)=

## Reasons:

* Women have fewer opportunities for apprenticeship
* Informal apprenticeships with men may be awkward (Is she your "apprentice" or your "girlfriend"?)
* Women may have missed out on early training opportunities due to sexism earlier in their lives

Ultimately, learning to program tends to be an apprenticeship process. You can learn quite a bit through formal classes or by reading. You can even learn by spending enormous amounts of time bashing your head against the wall while trying to make something work on your own. But the best way is to be able to ask for help—even at the beginning when you need to ask the really, really dumb questions.

# 10 Make the existing women in your project visible

> "I encourage all women in computing to be as visible as possible—accept all interviews, take credit publicly—even when you don't want to. You may be embarrassed, but by allowing yourself to be publicized or promoted, you might change a young girl's life." —— Val Henson[2]

=IMAGE=c20080918_role_models.jpg=The evidence of history proves that women have what it takes to do programming even at the most advanced levels. After all, the very idea of programming was invented by one woman (Ada Lovelace[11]) and the idea of compilers and high-level languages was invented by another (Grace Hopper[12]). A few women like Frances Allen[13] and Rosalind Picard[14] continue to innovate at the very highest levels. Other women, like Mitchell Baker [15] and Mary Lou Jepsen [16] have contributed in equally important ways to the success of free software. In the early days, programming computers was primarily "women's work" as these photos of ENIAC[17] and Colossus[18] programmers show. (Credits: US Navy Photos, UK Government Photos, Rama@Wikipedia/CC By-SA 2.0/fr, James Duncan Davidson/O'Reilly Media/CC By 2.0, David Bruce/CC By-SA 2.0)=

## Reasons:

* There _are_ pioneering women in free software who can act as role models for young women in seeking careers and vocations, but they are "lost in the noise" of all the men in the field
* Role models can be powerful motivators for everyone, but especially for younger people who may not be very certain they can really follow a certain vocational path
* Often, we act like free software forums are 100% male-only, when they are really more like 90%-95%. Making the minority of women visible now makes it easier for men and women to adjust to the reality and leaves room for that minority to grow
* Many women lurk more than they post, for many of the reasons described. Seeing visible women accepted by the community will stir more of them to participate

While it's a hard road to be a pioneer, the presence of women will encourage more women to join in. It will also make it clear to the men in your project that they are in "mixed company" and this by itself will curtail some of the worst behaviors.

Of course, it requires that the pioneering women who do work on free software projects be willing to expose themselves to a bit more scrutiny than might be comfortable. You certainly should _not_ try to force recognition onto them, but you should _ask_ them if they're willing to stand up and be counted.

# Diversity is strength

> "People write software to meet their needs, to make software do what they want. If women don't participate in writing code and writing documentation, they will never have the results and the answer for their needs. That's how it is. Those who merely watch have no influence on driving development, and the consequence is not having software that [does] precisely what you want it to do." —— Fernanda Weiden[9]

I hope the benefits of having more women participate in free software are obvious. We write software to serve the needs of people, but we can only clearly see our own needs. A greater diversity of those involved means more perspectives on every problem, a better understanding of the problems that need to be solved, and better solutions for solving them.

Many of the "stereotypically female" contributions: interface design, documentation, and even marketing are areas in which free software is sadly lacking. It should be fairly obvious that if this is what women want to contribute, we should darned well make it easy for them to do so.

There's a lot to be gained by bringing women into free software, and the best way for you to help make it happen is to start with your project and the projects that you contribute to.


# Notes

[1] Dawn Nafus, James Leach, Bernhard Krieger; "Free/Libre and Open Source Software:Policy Support" (FLOSSPOLS), [D16 - Gender: Integrated Report of Findings](http://flosspols.org/deliverables/FLOSSPOLS-D16-Gender_Integrated_Report_of_Findings.pdf); 2006-3/1

[2] Val Henson; ["HOWTO Encourage Women in Linux"](http://www.tldp.org/HOWTO/Encourage-Women-Linux-HOWTO/)([PDF](http://www.ibiblio.org/pub/Linux/docs/HOWTO/other-formats/pdf/Encourage-Women-Linux-HOWTO.pdf)); The Linux Documentation Project; 2002-10/29

[3] Emma Jane Hogbin; ["Form an Orderly Queue Ladies"](http://geekfeminism.wikia.com/wiki/Form_an_Orderly_Queue_Ladies); OSCON 2008

[4] Whitney Butts; ["OMG Girlz Don't Exist on teh Intarweb!!!!1"](http://www.escapistmagazine.com/articles/view/issues/issue_17/109-OMG-Girlz-Don-t-Exist-on-teh-Intarweb-1); The Escapist; 2001-11/1

[5] Michelle Levesque, Greg Wilson; ["Open Source, Cold Shoulder"](http://www.ddj.com/architect/184415216); Dr. Dobb's Journal; 2004-11/01

[6] Kirrily "Skud" Robert; ["Geek Chicks: Second thoughts"](http://freshmeat.net/articles/view/145/); Freshmeat; 2000-02/05

[7] Graciela Selaimen; ["Women developing FLOSS - freedom for knowlege free from prejudice"](http://www.genderit.org/en/index.shtml?w=a&x=91693)(Interview with Sulamita Garcia); GenderIT.org; 2006-02/10

[8] Elizabeth Bevilacqua; ["Women in Free/Open Source Software"](http://princessleia.com/presentations/montcolug_women_in_foss/); MontcoLUG meeting, Royersford, PA USA, 2007-1/15

[9] Fernanda G. Weiden; ["Women in Free Software"](http://www.groklaw.net/article.php?story=20050911153013536); Groklaw; 2005-09/11

[10] Throughout this article I make a lot of generalizations about how "men" and "women" behave. Obviously men and women are not monolithic groups, and there's a lot of variation, so this is just short hand. There are some important differences that apply in the real world, though, whether because of nature or nurture. Indeed, in writing this article, I have taken the assumption that many of the issues are really just manifestations of lifestyle differences, and it's largely because of lifestyle issues that I feel I can identify with many of the problems that women face when dealing with "hacker culture" in general and "free software" in particular.

[11] Wikipedia Biography: [Ada Lovelace](http://en.wikipedia.org/wiki/Ada_Lovelace)

[12] Wikipedia Biography: [Grace Hopper](http://en.wikipedia.org/wiki/Grace_Hopper)

[13] Wikipedia Biography: [Frances Allen](http://en.wikipedia.org/wiki/Frances_E._Allen)

[14] Wikipedia Biography: [Rosalind Picard](http://en.wikipedia.org/wiki/Rosalind_Picard)

[15] Wikipedia Biography: [Mitchell Baker](http://en.wikipedia.org/wiki/Mitchell_Baker)

[16] Wikipedia Biography: [Mary Lou Jepsen](http://en.wikipedia.org/wiki/Mary_Lou_Jepsen)

[17] Wikipedia: [ENIAC](http://en.wikipedia.org/wiki/ENIAC)

[18] Wikipedia: [Colossus](http://en.wikipedia.org/wiki/Colossus_computer)

## Licensing Notice

This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).

