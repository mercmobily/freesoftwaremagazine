---
nid: '2664'
title: 'Can OpenOffice.org do the job?'
authors: 'Ryan Cartwright'
published: '2008-01-19 3:43:29'
tags: 'openoffice.org,non-profits,mail-merging'
license: verbatim_only
section: opinions
listed: 'true'

---
To continue my look at how non-profits and the free software community can engage, I've decided to look at some popular free software products and see how well they fit the need of an average charity--namely my employer.
I'll start with [OpenOffice.org](http://www.openoffice.org).

<!--break-->

# Background

I've been using OpenOffice.org since it was called StarOffice 5 and have used it exclusively at home since before OpenOffice.org 1. Currently at my workplace we use Microsoft Office XP (well, except for the IT team who mostly use OpenOffice.org!) but we are looking to upgrade to OpenOffice.org sometime in the near future. We have over 120 users split across the UK in offices of differing sizes. Primarily--at present and with the exception of the IT dept--we use Windows XP on the desktop/laptop and exclusively GNU/Linux on the servers. For future reference this post is based on using OpenOffice.org 2.3.1 on [Debian](http://www.debian.org).

# Needs

So what needs does a charity like ours have with regards an office productivity suite? It'll come as no surprise to hear that they are nothing out of the ordinary. All users need a word processor, about ten per-cent need a spreadsheet and an increasing number "need" a presentation program. By the way I feel that perhaps Impress will have the hardest job infiltrating the users' psyche because "PowerPoint" is now a ubiquitous noun for both the application type and the documents produced on it. Our users have no need of something like Access because we do our database properly (!)--see my [post on bespoke databases](http://www.freesoftwaremagazine.com/blogs/return_of_the_bespoke_database) for more details.

## Word processing

I would say that most of our users' word processing needs will be perfectly met by Writer. The interface has a familiar feel and you can get up and typing within seconds. Opening documents sent by other organisations will probably not be any bigger an issue than it is now. We often get sent MS Works documents (ugh) which Word cannot open--and for which there is no plugin--or an OpenXML/Word 2007 file. In those cases it's fairly trivial to ask the sender to send it Word 2002 format or--if they can--in ODT.

=ZOOM=Our users' word processing needs will be perfectly met by Writer=

There are one or two bits that I am less confident my users' will accept on first glance:

* Styles
* Tables
* Mail merging

The first two are purely educational issues. I am confident that given proper tuition they will soon adapt to the--in my opinion better--way of working with styles within documents. I've taught various people how to use OpenOffice.org and moving from the Word format-each-item-individually method to Openoffice.org's greater dependency on styles is one of the first stumbling blocks. Once they get it though (and it doesn't take long) they report that it does make life easier.

With regards tables, the main issue is the way in which you can drag them around in Word and nest them to a deeper level. OpenOffice.org does have an advantage in that its tables seem little more stable, but again the real issue will just be educating the users in the slightly different way of working.

## Mail merging

I can see what the OpenOffice.org team have done here. They've tried to do it properly. This is something I see a lot in free software and in the long run it makes for more stable documents. Another example is Writer's greater usage of styles in place of Word's change everything individually method.
The problem here is that the mail merge method for Writer is nightmarishly long. Here's how you would create a mail merge letter from a comma separated value (CSV) file of contacts:

* First add the CSV file as a data-source using the 12-step "Address Data Source" wizard - this creates an ODB file within your filesystem.
* Now the data-source will be available to use so create your basic letter without the mail merge fields
* Now view the data-sources (press F4)
* Navigate to the data-source you just created and then to the "table" within it (e.g. The CSV file)
* Drag the fields you need from the data-source viewer into your letter and format them.

=ZOOM=After all that you'd expect to be close to finishing, and you are. Just finish the 8 step Mail Merge Wizard first=

So after all that you would probably think you are close to finishing, and you are. All you have to do now is go through the 8 step Mail Merge Wizard and you are done. True, some of those steps could replace the ones you did above so generally you end up clicking "next" a lot.

It should be said that the Word 2002 wizard is not much better, but it does have fewer steps. The advantage of the Writer approach is that the data-source need only be added once. This is fine when you have a single Database as the source: if your CSV file is sent to you by a third party on a regular basis then you either have to instruct your users to overwrite the old CSV file or create a new ODB data-source every time. Having dug around I have found that you can use the Edit->Exchange Database option to changing the data-source used in your mail-merge document so the latter of those two is an option. It's still a 12-step process to create a new ODB though.

So here's why the OpenOffice.org approach is good and bad:

* It's good if you have a consistent connection to the source of the data (a database for example)
* It's bad if you have data-sources which are good for a single use.

## Spreadsheets

As you would expect the majority of our spreadsheet use takes place in the Finance team. Whilst I am confident Calc can take what most users throw at it I am less sure about the--frankly--huge and complex documents used by our Finance team.

The fact that Calc recently had the maximum number of rows increased is a help (although in the bragging stakes Excel 2007 boats a million row maximum now) but I am less confident about bringing all the macros across.

Still the macros themselves are not _that_ complex and can probably be rewritten for Calc if needed. The problem there again is time and Calc's ability to handle large size files with multiple lookups and references (although, to be fair, Excel 2002 is not great with its own memory handling).

## Presentations

The only real issue here is probably embedded video--not that my users make much use of it when creating presentations. Often we are sent presentations by others to use or create derivative works from. These can have embedded video and it must be said that they often bring new ways of death-by-powerpoint. This is likely to be a minor issue but it's one of those things on the "would be nice" list.

# So what do we _really_ need?

So looking back at all that, I'd say the prognosis is good. Which probably explains why we're now looking at OpenOffice.org as a serious upgrade from MS Office XP. Undoubtedly education is needed but it would be if we went to MS Office 2007 just as it was when we went from MS Office 97 to 2002.

=ZOOM=Mail merging is a big issue and it needs attention from the OpenOffice.org team=

Mail merging--particularly from a single-usage data-source--is a big issue though and if you ask me it needs attention from the OpenOffice.org team. The mail merge process needs to be more intuitive, less obstructive, a bit more explanatory and a _lot_ shorter. That's not to say that the Word 2002 one is any better but in the world of IT usage at work: change will often breed contempt for the new product so I'd rather not give the dissenters too much ammunition.

What we really need is a fluid-flow, step-by-step, hand-holding wizard which walks the user through using a single-use data source, inserting the mail merge fields and producing the final merged documents. I don't want this to hold back the migration to an otherwise perfectly excellent piece of software, so perhaps the answer will lie in some Basic scripting. We shall see and if you have any ideas, post them here I'd be glad of the advice.

I plan to raise this as an issue/enhancement request on the OpenOffice.org website but I'll wait to see if there's someone more knowledgeable here who can show me what I've missed (if anything) first.