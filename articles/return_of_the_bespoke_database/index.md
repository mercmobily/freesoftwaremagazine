---
nid: '2612'
title: 'Return of the bespoke database'
authors: 'Ryan Cartwright'
published: '2007-12-14 17:28:06'
tags: 'free-software,programming,non-profit,database,bespoke'
license: verbatim_only
section: opinions
listed: 'true'

---
I've mentioned before the recent move among UK charities to become more "professional", which is often translated as "do what the corporates do" (particularly when it comes to IT). One reason for this is the dreaded bespoke friend-of-a-friend database. These "databases" (and I use the term loosely) are often written by a student, with tenuous links to the charity, looking for a final year project and usually in Microsoft Access and they are usually awful to maintain.

<!--break-->

Most of the ones I have come across were written before the developer discovered the benefits of modular code or commenting and with little thought to future growth. That's not to say they are all bad, but in the end they don't grow with the charities' needs, and can often suffer badly when it comes to upgrade hardware or--worse--Microsoft Office. At some stage the charity will lose contact with the developer, or the developer will lose some of their belief in doing something like this for nothing.

Faced with this kind of scenario, it's little wonder that charities looking for new membership management databases will end up at the door of the "market leaders". They talk to other charities, attend charity IT events and listen to seminars run by the companies making the software and eventually enquire how much it will cost.

=ZOOM=After enquiring about the price they will probably sit down and have a cup of sweet tea=

At this point they will probably sit down and have a cup of sweet tea and mutter things like "I didn't know it cost so much". But they will probably go ahead and follow the crowd. They'll end up with a database that fits half their needs, forces them to fit the rest to the developer's needs and ties them into that product for a long time. But it will be better than what they had and their users will love it--for a time.

# One size does not fit all

Don't get me wrong: there are proprietary products which will adequately fit the bill and, with some clever data manipulation, you won't have to dance to their tune _that_ much; however, one size does not fit all here. My experience of charity database needs is that they are all different. Sure they all need to have some way of managing donor relationships, and there are some good proprietary products out there (hint to free software developers); however, beyond that the data manipulation needs of a charity may very well differ significantly from their nearest neighbours (or what the business world seems to want to call "competitors"). Some need to record helpline call statistics to give to funders, others may need to manage information that can be given out on those helplines, still others may need to manage relationships for "clients" who are not donors. Some may need to do all three at once or combinations.

CRM may fit some or all of those needs, but there's a reason I put quotes around the word "clients": for a charity the people they seek to serve are rarely seen as clients, and certainly not in the same sense as with a business. And with CRM again you may find that you have to fit your needs to its features. What would be ideal is something which is developed for your needs, has capacity to grow with you, can be altered by anyone you hire (or who volunteers for you) with the adequate skills and does not cost you more money just because you have taken on three more volunteers.

# Enter the _free_ bespoke database

Doesn't that sound like a bespoke database? Imagine a database written for you, for which you have the source code and the legal right to change it (or have it changed). Your data is stored in open standards, with long-term use in mind and the number of users is not a licencing but a hardware capacity issue. That's a proper bespoke database.

Instead of being written by a project-hungry student on the only "database tool" they've heard of, it's written by a software developer or software company utilising professional free software database tools, supplied under a free software licence. If you want a maintenance agreement, get one; if you want the developer to change something or write a new module, get them to do it. Does the developer lose out? No. You see, because this is free software, they are free to re-use the same code for other clients under the same terms. In fact, several charities could club together and the developer could be paid to develop the same core functions for each along with slightly different modules as they require. I'm kind of thinking on my feet here, so feel free to jump in and have a discussion on how this could (or couldn't) work.

If the charity loses touch with the developer or needs a quick fix, then the licence permits them to hire (or have volunteer) somebody with sufficient skills to make any changes that they need.

# Rallying calls

So here's a rallying call to all the free software developers out there: start looking closer at the needs of the voluntary/non-profit sector, as they could be an excellent client-base. Here's another hint to the non-profits out there: don't just jump on the bandwagon and assume off-the-shelf will be best or is the only option. Working with a developer to produce a bespoke free licenced database may turn out to be the best investment you make. My final request to the charities is not really licence related but that they would--for their own sake--nominate somebody on their side who will "own" the database project. Don't just leave it to the developer, it's your data and it's your database: manage it properly and it will serve you well.

# What tools?

After my first draft of this entry, the editor suggested some guidance on what kind of tools free software developers could use to attract VCS clients. Seems like a good idea (I guess that's what editors are for!). Bear in mind this is my opinion, but it is based upon 7 years experience in the sector, much of it writing databases.

## The server side

Firstly the staffing levels of charities can fluctuate very quickly; whatever tools are used need to adapt to that without too much fuss. I would suggest a client-server setup would suit most charities, even the small ones. So having a MySQL or Postgres database server somewhere would be a good start. It may seem over the top for a five-user database, but the system will grow with them and--more importantly--won't cost more in licences as they do grow. Such a server could easily be remote hosted or installed on at their premises. Telling them you can reuse that "old" PII/600 as a database server for half a dozen clients will win points. We charity folk are often reluctant to throw stuff away.

## The client side

The client-side will depend upon the desktop they are using; however, something that presents entry and search forms in a clear and easy to use manner would suit. For this reason it may be best to avoid something like OpenOffice.org's database: it looks a little unfriendly to the untrained eye. Writing your own database doftware is an option, and Python springs to mind here, particularly if you use a cross-platform widget set like WX. C or C++ will do equally well (again go for a cross-platform widget set) and you could even do it in Java--after all cross platform was what it was designed to do.

## The web alternative

Any desktop client must be easy to deploy though. An executable they can copy or install themselves would be ideal. Anything requiring a visit from you would fast become a pain. As an alternative it could be developed as a web-based database. We use one which uses a Perl front-end and a MySQL backend. It's hosted on our Intranet, and thus only requires a web browser on the client side. Deployment therefore becomes a case of giving the user the URL and their login details. I have to say from a development side the web-based option is the most attractive to me--particularly now that AJAX can be utilised to give it that desktop-like instant feedback feel.

## The main requirements

In any case, there will be some things it should include:

* data entry forms;
* decent cross-table search facilities that are simple to use;
* data-mining type reporting features.

I once heard that a charity fundraiser will spend half the time trying to get funds and the other half justifying the way they have been used to the funder. Larger funders (like trusts or governments) can demand some in depth reports to ensure their money is being used as they wanted. The charity using this database is likely to want to report on numbers, patterns and trends across a series of date ranges. Ideally the reporting system should provide the user with a way to specify the criteria and then pull off the report. We're not talking Crystal Reports here, just a way for the user to say "show me all the helpline calls from single mothers broken down by where they live for this date range" on a regular basis.

# Conclusion

So there you have it a short(ish) summary of the kind of thing that is needed. Some of this already exists in the proprietary world but it's a) expensive and b) not always an exact fit for purpose. Free software can enable charities to make their database and data work _for_ them and enable developers to really make a difference with their products.