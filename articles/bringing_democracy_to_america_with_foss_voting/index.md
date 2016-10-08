---
nid: '1946'
title: 'Bringing Democracy to America with FOSS: voting'
authors: 'Jabari Zakiya'
published: '2006-12-13 7:56:16'
tags: 'voting,florida,ovpc'
license: verbatim_only
section: opinions
listed: 'true'

---
“Mr. Gandhi, what do you think of Western civilization?”

 “I think it would be a very good idea.”

“But what about American democracy?”

“I think you better start using open source voting machines.”

OK, maybe Gandhi didn't say ALL of that, but if he were asked the question, I can see him saying something like that, based on our election history this century.


<!--break-->


It's now over a month after the November 7, 2006 midterm elections, and the verdict in Florida's 13th Congressional district is still up in the air. Why? Over 18,000 votes for the House seat are missing, vanished, or somehow just don't exist [see here](http://www.ucimc.org/node/480).

Like many people predicted and feared, the culprit in this very foreseeable escapade in Floridian electoral “democracy” is the very commercial (and very proprietary) voting machines.  So now, the Florida board of elections is trying to conduct an [audit](http://moritzlaw.osu.edu/electionlaw/news/articles.php?ID=86) of the voting machines source code. Of course, the real solution to this most recent foray of Florida into the arcane science of voting is to [do it over](http://news.yahoo.com/s/ap/20061207/ap_on_el_ho/florida_election). But I'm just highlighting Florida as an example, because it is real, and it (hopefully) can't be swept under the rug.

What I see here, merely epitomized (again) by a Florida voting debacle, is more than the lack of competency of American “democracy” to conduct fair and accurate elections, but more truthfully, it really illustrates a disdain for doing so.  After all, if we really held fair and accurate elections in this country, certain people and parties would never gain ascendancy into positions of political power.

Now, here is where the development methodology of free and open source software (FOSS) can ride in and save the day, if “we the people” really want to at least be able to believe that the vote tabulations are accurate.

I propose we start the OVPC (One Voting-machine Per Country) project.  Instead of the hodge-podge of machines and software used across the country to conduct elections, let's standardize on one machine, designed in the open, built with off-the-shelf hardware, and open source software.  Sort of “the PC” for voting.

This is not a kooky idea either.  I mean, you have all kinds of people who have proposed, and even built, such a machine already.  It's just seems that the state elections boards haven't shown too much interest in these open systems.But here is where the might of the FOSS community, with it's corporate supporters, have to step up to the plate.

I figure if Nicholas Negroponte is put in charge, we can eventually produce these badboys for about $100 per machine.  We can have the OSDL establish all the necessary file and data formats.  It would use a Ruby on Rails framework with an SQLite embedded database to handle the screen GUIs, ballot presentation and interaction, and vote storing.  Or maybe a Drupal CMS system would work better.

I can see Google sponsoring a “summer of code” fest for writing all the code, and donating some of their search engine wizardry to find any missing votes.  AMD and Intel would compete to see whose X2 or quad core chip would be used, or maybe IBM can sneak in a Cell processor cheaper.

Let Apple design the physical layout. It would have a round ballot-wheel to advance/repeat screens, and come with cute earbuds so people could listen to voting instructions (ogg formatted) in their native language picked from a selection menu.  Of course, they would come in various colors (beside red and blue).  And last, but not least, they would provide a verifiable (recycled) paper trail.

Now, after we create confidence in the vote casting/counting process, we can then tackle the bigger problem of creating a system that produces people we really want to vote for.

