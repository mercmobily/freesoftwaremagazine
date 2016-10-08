---
nid: '1694'
title: 'Free software and politics in Yankeetown'
authors: 'Andrew Seely'
published: '2006-12-15 6:30:00'
tags: 'free-software,yankeetown,politics,activism,grassroots'
issue: issue_15
license: verbatim_only
section: opinions
listed: 'true'

---
The picturesque village of Yankeetown on Florida’s Nature Coast has been the recent target of a large time-sharing resort condominium development proposal. Several townsfolk looked into the development and discovered what appeared to be corrupt practices in the town government. A loosely organized group of citizens decided to coordinate and share information via a web presence. Beyond any expectations, the picture albums, message boards, and mailing lists they used have been the catalyst for gaining state-wide attention and have led to direct intervention from the Governor’s office. This article describes the technical implementation and evolution of this grassroots movement, showing how a variety of basic free software tools were assembled to create a tool for political change.


# Welcome to Yankeetown

Yankeetown is a small town, somewhat isolated, lovely. Some say it’s perched like a bird, others say it’s nestled like a kitten, along Florida’s Nature Coast. It’s one of the last, if not the last, small Florida coastal towns without any significant commercial development. A handful of small businesses, a history of commercial fishing, the lingering memory of a movie Elvis made here, and a slowed-down charm make the town special. A rapidly changing demographic, skyrocketing property values, and a location between river and ocean make it a very inviting target for intensive resort-style development. Yankeetown’s 600 residents live alongside the 1200 residents of Inglis; together with a scattering of families outside the town limits, they make up the greater Inglis/Yankeetown area. This is my home town.


=IMAGE=town_limit.jpg=Welcome to Yankeetown=

While I have spent the last ten years moving around the world, first serving in the U.S. Air Force and now as a defense contractor, I have always held a tight bond with my home town. While homesick and stationed in Germany in 1998 I created the [first Yankeetown web site](http://www.yankeetown.org/), and this site remains in operation today with public photo albums and message boards for folks to share memories and stories. I added a [second site](http://www.yankeetown.com/) in 2002 with the intent of offering townsfolk free webpage hosting and email addresses. In early 2006, a major development was being proposed for Yankeetown and a friend contacted me about making a web site to act as a clearing house of information about the development and what people might be able to do to stop it.


# Evolution of technical requirements

The initial requirement was simple: make a web page with information so citizens could have a resource other than word-of-mouth. I asked that the principle people interested in having the page do all the writing; as a very interested Yankeetown ex-patriot, I felt that I was too far removed geographically from the issues to be an effective participant. So I established my role clearly as a technical service provider and started work on [http://www.saveyankeetown.com/](http://www.saveyankeetown.com/).


=ZOOM=The initial requirement was simple: make a web page with information so citizens could have a resource other than word-of-mouth=

Like any new technology project, the initial requirement immediately escalated as piles of raw documents filled my inbox. My copy-paste-smile role quickly morphed into graphic designer, proof-reader, editor. Then the participants who initially wanted the web site moved on—not away from the development issue, but away from the technology part. After the initial rush to set up, they could rarely be found to vet new information, provide written material, or approve new layouts. It became my project, not unwillingly but certainly without my intent.

I felt that three things were needed in addition to the simple, static information page we had so far: a listserv to facilitate private group discussion, a public message board, and a photo album. Three months later, the listserv is largely unused, but the message board and photo album are examples of vigorous civic debate.


=ZOOM=Three things were needed in addition to the simple, static information page we had so far: a listserv to facilitate private group discussion, a public message board, and a photo album=


# Technology used

I leased a [Red Hat](http://www.redhat.com/) 7.3 server from [John Companies](http://www.johncompanies.com/). While somewhat expensive, a John Companies server is perfect for someone who likes to compile their own web server software and who feels naked without a command line and a root password. [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/) from my Windows XP office-automation load or [OpenSSH](http://www.openssh.com/) from my Red Hat development box connect me to the remote server.

To support the web site, and in support of other sites I maintain, I built [Apache](http://www.apache.org/) 2.2.0 from source and compiled support for SSL. I built [PHP](http://www.php.net/) 4.4.2 from source with [MySQL](http://www.mysql.com/) and [gd](http://www.boutell.com/gd/) support, and added appropriate LoadModule directives to my `httpd.conf`. An unrelated project I was working on had a dependency on the 4.x release of PHP and I didn’t plan on this new project being so high-speed as to require the latest 5.1.4 release. The MySQL 4.0.14 install package from binary, again in support of an older project, rounded out the server requirements. No server running PHP and MySQL is complete without [phpMyAdmin](http://www.phpmyadmin.net/home_page/index.php), in this case version 2.5.3. I now had a good baseline system.

I’m running [qmail](http://www.qmail.org/), [ezmlm](http://www.ezmlm.org/), [vpopmail](http://sourceforge.net/projects/vpopmail/), and [Squirrel Mail](http://www.squirrelmail.org/) to provide virtual hosting of mailboxes on different domains. This setup is challenging to get tuned correctly, but the cookbook on setup maintained by [Michael Bowe](http://www.pipeline.com.au/staff/mbowe/isp/webmail-server.htm) is simply brilliant. Having ezmlm already loaded, it was easy to set up any number of mailing lists. It seemed that only one was required to save Yankeetown.

The [Phorum](http://www.phorum.org/) message board system is clean and simple. I chose Phorum version 3.4.6 because I had good experiences with it from other projects and because it integrated well into my simple site design.


=ZOOM=I chose Phorum version 3.4.6 because I had good experiences with it from other projects and because it integrated well into my simple site design=

For a user-friendly photo album, I needed something that would allow anyone to upload a photo and any number of comments to be associated with any particular photo. I had some old Perl code lying around from the very first Yankeetown web site, and it seemed to fit the need. This code was at least eight years old but worked fine. Going to the photo album presented every uploaded picture in the original size, with all comments underneath the picture, and the upload form was presented at the bottom of the CGI-generated page. After several dozen large pictures were uploaded, townsfolk started complaining that their dial-up connections weren’t able to handle the photo album page at all. What I needed was a photo album that would create thumbnails.

Having PHP and MySQL already installed, I went looking for a PHP-based photo album. There are many to choose from, but none that met all requirements. I finally settled on [PhotoFrame](http://photoframe.sourceforge.net/) 6.9. PhotoFrame creates thumbnails in a left-side navigation frame and presents full-sized pictures with comments on the right. Visitors can add any number of comments to an uploaded picture. The PhotoFrame code is a single file with just a few configuration variables and installs easily. Perfect, except that it has no facility for uploading pictures without an administrative password. I broke apart my ancient Perl code, extracted the upload subroutines, and scabbed a CGI onto PhotoFrame to satisfy all the requirements.


# The inevitable problems

The whole site seemed like a quick job, a few hours’ fun with HTML and I’d move on to the next project. Instead, it quickly mushroomed into a very busy server. Don’t let the “population 600” fool you; there are people from around the state and the country who have lived in Yankeetown, who plan to retire in Yankeetown, who hold the place dear to their hearts. I had daily server crashes.


=IMAGE=saveyankeetown_page.jpg=Save Yankeetown website=

A quick consultation with John Companies technicians showed that my virtual memory was insufficient; after a certain point whenever httpd would try to `fork()` to handle a new connection it would simply die. John Companies increased my allocations and, after a very choppy week, the server settled down to the business of serving.

No message board is complete without spam. In what appeared to be an automated attack, we started getting advertisements posted in every thread. The first round of attacks all came from the same IP address. A Deny statement in my VirtualHost directive solved the problem. A week later, the same advertising spam, but from a dozen different addresses. The users of the message board and I had a heated debate about requiring Basic Authentication passwords, mandatory registrations, moderated threads. One citizen suggested that I call the FBI to report the interference with grassroots political action by subversive parties. In the end, I simply added Deny statements for several dozen IP addresses and the problem has all but gone away.

A request came for a private discussion area. The public forum serves a great purpose, but a small group wanted a collaboration area for strategic planning. My version of Phorum supports multiple message boards from the same instance, but I didn’t have any easy way of making one specific message board protected. I made an SSL-protected portal with Basic Authentication and installed [phpBB2](http://www.phpbb.com/) 2.0.21, using the same MySQL database instance already installed. phpBB2 is a versatile tool with many more security features, but it’s also more complicated looking from a user’s perspective. Despite their request for privacy, security, and registration-based accountability, the members of the group were largely unable to navigate the passwords and new interface. Since they all live within two miles of each other I suspect that they’ve just taken to having lunch together to do strategic planning, but this underpins the lesson that more is not always better when it comes to technical solutions. I had initially thought about upgrading my old Phorum to the new, “better” phpBB2 for the general message board, but this experience taught me that an upgrade would kill the perceived usability of the site.


=ZOOM=The single biggest problem I’ve had isn’t related to the technology at all, it’s the people=

The single biggest problem I’ve had isn’t related to the technology at all, it’s the people. Many times since I’ve started this project I’ve found two emails in my inbox: Bob says that Jim is a jerk and needs to be kicked off the message board. Jim says that Bob is a moron and should be banned for life. People make threats to each other, people insult each other, and some days it seems like no one can spell their own name correctly. But I built the system using free software tools and I’m a free software guy, so I’ve tried to apply this sensibility to the content as well as the technology. Everyone gets a voice, no one gets banned, ever, but no one is allowed to threaten or insult, ever. Correct spelling is highly encouraged, but not required.


# Lessons learned

I’ve decided that it is almost impossible to predict the behavior of a site like this. There are 20-80 posts per day in the message board and thousands of hits per day to the site itself. While those seem like small numbers, remember that this is a town of 600 and the only advertising the site has had is word-of-mouth.

Recently, a citizen set up a message board on a different web site with the intent to run a more civilized, directed-topic discussion about town politics. The only posts in that message board were his own, so he shut it down after two weeks. How do you plan for a site like this when it could go super-hot or super-cold? Were I to do it again from the start, I would build from the most current software versions to prevent needing to upgrade while the site is busy. I would also try to find a reliable content editor so I could focus on systems support, and I would expect nothing but prepare for everything.


=ZOOM=Coordination of effort and sharing of information have led to action that has clearly been a significant roadblock to big development in a small town=


# Results

The political debate is still on-going. The mayor is being officially recalled. The state’s attorney is involved. The Florida Department of Law Enforcement is investigating allegations of misdeeds in Town Hall. The Governor has declared a state of emergency and has directed special elections. Yankeetown has emerged on the state-wide stage with front-page coverage from major newspapers like the Tampa Tribune and the St. Petersburg Times. For now it appears that the proposed development is at a standstill, if only because the town government has been shut down pending elections and investigations. There have been accusations that the Save Yankeetown movement has acted poorly, improperly, and in bad taste, yet coordination of effort and sharing of information have led to action that has clearly been a significant roadblock to big development in a small town.

While it is the dedication and tireless effort of the townsfolk that has brought the town to the point of political catharsis and has stymied what looked like an easy paycheck for a development company, it’s commonly pointed out that it’s the technology that provided the edge. The use of free software tools allowed the townsfolk to have a common forum to collaborate amongst themselves and to draw wide-ranging attention to a political firefight and an incredibly vigorous grassroots effort. The LAMP (Linux/Apache/MySQL/PHP) combination is common, but in this small town it has been put to use with a very uncommon result.

