# Ryver vs Jekyll Drift (63 Files)

Generated: 2026-02-15 02:55:32 UTC

Each section shows the first meaningful diff hunk from extracted article text.

## 1) articles/1768/index.md
```diff
@@ -1,36 +1,70 @@
  Robin Miller recently published a story on Newsforge about "Stan"[1], as an example of a situation that demonstrates proprietary software is a danger to business continuity.  I found this story interesting since I think Mr. Miller came close to correctly identifying a core issue, which is that the proprietary software business model as it exists today both facilitates and encourages vendors to act in bad faith.  However, it did not need to have been this way, and really comes down to misuse of licensing along with some deliberate abuse and exploitation of existing commercial law. 
+
  Software definitions 
+
  In theory, there should exist two kinds of software; "contract" software, which is contracted for private use, and "copyrighted" software, which is sold between unrelated parties.  What we call free software is actually a special case of the latter. 
+
  "Contract" software, is software produced under a contract presumably negotiated in good faith under conditions of equal bargaining by two or more parties, or even that may be produced by individuals as employees for private use by a company under what is in effect an "employment contract".  In fact, most software written today is neither what I generally refer to as "proprietary software", which is something separate, nor software distributed as "free software", but rather contract software, and I find no ethical issue of direct concern in the practice of such software contracting in itself. 
+
  Software, as a fixed expression of ideas, is also assumed to be subject to copyright. Copyright can be thought of, especially in the American tradition, as if it is a special kind of contract.  It is not one negotiated directly by the individuals parties involved in the transaction themselves, but rather is a little like a contract that had already been pre-negotiated under terms pre-established by the national government between copyright holders and society as a whole. 
+
  The American concept of copyright 
- Copyright is, in the American tradition, offered to copyright holders to encourage publication, particularly of new ideas, by providing a temporary restriction on the public's rights, often as a means to enable monetary gain.  This temporary restriction is not unlimited either in duration or scope, as it cannot strip users of other natural rights, and so is further balanced by the idea of fair use  2 .  Some nations, in fact, even go further by including not only copyright, but also fair use, as part of their national constitutions.  Hence, like in a contract, we have a bargain that has been negotiated, between copyright holders and users, with both parties having specific obligations to each other.  Copyright is not meant to maximize copyright holder's profits, but rather to provide sufficient incentive to promote publication. 
+
+ Copyright is, in the American tradition, offered to copyright holders to encourage publication, particularly of new ideas, by providing a temporary restriction on the public's rights, often as a means to enable monetary gain.  This temporary restriction is not unlimited either in duration or scope, as it cannot strip users of other natural rights, and so is further balanced by the idea of fair use [2], also known as fair dealing.  Some nations, in fact, even go further by including not only copyright, but also fair use, as part of their national constitutions.  Hence, like in a contract, we have a bargain that has been negotiated, between copyright holders and users, with both parties having specific obligations to each other.  Copyright is not meant to maximize copyright holder's profits, but rather to provide sufficient incentive to promote publication. 
+
  While the public's right to distribute (publicly copy) or sublicense is embargoed temporarily during copyright, part of the copyright holder's obligations to the public includes the ability of the public to reclaim a work when copyright has expired.  Private copying, such as in one's own home for personal use, is often a more contentious issue, particularly in regard to the 4th Amendment, and fair use tries to address this issue as well.  In fact, existing copyright law does not trump human rights, and hence fair use provisions do explicitly allow both for some form of at least limited private copying. 
+
  Similarly, copyright law cannot actually exceed first amendment free speech protections, and hence, in American law, there are provisions made in fair use that are consistent with the idea that a copyrighted work can be parodied, the work can be "discussed", explicit portions (excerpts) used for educational purposes, etc. 
+
  Copyright and software 
+
  Of course, the concept of copyright was originally developed around a 17th century book publishing model, where a few explicit authors would undertake writing of a "work".  This model breaks down when we consider that software can be written in very small assemblies that can be collected together from thousands of individuals, organized, and presented as a new "work".  Furthermore, there are all forms of transitory "copying" that may occur in software, and our internet connected work, including caching, loading of programs and media into volatile memory, etc., which were not originally foreseen.  Each of these have meant changes made in the evolution of copyright law over time; some often very poorly done in a one sided manner, clearly at the public expense.  However, the principal of copyright remains that of a trade-off of privileges and obligations, even if often today an unbalanced one. [3] 
+
  While the book publishing model is not quite correct for software, it is possible to use traditional understanding of the ethical application of copyright in books as a starting point to understand how copyright can be ethically applied to special cases such as software.  However, it is first necessary to consider what software is, and how it differs. 
+
  First and foremost when we talk about software, we have the question of source code.  If the purpose of encouraging publication through the limited privilege of copyright is to "promote the progress of science and useful arts", as stated in the U.S. constitution, this is only possible with software by including publication of the source. 
+
```

## 2) articles/2089/index.md
```diff
@@ -1,15 +1,32 @@
  For the seventh time now, the Université Libre de Bruxelles [1] in Brussels, Belgium, is hosting FOSDEM [2]. 
+
  The impact of meetings like these on the free software community as awhole is huge. Apart from the obvious attractions of the meeting, such asthe ability to go to different talks and learn about exciting newthings related tofree software or to see demos at different stands, FOSDEM also allowsyou to meet people from all kinds of different backgrounds. 
+
  
+
  And rather than just being limited to ASCII conversations,which iswhat most free software projects limit themselves to bynecessity, a real-life meeting allows you to not only put names tofaces but also to do those things which people usually think of asenjoyable: go to a bar and discuss your views on a particular problemfrom a project you're working on, on the project as a whole, on freesoftware as a whole, or heck, on the world as a whole. 
+
  I think it's hard to overestimate the effect that conferences such asthis one have on people. Since FOSDEM is in Belgium I've never missedit once; every time the boost in morale and in motivation which ithas given me has helped keep me going for another year. The effects onsocial networking, and the discussion culture within a project, that an eventlike this has is therefore immensely important. 
+
  Lots of things have happened in these last seven years and FOSDEM 2007 isalmost nothing like that first edition back in 2001, then still calledOSDEM. Obviously the event has grown: it's gone from hosting a fewhundred to a few thousand people; it has grown from holding threeconcurrent talks at any time in three different aulas to holding twoconcurrent talks in the primary rooms - and a zillion more in the 10or so developer's rooms being managed by various projects. On a muchmore personal level, I have been appointed as the "volunteer" toorganize the GPG key signing party; and for Debian, I am organisingtheir presence for the fourth time (both a booth and a developer'sroom). 
+
  Volunteer or not, I do love preparing things like this. If you wereto ask me why, I don't think I could tell you: perhaps it is related tothe fact that it reminds me in late September and early October thatFOSDEM still exists; perhaps, though I'd hate for this to be true, it'sbecause it makes me feel more important than I really am; perhaps it'sbecause it helps me warm up slowly for the real thing, so ithelps me enjoy the event so much more. Whatever the reason, I wouldn'twant my half year without it. 
+
  And now it's that time of year again. At the time of writing, it'ssaturday evening, 1AM, and I'm about to find my bed; but witheverything still fresh in my head, I felt I had to write it downnow. 
+
  For the first time, since what seems like forever, the FOSDEMorganizers managedto actually have an  almost  working network at 9AM in the morning,with everything fully set up at 10. The main difference with previousyears was that this time around, rather than setting up the equipmentwhen everyone else is allowed in, they arrived at the insane hour of 5AMto start laying cables, installing AP devices, and doing more of thisgeneral grunt work; by the time people started arriving, the networkwas almost fully operational, prompting me to take a picture of mylaptop with an  ssh -v  session running. A working network could besaid to be taking away part of the charm that defines FOSDEM though.Heh. 
- Joking aside, so far FOSDEM allowed me to meet some interesting newpeople and meet-up with some people I knew from the past; it has alreadyallowed me to learn some new and interesting things about varioustopics , while I also found out a bit about some things I thought  I was familiar with. 
+
+ Joking aside, so far FOSDEM allowed me to meet some interesting newpeople and meet-up with some people I knew from the past; it has alreadyallowed me to learn some new and interesting things about varioustopics , while I also found out a bit about some things I  thought  I was familiar with. 
+
  I can hardly wait for tomorrow. 
-  1 ( http://www.ulb.be ) 
-  2 ( http://www.fosdem.org ) 
 
-		
\ No newline at end of file
```

## 3) articles/Impossible_thing_1_developing_efficient_free_software_like_gnu_debian/index.md
```diff
@@ -1,62 +1,111 @@
  
+
  With any paradigm shift, it is difficult to see the new world from the old one, even though it is glaringly obvious once you've crossed over. Empirical evidence is one way to bridge the gap. Let's look at some solid evidence for the success of what is probably the most obvious "impossible" achievement of commons-based peer production:  free software , as exemplified by the Debian GNU/Linux distribution. 
+
  
+
  First, of course, we need to start with the myth, promulgated by a couple of decades of proprietary software dominance with an economic model founded an the manufacturing analogy: 
+
  
  
- Myth #1 
- 
+
+Myth #1
+
  
- "Free software development can create simple programs and utilities, but it's useless for anything large scale" 
- This may seem almost comic in the pages of Free Software Magazine, but I  still  hear this myth spouted by otherwise intelligent people in other communities. It's such a strongly held belief because it is all that conventional wisdom allows for works created by "amateurs" in their "spare time". The professionalist belief is that only paid professionals can produce quality, well-engineered designs and that professionals cannot possibly be paid to work on something you can get "for free". 
  
+
+     "Free software development can create simple programs and utilities, but it's useless for anything large scale" 
+
+     This may seem almost comic in the pages of Free Software Magazine, but I  still  hear this myth spouted by otherwise intelligent people in other communities. It's such a strongly held belief because it is all that conventional wisdom allows for works created by "amateurs" in their "spare time". The professionalist belief is that only paid professionals can produce quality, well-engineered designs and that professionals cannot possibly be paid to work on something you can get "for free". 
+
+   
  
+
```

## 4) articles/a_media_center_based_on_gnu_linux/index.md
```diff
@@ -1,226 +1,274 @@
- When my DVD player stopped working, I definitively proved to myself (and to people I know) that if there is a simple and effective solution to a problem and a complex one which promises unpredictable results, I always choose the second option. Instead of buying a new DVD/DivX/MP3 player for the modest price of $40-50, I decided to build a home-made device that would allow me to record the TV, receive podcasts, watch my favorite movies, view webtv, play games, and a lot of other things that I considered cool. So my modest adventure with Freevo, GNU/Linux and a lot other free software begins... 
+ When my DVD player stopped working, I definitively proved to myself (and to people I know) that if there is a simple and effective solution to a problem and a complex one which promises unpredictable results, I always choose the second option. Instead of buying a new DVD/DivX/MP3 player for the modest price of $40-50, I decided to build a home-made device that would allow me to record the TV, receive podcasts, watch my favorite movies, view webtv, play games, and a lot of other things that I considered cool. So my modest adventure with Freevo, GNU/Linux and a lot other free software begins… 
+
  Introduction 
+
  A media center is a special type of computer conceived for your living room rather than for your office. There are several models of media center available on the market and most of them are based on the Microsoft Windows Media Center Edition. Differently from a traditional personal computer, the interaction with a media center mainly flows through the remote control and the television screen. It is of course possible to add a wireless keyboard for writing text but most of the time a media center is used by one or more users enjoying content from separate sources such as DVD, Video CD, digital video cameras, FM radio, analog/digital terrestrial TV or satellite TV, network streaming and, of course, the local hard disk. 
+
  
  Differently from a traditional personal computer, the interaction with a media center mainly flows through the remote control and the television screen 
  
+
  What hardware you need 
+
  Assuming you want to build your own media center, the ingredients you need are of three types: hardware, software and connectivity. Your media center will gain a lot from a LAN connection which is useful for management tasks and for receiving media streams from the internet. Regarding the hardware the essential components are: motherboard, CPU, RAM, disk, video card with TV/OUT, audio card, TV/FM card, network card, CD/DVD player and a remote control with IR receiver. Of course you can add a lot of optional components like a DVD writer and USB memory readers. 
+
  To build an effective system you need a minimum CPU power for video encoding/decoding. Buying an Intel Core Duo with 2GB of RAM is a viable choice, but in my experience you can save a lot of money reusing some old hardware. I’ve assembled a system with Pentium III processor with 320MB of RAM and I found that for video encoding/decoding this configuration is powerful enough. If you don’t have any old PC to cannibalize, you can buy a mobo/CPU/RAM for less than 100$ on eBay and get your system done. 
+
  
  I’ve assembled a system with Pentium III processor with 320MB of RAM and I found that for video encoding/decoding this configuration is powerful enough 
  
+
  GNU/Linux helps to make your old hardware run again. It’s always possible to optimize GNU/Linux, while Windows XP is too resource consuming. Another proprietary alternative for old hardware is, as usual, Windows 98, but would you venture to make it your OS? I wouldn’t. Thus, for my media center I’ve acquired the following: 
+
  
- Microstar mother board with Intel P3/800MHz 
- 320MB of RAM 
- Matrox Millennium graphics card G400 with dual head 
```

## 5) articles/all_the_c_you_need_for_gtk_development/index.md
```diff
@@ -1,520 +1,516 @@
  If you want to develop applications with GTK+, a graphical toolkit used by the GNOME desktop environment, it is essential that you are comfortable with the C programming language. This article is meant to give you a short refresher on the basics of C that you will need to know when developing GTK+ applications. 
+
  
+
  Basic C program structure 
+
  Every C program is composed of one or more functions in the following format. The function receives a number of variable parameters, runs the commands in the function, and then returns a variable of the given type. Note that you can omit the return value by using  void  as your function type. 
-  type function (parameters)
 
+  type function (parameters)
 {
-
   local variables
-
   commands
-
 }
   
+
  Here is a practical example (don't worry if you don't understand it yet): 
-  int my_function(int a)
 
+  int my_function(int a)
 {
-
   char b;
 
```

## 6) articles/artists_should_be_paid_part_3_big_picture/index.md
```diff
@@ -1,114 +1,190 @@
  
- Can artists actually make money on a free software driven free culture project? Having established the motivations and the basic principles in the first two parts, I'm going to look at the big picture here: how money would be distributed among major parts of the project (drawing partly on knowledge accumulated from the proprietary film and television industry -- taking into account the differences), where the money would come from, and what sort of income might be realistic based on the few projects that have gone before us. 
- 
+
+ Can artists actually make money on a free software driven free culture project? Having established the motivations and the basic principles in the first two parts, I'm going to look at the big picture here: how money would be distributed among major parts of the project (drawing partly on knowledge accumulated from the proprietary film and television industry – taking into account the differences), where the money would come from, and what sort of income might be realistic based on the few projects that have gone before us. 
+
  
+
  
- Making Movies with Free Software 
  
+
+Making Movies with Free Software
+
  
- This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies,  Marya Morevna , through the  Morevna Project  and  Lunatics , which we are working on as Anansi Spaceworks. 
  
+
+     This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies,  Marya Morevna , through the  Morevna Project  and  Lunatics , which we are working on as Anansi Spaceworks. 
+
+   
  
+
  
  
  Figure 1: Fortunately, we aren't the first free culture film project to try a creator-endorsed model. Sales for "Sita Sings the Blues" gives us some numbers to consider for a realistic guess at the "top line" for a project of this type (Image Credit: Nina Paley / CC By-SA 3.0) 
  
```

## 7) articles/bankrupcy_fs/index.md
```diff
@@ -1,29 +1,58 @@
  US bankruptcy law has hitherto been fairly liberal, allowing people to restart their lives after a financial collapse by legally eliminating debts and leaving the individual with sufficient resources to rebuild. Entrepreneurs, finding traditional business capital difficult to obtain during the critical seed phase when their ideas have not really been proven, have been willing to take that risk of personal financial failure in the name of pursuing new and risky innovative business plans—just the kind needed in a society whose status quo is not sustainable. 
+
  In October, however, all of that will change: new legislation, ostensibly to protect the credit industry from “irresponsible consumers”, will make this type of bankruptcy almost impossible. The new law will require almost anyone who does go bankrupt to liquidate assets (in many cases including their own homes), and will also require them to live at subsistence, regardless of how much money they make, redirecting their entire “disposable income” to paying off the debt for five years. Needless to say, this is unlikely to encourage much ambition to make extra money during that time, and the resulting micro-management of personal resources will make any kind of business endeavor during that time impossible. 
+
  The new law could make small-business failure punishable by a five year sentence to abject poverty. 
+
  Controlling costs 
+
  Given much-tighter funds, entrepreneurs will be looking for ways to cut out expenses—especially those early seed-money expenses—to reduce their risk. Modern free software can be a serious tool for that task. 
+
  
  The new law could make small-business failure punishable by a five year sentence to abject poverty 
  
+
  Now any particular enterprise will need a unique set of software, but let's consider a customer-oriented business that needs to produce high-quality graphics, organize projects over the internet, and maintain a web presence for customers and partners. To do this entirely with proprietary software is possible—but what does it cost? MS Windows ($307.99) may come with the computer, but MS Office ($469.00) will need to be purchased, as will more specialized software such as Adobe Photoshop ($589.00), Adobe Illustrator ($510.65), and MS Windows Server 2003 ($389.37). For managing internet projects and web presence, there is MS CRM 1.2 Pro ($1329.33) and MS Project Pro ($1059.79, including the server)[1]. This set of software runs to over $4500! 
+
  Yet, it all can be done with 100% free-software. For example, you could use  Debian Gnu/Linux [2], OpenOffice.org ,  Gimp ,  Inkscape ,  OpenCRX  with a  Java [3] runtime installation or  ERP5  with a  Python / Zope  installation, an Apache  web server (of course), and project management using  GForge . With the exception of the ERP/CRM software (which will require some special installation for either proprietary or free versions), the whole system can be installed with a set of Debian DVDs costing perhaps $15.00, an automated install, and a single apt-get instruction. 
+
  This comparison is particularly favorable to proprietary software because I have not figured in the effect of multiple licensing. Proprietary software usually insists on a license fee per CPU or per user, which means that the minute you need more than one computer or hire an employee, you will have to pay more still—another expense that free software eliminates. 
+
  Controlling risks 
+
  The real benefits of free software, though, are not in the initial cost savings, but in the greater control and flexibility that the user has. 
+
  
  The real benefits of free software, though, are not in the initial cost savings, but in the greater control and flexibility that the user has 
  
```

## 8) articles/bill_hilf_interview_with_informationweek_explained/index.md
```diff
@@ -1,45 +1,72 @@
- I recently read an interview with Bill Hilf  1 .As I read it, I realised that it needed clarifications to anybody left wondering whether Mr. Hilf’s answers are indeed objective. This article will go through the most interesting questions and answers, and will try to clarify some important points 
+ I recently read an interview with Bill Hilf [1], thanks to a link from Groklaw. As I read it, I realised that it needed clarifications to anybody left wondering whether Mr. Hilf’s answers are indeed objective. This article will go through the most interesting questions and answers, and will try to clarify some important points 
+
  
+
  (As a side note, having interviewed a number of people myself, I also get the feeling that a lot of them are self-asked questions. But, this is only  a feeling) 
+
  The first passage I’d like to focus on says: 
+
  
- The software that goes into Red Hat Enterprise Linux, we may or may not compete with at a feature level, but the real value of open source from Microsoft is understanding how community developed software can happen on our platform and help grow our business as well as the open source community, which is how we started off on this whole path of launching things like Port25 and CodePlex, and which is why I submitted the licenses to the OSI. 
+   The software that goes into Red Hat Enterprise Linux, we may or may not compete with at a feature level, but the real value of open source from Microsoft is understanding how community developed software can happen on our platform and help grow our business as well as the open source community, which is how we started off on this whole path of launching things like Port25 and CodePlex, and which is why I submitted the licenses to the OSI. 
  
+
  So, Microsoft has finally discovered that good software does happen outside their controlled “cathedral” model, and want to be able to lure communities to help grow their business. I believe Microsoft has done plenty to push away free software developers; many of them frequently asked them: stop threatening them with patent law suits; stop trying to relegating free software development to unpaid, lone programmers in a loft; stop trying to shove your XML format down OSI’s throat. I can only second those requests. 
+
  Then, there’s InformationWeek’s question: 
+
  
- InformationWeek: Are there any specific areas where you would see Microsoft placing things in an open source development environment as a way to further its own products or to better interoperate with things? 
+   InformationWeek: Are there any specific areas where you would see Microsoft placing things in an open source development environment as a way to further its own products or to better interoperate with things? 
  
+
  I definitely cannot prove that Mr. Hilf wrote this question. However, I feel undeniably suspicious about the wording (“further its own product”)? I may well be wrong, obviously. Mr. Hilf however, provides an answer capable of causing a life-threatening stomach ulcer to many free software developers: 
+
  
- Hilf: When people buy commercial software, really what they’re buying is a guarantee. You’re buying a guarantee that what you have will perform, and has been tested and there’s someone you can call up, and if things go really bad someone’s liable if something doesn’t work. You’re buying this ecosystem of accountability. One of the challenges of open source and really the challenge with the open source business model is: it’s hard to replicate that ecosystem of accountability and that guarantee. 
```

## 9) articles/checking_website_incorrect_links/index.md
```diff
@@ -1,60 +1,100 @@
  When you build or update a website, it's a good idea to check that all the links on your webpages are OK. An excellent tool for doing this under Linux is the aptly named   linkchecker  , a GPL-licensed, command-line program. 
+
  However, 'OK' has more than one meaning. While  linkchecker  can check the URL you specify to see if it's properly formed and not broken, it can't tell you if the link points to the wrong URL. 
+
  
- For example, the page might say that if you click the link text 'page A' you'll be taken to page A, but the click actually takes you to page B:  
-  Right   
- Click to go to  page A  
-  Wrong   
- Click to go to  page A  
+
+ For example, the page might say that if you click the link text 'page A' you'll be taken to page A, but the click actually takes you to page B: 
+
+  Right  
+
+ Click to go to  <a href="http://www.something.org/pageA.html">page A</a>  
+
+  Wrong  
+
+ Click to go to  <a href="http://www.something.org/pageB.html">page A</a>  
+
  Is there a way to check for misdirections like this one, besides checking each link by clicking? The answer is 'yes, maybe, sometimes', as explained below. 
+
  #A horrible example 
- Last year I built a  website  with more than 9000 internal links, i.e. links that take the user to another place on the same website. Thousands of those links went to particular entries on a bibliography webpage,  bibliography.html , and each entry had an associated anchor. For example, a 2010 article by Bloggs in the bibliography would have the anchor      . A page at the same level as  bibiography.html  could contain the link   Bloggs 2010  . 
- But were there any misdirected links, such as   Bloggs 2010  ? To find out, I used a combination of a command line tool, a text editor and a spreadsheet to check those thousands of links and save hours of clicking! 
+
```

## 10) articles/copa_scripting_change_text_between_copy_and_paste/index.md
```diff
@@ -1,92 +1,107 @@
- This article describes a simple but useful hack: putting an  xclip  script between copy and paste. I call it 'CoPa scripting'. 
- 
+ This article describes a simple but useful hack: putting an  xclip  script between copy and paste. I call it 'CoPa scripting'.
+  
+
  #An overview 
- If you don't already have the  xclip  utility on your GNU/Linux system, install it now from your distribution's repository. Only two of the  xclip  commands are used in a CoPa script, as shown here:  
-  #!/bin/bash
 
+ If you don't already have the  xclip  utility on your GNU/Linux system, install it now from your distribution's repository. Only two of the  xclip  commands are used in a CoPa script, as shown here: 
 
+  #!/bin/bash
 
 xclip -o \
-
 | [some command or commands] \
-
 | xclip -i
   
+
  The first command,  xclip -o , makes the contents of the X selection clipboard available to another program. You load that clipboard simply by highlighting some text – no need to use  Ctrl + c  or 'Copy' from the Edit menu. The X clipboard contents are then sent (piped) to another program, where the highlighted text is changed in some way by a command. Next, the changed text is sent back to  xclip , where the command  xclip -i  loads the changed text into the X clipboard. The changed text can then be pasted simply by middle-clicking – no need to use  Ctrl + v  or Edit/Paste. ('Middle-clicking' means pressing the middle button on a 3-button mouse, or pressing the scroll wheel on a scrolling mouse, or simultaneously left+right clicking on a laptop.) 
+
  If you've never played with scripts before, here's the key: a script is just a simple text file. You write the script in a text editor (or copy/paste it) and save it somewhere handy as  [something].sh . I save all my scripts in a folder called 'scripts' (/home/bob/scripts) because I'm really not very imaginative! Make the script executable by changing the file properties. A quick way to do this in most Linux distributions is to right-click on the script in your file manager, go to Properties, and choose 'Allow this file to run as a program' or its equivalent. 
+
  Now put a launcher icon on your desktop or panel, so that clicking on the icon launches the CoPa script. The way you do that will vary with your Linux distribution and your preferences, but in all cases you should be able to browse your file system to choose the application or command to be launched by that icon. Browse to your  something.sh , choose it and you're ready to go. 
+
  #A simple example 
```

## 11) articles/create_web_pages_the_right_way/index.md
```diff
@@ -1,552 +1,724 @@
  Have you ever felt that warm fuzzy feeling of knowing that your code is error-free and complies with the latest standards? In terms of programming skill, web authors are too-often seen as the bottom of the barrel (you will notice I didn't call them 'web programmers') due to the apparent forgiveness and limitations of the platform. However, they are required to cover a large array of programming expertise and, even worse, they must ensure that their code runs the same on various platforms–something "real" programmers consider a challenge. 
+
  The "bottom of the barrel" indeed! 
+
  
- During the first browser war, from 1997 to 2001, being a web coder was interesting, with the gap between Internet Explorer (IE) 4 and Netscape Navigator 4. The former used "advanced" CSS (how things have changed!) while the latter had interesting scripting capabilities (but its frequent releases were so quirky that they discouraged developers from using them).  
+
+ During the first browser war, from 1997 to 2001, being a web coder was interesting, with the gap between Internet Explorer (IE) 4 and Netscape Navigator 4. The former used "advanced" CSS (how things have changed!) while the latter had interesting scripting capabilities (but its frequent releases were so quirky that they discouraged developers from using them). 
+
  But when Netscape was sidelined, web authors were required to write for a single platform (IE) which had a proprietary model–and this sad state of affairs lasted for half a decade. During that time, web coding required you to know very little: Visual Studio (or Frontpage, or Dreamweaver) and the twisted view of the Internet that IE 5/6 gave you. 
+
  Recently though, due to the rise of "alternative" browsers (such as KHTML/Webkit-based Safari, Mozilla Firefox, and Opera), writing code only for IE would make any website automatically loose 20% (or more) of the market; and this trend isn't reversing (even IE, with version 7, is getting slightly more standards-compliant). So web authors must change their habits and code for more platforms. And what's common between most of these alternatives? Conformance with standards. 
+
  Which, authors find out, are quite a challenge to use correctly. 
+
  Now, some web authors may try to keep creating "tag soup". It is perfectly possible to output atrocious code that all current rendering engines will treat the same way–or choke on similarly. However, one may very soon find out that actually creating "good" code is much less of a hassle than tinkering with "tag soup" is. 
+
  
  It is perfectly possible to output atrocious code that all current rendering engines will treat the same way–or choke on similarly 
  
+
  Creating good mark-up 
+
  The basis of a web page still is hypertext mark-up language (HTML). It has seen several variations, with HTML 4.01 and XHTML 1.0 (each further divided into Transitional, Frameset, and Strict versions) being the most interesting to look at. The main difference between these two is that XHTML 1.0 is equivalent in functionality to HTML 4, but makes use of XML syntax instead of HTML. 
+
  Moreover, while HTML 4.01 doesn't care about the case of tags and parameters, XHTML is case sensitive: all tags and parameters must be in lowercase. In the present document, when talking about a specific tag, I will write it uppercase for easier reading. However, they will be written in lowercase inside code samples. 
+
```

## 12) articles/creating_fsm_latex/index.md
```diff
@@ -1,75 +1,119 @@
- When I received the first email from Tony asking me to set up the typesetting subsystem for Free Software Magazine (FSM), I was proud... and terrified. I have spent the last six years of my life using LaTeX and, ultimately, TeX, to typeset single articles, songbooks, my thesis, CV’s, flyers, and letters. Even though my knowledge of the companion packages and classes was pretty good, the first thing I thought was: “How is it possible to compose a whole magazine, article by article, and at the same time build the table of contents (ToC) in the same way as the composition of books?” The problem is that every article has a title, a subtitle and one or more authors: all of this information has to be placed  neatly  in the ToC. Even after a bit of research, I was still wondering: “Will I be able to do a proper job?” 
- For the few readers who still don’t know what TeX and LaTeX are: TeX is a typesetting system  [1]  written by Donald E. Knuth, created to compose scientific books and papers. LaTeX is a macro package  [2]  based on TeX that was originally written by Leslie Lamport. It’s used to give a structure to the composition, and let the author concentrate on the paper’s content rather than the paper aspect. 
+ When I received the first email from Tony asking me to set up the typesetting subsystem for Free Software Magazine (FSM), I was proud… and terrified. I have spent the last six years of my life using LaTeX and, ultimately, TeX, to typeset single articles, songbooks, my thesis, CV’s, flyers, and letters. Even though my knowledge of the companion packages and classes was pretty good, the first thing I thought was: “How is it possible to compose a whole magazine, article by article, and at the same time build the table of contents (ToC) in the same way as the composition of books?” The problem is that every article has a title, a subtitle and one or more authors: all of this information has to be placed  neatly  in the ToC. Even after a bit of research, I was still wondering: “Will I be able to do a proper job?” 
+
+ For the few readers who still don’t know what TeX and LaTeX are: TeX is a typesetting system **[1] **written by Donald E. Knuth, created to compose scientific books and papers. LaTeX is a macro package **[2] **based on TeX that was originally written by Leslie Lamport. It’s used to give a structure to the composition, and let the author concentrate on the paper’s content rather than the paper aspect. 
+
  
  When I received the first email from Tony asking me to set up the typesetting subsystem for Free Software Magazine (FSM), I was proud... and terrified 
  
+
  Of course, the first answer to every question about TeX can be found in the Comprehensive TeX Archive Network (CTAN)  [3] . After a bit of research, I discovered that there was a class called  journal , which included the class  paper .  Journal  was written to accomplish something similar to what I was trying to do. However, we wanted to typeset a real magazine, and not a scientific journal; so, we needed quite a few additional features. 
+
  Following the LaTeX Project Public License  [4] , I renamed each of the classes to  openjournal  and  openpaper  (even if I didn’t plan on releasing them just yet). Well, the foundations were there: at that time we were able to compose the magazine, even if it wasn’t as fancy-looking as the average reader might expect. 
+
  In order to figure out which elements were required to compose a single paper (or article), Tony provided me with a sample xml file, containing all such elements. Some of these elements raised my eyebrows: zoom, and textbox; and then there were the more typical: figure, table, author, and title. 
+
  While some of them had a direct correspondence in LaTeX, others were more specific. 
+
  Well, at that point Tony received my answer (a brave “I think I can do it!”), and my part of this adventure started. 
+
  Organising the work 
+
  The  journal  class did a very good job creating the article’s basic layout, but it wasn’t enough for our goals. We wanted to create a magazine, not a journal; so our contents needed to be presented seriously and in colour, typographically speaking. I arranged a set of colours to characterise the elements of FSM, and programmed the class to use them. 
+
  I then had to choose a set of fonts to typeset the text. I chose the AvantGarde font as the sans serif. A serif is the light line or stroke projecting from the ends of the main stroke of a Roman character letter; a sans serif font is a font without serifs. The related package defines which font to use as the serif font and which font to use as the typewriter (TeX defines this as teletype, or tt) font. 
+
  It was time to organise the layout. I wanted a double column page, with a single-column title for every article. I also wanted footers and headers with information about: 
```

## 13) articles/digital_image_resizing_gimp/index.md
```diff
@@ -1,82 +1,140 @@
  Processing digital images is a very common task today. Image processing tools are so common that users often process images by trial and error, without really knowing what they are doing. One of the operations people fail most commonly is resizing an image. 
+
  In this article I will explain how to resize images. This is a way for me to celebrate 10 years since I started studying digital image processing! 
+
  Fundamentals 
+
  There are plenty of digital image formats out there. Each of them provide common or unique features. The most common formats, such as TIFF (Tagged Image File Format), JPEG (Joint Photographic Experts Group), PNG (Portable Network Graphics), are defined raster formats, as they represent the image as a matrix. Each matrix entry is called a pixel (picture element) and represents a color (also called  light frequency ). These images are commonly known as  intensity images . 
+
  There are other types of raster images, such as: 
+
  
- range images, where colors represent the distance between the object and the sensor (usually white pixels represent surfaces that are nearer to the observer and black ones represent surfaces that are the furthest away); 
- thermal images, where colors represent temperatures; 
- acoustic images, where colors represent the acoustic reflectance. 
+   range images, where colors represent the distance between the object and the sensor (usually white pixels represent surfaces that are nearer to the observer and black ones represent surfaces that are the furthest away); 
+   thermal images, where colors represent temperatures; 
+   acoustic images, where colors represent the acoustic reflectance. 
  
+
  You also have vector images, where the represented scene is not a matrix of pixels, but is instead described by formulas instead. Examples of such formats are SVG (Scalable Vector Graphics) and EPS (Encapsulated PostScript). They are usually used to store technical drawings, plots and camera-ready documents. 
+
  
  The resolution indicates how close each pixel is to the others 
  
+
  The advantage of a vector image over the raster is that it can be scaled (in or out) without loss of quality. However, vector images can’t efficiently store complex images such as photographs. 
+
```

## 14) articles/documents_with_lyx/index.md
```diff
@@ -1,109 +1,188 @@
  In the hubbub over the Open Document Format and competing “what you see is what you get” (WYSIWYG) word processors, a long-standing alternative model of word processing systems, with much deeper roots in the free software world, has been mostly overlooked. The author of LyX, Matthias Ettrich, calls this approach “what you see is what you mean” (WYSIWYM). However, it’s a philosophy that you will find in many “native” free software text-processing systems everywhere, from online “content management systems” to book publishing. You write what you mean, then you use some type of formatter to create presentation layouts. Sometimes it’s called “structured writing” or “structured authoring”, but whatever name it goes by, you’ll see this idea repeated in many places. LyX[1], with its integrated graphical environment, may be the friendliest place to learn it. 
+
  Starting an article in LyX 
+
  WYSIWYM does take some getting used to if you’ve come fresh from the world of WYSIWYG. The problem is that you get an urge to control details about presentation (rather than meaning or “content”), and you may try to control them too early in the authoring process. 
+
  With LyX, you don’t need to do such things. First of all, the general purpose styles that are provided with the program are good enough for everyday writing tasks (so you won’t often have to think about presentation at all). The main point, though, is that once you have the document created, you can apply transformations to the presentation after the fact, and they will be propagated throughout your document with a minimum of fuss. 
+
  
  Let the program do the scutwork for you. Concentrate on what you are writing, not on how you are going to format it 
  
+
  So, my first bit of advice when starting out with LyX has to be “let go”. Let the program do the scutwork for you. Concentrate on what you are writing, not on how you are going to format it. Just start typing. As the need arises, you can add styles to already written text. 
+
  Styles 
+
  If you take a look at the default “article” template for LyX, you can see what structured writing is all about. The document view in the window looks very much like it would in any WYSIWYG word processor, but you should notice that the style menu is prominent on the upper left. Most of your formatting work is done with this menu, and involves a single step of selecting the style for the current paragraph. 
+
  
  
  Figure 1: The most commonly used widget in the LyX interface is the style menu 
  
+
  The main style you will use is the “Standard” style, which applies to ordinary paragraph text. After this, the next most frequent types you will deal with are the heading styles, called: “Part”, “Section”, “Subsection”, “Subsubsection”, “Paragraph”, and “Subparagraph”. For most documents, you’ll only need two or three levels of headings, but, as you can see, it is possible for a structure to be quite finely divided. If you use the numbered styles (the ones with no special markings), then section numbers will automatically be generated alongside of the headings, and autogeneration and navigation tools will treat them specially. 
+
  If you just want the “look” of a heading, but no numbering or special handling, there are variants of these styles (pre-pended with an asterisk, as in “*Subsection”) provided for that purpose. There are also less-commonly used styles, such as “Quotation” for block quotations. 
+
```

## 15) articles/drivers_linux/index.md
```diff
@@ -1,1288 +1,1259 @@
  “Do you pine for the nice days of Minix-1.1, when men were men and wrote their own device drivers?”  Linus Torvalds  
+
  Pre-requisites 
+
  In order to develop Linux device drivers, it is necessary to have an understanding of the following: 
+
  
-  C programming . Some in-depth knowledge of C programming is needed, like pointer usage, bit manipulating functions, etc. 
-  Microprocessor programming . It is necessary to know how microcomputers work internally: memory addressing, interrupts, etc. All of these concepts should be familiar to an assembler programmer. 
+    C programming . Some in-depth knowledge of C programming is needed, like pointer usage, bit manipulating functions, etc. 
+    Microprocessor programming . It is necessary to know how microcomputers work internally: memory addressing, interrupts, etc. All of these concepts should be familiar to an assembler programmer. 
  
+
  There are several different devices in Linux. For simplicity, this brief tutorial will only cover type  char  devices loaded as modules. Kernel 2.6.x will be used (in particular, kernel 2.6.8 under Debian Sarge, which is now Debian Stable). 
+
  User space and kernel space 
+
  When you write device drivers, it’s important to make the distinction between “user space” and “kernel space”. 
+
  
-  Kernel space . Linux (which is a kernel) manages the machine's hardware in a simple and efficient manner, offering the user a simple and uniform programming interface. In the same way, the kernel, and in particular its device drivers, form a bridge or interface between the end-user/programmer and the hardware. Any subroutines or functions forming part of the kernel (modules and device drivers, for example) are considered to be part of kernel space. 
-  User space . End-user programs, like the UNIX  shell  or other GUI based applications ( kpresenter  for example), are part of the user space. Obviously, these applications need to interact with the system's hardware . However, they don’t do so directly, but through the kernel supported functions. 
+    Kernel space . Linux (which is a kernel) manages the machine's hardware in a simple and efficient manner, offering the user a simple and uniform programming interface. In the same way, the kernel, and in particular its device drivers, form a bridge or interface between the end-user/programmer and the hardware. Any subroutines or functions forming part of the kernel (modules and device drivers, for example) are considered to be part of kernel space. 
+    User space . End-user programs, like the UNIX  shell  or other GUI based applications ( kpresenter  for example), are part of the user space. Obviously, these applications need to interact with the system's hardware . However, they don’t do so directly, but through the kernel supported functions. 
  
+
  All of this is shown in figure 1. 
```

## 16) articles/drupal_tricks/index.md
```diff
@@ -1,124 +1,122 @@
  By default, Drupal allows you to set a "primary" menu and a "secondary" menu.
 At this point you should know that if you go to admin-> menus -> settings and pick the same menu for both primary and secondary links, the secondary links menu will contain the sub-menu of the selected item in the primary menu. 
+
  What happens if you have  three  levels of menus? 
+
  
+
  Problem: the lack of a tertiary menu 
+
  What happens if you have  three  levels of menus? For example, what happens if your menu looks like this: 
+
  
- One  
- One one 
- --One one A 
- --One one B 
- --One one C 
- One two 
- --One two A 
- --One two B 
- One three 
- --One three A 
- --One three B 
- Two 
- Two one 
- --Two one A 
- --Two one B 
```

## 17) articles/durian_coming_blenders_third_open_movie_project/index.md
```diff
@@ -1,65 +1,115 @@
  
+
  Blender third open movie project, code-named "Durian" is ramping up to production, and time is running out for the pre-sale campaign if you want to get your spot in the credits. This time the project is focusing on an adolescent audience with an epic-fantasy setting and a female protagonist (my son aptly dubbed this the "Chicks in Chainmail" genre). The only art yet available from Durian itself is the series of banner ads (by concept artist, David Revoy), but an impressive creative team has already been announced. 
+
  
+
  Durian's Goal 
+
  A  durian  is a spiky pungent fruit which also describes the atmosphere promised for the Durian movie project. Like the Durian, it's likely to be a very specific taste, unappealing to some, but loved by others. 
+
  
  
  The durian project will be spiky like its namesake, but promises some beautiful production values, given the team that has been assembled (Durian banner ad is by concept artist David Revoy, background is by Takato Marui/CC By-SA 2.0) 
  
+
  In any case, producer (and Blender founder) Ton Roosendaal described the theme in these words: 
+
+ 
+   Short 3D animation film, 5-8 minutes. 
+ 
+
+ 
+   Epic short story, emotional impact, action scenes 
+ 
+
  
- Short 3D animation film, 5-8 minutes. 
```

## 18) articles/editorial_22/index.md
```diff
@@ -1,13 +1,24 @@
  This is an editorial about file conversions. It starts with a story about Free Software Magazine and our struggle with article formats, and continues explaining why the world needs to get rid of Office Open XML, which could create more problems than the Microsoft monopoly itself. 
+
  When I started Free Software Magazine, we faced the problem every publication needs to face: which file format should we use for articles? It was a few years ago now (as they say, time flies when you have fun!). At the time, the web site wasn't our main focus: we were actually printing a paper magazine (!), we were generating amazing PDF files using LaTex, and decided that a static web site was going to "do" for quite a while. We decided that the "master" format for our articles would be XML. XML seemed like a good idea at the time. None of the other options seemed quite as feasible: text wasn't enough, HTML was too vague, ODF was too complex, and so on. Plus, everybody was using it. 
- Since we couldn’t find a single decent semi-visual XML editor, we asked our authors to hand in XML directly. Of course, people became very creative when they created an article file: we had to write a script that deleted white spaces around tags, and generally "cleaned up" the XML files we received. We also had to check manually that the files had the right em dashes, the right opening and closing speech marks, the right apostrophes, and so on. I won't even get started on the problems some authors had with getting the XML right:   tags left unclosed,   items without   first, and so on. It doesn't sound complicated, but when you have a 2500 word article full of listings, text boxes, figures and so on, and (even worse) when the XML error you get from the parser is as unhelpful as it could be, things got tricky. It was a small nightmare, which repeated with every issue of the magazine, and nearly every article. Two prospective (and influential) bloggers refused accounts with Free Software Magazine when they realised they would have to spend time tagging up XML files. Laziness? Maybe. But, as we say around here, "fair enough". 
- Luckily, the delirium is now over. We have  upgraded  our article format to  Markdown Extra  (although, it has a few tweaks to allow tables and textboxes). Authors can now write articles following this  Free Software Magazine article template . Issue 21, this very issue, was edited mainly using the new file format.  
+
+ Since we couldn’t find a single decent semi-visual XML editor, we asked our authors to hand in XML directly. Of course, people became very creative when they created an article file: we had to write a script that deleted white spaces around tags, and generally "cleaned up" the XML files we received. We also had to check manually that the files had the right em dashes, the right opening and closing speech marks, the right apostrophes, and so on. I won't even get started on the problems some authors had with getting the XML right:  <p>  tags left unclosed,  <li>  items without  <ul>  first, and so on. It doesn't sound complicated, but when you have a 2500 word article full of listings, text boxes, figures and so on, and (even worse) when the XML error you get from the parser is as unhelpful as it could be, things got tricky. It was a small nightmare, which repeated with every issue of the magazine, and nearly every article. Two prospective (and influential) bloggers refused accounts with Free Software Magazine when they realised they would have to spend time tagging up XML files. Laziness? Maybe. But, as we say around here, "fair enough". 
+
+ Luckily, the delirium is now over. We have  upgraded  our article format to  Markdown Extra  (although, it has a few tweaks to allow tables and textboxes). Authors can now write articles following this  Free Software Magazine article template . Issue 21, this very issue, was edited mainly using the new file format. 
+
  Converting the articles from XML to Markdown Extra/FSM was a lot of hard work. I just about managed to do using XSLT with custom PHP calls within the XLS file. (If you are thinking "the XSLT from a basic format to Markdown should be simple", I will give you a few keywords: "white paces", "enters", "tables", "clashing escape characters", "CDATA", and so on). The conversion required substantial trial-and-error and tweaking. It contains several hacks I am not especially proud of. To date, I am not yet 100% sure it actually works for every single article. And we are talking about translating an  extremely  simple XML format into an  extremely  simple text format. As always, the conversion part was easy. However, getting it to actually work was tricky. 
- This change won't affect you --well, apart from the occasional due to the occasional hard-to-translate article (we have over 2000 articles in our database, and we checked things by "statistical sampling"...). What is interesting is that this adventure (which I named "article conversion hell") reminded me of something that sounds obvious, but we tend to forget: file conversions are complicated, sub-optimal, time-consuming, imperfect by nature, often wrong, often the result of guess-work, tricky, and basically evil. When you open a Microsoft Office 2000 file using OpenOffice, things might work seamlessly, things might look a little odd, the file might look perfect--but if saved back as a Microsoft Office 2000 file, it might be ruined forever. There is a reason for this: file conversions need to be avoided (especially, like in this case, if the original file is an undocumented back-back-back-back-backward compatible format which really doesn't deserve to exist anymore, and didn't deserve to exist in the first place). ODF isn't perfect (yet?), but it aims at being the format for office documents. It's standard, and several pieces of software today can handle it (see: it's not an OpenOffice-only game). 
+
+ This change won't affect you –well, apart from the occasional due to the occasional hard-to-translate article (we have over 2000 articles in our database, and we checked things by "statistical sampling"…). What is interesting is that this adventure (which I named "article conversion hell") reminded me of something that sounds obvious, but we tend to forget: file conversions are complicated, sub-optimal, time-consuming, imperfect by nature, often wrong, often the result of guess-work, tricky, and basically evil. When you open a Microsoft Office 2000 file using OpenOffice, things might work seamlessly, things might look a little odd, the file might look perfect–but if saved back as a Microsoft Office 2000 file, it might be ruined forever. There is a reason for this: file conversions need to be avoided (especially, like in this case, if the original file is an undocumented back-back-back-back-backward compatible format which really doesn't deserve to exist anymore, and didn't deserve to exist in the first place). ODF isn't perfect (yet?), but it aims at being the format for office documents. It's standard, and several pieces of software today can handle it (see: it's not an OpenOffice-only game). 
+
  Microsoft trying to shove OOXML down ISO's throat (and effectively damaging, maybe beyond repair, the image of what should be an independent body) can damage the computer industry immensly. The fact that both ODF and Office Open XML are XML means absolutely nothing. You can see here a  technical comparison between the two : converting one format to the other is anything  but  fun. Thousands of bogus documentation pages that come with OOXML don't help. 
- What I experienced with Free Software Magazine while converting (which, admittedly, wasn't really that big a deal) would be nothing compared to what the whole world will have to deal with if OOXML became "the" file format "normally" used to exchange office documents. A situation like this will impose constant conversions, quirks, compatibility problems, and so on all of us It will also be a fantastic card for Microsoft: "look, GNU/Linux is sort of good, but you know, you can never trust it to open an XML file... sometimes the images are squint, you know..."  
+
+ What I experienced with Free Software Magazine while converting (which, admittedly, wasn't really that big a deal) would be nothing compared to what the whole world will have to deal with if OOXML became "the" file format "normally" used to exchange office documents. A situation like this will impose constant conversions, quirks, compatibility problems, and so on all of us It will also be a fantastic card for Microsoft: "look, GNU/Linux is sort of good, but you know, you can never trust it to open an XML file… sometimes the images are squint, you know…" 
+
  Microsoft knows this. Unsurprisingly, they have recently announced that they would release several conversion tools to translate ODF into OOXML and vice-versa. I read the article right in the middle of my "article conversion hell", and wondered if anybody else realised how disastrous it would be, if Microsoft managed to convince the world that it was "OK" to have two competing standards, since it's so easy to convert them into each other. The risk is very real: if we don't stop them, Microsoft will muscle its way in, and will force the whole world to fight with conversions for years, or decades, to come. 
- Microsoft proposed a bogus Office file format while an ISO standard already existed. Their shady practices to get their format fast-tracked and approved by ISO didn't work. But Microsoft is still trying--and I can guarantee, it will keep on trying until it succeeds. 
+
+ Microsoft proposed a bogus Office file format while an ISO standard already existed. Their shady practices to get their format fast-tracked and approved by ISO didn't work. But Microsoft is still trying–and I can guarantee, it will keep on trying until it succeeds. 
+
  The only possible answer for Microsoft and OOXML is simple: the world already has an office file format. The world doesn't need nor want a "conversion nightmare".  The world's ISO-approved Office format already exists: it's called ODF. Microsoft: deal with it!. 
 
```

## 19) articles/free_matter_economy/index.md
```diff
@@ -1,212 +1,378 @@
  
- The opposite of a correct statement is a false statement, but the opposite of a profound truth may well be another profound truth—Niels Bohr 
+   The opposite of a correct statement is a false statement, but the opposite of a profound truth may well be another profound truth—Niels Bohr 
  
+
  Material products are getting “smarter” in that more and more of the value of a material product is contained in the information it carries, rather than in its material substance. R. Buckminster Fuller called this process “ephemeralization”[1], and it is one means by which the economics of matter—predicated on the conservations of mass and number—are becoming sidelined by the properties of information. Furthermore, both the capital and marginal cost of making products has trended consistently and rapidly down as manufacturing tools become both cheaper and more versatile, so that the capital cost of an object is increasingly  not  in the capital equipment required to manufacture it, but in the effort required to design it. 
+
  
  Both the capital and marginal cost of making products has trended consistently and rapidly down as manufacturing tools become both cheaper and more versatile 
  
+
  
  
  Figure 1: Ephemeralization: How much value is in the silicon and how much in how it is organized? How useful is this board without being able to look up the data on the chips or having drivers and documentation available for it? There are already a wide range of physical “products” that are more information than matter 
  
+
  Software is only the most extreme example, for which both the “Gnu Manifesto”[2] and the “The Cathedral and the Bazaar”[3] claim that the system of copyright monopoly has begun to behave pathologically, and this has been the basis for the free software movement. Raymond’s arguments in “The Magic Cauldron”[4], suggest that this behavior, and the resulting economic success of free-licensing does not truly rely on  zero  cost of replication, as even software has non-zero replication costs. 
+
  Yet, the business model of masquerading an information product as a matter product—by legally controlling the “uncomfortable” property of free replication—has been remarkably successful for a very long time. This suggests that we should consider whether the converse is possible: can matter-based products be masqueraded to act more like information products—eliminating (or hiding) the uncomfortable property of  costly replication  ? In other words, can we create a bazaar for free-licensed hardware design information and a matter product manufacturing economy which supports it? And can we do it without poisoning the free-design process itself? If so, we might be able to port the high utility, rate of innovation, and low costs found in the free software community to community-based hardware projects—an extremely attractive possibility. 
+
  
  Can we create a bazaar for free-licensed hardware design information and a matter product manufacturing economy which supports it? 
  
+
  What do we want to keep? 
+
  The principle reasons for wanting to emulate free software’s “bazaar” development model are those explored in “The Magic Cauldron”, which identifies the important principles of  self-selection  and  self-management , which are active whenever participation in a project is driven by personal interest rather than profit-seeking. 
```

## 20) articles/free_matter_economy_2/index.md
```diff
@@ -1,231 +1,403 @@
  
- Of course, the construction of a free road does cost money, which the public must somehow pay. However, this does not imply the inevitability of toll booths. We who must in either case pay will get more value for our money by buying a free road.—Richard Stallman 
+   Of course, the construction of a free road does cost money, which the public must somehow pay. However, this does not imply the inevitability of toll booths. We who must in either case pay will get more value for our money by buying a free road.—Richard Stallman 
  
+
  Past economic models relied much less on proprietary manufacturing and consumer product sales, with more emphasis on manufacturing and repair as services called on by users who considered self-repair and self-manufacture as defaults. Despite modern concerns to the contrary, this approach is not destructive to a commercial free market. If anything, such an economy represents a more ideal capitalist marketplace. The creation of a substantial free-licensed development bazaar will provide an environment in which companies catering to these needs can thrive and become much more competitive with the corporate consumer product manufacturers which presently dominate our economics. Clearly this is a necessary shift if we are to obtain the flexibility and self-sufficiency needed for developing the new frontier in space. 
+
  
  
  Figure 1a: Covered wagons were built by settlers themselves or contracted from local builders, using blacksmith shops to make the more difficult parts. Enough information to service just about all wagons could be contained in one book, such as Practical Carriage Building shown here[29] 
  
+
  As we consider the needs of new pioneers, it makes sense to draw on the experiences of old ones. During the westward migration of the nineteenth century, American settlers travelled mainly by “covered wagon”—a rugged cart made of wood, with some iron or steel parts, and a canvas covering to protect the occupants, drawn by oxen or horses. There were no “brands” of covered wagons, although there were several common types and sizes. Nor were wagons produced in factories. Instead, they were usually made by the settlers themselves, with the help of manufacturing services from local blacksmith shops. Repairs were handled in the same fashion[1]. 
+
  
  As we consider the needs of new pioneers, it makes sense to draw on the experiences of old ones 
  
+
  A wagon is transparently reverse-engineerable, there is very little of its mechanism that is either invisible or non-obvious in its function, at least once you’ve seen it work. So naturally, anyone with some mechanical skill could make parts or whole wagons on their own. Patents were much harder to get back then, and in any case, the construction of a wagon was well-understood and therefore unpatentable. Even if a particular component was patented, this was easy to avoid, since with so few parts, there were relatively few interfaces to constrain designs and alternate methods could be used to do the same job. 
+
  Even as late as the 1950s, when the automobile had long since replaced any form of horse-drawn vehicle, and corporations had taken over the manufacturing role, Americans took pride in learning to repair and customize their own cars. For about four generations, America was graced with a new class of skilled amateurs known as “shade tree mechanics”. 
+
  
  To a skilled amateur or professional mechanic, the important aspects of an engine could be easily figured out by disassembling it 
  
+
  Engines of that era were still almost exclusively mechanical devices. You could get repair manuals, which were useful, but to a skilled amateur or professional mechanic, the important aspects of an engine could be easily figured out by disassembling it. Some engine parts were patented, of course, but not as many as you might think. Any patents on the original internal combustion engine design had of course slipped into the public domain by 1950, and high standards for originality were still in place in the patent office, so the market remained very free. It was then, and is still, fairly easy to buy third-party replica parts for these engines. Failing that, most of them could be made in a small machine shop of the type that can be found in towns all over America. The increased complexity of the automobile engine was ameliorated by the rise in standardized fasteners and tooling standards optimized for ease of repair with the small toolkits that were (and still are) widely available[2]. 
```

## 21) articles/free_matter_economy_3/index.md
```diff
@@ -1,171 +1,288 @@
  
- Space is open to us now; and our eagerness to share its meaning is not governed by the efforts of others. We go into space because whatever mankind must undertake, free men must fully share.—John. F. Kennedy 
+   Space is open to us now; and our eagerness to share its meaning is not governed by the efforts of others. We go into space because whatever mankind must undertake, free men must fully share.—John. F. Kennedy 
  
+
  The beginning of this series presented the motivations behind creating a protocol for creating a free-licensed design marketplace for material products. Now, I hope to detail the design concept of a specific package: “Narya Bazaar”[1] is to be a web e-commerce application designed for a free-licensed economy. It will need to have many features in common with other e-commerce systems (shopping carts, credit card payments, and so on), but here I want to explain the unique part of the design, which is the “Bargain Protocol” that links our three principle actors:  projects ,  donors  and  vendors . 
+
  Actors 
-  Projects  in the Narya system are more-or-less as they are in the GForge 2  free software project incubator. They may be run by single individuals or groups of people. Groups might be affiliated only through common interest, or be co-workers funded by a commercial institution, though the former is much more likely. 
+
+  Projects  in the Narya system are more-or-less as they are in the GForge[2], or SourceForge, free software project incubator. They may be run by single individuals or groups of people. Groups might be affiliated only through common interest, or be co-workers funded by a commercial institution, though the former is much more likely. 
+
  There are particular roles within the project that are common to other project systems, such as the “project leader”, but Narya Bazaar introduces another particular role, which I call the “quartermaster” (QM). Like a real quartermaster, the project QM is in charge of the project’s material stores, and is trusted by project members with this role. Furthermore, in order to interact with the Bazaar system, the QM must have a physical mailing address and account information on file at the site. Since this represents some loss of privacy, it’s understandable that projects will not want all of their members to have to agree to these terms, but at least one member needs to if they want to take advantage of Bazaar’s provision of materials and services. 
+
  
  Like a real quartermaster, the project QM is in charge of the project’s material stores 
  
+
   Donors , are the wonderful people who have money to spend on seeing that projects of interest to them succeed. Without them, of course, there would be no point in designing Bazaar at all. We do not treat them as a magic source of funding here, however, but as customers who expect to see value for the money they contribute. This value comes in the form of newly available technologies that they can use, and in the manufactured incarnations of those technologies as provided by vendors. 
+
  Finally,  vendors , are the commercial providers of the materials and services that are needed by projects to complete their development work, and who must be paid using funds that come from donors. These are fairly well-understood commercial entities, although they may take any commercial form from a self-employed consultant to a large contract manufacturer or commodity supplier. In some cases, the “vendor” in the Bazaar system will actually be a reseller of services procured by external means. 
+
  Vendors sell to donors in essentially two modes: the first is direct sales in which the “donor” is more-properly called simply the “customer”; and the second is providing services to projects that the donor is supporting. In a successful free-matter economy, the former kind of sale will dominate in sales figures, although the latter will probably be the main form of sale at the beginning, and may always be the largest in number of unique transactions. However, since the former case is handled by standard e-commerce solutions, I will not expand further on it. It is the latter mode that most needs explanation here. 
+
  Project needs 
+
  In the previous two articles, I have outlined the fears and needs of the donors and vendors by way of outlining the requirements of this protocol. The one remaining class of actors is probably the most obvious one—the project developers. Fortunately, the fears and resulting needs that project developers have from the Bazaar system are pretty straightforward: 
```

## 22) articles/free_matter_economy_4/index.md
```diff
@@ -1,184 +1,335 @@
  
- A good scientist is a person with original ideas. A good engineer is a person who makes a design that works with as few original ideas as possible. There are no prima donnas in engineering.—Freeman Dyson 
+   A good scientist is a person with original ideas. A good engineer is a person who makes a design that works with as few original ideas as possible. There are no prima donnas in engineering.—Freeman Dyson 
  
+
  Imagine where free software would be today if it weren’t for the GNU C Compiler! Just as free software depends heavily on free compilers, so does free design rely on having free computer aided design and authoring tools.[1] 
- 
- 
- 
- 
- (Getting married in Perth? Check out our  Perth Wedding Videographer ) 
- 
- 
+
  Before the gcc was created, when free software had to be written on proprietary compilers, the software development community was limited to the very small number of people who could afford to purchase such tools—either because they were professional programmers or very dedicated amateurs. 
+
  
  Imagine where free software would be today if it weren’t for the GNU C Compiler! 
  
+
  The idea of “bazaar style” development hadn’t yet been conceived, but that was just as well, since such small bazaar sizes would lead to a breakdown of the bazaar development strategy[2]. No doubt some centrally controlled “cathedral” projects (such as the GNU project) would’ve continued, but the overall effect would be an extreme chill compared to the hotbed of innovation that free software currently represents. Lacking the kind of professional-quality design authoring tools that are found in the commercial engineering workplace, the free design community is in just that situation today. 
+
  Of course, it can be (and has been) argued that engineering is a specialized discipline and that therefore only a small technocratic elite can participate in the process—hence bazaar size might always be too small to be effective. But twenty years ago, this was the conventional wisdom about software development, too! 
+
  By users for users 
+
  A compiler is a program to write programs, so the users of the tool are also those qualified to create it. With design tools, we’re not so lucky: it’s a fairly rare engineer who has the programming expertise to develop proper engineering design software. This is a problem because bazaar development works best when applications are developed by the people who need them. In order to get a CAD/CAM system started, it will probably be necessary to start with a centrally organized solution—a cathedral development model—working as quickly as possible towards a solution that relies heavily on  scripting  that  can  be done by the typical end user of engineering software. 
```

## 23) articles/free_matter_economy_5/index.md
```diff
@@ -1,149 +1,289 @@
  
- I think the health of our civilization, the depth of our awareness about the underpinnings of our culture and our concern for the future can all be tested by how well we support our libraries.—Carl Sagan,  Cosmos  
+   I think the health of our civilization, the depth of our awareness about the underpinnings of our culture and our concern for the future can all be tested by how well we support our libraries.—Carl Sagan,  Cosmos  
  
+
  Libraries have been around for a lot longer than software, and librarians long ago learned many of the data management lessons that have only now begun to surface in the world of software and databases. By contrast, software is a young, rapidly changing field, and this has affected its outlook. Five years may seem like an eternity in software development, but in the archival business, it’s just the blink of an eye. 
+
  What libraries have not dealt with historically, however, is the dismaying array of data storage mechanisms and file formats that software data represents, the troublesome transience of the tools needed to access that data, and the overwhelming quantity of the data that is produced. 
+
  Finding your way 
+
  For uncontrolled data sources, such as the world wide web at large, we have no real choice except to use machine indexing systems such as Google, but if we want a free-design database to be a maximally reusable resource, we need to make use of metadata. 
+
  
  If we want a free-design database to be a maximally reusable resource, we need to make use of metadata 
  
+
  Metadata, “information about information” is the key to library science. There are many decisions about data sources that cannot be easily made by machine, and metadata tagging allows the librarian to classify works so that they can be retrieved later. Typically these include the familiar “subject”, “title”, and “keyword” indexes that were once the mainstay of library card catalogs, and now of electronic OPACs used by modern libraries [1]. 
+
  Schemas 
+
  For a long time, libraries have used the highly rigorous but somewhat difficult MARC database system [2], which is not exactly a relational or object database, but is somewhat in between, and requires special handling to be managed properly. Since then, however, computer science development has led to more manageable database design styles, and the increasing quantity of digital and multimedia library resources has begun to make the conventional book-publishing orientation of MARC obsolete. Librarians are, therefore, developing more streamlined, agile metadata database systems, such as the FRBR [3], which is a pure relational database schema designed to encapsulate the minimal (but complete) requirements for library use, and the even more streamlined Dublin Core (DC) metadata system [4]. 
+
  MARC, FRBR, and DC provide “schemas” or lists of the types of metadata elements that can be recorded for a work. 
+
  Vocabularies 
+
```

## 24) articles/free_matter_economy_6/index.md
```diff
@@ -1,205 +1,374 @@
  This article explores the legal problems that will be faced by free-design communities developing hardware for space. 
+
  
- I have learned that distributed problems require distributed solutions—that centralization of power, the first resort of politicians who feed on crisis, is actually worse than useless, because centralizers regard the more effective coping strategies as threats and act to thwart them.—Eric Raymond 
+   I have learned that distributed problems require distributed solutions—that centralization of power, the first resort of politicians who feed on crisis, is actually worse than useless, because centralizers regard the more effective coping strategies as threats and act to thwart them.—Eric Raymond 
  
+
  A strong free design economy will have to deal with the realities of the legal systems in which it must operate [1]. Intellectual property law is currently changing, inconsistent between nations, and under substantial pressure from those with a vested interest in preserving outmoded business models against the inevitable changes that new communications technology has brought. Furthermore, putting the ability to design and create in the hands of ordinary people creates a threat to the power elite, who will then have a harder time controlling forbidden technology and the forbidden knowledge required to create it. 
+
  The result has been the mining of the noosphere—a net of legal obstacles intended to ensnare free thought and keep the old power structures intact. There is more at stake here than is usual in the field of free software—free-designed nuclear weapons or biological weapons could destroy civilization just as easily as their proprietary, government-controlled cousins. We can’t shirk that responsibility. Nor, however, can we allow it to halt human progress by turning our free society into an unnavigable maze of professional guilds and corporate fiefdoms. 
+
  
  Putting the ability to design and create in the hands of ordinary people creates a threat to the power elite, who will then have a harder time controlling forbidden technology and the forbidden knowledge required to create it 
  
+
  Patents 
+
  The most prominent hazard for individual inventors today is the proliferation of patents. 
+
  How did we get into this ironic position? After all, the basis for patent law (at least in the United States), is supposed to be the encouragement of invention by allowing inventors a proprietary period to cash in on their inventions before they enter the public domain. Or, as Abraham Lincoln put it: 
+
  
- Next came the Patent laws. These began in England in 1624; and, in this country, with the adoption of our constitution. Before then, any man might instantly use what another had invented; so that the inventor had no special advantage from his own invention. The patent system changed this; secured to the inventor, for a limited time, the exclusive use of his invention; and thereby added the fuel of interest to the fire of genius, in the discovery and production of new and useful things [2]. 
+   Next came the Patent laws. These began in England in 1624; and, in this country, with the adoption of our constitution. Before then, any man might instantly use what another had invented; so that the inventor had no special advantage from his own invention. The patent system changed this; secured to the inventor, for a limited time, the exclusive use of his invention; and thereby added the fuel of interest to the fire of genius, in the discovery and production of new and useful things [2]. 
  
+
  
```

## 25) articles/free_matter_economy_7/index.md
```diff
@@ -1,204 +1,369 @@
  If you had a matter economy based on free-licensed design, what would you do with it? Why does this apply to space settlements? Are there practical projects? Who would need them? Why is free-design the right way to go? This final installment in the free matter economy series will attempt to answer these questions by taking a brief tour of the kinds of roadblocks that lead to the concept of applying free software methods to space. 
+
  
- “[Astronaut] Anna Fisher got the job of helping design a [space]suit for women. This had nothing to do with fashion and everything to do with safety. A poor fit is unacceptable, because it would make it impossible to move. As a small person, Fisher found the unisex stock sizes simply unworkable. ‘Women are not smaller men’, she reminded the astronaut office, which apparently had to be reminded, ‘Women are built differently’. For a while NASA thought it would be more economical to select a large candidate who would fit the suit, rather than adjust the suit to fit a smaller woman, but tall women are also built differently, another lesson NASA had to learn.”—Bettyann Holtzmann Kevles,  Almost Heaven: The Story of Women in Space  [1] 
+   “[Astronaut] Anna Fisher got the job of helping design a [space]suit for women. This had nothing to do with fashion and everything to do with safety. A poor fit is unacceptable, because it would make it impossible to move. As a small person, Fisher found the unisex stock sizes simply unworkable. ‘Women are not smaller men’, she reminded the astronaut office, which apparently had to be reminded, ‘Women are built differently’. For a while NASA thought it would be more economical to select a large candidate who would fit the suit, rather than adjust the suit to fit a smaller woman, but tall women are also built differently, another lesson NASA had to learn.”—Bettyann Holtzmann Kevles,  Almost Heaven: The Story of Women in Space  [1] 
  
+
  Suppose that you do create a free-design community and a vendor economy to support it. What will you do with it? The idea covers many different aspects of life, but the part I’m interested in is the development of space. Why is it so essential to have a free-design bazaar to make space colonization work? 
+
  In part II of this series [2], I explored the importance of design freedom to the self-sufficiency that made past colonizations and migrations possible, following the example of the wagon trains in early 19th century America. The motivating necessity is the need for total field-repairability on the frontier. There’s not going to be a lot of warranty service calls to Mars! 
+
  Explorers and pioneers understand the importance of knowing their equipment, and in the extreme case of space settlement, there is no reasonable way to achieve this except through total disclosure of the design, means of testing, and engineering limits of the equipment used. 
+
  In fact, this is no more than NASA demanded of its contractors when it built the equipment to go to the Moon in the 1960s, so there should be no great shock in realizing that colonists will need the same power. But NASA represents a monopsony, a single-buyer market, where the buyer was deep-pocketed enough to pay those contractors everything they needed. Space settlers, especially if we are to imagine anything like a free frontier, will not be so top-down organized, nor so wealthy, and will have to manage their collective buying power differently. 
+
  
  Explorers and pioneers understand the importance of knowing their equipment, and in the extreme case of space settlement, there is no reasonable way to achieve this except through total disclosure of the design, means of testing, and engineering limits of the equipment used 
  
+
  There is also a very high premium on mass transportation for anything that must be launched from the Earth, so there will be a substantial demand for fashioning needed equipment from materials on site. Pioneers will have relatively little need to purchase equipment itself, focusing instead on the tools to begin the long bootstrapping process of building their own habitats and civilization out of little more than the dirt and sunlight they find in situ. Any economy that subsists from charging fees for centrally-manufactured copies of a secret or patented design is going to have problems with this model of living off of the land. This makes it difficult to rely on investment from terrestrial manufacturing industries which see little profit motive in serving the needs of colonists. 
+
  Personal technologies on the frontier 
+
  At the 2000 International Space Development Conference (ISDC) in Tucson, Arizona [3], I attended a small brainstorming session focused on what conference organizer and Tucson L5 member Tom Jaquish called “personal technologies for space” [4]. There were only half a dozen people in that meeting, but I was lucky enough to be one of them, and I still regard that meeting as a decision point. It became obvious to me that space pioneers need something that astronauts don’t: scaled down, personalized, fully-disclosed, and modifiable technology that is adapted for their fundamental needs of freedom and independence. 
+
  
  
```

## 26) articles/free_software_tools_for_designing_productive_community_sites/index.md
```diff
@@ -1,709 +1,466 @@
  These days there's a lot of buzz about "Web 2.0" and making websites more interactive, but what's really going on is a reconnection to the community nature of the internet. Collaboration, cooperation, and the information commons are all ideas that pre-dated the world wide web in the form of older internet technologies. In today's distributed computing environment, though, these technologies have really flourished. Here's a guide to eight that you should consider making use of in building a community around an information commons project of any kind, from multimedia, to hardware, to software. 
+
  
+
  Community-building tools 
+
  The early twenty-first century has brought us some excellent tools for building more sophisticated and responsive communities around peer production projects. Few projects need to deploy more than one or two of these technologies. However, a greater consideration of the community atmosphere and electronic landscape can make a huge difference in the success of your project. 
+
  Free software has played an important part in this technical revolution. As a result, there are free software tools for every one of these categories. In many cases, in fact, the free software tools lead the market. Which particular package you use will depend on what sort of CMS, portal, or hosting you have available to you. 
+
  I can't possibly hope to be comprehensive in listing packages to provide these services, but I have tried to present a reasonable sampling of some of the most popular and/or interesting tools that I could find. For the web-based tools, I've included information on LAMP-based (Linux-Apache-MySQL-PHP) packages, Drupal (a PHP-based CMS, on which Free Software Magazine is based), Plone (a Python/Zope-based CMS, which is what I am planning to use), and a selection of others (based on C, Perl, Ruby, Java, and others). I've also listed sites that provide these features as hosted services, which gives you the option of not having to install anything on your own server. 
+
  Certain technologies—particularly synchronous or visualization tools—rely on alternate client/server technologies. For those, I've listed clients, servers, and infrastructure information (including protocols and libraries) that may be of use. 
+
  Regarding tools for installation on your own server and/or client software to be used by visitors or contributors, I have restricted this list to free-licensed open source software only. However, in the column "Services", I have relaxed this requirement: where there are widely-used, market-leading proprietary software based services, I have included them. This includes services like SecondLife and Yahoo Groups, both of which have been used extensively to promote free software or free content projects. 
+
  Private communications: email and instant messaging 
+
  The most basic communications technologies are those that provide simple one-to-one communication. Email is the traditional way to do this in the free software community, but for a given project, conversations can also happen through forum "private message" (PM) communications or, if immediacy is also desired, through instant messaging technology (and don't forget, there's always the telephone!). 
+
  
  
  Email and private messaging systems provide basic one-on-one communication. Most free software projects just use email, but web-based forum "private message" (PM) messages can be just as effective in a project (Photo credit: Daria Radota Rasmussen/CC-By 2.0) 
  
+
  Email software is ubiquitous of course. Private messaging is usually a feature of "forums" (see the next section). Synchronous "chat" systems are fundamentally different from a technical perspective, though they serve much the same purpose. 
+
```

## 27) articles/free_technology_academy_needs_your_help/index.md
```diff
@@ -1,35 +1,57 @@
  The Free Technology Academy [1] is one of those incredible initiatives that spring out of the free software culture, and create something that goes way beyond free software. 
+
  Unfortunately, the FTA has recently lost their European funding. I talked to David Jacovkis, one of the people behind this innovative project, to know more about their situation and what needs to be done so that their project can keep on thriving. 
+
  
+
  Q: What is the FTA? 
- The Free Technology Academy [1] started in 2008 as an initiative of the Free Knowledge Institute  2  to promote Free Software in the European higher education space. Since the beginning we worked very closely with two distance universities, the Open University Netherlands  3  and the Open University of Catalonia  4 . Our initial aim was to set up a virtual campus with course modules on Free Technologies, recognised by partner universities in their master degree programmes. 
+
+ The Free Technology Academy [1] started in 2008 as an initiative of the Free Knowledge Institute [2] to promote Free Software in the European higher education space. Since the beginning we worked very closely with two distance universities, the Open University Netherlands [3] and the Open University of Catalonia [4]. Our initial aim was to set up a virtual campus with course modules on Free Technologies, recognised by partner universities in their master degree programmes. 
+
  Since the first pilot in 2009, the FTA programme [5] has expanded from 3 to 13 course modules, including subjects such as "The concepts of Free Software and Open Standards", "GNU/Linux systems", "Economic Aspects of Free Software", "Software Architecture" and many others. According to the spirit of the Free Software movement, all FTA learning materials [6] are released under copyleft licenses. 
+
  The FTA is set up as a virtual campus fully based on Free Software. Some of its main components are Moodle, MediaWiki, Drupal and Elgg. This last application has been integrated with the main campus to create the FTA Community Portal [7], an open space where learners (both formal and informal), educators and anyone else with an interest in Free Technologies can meet and exchange experiences, discuss study subjects, share news, create new learning materials and help improve existing ones. 
+
  Currently our goal is to work with our university partners to develop a common framework for an international Masters Degree in Free Software. 
+
  Q: Why did the European funding go away? 
+
  The FTA was set up with the financial support of the Lifelong Learning Programme of the European Commission. This is a project based programme that doesn't provide structural funding. The EC funded 2-year project ended in December 2010 and since then the FTA's main source of income are the tuition fees of its enrolled learners. 
+
  It isn't very often that such a project aims to become financially sustainable after the funded period, however this has been one of our objectives since the very beginning. We didn't want the FTA to become yet another pilot project: we want it to be a successful long term initiative. 
+
  Q: What are the risks right now? The "worst case scenario"? 
+
  I'd say that the main risk at this moment is being unable to reach the potential audience that we know we have. We need a sufficient number of learners in every course module, and not only financially. Our pedagogical model is mostly based on asynchronous activities (discussions in a web forum, collaborative activities in a wiki, etc.) which don't work so well if groups are too small. 
+
```

## 28) articles/from_java_to_mozilla/index.md
```diff
@@ -1,228 +1,346 @@
  This article compares two development platforms: Java and Mozilla. The object of this comparison is not to establish which one is best, but rather to measure the maturity, the advantages, and the disadvantages of Mozilla as a platform from the point of view of a Java programmer (as I am). Such a comparison is not a speculative exercise but it is the result of a process of technology scouting that I have performed during the last months with the objective being to find more effective tools, languages, and patterns for the development of distributed, pervasive, and location-aware internet applications. The article briefly introduces Java and Mozilla, and then points to similarities and differences. A detailed analysis of some important programming domains such as GUI, multitasking, remote applications, community process, and development tools are presented together with a comparison of functionalities provided by the respective API. 
+
  A short introduction to Java 
- Java is a multi-platform object-oriented language. In other words, you can use constructs and patterns of object-oriented world to write programs deployable in different operating systems without changing a line of code and without “recompiling”. Although this is quite common for interpreted languages, the Java code is not interpreted. Java compilers build binary code called bytecode, which is loaded and executed by a virtual machine, independently upon which the operating system is running in the “real” machine. Thus, a bytecode compiled under Windows can be loaded and executed by a virtual machine running on Unix. The Java virtual machine hides underlying system-related details and it is provided with a unified API, common to all platforms. This implies that only the functionalities that are common to all platforms can be exploited by Java programs. The idea of “virtual machines” is not a new one; older languages such as Smalltalk introduced this solution years before Java, but as often occurs, the best and the first are not automatically the most successful.  
+
+ Java is a multi-platform object-oriented language. In other words, you can use constructs and patterns of object-oriented world to write programs deployable in different operating systems without changing a line of code and without “recompiling”. Although this is quite common for interpreted languages, the Java code is not interpreted. Java compilers build binary code called bytecode, which is loaded and executed by a virtual machine, independently upon which the operating system is running in the “real” machine. Thus, a bytecode compiled under Windows can be loaded and executed by a virtual machine running on Unix. The Java virtual machine hides underlying system-related details and it is provided with a unified API, common to all platforms. This implies that only the functionalities that are common to all platforms can be exploited by Java programs. The idea of “virtual machines” is not a new one; older languages such as Smalltalk introduced this solution years before Java, but as often occurs, the best and the first are not automatically the most successful. 
+
  If the portability of bytecode is one of the key features of Java, another important feature is that at the beginning of its life Java was considered the “language for the web”. This was due to  Applets —programs that can be downloaded and executed inside a web page. Since its birth, both of these features of Java have revealed their limits. On one hand, bytecode portability assumes that the footprint of different machines is equivalent: loading bytecode compiled for a desktop PC in a PDA or to a cellular phone is in general not possible. On the other hand, Java Applets have gained less success and diffusion than other competitor technologies such as Macromedia Flash. Nevertheless, Java has gained a huge popularity among research teams and also for proprietary software. Among the most noticeable applications are the tools for Java programming written in Java. Moreover, to extend the adoption of Java in small footprint devices, different “editions” of the Java platform were created: J2SE is the Java 2 standard edition virtual machine for the desktop computing and personal system applications; J2EE is the enterprise edition which comprises server side components such as  Servlet  and  Enterprise Javabeans . The J2ME profile aims at small devices such as mobile phones and embedded systems. For a complete classification of Java virtual machines and API please refer to Java’s web site [1]. In the domain of web applications, even though Java applets lost the war against Flash on the client side, things evolved favourably to Java technology on server-side. The J2EE provides a robust framework for secure and scalable applications competing with the ASP and PHP technologies. 
+
  One of the success points of Java is its technology pervasiveness. Java programmers “make themselves at home” in a vast range of domains: they can write stand-alone programs, application plug-ins, applets for web pages, web applications either in the form of  servlets  (Java code which embeds HTML tags) or  Java Server Pages  (HTML which embeds Java expressions), and  Enterprise JavaBeans  which build the application logic in multi-tiered architectures. Furthermore, Java scales the OOP paradigm to distributed systems by means of RMI (Remote Method Interface) and  Jini  (a framework which makes a deep use of code mobility to build dynamic collection of distributed services). In the domain of “small footprint” devices, Java has its JVM tailored for cell phones, PDAs, and smart cards. 
+
  
  One of the success points of Java is its technology pervasiveness. Java programmers “make themselves at home” in a vast range of domains 
  
+
  A short introduction to Mozilla 
+
  Mozilla is not a language. It is a known free software suite of internet clients. However, looking under the hood, you can discover that Mozilla is not only a browser and a messenger, but it is a platform with a complete component-based architecture. You can develop new stand-alone programs, add-ons for the browser, and code that can be loaded from remote hosts. 
+
  
- The Mozilla project has quietly become a key building block in the open source infrastructure. (Tim O’Reilly ) 
+   The Mozilla project has quietly become a key building block in the open source infrastructure. (Tim O’Reilly ) 
  
+
  The most remarkable elements of the Mozilla platform are its component architecture called XPCOM (which recalls Microsoft COM) and the Gecko layout engine, which can render both HTML and the XUL mark-up language—an XML language for the definition of rich (as opposed to poor HTML forms) graphical user interfaces. The entire GUI of Mozilla is written in XUL and rendered by the HTML/XUL Gecko rendering engine. 
+
  The XUL approach has produced two main results: Firefox and Thunderbird. Aside from these two software masterpieces there are hundreds of small third-party add-ons, which cover any possible requirement of final users. 
```

## 29) articles/genealogy_with_gramps/index.md
```diff
@@ -1,92 +1,157 @@
  Genealogy is a burgeoning hobby and to help the home genealogist, a whole range of software is available. Much of it is commercial but here I’ll look at one of the most popular free software options—GRAMPS. Charting your family history needn’t mean compromising on licensing. 
+
  Finding your roots 
+
  Genealogy, the study of one’s ancestry, is a growing industry. Fuelled by on-line resources like Ancestry.com [3] and television programs like the BBC’s “Who do you think you are”, thousands of people are to be found scouring web sites, visiting graveyards in remote locations and ordering obscure birth certificates all in the name of tracing their roots. 
+
  
  Genealogy is highly addictive...you can easily find yourself staring bleary-eyed at the computer at 3am 
  
+
  If you have ever considered tracing your ancestry, there are a few things to note: it takes time, it can create huge amounts of data and it’s highly addictive. Once you start you can easily find yourself staring bleary-eyed at the computer at three in the morning trying to figure out if the person you’ve just found is the same one you are related to. I should also say that it can be highly rewarding—especially when you amaze your relatives with the details of their family history. 
+
  From data to trees 
+
  Managing all that information suggests a database and while it is possible to create your own, there exists an array of software which can ease the task of turning the data you have gathered into a family tree. Much of this is commercial although it is generally at a reasonable cost. Of course, for those who prefer their software to be free there are several applications available [4] and of these GRAMPS is arguably the most popular. GRAMPS stands for Genealogical Research and Analysis Management Programming System. A name which makes me wonder if the acronym or the full name came first. 
+
  Before I plunge into the details of installing and using GRAMPS, take a look at some of the functionality that it provides, as available from the sidebar as shown in figure 1. 
+
  
  
  Figure 1: The standard GRAMPS interface showing a pedigree 
  
+
  
-  People : The bedrock of all Genealogy software. In GRAMPS you can store people’s names (birth, marriage and others), multiple addresses (with dates) and events (e.g. marriage, emigration). 
-  Families : People are automatically grouped by last name, you can also link them by relationship to each other. Thus allowing you to produce family tree style reports. 
-  Pedigrees : A visual, interactive layout of a family tree. 
```

## 30) articles/guit_meeting/index.md
```diff
@@ -1,55 +1,97 @@
  Free Software Magazine is obviously about free software. Many readers may also know that we create our magazine using free software. But, not only do we use free software, we also develop it. 
- I have developed the LaTeX class that we use to typeset the individual articles and each complete issue. Even though the class isn’t very well written (it is getting there!), whenever someone asks me to provide our LaTeX class, I do send a complete starter’s kit for turning LaTeX into a magazine typesetter; well... sort of. 
+
+ I have developed the LaTeX class that we use to typeset the individual articles and each complete issue. Even though the class isn’t very well written (it is getting there!), whenever someone asks me to provide our LaTeX class, I do send a complete starter’s kit for turning LaTeX into a magazine typesetter; well… sort of. 
+
  Yes, I am a big LaTeX fan. 
+
  In Italy we have an official TeX Users Group, based in Pisa, that holds a meeting once a year: the GuITmeeting. I was there, and this article tries to summarize what we’ve achieved. 
+
  The headquarters 
+
  The GuIT President, Maurizio Himmelmann, works with the Scuola Superiore Sant’Anna (Sant’Anna School of Advanced Studies). It’s not a high school—it’s an autonomous, special-statute university that operates in the fields of the applied sciences and, as the Scuola Normale Superiore, is located by the side of the University of Pisa. 
+
  
  The Sant’Anna School was a wonderful location to base the GuITmeeting 
  
+
  The Sant’Anna School was a wonderful location to base the GuITmeeting. This year’s program was rich in the variety of topics it covered, as will become clear in the following sections. 
+
  
  
  GuIT logo (drawing by Robert Duane Bibby) reproduced courtesy of GuIT 
  
+
  The program 
+
  The works that were presented were very interesting and showed how TeX is still vital in IT despite it being about 30 years old. 
```

## 31) articles/how_to_protect_your_linux_computer_from_remote_attacks_with_fail2ban/index.md
```diff
@@ -1,85 +1,102 @@
  Governments around the world are hacking into any computer that they can find. They are not just targeting large companies, but any computer that has information that they can sell. Is there anything on your computer that some hacker could sell for money?  When was the last time you looked at your  /var/log/auth.log  file? 
+
  Checking 
- First of all, if you are behind a "NAT", it doesn't mean that you are safe. NAT is the mechanism where several computers share the same IP address; if that's the case, those computers are -- in theory -- invisible from the outside. While historically most attacks happen when computers have a public IP address, there is a  lot that can go wrong even with NAT . 
+
+ First of all, if you are behind a "NAT", it doesn't mean that you are safe. NAT is the mechanism where several computers share the same IP address; if that's the case, those computers are – in theory – invisible from the outside. While historically most attacks happen when computers have a public IP address, there is a  lot that can go wrong even with NAT . 
+
  For entertainment value go ahead, open a terminal and type (assuming it's a Debian lineage distros): 
+
   less /var/log/auth.log.
   
+
  or for RedHat lineage distros: 
+
   less /var/log/secure
   
+
  The only entries in it should be readily identifiable logins by yourself, root, and CRON jobs. There may be other entries depending on what you've been doing, but what you shouldn't see any entries that show someone from some unidentifiable IP address, trying to login to your system. If you see a lot of them, then it's time to start worrying and do something about it. 
- I setup an Ubuntu box with  sshd  (the ssh daemon) running and connected it to my home LAN. Within 3 days, I had over 5,000 attempted logins from IP address originating from China, South Pacific, India, and Indonesia. I then implemented the strategies that I'm about to show you and have never had even one attempt within 90 days, being online.   
+
+ I setup an Ubuntu box with  sshd  (the ssh daemon) running and connected it to my home LAN. Within 3 days, I had over 5,000 attempted logins from IP address originating from China, South Pacific, India, and Indonesia. I then implemented the strategies that I'm about to show you and have never had even one attempt within 90 days, being online. 
+
  For example I had: 
-  May 31 03:17:10 centos655130 sshd[4461]: Failed password for root from 43.229.52.173 port 43493 ssh2
 
+  May 31 03:17:10 centos655130 sshd[4461]: Failed password for root from 43.229.52.173 port 43493 ssh2
 May 31 03:17:12 centos655130 sshd[4461]: Failed password for root from 43.229.52.173 port 43493 ssh2
```

## 32) articles/impossible_thing_1_developing_efficient_free_software_like_gnu_debian/index.md
```diff
@@ -1,62 +1,111 @@
  
+
  With any paradigm shift, it is difficult to see the new world from the old one, even though it is glaringly obvious once you've crossed over. Empirical evidence is one way to bridge the gap. Let's look at some solid evidence for the success of what is probably the most obvious "impossible" achievement of commons-based peer production:  free software , as exemplified by the Debian GNU/Linux distribution. 
+
  
+
  First, of course, we need to start with the myth, promulgated by a couple of decades of proprietary software dominance with an economic model founded an the manufacturing analogy: 
+
  
  
- Myth #1 
- 
+
+Myth #1
+
  
- "Free software development can create simple programs and utilities, but it's useless for anything large scale" 
- This may seem almost comic in the pages of Free Software Magazine, but I  still  hear this myth spouted by otherwise intelligent people in other communities. It's such a strongly held belief because it is all that conventional wisdom allows for works created by "amateurs" in their "spare time". The professionalist belief is that only paid professionals can produce quality, well-engineered designs and that professionals cannot possibly be paid to work on something you can get "for free". 
  
+
+     "Free software development can create simple programs and utilities, but it's useless for anything large scale" 
+
+     This may seem almost comic in the pages of Free Software Magazine, but I  still  hear this myth spouted by otherwise intelligent people in other communities. It's such a strongly held belief because it is all that conventional wisdom allows for works created by "amateurs" in their "spare time". The professionalist belief is that only paid professionals can produce quality, well-engineered designs and that professionals cannot possibly be paid to work on something you can get "for free". 
+
+   
  
+
```

## 33) articles/impossible_thing_2_comprehensive_free_knowledge_repositories_wikipedia_and_project_gutenberg/index.md
```diff
@@ -1,63 +1,106 @@
  Project Gutenberg, started in 1971, is the oldest part of the modern free culture movement. Wikipedia is a relative upstart, riding on the wave of success of free software, extending the idea to other kinds of information content. Today, Project Gutenberg, with over 24,000 e-texts, is probably larger than the legendary Library of Alexandria. Wikipedia is the largest and most comprehensive encyclopedic work ever created in the history of mankind. It's common to draw comparisons to Encyclopedia Britannica, but they are hardly comparable works—Wikipedia is  dozens  of times larger and covers many more subjects. Accuracy is a more debatable topic, but studies have suggested that Wikipedia is not as much less accurate than Britannica as one might naively suppose. 
+
  
+
  
  
- Myth #2 
- 
+
+Myth #2
+
  
- "Even if you can do large things with bazaar methods, corporations are always going to do bigger and better work." 
- Unlike the previous myth, this one is largely unchallenged. Even inside the free culture community there is a strong perception of the community as a rebel faction embattled against a much more powerful foe. Yet, some projects challenge this world view! 
  
+
+     "Even if you can do large things with bazaar methods, corporations are always going to do bigger and better work." 
+
+     Unlike the previous myth, this one is largely unchallenged. Even inside the free culture community there is a strong perception of the community as a rebel faction embattled against a much more powerful foe. Yet, some projects challenge this world view! 
+
+   
  
+
  Measuring Wikipedia 
+
  It's actually a bit hard to say what the exact size of Wikipedia is today, because the log engine that the site used to measure its size started to fail in 2006, due to the enormous size of the database! Since then, there is no direct data available on the total size of Wikipedia, nor on the English language version (the largest language version, unsurprisingly). There is data on some of the less highly populated language versions, simply because they haven't grown so large yet. 
+
```

## 34) articles/impossible_thing_5_open_hardware/index.md
```diff
@@ -1,111 +1,188 @@
  
+
  So far, I've identified examples of free, commons-based production of just about every category of pure information product which exists. And that leads to the next question: what about the material marketplace? Can community methods be used to design, prototype, and manufacture physical products? The answer, according to a growing group of  open hardware  developers is a resounding "Yes!" From computer hardware to automobiles, the open hardware revolution is on. 
+
  
+
  
  
- Myth #1 
- 
+
+Myth #1
+
  
- "Free software works only because software is a 'pure information product'—it can't possibly work for hardware." 
- Part of this myth is true, of course: you can't really share physical products the way we do with free-licensed information products. That's a fundamental property of information. However, the  designs  for physical products are just a special kind of information product, and they  can  be shared. 
  
+
+     "Free software works only because software is a 'pure information product'—it can't possibly work for hardware." 
+
+     Part of this myth is true, of course: you can't really share physical products the way we do with free-licensed information products. That's a fundamental property of information. However, the  designs  for physical products are just a special kind of information product, and they  can  be shared. 
+
+   
  
+
  Open Hardware Electronics 
+
```

## 35) articles/impossible_thing_6_olpc_one_laptop_per_child/index.md
```diff
@@ -1,98 +1,155 @@
  
+
  For many years, there has been a growing concern about the emergence of a "digital divide" between rich and poor. The idea is that people who don't meet a certain threshold income won't be able to afford the investment in computers and internet connectivity that makes further learning and development possible. They'll become trapped by their circumstances. 
+
  Under proprietary commercial operating systems, which impose a kind of plateau on the cost of computer systems, this may well be true. But GNU/Linux, continuously improving hardware, and a community commitment to bringing technology down to cost instead of just up to spec, has led to a new wave of ultra-low-cost computers, starting with the One Laptop Per Child's XO. These free-software-based computers will be the first introduction to computing for millions of new users, and that foretells a much freer future. 
+
  
+
  
  
- Myth #4 
- 
+
+Myth #4
+
  
- "You and whose army? There just aren't enough people into this kind of thing." 
- Free culture is no longer a fringe phenomenon. 
  
+
+     "You and whose army? There just aren't enough people into this kind of thing." 
+
+     Free culture is no longer a fringe phenomenon. 
+
+   
  
+
```

## 36) articles/information_technology_and_piracy/index.md
```diff
@@ -1,84 +1,156 @@
  Over at  Sphere of Networks , I published a text that tries to give a simple overview of the workings of information production in the age of the internet, covering everything from free software to free culture. This article is a slightly modified version of a chapter of this text. I will show how peer-to-peer file-sharing networks work and how Big Media tries to prevent this sharing by means of random lawsuits and by using DRM. What does this  copyright war  mean for consumers and for our culture as a whole? 
+
  
  
  Figure 1: Computers continue to get smaller, cheaper and more powerful, and wireless internet is already available at many places. [shapeshift, CC-by-nc-sa 2.0] 
  
+
  Information technology 
+
  Since the 1970s computers have become ever faster, smaller and cheaper. This led to the availability of personal computers in most homes in the more economically developed countries. By 1995, the public started to realize the potential of the internet. Through the more recent introduction of broadband internet, most home computers are constantly connected to the internet at several times greater speeds than only a few years ago. Individuals have received the power to manipulate huge amounts of data ever faster, and (more importantly) to share the data they produce with others over the internet. Now it is possible for everyone to manipulate, for example, hours of homemade video and enhance it with some special effects. On the other hand, it has also become easy to mix and manipulate the works of others and share them with all the world, as demonstrated on sites like  The Trailer Mash : here lots of people present new creative works they created—remixes of official movie trailers, rearranged to tell other stories. Use past cultural production to create something new. What only some lucky entrepreneurs like Walt Disney could do in the beginning of the 20th century, everybody can do today. 
+
  
  Networked computers enable individuals to manipulate huge amounts of data ever faster, and share the data they produce with others 
  
+
  Unfortunately, at the moment this is mostly illegal because of lengthy and restrictive copyright law. You can neither copy nor modify any work without the originator’s explicit permission. It isn’t like those derivative works were hurting sales of official movies or that nobody would listen to classical Mozart anymore (himself long dead) because his music was used and newly interpreted by a DJ. Nonetheless, copyright law has not been altered to let everyone make use of the new technologies. On the contrary, under the pressure of Hollywood and the Big Four record labels that dominate over 80% of the music market [1], copyright law has been tightened to prevent people from using these technologies. Under the pretext of protecting established artists’ revenues, new artists are prevented from rising. But the truth behind all this is that the record industry fears for its existence—rightly so. 
+
  File sharing 
+
  Today, some inexpensive home computers and the internet are superior to the distribution channels of the record industry with its CD manufacturing plants and many shops. Digital technology enables infinite copying of music and movies without any loss in quality. 
+
  Shawn Fanning, a then 17 year old student, released Napster in 1999. It was the first peer-to-peer file-sharing system to gain widespread popularity for sharing music. In peer-to-peer (P2P) networks, the data isn’t stored on a central server and accessed by clients (which is the case with web pages), but many peers, usually ordinary home computers, share their data with one another. Soon this technology was adopted and improved; after Napster was sued by the record industry and ultimately shut down, new networks emerged which were even more decentralized. Every user downloading information is at the same time making available that very same information he/she just downloaded to other participants. 
+
  
  
  Figure 2: A network with a central, expensive server from which the clients are downloading (left). A peer-to-peer network where every node is both a client and a server, downloading and uploading (right). [Wikimedia Commons] 
  
```

## 37) articles/integrating_firefox_and_thunderbird_into_kde/index.md
```diff
@@ -1,51 +1,73 @@
  Ever since I first fired up KDE on openSuSE, I’ve been in love. The KDE interface just swept me off my feet. But there’s always been one nagging thing.  Firefox  and  Thunderbird  stick out like two sore thumbs. They don’t look like KDE apps (see figure 1 and figure 4), they don’t work with KDE programs (like KPrinter), and they just don’t feel like they belong in KDE. Luckily, since both of these apps have support for add-ons, it is easy to remedy this. 
+
  
  
  Figure 1: Firefox with default interface 
  
+
  
  
  Figure 2: Thunderbird with default interface 
  
+
  Making Firefox and Thunderbird look like KDE apps 
+
  To start off, let’s add a nice theme. My favorite for both Firefox and Thunderbird is  Mostly Crystal  (especially since it has support for theming extensions like  Go Up ). If you don’t like Mostly Crystal, there are tons of other Firefox themes including: 
+
  
- the  Plastikfox  themes from Mozillux, 
-  KDEFF , 
-  Plastikfox Crystal Clear , 
-  CrystalFox Modern , 
-  CrystalFox Classic , 
-  CrystalFox RoundedStyle , 
-  CrystalFox Cute , 
-  Crystal Lite , 
-  Polyesterfox , and 
-  Doodle Plastik . 
```

## 38) articles/kime_tutorial/index.md
```diff
@@ -1,100 +1,170 @@
  One of the things I love about using a large free software distribution, especially on a suitably large harddrive, is that you can sometimes just go exploring in your applications menu. It seems like there’s always something there I haven’t looked at yet. Jan Schäfer’s KImageMapEditor was one of these discoveries—and what a gem it turned out to be! Oddly, you probably won’t find this in the “Graphics” menu, but rather under Debian→Apps→Editors, where you usually find text tools (of course, your distribution may have it in a different place). What it does is to make HTML “map-area” tags (which define clickable “hot spots” in an image) completely simple to use, by providing a graphical editing environment for laying them out. 
+
  You probably already have KImageMapEditor if you use KDE. If not, you can find it as a DEB package [1], an RPM package [2], and of course, as source code from the project site [3]. 
+
  The problem 
+
  I’ve long avoided the map-area tags, because they just seemed too complicated. You have to tinker with coordinates within an image, measure out where points should go, and create a complex set of them in order to get them to work. Besides, I already had a tool for doing similar effects—I was a real wiz at slicing up images and arranging them in tables. 
+
  
  You probably already have KImageMapEditor if you use KDE 
  
+
  Recently, I also began using HTML to provide in-package documentation for a software package “Universe” [4], which is based on the “Python Universe Builder” (PUB) [5]. I wanted to mingle my pre-written design documentation with the automatically generated API documentation from epydoc, and there’s a nice hook which allows me to link them by putting some content on the “index.html” page that epydoc generates. 
+
  I decided a diagram would be the perfect way to quickly communicate the relationship between the modules in the package, and give potential developers a quick way to get started on the project. So, naturally, I whipped out my HTML table skills, made a zillion (okay, just fifteen) images of connecting elements and assembled them with the appropriate text in a table, resulting in the diagram in figure 1. 
+
  
  
  Figure 1: The “old way”, with HTML tables. Dull and too hard to maintain. 
  
+
  This took, as I now see, 183 lines of table code, and was extremely tedious to maintain (as I discovered, for example, when I added the “sound” module!). What a waste of time! Fortunately, I have discovered KImageMapEditor, which I can now use to greatly simplify this page, making it much easier to maintain, as well as much more visually appealling. 
+
  First, you need an image 
+
  With the KImageMapEditor approach, the first requirement is a good starting image. For a diagram like this, I highly recommend using a vector-graphics tool like Dia [6], Skencil [7], or Inkscape [8]. I’ve had success with all three, and used Inkscape to create the drawing for this project, which is in figure 2 (online readers can simply use the figure image to follow along—but feel free to start right away on your own image). 
+
```

## 39) articles/lasting_digital_archives_millenniatas_new_archival_dvd_technology/index.md
```diff
@@ -1,112 +1,188 @@
  
- A new optical disk technology offers a fundamental new capability -- which is storing offline archives in a format with a shelf life of many decades (or even centuries). The key is in the pits: unlike commonly available dye-based CD-R and DVD-R media, the Millenniata writer actually laser etches  physical pits  into the writable layer of its "M-Disc" DVD-ROMs. Because the pits are physical structures, like the pits on pressed media, they have the same kind of shelf-life -- but in a way that is economical for low-copy archives. The niche here is for digital archives of "time capsule" data: family photographs, historical records, original manuscripts, video footage and masters, and so on. Perhaps more remarkably, the drives and disks, are affordable enough for the target applications and available commercially right now. 
+
+ A new optical disk technology offers a fundamental new capability – which is storing offline archives in a format with a shelf life of many decades (or even centuries). The key is in the pits: unlike commonly available dye-based CD-R and DVD-R media, the Millenniata writer actually laser etches  physical pits  into the writable layer of its "M-Disc" DVD-ROMs. Because the pits are physical structures, like the pits on pressed media, they have the same kind of shelf-life – but in a way that is economical for low-copy archives. The niche here is for digital archives of "time capsule" data: family photographs, historical records, original manuscripts, video footage and masters, and so on. Perhaps more remarkably, the drives and disks, are affordable enough for the target applications and available commercially right now. 
+
  
+
  One of the deepest embarrassments of the digital age has been the lack of any really permanent way to store bits. The great promise of digital storage has been the idea of "perfect copies," and most people have assumed that would entail permanence as well. 
+
  
  One of the deepest embarrassments of the digital age has been the lack of any really permanent way to store bits 
  
+
  However, the truth has been much more bleak: most of the commercially-available mechanisms for storing bits are depressingly subject to literal "bit rot" when sitting on the shelf. Magnetic media were known to be flawed in this respect even when they were introduced. Experience with magnetic video and audio tapes had already shown that they would fade over time. Digital storage staved off the inevitable by making it possible to re-copy the data without loss before it faded out, but that still left us with the burden of periodically re-copying data that we want to preserve. 
- Understanding how and why the Millenniata disks have finally solved this problem requires a little background history in optical disk technology -- so please bear with me. 
+
+ Understanding how and why the Millenniata disks have finally solved this problem requires a little background history in optical disk technology – so please bear with me. 
+
  Optical disks, Part 1: The Promise 
+
  Optical media offered a way around the impermanence of magnetic media. Early on, as the entertainment industry began promoting Compact Discs (CDs) and later, DVDs, a major selling point was the security of this kind of permanent storage. 
+
  DVD movies (like mass-produced audio CDs, CD-ROMs, and DVD-ROMs), it is true, do not fade out the way that even commercial VHS video tapes will inevitably do. Shelf life for these products is certainly on the order of decades, and probably centuries if they are stored appropriately. 
+
  
  DVD movies do not fade out the way that even commercial VHS video tapes will inevitably do 
  
```

## 40) articles/learning_html_monty_python_style/index.md
```diff
@@ -1,190 +1,247 @@
  For reasons unknown to civilized (or uncivilized) man, all programming books are often immensely  boring . Seriously. That is, until now. Today, Free Software Magazine presents (in conjunction with Andrew Min Writing Studios) Learning XHTML: Monty Python-Style. 
+
  
- Your name is King Arthur (or if you prefer, it could be Lancelot or Galahad or Bedivere or even Robin …). Your quest is to learn XHTML. And your favorite color is... you’ll get to that later. For now, all you need to know is that you need to watch the møøse. They can be very dangerous around here. In fact, they can swarm together and take over sentences, even whole paragraphs. No really! (The management apologises for the fault in the introductions. Those responsible have been sacked.) 
+
+ Your name is King Arthur (or if you prefer, it could be Lancelot or Galahad or Bedivere or even Robin …). Your quest is to learn XHTML. And your favorite color is… you’ll get to that later. For now, all you need to know is that you need to watch the møøse. They can be very dangerous around here. In fact, they can swarm together and take over sentences, even whole paragraphs. No really! (The management apologises for the fault in the introductions. Those responsible have been sacked.) 
+
  Introduction to XHTML and getting together the tools for it 
+
  You don’t go out and attack castles with Holy Grails without first knowing what a Holy Grail is. So, first you’ll get a little explanation. XHTML (e X tensible  H yper T ext  M arkup  L anguage) is a simple yet powerful markup language which utilizes tags. Tags are little strings of text enclosed by  <>  to let web browsers know what a web page contains. 
- Now that you know what XHTML is, you need to make sure you have all the materials you need (like coconuts and swallows and knights walking around clapping the coconuts). First, you’ll need some sort of XHTML editor. Most operating systems come with Notepad for Windows or TextEdit for OS X. However, these are extremely underpowered (even for basic programming). Using them is like trying to chop down a tree with a herring: impossible. For GNU/Linux users, the choice is easy: use  Quanta Plus . If you absolutely /hate/ Quanta Plus (something I find very hard to understand!), try  Scribes , another powerful programming tool. Windows users... should switch to GNU/Linux. But if you absolutely refuse to do that then try  Notepad++ . It’s not as powerful as Quanta Plus or Scribes (think King Arthur vs. Sir Lancelot), but if you like pain... go right ahead. OS X users have three options: use  Smultron , a powerful editor for Mac users,  install Quanta Plus using fink  (a long and laborious project, but the end result is a powerful programming tool), or install GNU/Linux. 
+
+ Now that you know what XHTML is, you need to make sure you have all the materials you need (like coconuts and swallows and knights walking around clapping the coconuts). First, you’ll need some sort of XHTML editor. Most operating systems come with Notepad for Windows or TextEdit for OS X. However, these are extremely underpowered (even for basic programming). Using them is like trying to chop down a tree with a herring: impossible. For GNU/Linux users, the choice is easy: use  Quanta Plus . If you absolutely /hate/ Quanta Plus (something I find very hard to understand!), try  Scribes , another powerful programming tool. Windows users… should switch to GNU/Linux. But if you absolutely refuse to do that then try  Notepad++ . It’s not as powerful as Quanta Plus or Scribes (think King Arthur vs. Sir Lancelot), but if you like pain… go right ahead. OS X users have three options: use  Smultron , a powerful editor for Mac users,  install Quanta Plus using fink  (a long and laborious project, but the end result is a powerful programming tool), or install GNU/Linux. 
+
  Writing a simple hello world page with paragraphs 
+
  Now that you know what you’re doing (always helpful), it’s time to write your first XHTML web page. Here it is: 
-  <!DOCTYPE XHTML PUBLIC "-//W3C//DTD XHTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
+  <!DOCTYPE XHTML PUBLIC "-//W3C//DTD XHTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
-
 <head>
-
 <title>Hello World</title>
-
 </head>
```

## 41) articles/making_mind_maps_with_freemind/index.md
```diff
@@ -1,94 +1,162 @@
  Tired of reading recipes the usual way? Frankly, I am. I find them more interesting, as well as easier and faster to read, by representing them as mind maps [3, 4]. In this article I have two goals: to demonstrate an alternative format for presenting recipes, and at the same time to provide a short users’ guide for Freemind [1, 2]. As I progress through the article I will also be describing a recipe that you can try for yourself—enjoy the meal! 
+
  
+
  
  
- Textbox 1: The recipe —Mario’s fettuccine— 
- 
+
+Textbox 1: The recipe —Mario’s fettuccine—
+
  
-    Ingredients  (4 servings) 
- Fettuccine 280g 
- Butter 200g 
- Bacon 200g 
- Milk 0.50 litres 
- Parmesan 40g 
- Strip the bacon and put it in the frying-pan along with the butter. Let the bacon cook until it turns golden brown; meanwhile, cook the fettuccine in about 3 litres of boiling salted water. Drain the fettuccine when it is  al dente  and put it in the frying-pan over a hot ring. Pour in the milk and the grated parmesan, frying and combining them, until the milk curdles and serve immediately. 
-  Glossary  
-  Fettuccine : a kind of noodles, about half a centimetre in width, usually made with eggs. 
-  Al dente : indicates that the boiled pasta is no longer hard, but not yet soft like wet cement. Usually, it is sufficient to boil it according to the time indicated on its box but as a guide to deciding when the pasta is “al dente” you can use the following criteria: if it sticks to your teeth because it’s still hard, you need to boil it a bit longer; if it sticks to your teeth because it’s too soft (similar to cement) then you’ve boiled it for too long and need more fettuccine. 
  
+
+      Ingredients  (4 servings) 
+
+     Fettuccine 280g 
```

## 42) articles/manage_and_listen_your_gutenberg_books_gnu_linux/index.md
```diff
@@ -1,104 +1,149 @@
- I am a great fan of the  Gutenberg  project, a noteworthy and honorable effort to digitize copyright-free texts. This project has released into the public domain over 20,000 classic books.   
- This article will explain how to integrate this huge body of material with the Ubuntu desktop.  
+ I am a great fan of the  Gutenberg  project, a noteworthy and honorable effort to digitize copyright-free texts. This project has released into the public domain over 20,000 classic books. 
+
+ This article will explain how to integrate this huge body of material with the Ubuntu desktop. 
+
  
+
  The Gutenberg project releases books in a standard text format. Volunteers convert a subset of the text to HTML and PDFs and to a few other less ubiquitous formats besides. Other support sites such as  manybooks.net  give you even more choice of formats including compressed formats for palmtops, iPod and Java-based telephones. These sites are mostly free with the option to make a small donation. 
- The Gutenberg project has delivered to the world the base material for serious and progressive Edutainment. Started back in 1971 by Michael S. Hart, the project has blossomed with numerous  affiliated projects . The project's great success is measurable with a body of around 100,000 available texts--and rising. 
+
+ The Gutenberg project has delivered to the world the base material for serious and progressive Edutainment. Started back in 1971 by Michael S. Hart, the project has blossomed with numerous  affiliated projects . The project's great success is measurable with a body of around 100,000 available texts–and rising. 
+
  
  The Gutenberg project has delivered to the world the base material for serious and progressive Edutainment. 
  
- Can software help bring to life plain text files? Alternatively, are we doomed to wander the world carrying sheets of paper and waiting for the next advance in smart reader technology and potential commercial vendor lock-in?  
+
+ Can software help bring to life plain text files? Alternatively, are we doomed to wander the world carrying sheets of paper and waiting for the next advance in smart reader technology and potential commercial vendor lock-in? 
+
  I will discuss the installation and merits of the following packages: 
+
  
- guternbrowser 
- gmountiso 
-  espeak  
- recite 
```

## 43) articles/my_opendiameter_experience_part_i_build_and_installation/index.md
```diff
@@ -6,185 +6,196 @@
 am here to share my initial experiences, hoping to help other OpenDiameter
 beginners. I also hope that the OpenDiameter community could contribute more
 documentations to help new users and to make the project be more successful. 
+
  I will cover it in two posts: 
+
  
- Part I is for build and installation 
- Part II is for setting up a simple 3-party EAP-MD5 test 
+   Part I is for build and installation 
+   Part II is for setting up a simple 3-party EAP-MD5 test 
  
+
  Part I, Build and Installation 
+
  You can download the OpenDiameter source package from  this
 link.  
+
  The current release is of 1.0.7-i, and that is what I am going to use too. The
 best resource for this is the main README file that came with the source
 package, and it is more up to date than the how-to listed in the OpenDiameter
 website. 
+
  We should follow the instructions in the README file and they can be summarized as: 
+
  
- Step 1. Install external libraries and tools if not already there 
```

## 44) articles/my_opendiameter_experience_part_ii_setting_simple_3_party_eap_md5_test/index.md
```diff
@@ -1,69 +1,66 @@
- In Part I, I have shown what I did to get the build and installation going. In
+ In Part I, I have shown what I did to get the build and installation going. In 
 Part II, I will show what steps I took to get a simplest test like the following
-done:
-A EAP-MD5 test that involves an OpenDiameter server (aaad), an OpenDiameter
+ done:
+A EAP-MD5 test that involves an OpenDiameter server (aaad), an OpenDiameter 
 client (nasd), and a EAP-MD5 client (pacd) talking to nasd using PANA. All three
-parties reside on one single host. 
- 
- 
- 
- 
- (Getting married in Perth? Check out our  Perth Wedding Videographer ) 
- 
- 
- Simple as the test is, a lot of work is needed in OpenDiameter's case, as we
+ parties reside on one single host. 
+
+ Simple as the test is, a lot of work is needed in OpenDiameter's case, as we 
 will see soon. 
+
  Some Background Information 
+
  The Diameter Protocol 
-   Diameter is intended to be the next generation AAA protocol that replaces
-RADIUS. Wheather and when it will replace RADIUS is not for me to discuss here,
```

## 45) articles/olpc_kicks_off_pycon_2007/index.md
```diff
@@ -1,68 +1,112 @@
- This year’s Python Convention [1], being held this weekend in Dallas Texas, started off with an inspiring presentation by an engineer from the One Laptop Per Child (OLPC) project  2  , showing off the hardware features of the new “OLPC XO 1” prototype, as well as some “dangerous ideas” about its software design: a large part of the user space code for the laptops will be implemented in Python, mainly because of the ease of manipulating the source code. The OLPC laptop software will be 100% free software, not just in principle, but in spirit as well—the assumption of open source design is  literally  built into the hardware. 
+ This year’s Python Convention [1], being held this weekend in Dallas Texas, started off with an inspiring presentation by an engineer from the One Laptop Per Child (OLPC) project [2], Ivan Krstić, showing off the hardware features of the new “OLPC XO 1” prototype, as well as some “dangerous ideas” about its software design: a large part of the user space code for the laptops will be implemented in Python, mainly because of the ease of manipulating the source code. The OLPC laptop software will be 100% free software, not just in principle, but in spirit as well—the assumption of open source design is  literally  built into the hardware. 
+
  
+
  
  
  Guido van Rossum receives a complementary OLPC XO 1 prototype—hopefully in exchange for help with the massive Python-based programming project that will be implemented for OLPC. (Credit: Author) 
  
+
  It’s all free software 
+
  It’s not at all surprising that the OLPC laptop’s operating system will be based on Linux, of course—people do that with just about any new embedded device these days. But the motivation for OLPC goes much deeper than that. Citing the importance of open source as an educational value, Krstić suggested that a programming language “where the program was the source” was what was called for, and the selected language is Python. It makes it particularly easy to make source both available and easy to modify and use, since it is an interpreted environment. This greatly reduces the burden of including the source on each unit (where storage space is limited). 
+
  In his “Dangerous Ideas” presentation, Krstić lamented the “great lie of open source”: namely that it is enough simply to make the source code available for a piece of software (leaving the problem of setting up a development and build environment and learning how to use it as “an exercise for the user”). He also noted that the average user of this laptop is expected to be a 6-year-old gradeschooler. Thus, the laptop goes several steps further: 
+
  
- By using Python, which eliminates the problem of compiling and linking 
- By writing almost all userspace code for the laptop (including the GUI and the  filesystem ) in Python 
- By actually building a “View Source” special function key on the keyboard, as support for the “Develop” activity (one of several activity-based interface elements on the laptop) 
+   By using Python, which eliminates the problem of compiling and linking 
+   By writing almost all userspace code for the laptop (including the GUI and the  filesystem ) in Python 
+   By actually building a “View Source” special function key on the keyboard, as support for the “Develop” activity (one of several activity-based interface elements on the laptop) 
  
+
  
  
```

## 46) articles/ooxml_fight_continues_heres_one_way_you_can_help/index.md
```diff
@@ -1,50 +1,73 @@
  The fight against the adoption of OOXML as an ISO standard is continuing in many countries. In the UK the  UK Unix & Open Systems User Group  (UKUUG)   unsuccessfully,  sought a judicial review  of the British Standards Institute's decision to vote yes. UKUUG are now  seeking to appeal  against that rejection of a review and  you can help them . 
+
  
+
  Rumours and questions 
- Following the International Organization for Standardization (ISO) decision to fast track acceptance of Microsoft's OOXML as a standard in March, many people (not just those in the FOSS community) were up in arms. I won't go into the debacle of the ISO process and the vote on fast tracking itself here. You can read more about that on this site [1]  and on countless other blogs across the web. Suffice to say that many citizens of several countries were very unhappy about the way their country voted. In Britain the vote was made by the BSI and it too was followed by questions over the process taken.  
+
+ Following the International Organization for Standardization (ISO) decision to fast track acceptance of Microsoft's OOXML as a standard in March, many people (not just those in the FOSS community) were up in arms. I won't go into the debacle of the ISO process and the vote on fast tracking itself here. You can read more about that on this site [1]  and on countless other blogs across the web. Suffice to say that many citizens of several countries were very unhappy about the way their country voted. In Britain the vote was made by the BSI and it too was followed by questions over the process taken. 
+
  The UKUUG officially voiced many of the objections that were flying around at the time (and still are): 
+
  
- The BSI approved fast tracking OOXML in the absence of a revised draft despite over 1000 comments to the original draft. 
- Doing so undermines wider faith in the standards bodies themselves. 
- Fast tracking approval in the absence of a single implementation of the format--even from Microsoft--is hard to justify. 
- Rejection of the fast track is not rejection of the standard which should be given greater consideration before approval. 
- Fast tracking a proposed standard requires a high level of consensus. Something distinctly lacking with regards OOXML. 
+   The BSI approved fast tracking OOXML in the absence of a revised draft despite over 1000 comments to the original draft. 
+   Doing so undermines wider faith in the standards bodies themselves. 
+   Fast tracking approval in the absence of a single implementation of the format–even from Microsoft–is hard to justify. 
+   Rejection of the fast track is not rejection of the standard which should be given greater consideration before approval. 
+   Fast tracking a proposed standard requires a high level of consensus. Something distinctly lacking with regards OOXML. 
  
+
  So, in a nutshell, the UKUUG was asking a judge to require the BSI to better explain it's reasons for voting in favour of the decision to fast track OOXML. 
+
  The judge turned their request down saying: 
```

## 47) articles/openxml_not_right/index.md
```diff
@@ -1,51 +1,96 @@
  Microsoft have published an open letter entitled "Interoperability,Choice and Open XML"[1].  I often like to think that I am neversurprised by the exaggerations, obfuscations and general untruths thatcome out of Microsoft: this letter shows their capacity of doing justthat. 
+
  
+
  Those coming into the  ODF  and  OOXML  document standarddiscussions afresh and being introduced to the issues by reading thisletter will be perplexed to say the least. 
- The letter's contents are extraordinary.  It essentially says Microsoftis all for interoperability and a lot of "hype - smoke andmirrors..." exists regarding this in the world.  They believe Open XMLis a wonderful thing, it is so wonderful it is now an ECMA standard; ODF– the OpenDocument format – on the other hand is simply a format solelybased on the OpenOffice.org program and that IBM are being a meanie andorchestrating a situation that prevents Open XML becoming an ISOstandard.  I feel I have a duty to correct a few"misconceptions" concerning this letter.  In fact Ipersonally believe them to be lies, however it is a possibility thatthe MS executives – Tom Robertson and Jean Paoli – are simplymisinformed, so I will give them the benefit of the doubt here. 
+
+ The letter's contents are extraordinary.  It essentially says Microsoftis all for interoperability and a lot of "hype - smoke andmirrors…" exists regarding this in the world.  They believe Open XMLis a wonderful thing, it is so wonderful it is now an ECMA standard; ODF– the OpenDocument format – on the other hand is simply a format solelybased on the OpenOffice.org program and that IBM are being a meanie andorchestrating a situation that prevents Open XML becoming an ISOstandard.  I feel I have a duty to correct a few"misconceptions" concerning this letter.  In fact Ipersonally believe them to be lies, however it is a possibility thatthe MS executives – Tom Robertson and Jean Paoli – are simplymisinformed, so I will give them the benefit of the doubt here. 
+
  The letter opens by banding about the word"interoperability".  In their first paragraph they listtheir "interoperability"credentials as they see them and mention that as a key reason they"supported Open XML becoming an international standard".  Thatis all well and good, but in the ECMA's "Office Open XMLOverview" linked to in Microsoft's letter, under section 2, the"Purposes for the standard", the following is written: 
+
  
- OpenXML was designed from the start to be capable of faithfullyrepresenting the pre-existing corpus of word-processing documents,presentations, and spreadsheets that are encoded in binary formatsdefined by Microsoft Corporation. 
+   OpenXML was designed from the start to be capable of faithfullyrepresenting the pre-existing corpus of word-processing documents,presentations, and spreadsheets that are encoded in binary formatsdefined by Microsoft Corporation. 
  
+
  Later in the same section they give examples of how this new"standard" could be used: 
+
  
- Generate documents automatically from business data 
- Extract business data from documents and feed those data intobusiness applications 
- Perform restricted tasks that operate on a small subset of adocument, yet preserve editability 
- Provide accessibility for user populations with specialized needs,such as the blind 
- Run on a variety of hardware, including mobile devices 
+   Generate documents automatically from business data 
+   Extract business data from documents and feed those data intobusiness applications 
+   Perform restricted tasks that operate on a small subset of adocument, yet preserve editability 
```

## 48) articles/pound_99_pound_gnu_linux_laptop_too_cheap/index.md
```diff
@@ -1,81 +1,122 @@
- On 28 February 2008, Elonex launched the Elonex ONE--the first sub-£100 laptop in the UK. Clearly competing against the much in-demand Asus EeePC [2], Elonex say they are aiming at the school-student market. The thing is, I just can't stop asking: isn't £99 too cheap for a laptop? 
+ On 28 February 2008, Elonex launched the Elonex ONE–the first sub-£100 laptop in the UK. Clearly competing against the much in-demand Asus EeePC [2], Elonex say they are aiming at the school-student market. The thing is, I just can't stop asking: isn't £99 too cheap for a laptop? 
+
  
+
  Family ties 
+
  
  Elonex have denied that the ONE is a re-badged Fontastic A-view 
  
- Elonex kept the specifications very close to their chest until the announcement at the Education show--a conference in Birmingham. Some tech sites had managed to speculate based upon the apparent similarities between the ONE and the Taiwanese-made Fontastic A-view. Elonex have denied rumours that the ONE is a re-badged A-view. As shown below there are certainly similarities between the two though. 
- 
- 
- 
-  Elonex ONE  
-  Fontastic A-view  
- 
- 
- 
- 
- CPU 
- LNX Code8 300MHz 
- 
- 
- RAM (fitted/max) 
- 128/256 
- 
```

## 49) articles/property_and_commons/index.md
```diff
@@ -1,158 +1,209 @@
  Over at  Sphere of Networks , I published a text that tries to give a simple overview of the workings of information production in the age of the internet, covering everything from free software to free culture. This article is a slightly modified version of another chapter of this text. This time I will show you how the internet enabled a new form of information production: commons-based peer productions, like Wikipedia or most free software today. What is free content and why is it so important to people collaborating over the internet? 
+
  
+
  
  
  Figure 1: Production of physical goods is mostly handled by the market while information also gets often produced on a voluntary basis. [Wikimedia Commons], [Flickr: Clare and Dave] 
  
+
  Non-market production 
+
  Non-market production plays a bigger role in our economy than often realized. Whether it’s a parent looking after the children the whole day or people just voluntarily helping each other, a lot can get done without money ever changing hands. It has also always been true that non-market mechanisms were much more important in the production of information than physical goods. There are no voluntary steel manufacturers and we don’t just pick up a new car for free because someone feels like producing one. Nonetheless, we rely on a large volume of information everyday that is produced on a voluntary basis. Non-governmental organizations and private foundations are dedicated to solving pressing issues the market doesn’t care about and the government hasn’t resources at hand to solve. In everyday life we obtain advice and information from colleagues about what film to watch or what road to drive and virtually all of our basic research is funded by the government or non-profit institutions. With computers and the internet readily available to millions of people, the means to producing and distributing information are now widely held throughout the population. Thus non-market behaviour is becoming central to how our information and culture is produced. 
+
  
  Non-market production plays a bigger role in our economy than often realized 
  
+
  As working hours are going down in the more economically developed countries, more spare time is available for voluntary activity. Through information and communication technology, these resources can be used more effectively as people have better access to existing information and have a medium through which they can express themselves, communicate and collaborate with others. 
+
  The highest motivation for work is usually thought to be money. However, we are motivated by a wide range of things.  We look for social rewards like acknowledgments or higher social standing in our communities.  We have intrinsic motivations like pleasure or personal satisfaction when we feel we have achieved something. Even small payments may undermine intrinsic motivations as we might prefer to work for free for a good cause rather than do the same work for a monetary reward. [1]. 
+
  Peer production 
+
  Resources can be handled either as property or as a commons. Most physical objects and also land are usually considered property while for example the roads network, water or public services are shared within a community and are thus commons. Information is a non-rival good. That means that it can be used by more than one person at a time. For example: if I sit on a chair, nobody else can (comfortably!) sit on the same chair at the same time. But if I listen to a song, I don’t prevent someone else listening to it at the same time. When information is treated as property as opposed to a commons it is made scarce against its non-rival nature. Fewer people can profit from the existing information and as proprietary information can’t be legally reused to create new information, this ultimately hinders overall information production. 
+
  
  When information is treated as property as opposed to a commons it is made scarce against its non-rival nature 
```

## 50) articles/protect_your_server_with_deny_host/index.md
```diff
@@ -1,72 +1,106 @@
  Requiring system accessibility via the Internet poses several problems for system administrators. One problem is allowing access by authorized users with the least amount of complexity on the client computer while keeping the system and its services safe from intruders. Common services that may be provided include web server, File Transfer Protocol (FTP) server, and Secure Shell (SSH) server. Each of these services can require different methods of security to ensure only authorized users have access. This article explains how to secure Secure Shell with the DenyHosts program and the prerequisites of configuring the SSH daemon and TCP Wrappers. 
+
  Secure Shell 
+
  Secure Shell (or SSH) is used to log into a remote machine to execute commands on the remote machine. SSH can also be used to setup secure tunnels for X11 connections, for example to run remote graphical applications that reside on the server machine. SSH was originally developed to replace insecure applications like rsh, rlogin, telnet, and others. 
+
  Most major GNU/Linux distributions have the OpenSSH [1] daemon installed by default. OpenSSH is the free software implementation of the secure shell protocol. The OpenSSH server executable (or daemon) is  /usr/sbin/sshd  and the configuration file is  /etc/ssh/sshd_config . The sshd configuration file contains keyword argument pairs. Two configuration options of note are  PORT  and  PermitRootLogin . The  PORT  keyword specifies which port number that the sshd daemon listens on. Changing the argument of this keyword from the default 22 to another unused port number allows security through obscurity. The downside to changing this argument is that all your users will need to know the port number to use, and how to configure their ssh clients to connect to this port. The other keyword,  PermitRootLogin , should have its argument changed from the default  yes  to  no . Changing this argument will prevent the root superuser account from logging in directly via ssh. Instead, a normal user would have to login and use the su (/substitute user/) command to become root. Changing this argument will have no effect on the root user logging into the console of the server. 
+
  TCP Wrappers 
+
  TCP Wrappers [2] are used as network based Access Control List for services like FTP and SSH. The libwrap library, part of the TCP Wrappers package, provides support for the TCP Wrappers functionality. Most major GNU/Linux distributions have TCP Wrappers support built into services like SSH by using the libwrap library. This can be seen by using the  ldd  command (used to print shared library dependencies) against the sshd executable. 
-  # ldd /usr/sbin/sshd | grep libwrap
 
+  # ldd /usr/sbin/sshd | grep libwrap
  libwrap.so.0 => /lib/libwrap.so.0 (0xb7f74000)
-
 #
   
+
  TCP Wrappers uses two files for access control,  /etc/hosts.allow  and  /etc/hosts.deny . These files utilize keywords and arguments or options for determining access. The  /etc/hosts.allow  file is processed first, stopping at the first daemon/client match in the file and allows access. If no matches are found then  /etc/hosts.deny  is processed and the first daemon/client match denies access. If no match is found then access is allowed by default. See the man page hosts_access (5) for more information. This article’s example system is running Debian GNU/Linux 4.0, the default installed configuration is used. 
+
   # man 5 hosts_access
   
+
  Even with Secure Shell and TCP Wrappers, other basic security practices need to be in place. Services like SSH and FTP are vulnerable to dictionary attacks. Dictionary attacks are brute force attacks using multiple user name and password combinations to try and access a public system. Possibly compromised systems are used to attack services, sometimes thousands of attempts in a single day. Every entity needs good policies and procedures in place for defining user names that are not common, for example guest, admin and test. There also needs to be a good password policy using a minimum number of characters and combinations of uppercase, lowercase, numeric and special characters. 
+
  DenyHosts 
```

## 51) articles/refactoring_multimedia_project_inkscape_blender_and_audacity/index.md
```diff
@@ -1,138 +1,187 @@
  
- One of the special problems with managing a multimedia project (versus a text-based software project), is that there are often links to external data files which can get broken when you try to move the files around -- such as you might do when re-factoring the source code to make it more navigable. Three programs that we use extensively in the  Lunatics  project present this problem, and each requires slightly different handling. These are Inkscape, Blender, and Audacity. I have never found a compact guide to keeping the links straight in these programs, so I'm going to write one here. 
- 
- 
- 
- 
- (Getting married in Perth? Check out our  Perth Wedding Videographer ) 
- 
- 
+
+ One of the special problems with managing a multimedia project (versus a text-based software project), is that there are often links to external data files which can get broken when you try to move the files around – such as you might do when re-factoring the source code to make it more navigable. Three programs that we use extensively in the  Lunatics  project present this problem, and each requires slightly different handling. These are Inkscape, Blender, and Audacity. I have never found a compact guide to keeping the links straight in these programs, so I'm going to write one here. 
+
  
+
  A  lot  of the process of managing a software development project is managing the web of  dependencies  between the files and on outside libraries. Large multimedia projects also have to deal with these kinds of dependencies between files, but they aren't quite as easy to manage. 
- What makes multimedia data so challenging is that it takes special software to examine and edit it. You often can't easily look into the "source" file and process it as text. And this means that certain kinds of editing are harder -- including checking for and fixing bad references. The only real consolation is that multimedia project files usually aren't quite as complexly linked as similarly-sized software projects. 
+
+ What makes multimedia data so challenging is that it takes special software to examine and edit it. You often can't easily look into the "source" file and process it as text. And this means that certain kinds of editing are harder – including checking for and fixing bad references. The only real consolation is that multimedia project files usually aren't quite as complexly linked as similarly-sized software projects. 
+
  We are currently using  Inkscape  (version 0.48),  Audacity  (version 2.0.0), and  Blender  (version 2.63) in  Lunatics , which I address here. There are other packages such as  Kdenlive  and  Ardour  that we may have problems with in the future, since they do link data, but we haven't yet had to worry about them, so I won't cover them here. 
+
  Embedding and Linking 
+
  Unless you're already into software development or theory, you may never have stopped to think about what happens when you paste an image into a document in a word-processor. Specifically:  where does the image data go ? 
+
  In fact, this depends on the program and the file format, and there are two main options:  embedding  and  linking . 
- If the image is  linked  (as happens in HTML, for example), then the image is stored on disk (or possibly not moved at all), and only the location of the image (the  link ) is placed in the file. You know this drill -- it's how HTML pages on the web work. 
```

## 52) articles/rule_1_hold_on_loosely/index.md
```diff
@@ -1,175 +1,337 @@
  
+
  In the proprietary production world, what matters about a copyright is who owns it. In the free production world, however, who owns a copyright is relatively unimportant. What matters is what license it is offered under. There is a very simple rule of thumb about the best license to use: use a "free, copyleft license". Such licenses provide the ideal balance of freedom versus limitations, and projects that use them are overwhelmingly more successful than ones that don't. 
+
  
  
- RULE #1: Hold On Loosely 
- 
+
+RULE #1: Hold On Loosely
+
  
- Use a free, non-copyleft license 
- A free license provides everyone working on the project  parity : they have an equal stake in the project's success, reap equal value from it, and do not feel they are losing the value of what they contribute to it to anyone else. 
- A copyleft license prevents any single entity from stealing value from the public by taking the project private (including the work of other participants). 
- The most popular license for software is unquestionably the Gnu General Public License (GPL)[1]. However, that license is clearly written with computer programs in mind, so it is not really appropriate for all forms of information (this point is somewhat controversial, but there is no question that the GPL uses program-specific language in its text which may be ambiguous when applied to other works). Therefore, there are a number of other licenses, including the Creative Commons Attribution-ShareAlike (CC-By-SA) license [2], which is optimized for creative content. No single license has emerged as appropriate for licensing open hardware, although the GPL is often used. 
  
+
+     Use a free, non-copyleft license 
+
+     A free license provides everyone working on the project  parity : they have an equal stake in the project's success, reap equal value from it, and do not feel they are losing the value of what they contribute to it to anyone else. 
+
+     A copyleft license prevents any single entity from stealing value from the public by taking the project private (including the work of other participants). 
+
+     The most popular license for software is unquestionably the Gnu General Public License (GPL)[1]. However, that license is clearly written with computer programs in mind, so it is not really appropriate for all forms of information (this point is somewhat controversial, but there is no question that the GPL uses program-specific language in its text which may be ambiguous when applied to other works). Therefore, there are a number of other licenses, including the Creative Commons Attribution-ShareAlike (CC-By-SA) license [2], which is optimized for creative content. No single license has emerged as appropriate for licensing open hardware, although the GPL is often used. 
+
+   
```

## 53) articles/russian_interview/index.md
```diff
@@ -1,108 +1,187 @@
  “Former Soviet Union” is a term that often makes people think of a somehow original concept of freedom and democracy. You can observe some heritage looking, for instance, at the facts of today’s Belarus [1,2] and Turkmenistan [3,4]. 
+
  Anyway, even there, people always have had the will to express their ideas and opinions. Think, for instance, of the samizdat [5], or of the dissidents. 
+
  How could native geeks and computer scientists/engineers miss the opportunity to contribute to the free software movement as another expression of freedom and democracy? In this article, hopefully the first of a short series, I will try to outline the rise and growth of free software in the former USSR by interviewing some of the key individuals: 
+
  
- Alexander Barkov, currently senior programmer at Lavtech (Izhevsk, Udmurtia, Russian Federation) —referred to as Sasha Barkov; 
- Aleksey Smirnov, founder and director of the  Institute for Logic , as well as founder of the firm ALT Linux (Moscow, Russian Federation) —referred to as Aliosha; 
- Oleg Philon, currently senior programmer at IBA Gomel branch, one of the founders of the GomeLUG (Gomel, Belarus) —referred to as Oleg, since his name has no short form; 
- Alexander Zhukov, currently a developer at Priocom Corp. (Kiev, Ukraine) —referred to as Sasha Zhukov; 
- Yuri Umanets, currently software engineer at Priocom Corp. (Kiev, Ukraine) —referred to as Yura; 
- Mikhail Shigorin, currently project manager at  emt.com.ua  and member of Ukrainian Linux and Free Software Users Group (Kiev, Ukraine) —referred to as Misha. 
+   Alexander Barkov, currently senior programmer at Lavtech (Izhevsk, Udmurtia, Russian Federation) —referred to as Sasha Barkov; 
+   Aleksey Smirnov, founder and director of the  Institute for Logic , as well as founder of the firm ALT Linux (Moscow, Russian Federation) —referred to as Aliosha; 
+   Oleg Philon, currently senior programmer at IBA Gomel branch, one of the founders of the GomeLUG (Gomel, Belarus) —referred to as Oleg, since his name has no short form; 
+   Alexander Zhukov, currently a developer at Priocom Corp. (Kiev, Ukraine) —referred to as Sasha Zhukov; 
+   Yuri Umanets, currently software engineer at Priocom Corp. (Kiev, Ukraine) —referred to as Yura; 
+   Mikhail Shigorin, currently project manager at  emt.com.ua  and member of Ukrainian Linux and Free Software Users Group (Kiev, Ukraine) —referred to as Misha. 
  
+
  Points of note 
+
  This article/interview is based on answers collected from April through June, 2005: some information may have changed in the meanwhile. The outline I tried to draw is unfortunately not quite complete; one of the people I had hoped to interview from Belarus (to remain nameless) initially agreed to answer my questions, but then decided against it at a later stage. 
+
  
  
```

## 54) articles/save_time_awk_print/index.md
```diff
@@ -1,92 +1,141 @@
  Since discovering AWK  last year  I've been using it regularly with tables of data. It seems like everything I do with those tables is faster and easier with AWK on the command line than the same jobs would be with spreadsheet software. 
- Below are a couple of examples that demonstrate the handiness of the  print  command in AWK. If you've never used AWK before, see the links at the end of the article for a quick introduction to the basics. 
- 
+
+ Below are a couple of examples that demonstrate the handiness of the  print  command in AWK. If you've never used AWK before, see the links at the end of the article for a quick introduction to the basics.
+  
+
  #Insert blank columns 
+
  The AWK  print  command is a simple concatenator that strings together whatever bits and pieces you tell it to print, including field separators. That makes AWK a great tool for adding blank columns to a table. 
+
  Here's a table of imaginary big-city restaurants, shown as it would look in a spreadsheet: 
+
  
  
   
  
+
  Suppose I wanted to add a 'Rating' column before the 'Restaurant' one, a 'Mobile' column after the 'Phone' one, and a 'Website' column after the 'Cuisine' one. If I had the table in a spreadsheet application like LibreOffice Calc, I would highlight the column to the right of a proposed new one, put the cursor on the top of the column, right-click and choose 'Insert Columns'. I would then repeat the process for each new column. 
+
  However, my table  Restaurants.txt  isn't in a spreadsheet. It's actually just a comma-separated text file (CSV), and that means I can add the three blank columns all at once with one AWK command: 
+
   awk 'BEGIN {FS=",";OFS=","} {print ","$1,$2,$3,","$4,","$5,$6 }' Restaurants.txt > Restaurants_new.txt
   
- The BEGIN part of the command tells AWK that fields in the input file are separated (FS) by commas, and that the output file should also use a comma as field separator (OFS). The first field is recognised by AWK as $1, the second $2, and so on. The unquoted commas in the  print  part tell AWK to use the chosen field separator (in this case, a comma) when printing. Note the extra commas in quotes – that's how the blank columns are added. First a comma is printed, then $1, then a comma, then $2... 
+
+ The BEGIN part of the command tells AWK that fields in the input file are separated (FS) by commas, and that the output file should also use a comma as field separator (OFS). The first field is recognised by AWK as $1, the second $2, and so on. The unquoted commas in the  print  part tell AWK to use the chosen field separator (in this case, a comma) when printing. Note the extra commas in quotes – that's how the blank columns are added. First a comma is printed, then $1, then a comma, then $2… 
```

## 55) articles/sharing_without_microsoft_exchange/index.md
```diff
@@ -1,21 +1,40 @@
- Microsoft Exchange is the name most organisations go for when thinking of sharing calendars, e-mail etc. However, there are free software alternatives--and of course you don't have to go for the obvious or popular option. 
+ Microsoft Exchange is the name most organisations go for when thinking of sharing calendars, e-mail etc. However, there are free software alternatives–and of course you don't have to go for the obvious or popular option. 
+
  
+
  Case study 
+
  This post fits into my free software for the voluntary sector thread; to make that easier I'll use the experiences at my employer, Contact a Family. This post takes some information from a longer case-study written by Adrian De Luca and myself and which can be found on  the Contact a Family website . It is released under a Creative BY-NC-SA licence. 
+
  Needs 
- In 2001 the time came to replace Contact a Family's ageing file server--at the time running SuSE 7.0. I started looking down various routes including Exchange and found the licence costs way beyond my budget. After consulting users (always a fun exercise) I established the features we actually needed: mail, out of office auto-replies, an in-out board and shared calendars. Happy that I could provide the first two via  Exim , I realised the third could easily be made part of the new Intranet; so, I wrote it[1]. 
+
+ In 2001 the time came to replace Contact a Family's ageing file server–at the time running SuSE 7.0. I started looking down various routes including Exchange and found the licence costs way beyond my budget. After consulting users (always a fun exercise) I established the features we actually needed: mail, out of office auto-replies, an in-out board and shared calendars. Happy that I could provide the first two via  Exim , I realised the third could easily be made part of the new Intranet; so, I wrote it[1]. 
+
  That left the shared calendars. At the time there were virtually no free software groupware applications. I did some more user consultation, to find what they actually  wanted  to get from these shared calendars. Almost all of them said something along the lines of being able to know whether colleagues were in the office or not in the coming weeks and perhaps where they were going to be. 
+
  Question of conscience 
- So, there I was, having to face up to the situation that the only way my users could share calendar information was either by hand or--shudder--Exchange. I couldn't do it. I couldn't subject my users to the  wonders  of Exchange! Okay, I admit it, I didn't want to spend money where I didn't need to, and I was keen not to get bogged down in licencing. 
- As I said, there were virtually no free software groupware solutions. Yes, I could have deployed it via LDAP, IMAP etc. but I was also short of time and--frankly--at the time it seemed overkill. So what I did was write a web-based diary-sheet[2] for our Intranet--and it worked. I've since extended it to include departments and a few other features, but the real message I want to give is this: had products like  OpenGroupWare.org  and  eGroupWare  been more mature at the time, I think I would have taken the "easy" option of one of them. I would have spent a lot of time setting up features that my (relatively small number at the time) users probably would not have needed, and of course I wouldn't have learned so much. Sometimes the journey is important. 
+
+ So, there I was, having to face up to the situation that the only way my users could share calendar information was either by hand or–shudder–Exchange. I couldn't do it. I couldn't subject my users to the  wonders  of Exchange! Okay, I admit it, I didn't want to spend money where I didn't need to, and I was keen not to get bogged down in licencing. 
+
+ As I said, there were virtually no free software groupware solutions. Yes, I could have deployed it via LDAP, IMAP etc. but I was also short of time and–frankly–at the time it seemed overkill. So what I did was write a web-based diary-sheet[2] for our Intranet–and it worked. I've since extended it to include departments and a few other features, but the real message I want to give is this: had products like  OpenGroupWare.org  and  eGroupWare  been more mature at the time, I think I would have taken the "easy" option of one of them. I would have spent a lot of time setting up features that my (relatively small number at the time) users probably would not have needed, and of course I wouldn't have learned so much. Sometimes the journey is important. 
+
  Not settling for the easy option 
+
  It's not always right to go directly for the popular option but at least there's less risk with free software. It's as unwise to blindly go for the most popular free software option as it is to just plumb for Exchange. In my case I was able to write some scripts which fitted the bill but there are plenty of smaller options which may better fit your needs. Of course there are very valid arguments for using popular free software: more users, increased support options and there are usually good reasons they rose to the top in the first place. One of the many advantages of free software is increased choice, so it's a little futile to have that advantage and ignore it. 
```

## 56) articles/simon_peter_interview/index.md
```diff
@@ -1,51 +1,99 @@
  It's the year 2006, and installing applications in GNU/Linux can still be a nightmare (especially if they are not available in your distribution's repository). Simon Peter is the developer of klik, a piece of software that tries to resolve this problem. Simon kindly accepted to answer a few questions for FSM. 
-  TM: Hello Simon! Please tell our readers about yourself...  
+
+  TM: Hello Simon! Please tell our readers about yourself…  
+
  Since this is a computer magazine, I should probably start with my computing history: I used one of the first Macs when they came out, later built my own PC at the expense of having to use Windows, switched to Linux in 2002. I’m 27 years old, native to Germany, and I studied Economics and Business Administration in Germany and the US. 
+
  
  
  Simon Peter 
  
+
   TM: Can you briefly explain what klik is?  
+
  It’s probably the easiest way to download and run software on your PC. 
+
   TM: When did you start working on klik? What inspired you?  
+
  I had the idea in April 2003 when I was thinking of ways to use additional software that didn’t come with the Knoppix Live CD. Back then, I had no idea of how it could be accomplished. In January 2004, klik came into existence, and since then it has been growing into what it is today, thanks to the feedback and help of many users. Today, there is a community of contributors and supporters on the #klik channel on irc.freenode.net, and together we help to drive klik forward. 
+
  The ease of the first Mac inspired me: On the Mac in 1986, you could simply copy an application file to your hard disk and it would run. If you wanted it no more, you could simply move the application icon to the trash. In contrast, Linux 2003 required you to become root, type in cryptic commands, and understand what “broken packages” meant. And you never knew what went on “behind the scenes”: what files were installed all over the place on the system. 
+
  I just wanted to have the same simplicity on Linux that the original Mac had. Plus, I wanted to store my applications wherever I had some space left—be it on a CD-ROM, a DVD, or a USB stick. Linux couldn’t do that: it required me to install everything to  /usr . I felt like the machine was in command of me, not the other way around (as it should be). I felt it was time for a radically different approach: One file per application. 
-  TM: Software installation in Linux is renowned for being susceptible to the “dependency hell” problem. In your documentation, you write: “No dependencies besides base system. No other dependencies are necessary besides what comes already with the base system (distribution).”. However... sometimes, what “comes already with the base system” depends on what the user installed in the first place. I might not have libjpeg in my system, and klik application might need it. What happens in that case? Is there an automatic way of dealing with this sort of problem?  
+
+  TM: Software installation in Linux is renowned for being susceptible to the “dependency hell” problem. In your documentation, you write: “No dependencies besides base system. No other dependencies are necessary besides what comes already with the base system (distribution).”. However… sometimes, what “comes already with the base system” depends on what the user installed in the first place. I might not have libjpeg in my system, and klik application might need it. What happens in that case? Is there an automatic way of dealing with this sort of problem?  
+
```

## 57) articles/stylish_xml/index.md
```diff
@@ -1,52 +1,80 @@
  Creating custom markup with XML is pretty easy to do, but making it look good is another feat entirely. Fortunately, a little knowledge of cascading style sheets can go a long way toward making XML easier on the eyes. 
+
  This article has  downloads ! 
+
  Basic XML 
+
  Before diving into the subject of styling XML, you need to know a little about what an XML document is and how to create a very simple one using a text editor. Issue one of Free Software Magazine has an  excellent article  by Kay Ethier and Scott Abel introducing many of the terms and technologies surrounding XML. There are also plenty of tutorials available on the web showing you how to create your own markup with XML. Once you feel comfortable with the basics of XML, read on and let’s start styling. Feel free to try experimenting with the CSS provided in the download area with this article. 
+
  
  Working with XML is a lot like using HTML except that there are no predefined tags 
  
+
  Unstyled XML 
+
  A popular theme of many beginning XML tutorials is to take a recipe for some kind of delicious food and describe it using XML. Since I like to cook I’m going to stick with this theme and show you examples using an XML version of my  muy delicioso  pico de gallo recipe. So grab some tortilla chips and margaritas and let’s get started. 
+
  I’ll start with a handwritten recipe for pico de gallo. In the past, good old pen and paper is how I would record and share all of my recipes. Then one day, when I was feeling particularly ambitious, I decided to start storing my recipes electronically as XML documents. It wasn’t particularly difficult, I just typed the recipes up in my favorite text editor and thought up some tags to describe the different elements. Working with XML is a lot like using HTML except that there are no predefined tags. And, since the recipes are now stored as an electronic document, I can also share them on the internet. 
+
  
  
  Paper-based recipe converted to XML 
  
+
  One of the cool features of modern web browsers is that they can now handle XML documents just as easily as the traditional HTML. In fact, I can even open up my pico de gallo recipe using  Mozilla Firefox  which makes sharing XML documents over the internet very easy. No more passing around handwritten copies, instead I can just refer people to my web site. 
- Unfortunately, the XML recipe displayed in the browser looks just as unattractive as it does in the text editor. Can you imagine trying to share this kind of recipe with family and friends? I can hear the conversation now, “Yeah, Mom, just ignore the stuff between the angle brackets... Right, the ones that look like greater-than and less-than... Because it’s XML and it’s cool, that’s why...” 
+
+ Unfortunately, the XML recipe displayed in the browser looks just as unattractive as it does in the text editor. Can you imagine trying to share this kind of recipe with family and friends? I can hear the conversation now, “Yeah, Mom, just ignore the stuff between the angle brackets… Right, the ones that look like greater-than and less-than… Because it’s XML and it’s cool, that’s why…” 
```

## 58) articles/stylish_xml_2/index.md
```diff
@@ -1,61 +1,98 @@
   Part one  of this article looked at how Cascading Style Sheets (CSS) can be used to make XML documents look good in a web browser. In part two, I’ll explore the more complex eXtensible Style sheet Language (XSL) and how it can be used to transform XML into HTML and PDF documents. 
+
  This article has  downloads ! 
+
  Limitations of XML/CSS 
+
  By the end of part one of this article I had a my tasty pico de gallo recipe marked up with XML tags and nicely styled using CSS. It looked great in my Firefox browser. Unfortunately, one of the major problems with using XML/CSS is that it doesn’t work for everyone. Older, proprietary browsers and text-only browsers can only understand HTML and get terribly confused when trying to interpret XML/CSS. If I want to share my delicious recipes with someone using Netscape 4 or Lynx, I’m going to have to convert my XML into a format that their browser can handle. This means leaving behind CSS and constructing a new style sheet using the eXtensible Style-sheet Language (XSL). 
+
  
  Unfortunately, one of the major problems with using XML/CSS is that it doesn’t work for everyone 
  
+
  As long as I’m in the mood for creating new things, I may as well create a new XML recipe to use for the examples in this article. You already have a recipe for a nice appetizer from part one, and now, for part two, you just need a drink to go with it. I can’t think of anything better to have with pico de gallo and tortilla chips than a cold margarita so that’s what I’ll use in the examples. By the way, the margarita recipe and all of the style sheets in this article are available as a compressed download. 
+
  Transforming with XSL 
+
  An XSL Transformation, or XSLT, is the process of transforming an XML document into another type of XML document. Now why on earth would someone want to transform one XML document into another XML document? I’ll give you a hint, Grasshopper: HTML is another type of XML document. I can build a custom XSL style sheet, apply it with a tool called an XSLT processor and presto, my XML is magically transformed into HTML. 
+
  In the examples, I will be using the XSLT processor called  xsltproc  to process the XSL style sheets. The  xsltproc  tool should be available as a package for most GNU/Linux distributions and Apple’s OS X, if you want to follow along. The basic syntax for the command is  xsltproc -o [output-file] [style-sheet] [input-file] . Or, in the case of this article’s examples,  xsltproc -o output.html recipe-style.xsl margarita.xml . If you don’t have access to  xsltproc , or if you’re just feeling a little apathetic about typing all these commands, the output files from each of the examples are included alongside the other files in the compressed download. 
+
  
  An XSL Transformation is the process of transforming an XML document into another type of XML document 
  
+
  Simple beginnings 
+
  The most basic XSL style sheet is one that does nothing at all. Of course, there are a few headers that are required, but for the most part the style sheet is devoid of any processing instructions. When using a blank style sheet like this, it appears that  xsltproc  simply strips the tags from the XML recipe and dumps it as plain text to the output file. Close, but not quite. Take a look at the first line of the output and you will see a document-type declaration for HTML. This was added during processing, because the second line of the  recipe-style.xsl  specifies HTML as the output document. So I’m on the right track, but  output.html  displayed in a browser looks really bad. That’s because the only output I have produced so far is a plain-text file masquerading itself as HTML. 
```

## 59) articles/tex_license/index.md
```diff
@@ -1,47 +1,94 @@
  In a world where people wish to protect their work in any way, there are plenty of licenses  [5]  that protect the rights of their work, while still allowing it to be shared. 
+
  One of these licenses is the  LaTeX Project Public License  (LPPL)  [3] , mainly used to distribute and protect TeX-related works, but suitable, with small modifications, for works not related to TeX. This license only covers distribution and modifications of a work, while its execution is not restricted. No requirements are made concerning any offers of support for the work, as stated in the clause 1 of the LPPL. 
+
  In this article I will analyse the LPPL version 1.3a, the latest available at  [3] . Don’t forget that since March, 2004 this license is considered free under the terms of  Debian Free Software guidelines   [1] . 
+
  Definitions 
+
  This license defines a set of terms, useful for recognising and clustering the components of the work you are going to distribute. 
+
  
  The _LaTeX Project Public License_ (LPPL), mainly used to distribute and protect TeX-related works, is suitable, with small modifications, for works not related to TeX 
  
+
  According to this license, a  work  is any (original) work distributed under the license, while a  derived work  is any work deriving from (original) work by a  modification . For instance, a translation of a work, or an original file associated with the work, is considered a modification. 
+
  A  distribution  is a copy of the work available from a person to another by any means, included file transfer protocols. A  compiled work  is a version of the work processed into a form directly usable on a computer system. Distributing a part of the work is considered to be a modification. 
+
  This license, due to the particular facilities that it provides, needs to recognise two more actors (based on the UML meaning of actor): the  current maintainer  and the  base interpreter . 
+
  The former is a person, or a group of people, nominated as such within the work. The lack of this name indicates that the current maintainer is the copyright holder. 
+
  The latter (base interpreter) is a program or process needed to run or interpret a part or the whole of the work. While a base interpreter may depend on external components, these components are not considered part of the base interpreter. Unless explicitly specified when applying the license to the work, the only applicable base interpreter is a “LaTeX format”. 
+
  Distribution and modification 
+
  A set of 12 clauses state the conditions to distributing and modifying a piece of work. While they seem restrictive, they are not. As shown, the LPPL defines, via the base interpreter, a “standard” tool (and, thus, a standard format) that ensures that a work, processed on different machines (where the machine is the combination of hardware, operating system, compilers and programs), outputs the same result. 
```

## 60) articles/ups_installation_and_configuration/index.md
```diff
@@ -1,31 +1,53 @@
  An inexpensive way to prevent unscheduled downtime or data loss due to power problems is with a UPS or Uninterruptible Power Supply. However, a UPS by itself is not enough for proper operation. Hardware, software, and configuration together make up a UPS system that will recover from unexpected power loss or power fluctuations that can damage systems and peripherals. 
+
  Introduction 
+
  When considering data loss, system downtime and disaster recovery, backup methods are primarily discussed. There are many methods of preventing data loss, including clustering, backup, security and power conditioning. Proper power can prevent an initial disaster from ever occurring. Providing proper power can be in the form of an Uninterruptible Power Supply or UPS. A UPS has rechargeable batteries to supply emergency power in the event of immediate power loss. If the power loss is longer than the batteries can supply, then the UPS can signal the server to initiate a power down sequence to properly shutdown, preventing data loss. When power is returned the server can return to operation after having made a clean shutdown. 
+
  Other power related problems that occur can be minimized with the circuitry of a UPS. Voltage sags and spikes, brown outs and line noise (from other machinery like elevators, air conditioners or office equipment), can all be isolated by a UPS. These power related fluctuations can wreak havoc on systems and devices. For a relatively low cost a UPS can prevent downtime due to power anomalies. 
+
  Network UPS Tools 
+
  The Network UPS Tools (NUT) [1] are a group of tools that are used to monitor and administer UPS hardware. NUT uses a layered scheme of equipment, drivers, server and clients. The equipment consists of the monitored UPS hardware. Drivers specific to the UPS hardware communicate or poll the UPS for status information in the form of variables. The driver programs talk directly to the UPS equipment and run on the same host as the server. The server  upsd  serves data from the drivers to the network. Clients talk to the  upsd  server and initiate tasks with the status data. 
+
  As indicated by the name, Network UPS Tools, NUT is a network based UPS system that works with multiple UPSs and systems. One of the many features of NUT allows multiple systems to monitor a single UPS, not requiring special UPS sharing hardware connections. The master/slave relationship synchronizes shut-downs so the slaves can initiate power-down sequences before the master switches off UPS power. 
+
  This article details the installation and configuration of a single system with a UPS connected to the serial port of the system. This is the natural first step of getting NUT installed and configured. If the UPS will supply more than one system, the second and subsequent systems can be configured as slaves. 
+
  The NUT developers also have a different take on when the systems should be powered down. NUT will wait until the UPS is “on battery” and “low battery” before it considers the UPS “critical”. This philosophy gets the most out of the UPS batteries and will wait until the critical moment to initiate a power down sequence, just in case the power comes back on line. There is an option to override this behavior if desired with  upssched , which can be found in the documentation. With the  upssched  utility, commands can be invoked based on UPS events. 
+
  In typical GNU/Linux fashion, NUT is not the only tool available for monitoring a UPS. Apcupsd [2] is used for power management and control of APC model UPSs. There are also several graphical frontends for workstation class machines. 
+
  Preparing for installation 
+
  Prior to installing and using a UPS and its associated software, a few things must be in place. Since the system is going to be shutdown there must be a way to bring the system back up when power returns. The system BIOS needs to be configured correctly. Most modern BIOSes have an option to power-on when main power, now supplied by the UPS, is returned. Server system BIOSes will most likely support the “power on when power returns” option. If the BIOS does not support this option (more common with workstation class systems), a BIOS update may correct it. With servers configured headless, without a monitor or keyboard, there are also settings to ignore keyboard errors. Commonly these types of systems are administered via SSH or administration utilities like Webmin [3]. 
+
  The UPS must also have the correct signal cable from the UPS to the system. With a USB type of UPS this is not a concern. A UPS that communicates via the serial port needs the correct signal cable that supports intelligent signaling between the UPS and system. See the UPS vendor for the correct cable or a custom cable can be built with information from the Network UPS Tools web site. 
+
  Installing NUT 
```

## 61) articles/using_virtualbox_to_run_ubuntu/index.md
```diff
@@ -1,40 +1,67 @@
  GNU/Linux can be scary to a new user. After all, what if you mess up? What if you end up corrupting your hard drive so badly that you need to format it to get rid of GNU/Linux? The solution is to use virtualization technology. A virtual machine creates a virtual hard drive as well as a virtual computer, so you can install and run it from within another operating system. If you want to get rid of the virtualized (also known as the guest) operating system, just delete the virtual hard disk from the real (host) computer’s hard drive. 
+
  Introduction 
+
  First, choose which virtualization tool to use. Right now, there are four big ones:  Parallels ,  VMWare ,  QEMU , and  VirtualBox . Parallels is commercial at US$49.99 for Windows and GNU/Linux. For me, that is way too expensive. That leaves us with VMWare, QEMU, and VirtualBox. VMWare has two freeware versions.  One (called a player) runs pre-built operating systems (known as appliances). The other one (called a server) will make machines, but isn't as fast as the professional version. The problem with QEMU is that it is completely command-line (there are GUIs made for it, but they never worked for me). Therefore, it is extremely complicated to create a new virtual machine with it. Besides, it just can’t do some basic things that the others can (like pause a virtual machine, for example). That leaves us with VirtualBox. 
+
  VirtualBox is free software. It is cross-platform (runs on Windows and GNU/Linux, with an Intel Mac version in beta). It runs Windows, OS/2, GNU/Linux, BSD, Netware, Solaris, and L4 guests. And on certain guests, you can install VirtualBox Guest Additions, which lets you share files and more between the guest and the host. The next version, coming soon, will include support for running the pre-built VMWare appliances [1]. It simply works. 
+
  Getting VirtualBox 
+
  Getting VirtualBox varies from platform to platform. There are binaries on the download  site  for Windows, Ubuntu 6.06-7.04, Debian 3.1-4.0, openSuSE 10.2, Mandriva 2007.1, Red Hat Enterprise 4, and the Univention Corporate Server 1.3-2. The SimplyMEPIS site has a guide to installing VirtualBox  here . If you run Ubuntu or MEPIS, you can install  Automatix , which will install VirtualBox for you. Lastly, there is also a generic installer for GNU/Linux on the download page. Unfortunately, there are two versions of VirtualBox: one is freeware and one is free software. These binaries are for the  freeware  version, rather than the  free software  version. For some reason, Innotek (the company behind VirtualBox) hasn’t released open-source edition binaries. I’m not really sure why hackers haven’t released any binaries using the source code (the exception is one by a Macintosh programmer, who created an unofficial free software OS X 10.4 binary  here ). However, I am sure binary versions of this fantastic piece of software will eventually appear for many different distributions.To compile, visit the  Build_instructions page  at the VirtualBox wiki. GNU/Linux and Windows are supported, with Macintosh OS X (Intel-only) and OS/2 in testing. 
+
  Setting up your first virtual machine 
+
  Now that VirtualBox is installed, create your first virtual machine. Your first guest will be the well-known Ubuntu. Download the 7.04 Desktop edition CD image  here . When it finishes downloading, open VirtualBox (on GNU/Linux,  LD_LIBRARY_PATH=. ./VirtualBox , on Windows, run  VBoxSDL.exe  in the folder you compiled it in). 
+
  Select the “New” button (or hit  Ctrl + N ). A “New Machine Wizard” window should pop up (figure 1). 
+
  
  
  Figure 1: New Machine Wizard 
  
+
  Click “Next”. Then, type a name for the virtual machine (I typed Ubuntu). Choose Linux 2.6 (the standard for most modern Linux distros) for the OS type, then hit “Next”. You will be asked how much memory to give. Choose 256MB. For most GNU/Linux distros, you’ll need at least 256MB of RAM to be comfortable (you’ll also need to make sure you have at least 512MB of total physical RAM and have all possible programs closed). Next, you will be confronted with an option to create a hard disk (figure 2). 
+
  
  
```

## 62) articles/when_is_a_standard_not_a_standard/index.md
```diff
@@ -1,150 +1,275 @@
  I had a massive argument with my brother the other day over an IT issue close to my heart.  I had to be careful because he is a member of the Metropolitan Police, part of the Domestic Violence Policy Unit.  To clarify, his department is responsible for the policy of  policing   domestic violence. 
+
  What he was saying was that he, and the entire metropolitan police force, use Microsoft Word, all the police departments and stations he deals with do as well, as do all organizations he needs to interact with outside the police including the name drop-able big-wig departments in the UK government.  He said they had "standardized" on Microsoft Office formats and did not see a problem with that, nor did he see my objections. 
+
  
+
  The police are by no means the only ones.  My mother receives documents from theater organizations  in .doc and .xls formats, as do I from local organizations.  The local Cambridge and Cambridgeshire governments post documents on their web sites using them.  I understand how people can see it as a standard. 
+
  Except it is not. 
+
  These formats have never been submitted to a standards body, on the contrary Microsoft have done all they can to keep them closed.  The only reason why myself, my mother and others who do not use Microsoft Office can read them is due to the fact technicians spent hours in front of binary dumps of the files getting inside the head of the Microsoft developers and reverse engineering the specification:  a scenario that is hardly the basis of global interaction. 
+
  
  Technicians reverse engineering binary dumps of Microsoft's closed formats is hardly the basis of global interaction 
  
+
  All this is being replaced by new XML based formats. 
+
  The Story so far 
+
  Open Document Format - or ODF -  now ISO/IEC 26300:2006 – was designed to be an open standard anyone could use for office document interchange based on recognized existing standards and conventions (1).  Microsoft refused to have anything to do with it, instead pushing their own new format - Office Open XML - or OOXML. 
+
  Microsoft initially placed restrictions on the use of their format.  When the Commonwealth of Massachusetts' IT Division would not entertain storing documents using a format with IP restrictions, and other governments and organizations were following that example, Microsoft opened the IP using Non Assertive Contracts (2).  Microsoft then submitted this format to ECMA for standard approval, however the format is not based on existing recognized standards, and it's main objections are to create an "XML"ization of their closed existing formats so that documents can be converted to these more than produce genuine interoperability with other programs(3). 
+
  Microsoft achieved ECMA accreditation, which is no surprise as one of ECMA's roles in this universe is to approve standards for submission to ISO for rapid adoption(4), and sure enough, OOXML was submitted to ISO for fast track approval.  However, this is when things started to go wrong for Microsoft.  People noticed that OOXML's standard was bogus.  National standards bodies were lobbied accordingly, and an unprecedented twenty members raised comments, fourteen were decidedly negative and only one supported it positively. 
+
  ECMA had a month to reply to the above contradictions and comments, so they duly submitted a report to the JTC1 on the 28th February 2007. 
```

## 63) articles/yudit/index.md
```diff
@@ -1,57 +1,104 @@
  In this article I will show you how to write multi-language texts without the cumbersome OpenOffice.org. Back in 1999, the Hungarian Gáspár Sinai needed to edit Hungarian and Japanese texts. So he decided to write an editor that was Unicode [1] compliant. Once he had done the basic work, it was a straightforward task to include other languages, and Yudit [2] was born. 
+
  Yudit was built for Unix, but Sinai did do a version for Windows. 
+
  In this article I’ll show you how easy it is to write multi-language documents with Yudit. Every time I refer to documents, I’ll be referring to plain text documents. 
+
  The Unicode standard 
+
  7-bit ASCII can only do the basic Latin alphabet, with a few other characters. If I want to write in my own language (Italian) I have to use a special mapping of 8-bit ASCII. 
+
  
  7-bit ASCII can only do the basic Latin alphabet, with a few other characters 
  
+
  The first time I tried to write an Italian document containing some Russian words, I immediately came across the following problem: if extended ASCII gives me Italian letters, what do I have to use to get Cyrillic letters, too? Then I discovered that there are a lot of ASCII extensions: ASCII codes 0—127 match those of 7-bit ASCII; 128—255 provide different characters, according to the set language. 
+
  Unicode was designed to answer similar questions, and to replace the number of different overlapping ASCII extensions. It assigns every known letter a unique code, and it is compatible with ASCII (codes 0—127), so that every ASCII document is a Unicode document, too. Of course, a Unicode document is not necessarily an ASCII document. Unicode describes characters in up to 6 bytes. The high order bits of the first byte determine how many bytes a character is. They also group characters by family, for example, Latin or Cyrillic. 
+
  
  Unicode was designed to replace the number of different overlapping ASCII extensions 
  
+
  Enter the (Y)Unicode eDITor 
+
  Yudit is designed to save texts in Unicode. So you can use it to write something more complex than programs: for instance, I used Yudit instead of  vi  to write this article. 
+
  When you run the program, you are given a window like the one in figure 1. 
```
