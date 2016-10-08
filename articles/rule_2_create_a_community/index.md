---
nid: '3051'
title: 'Rule #2: Create a community'
authors: 'Terry Hancock'
published: '2008-11-17 3:46:07'
tags: 'free-software,community,development,peer-productions'
license: verbatim_only
listed: 'true'
book: making_the_impossible_happen_the_rules_of_free_culture
book_weight: '0'
layout: book.html

---
<!--Rule #2: Create a Community-->

The "edge" for free software over proprietary software comes from volunteer effort. You should spend just as much effort on designing a comfortable and inviting project as you would on any consumer establishment: you may not be trying to convince customers to part with cash for your product, but you _are_ asking volunteers to part with their time for your project (which is not any easier).

<!--break-->

=TEXTBOX_START=RULE #2: Create a Community=
# Create a community around your project that suits the people who will use it

Spend time to create a comfortable environment that is inviting to users, contributors, and developers alike around your project. Develop pathways that allow for smooth graded slopes between these groups of people—don't allow them to become isolated from each other.

Different projects have different users. Programmers, artists, engineers, and scientists tend to have different skills, interests, and temperaments. So don't assume the same cookie-cutter approach will work for all of them. Tailor the community facilities around your project to take advantage of the strengths of your users and allow them to contribute as much as possible to your product.
=TEXTBOX_END=

# Playing Tom Sawyer

Mark Twain's character Tom Sawyer, in a classic incident, avoided the chore of whitewashing (painting) a fence by convincing people that the job was a lot of fun. People eventually _paid him_ for the privilege of doing his chore for him. Twain no doubt meant to characterize Sawyer as a bit of a huckster, but the truth is that if he could actually _make_ the task fun through his marketing, then everybody would come out happier.

As a founder or leader of a free-licensed open source project, you are in much the same position. And you have a marketing job to do if you want people to help you out. You need to convince them that spending time on your project will be rewarding: in terms of a contribution to the community, personal accomplishment, a feeling of belongingness to the group, and possibly other reasons. People are different, so you can't assume that the same motivations will apply to everyone.

=ZOOM=Would you start a restaurant without giving any thought to the location, decor, and dining environment that it provides?=

More to the point, if you are somewhat familiar with the demographics and interests of your expected user base (the people you're trying to serve with your project), then you should be able to make some rough predictions about what sort of motivations will work for them. You should also be aware of what sort of barriers exist (e.g. most scientists can program, but are not up to serious software engineering tasks, and they may be particularly conservative about learning new programming languages).

So it stands to reason that you should give some thought to this marketing problem right at the beginning. Not marketing your end product, mind you—marketing the _project_ to people who will help you with it. This could take the form of announcing the project in the sort of online "places" you expect to find your users, but before you can even start this, you need to create a place for them to go!

Ask yourself this: no matter how good a cook you are, would you start a restaurant without giving any thought to the location, decor, and dining environment that it provides? You shouldn't take starting a free software project any less lightly.

=IMAGE=c20080930_r2_restaurants.jpg=Figure 9.1: Decor and "atmosphere" is a very important part of the business plan for a new restaurant, and you should take just as seriously what sort of "atmosphere" your project will present to contributors and users. (Photo credits: dave_mcmt@Flickr/CC-By 2.0, avlxyz@Flickr/CC-By-SA 2.0, Megan Soh/CC-By 2.0, William Murphy/CC-By-SA 2.0)=

The standard for comfort-level for _volunteers_ on a free software project is a lot higher than for professional developers working on proprietary software. People will go through a lot of pain to earn a paycheck. As such, commercial workflow software is often designed simply to minimize pain, maximize speed, and thus increase productivity. In other words, it tries to make it easier to get the job "over with".

=IMAGE=c20080930_r2_cubicles.jpg=Figure 9.2: How much time would you spend in a cubicle if you weren't paid to be there? Don't make the mistake of treating volunteers like paid employees. (Photo credit: Katy Warner / CC-By-SA 2.0)=

But volunteers aren't there to earn a paycheck. They're there to have fun. And that means the process itself needs to be fulfilling, not just relatively painless. Contributors need to feel good about the work they're contributing. When there are unavoidable barriers to contribution, you need to make sure that these tasks are done by your most dedicated developers (possibly meaning _you_), who won't be stopped by the obstacles.

# The simple approach

Community needs for a project vary over a huge range, depending on the skill-level and interests of the potential contributors to a project. Most can make do with very simple infrastructure.

Many of the free software projects now in existence run on a fairly "cookie-cutter" set of ready-made facilities:

* Version control (CVS or Subversion)
* A mailing list
* A website (often static)
* A bug-tracking system

For many small projects, this will be all you need. If you don't expect your project to require a whole lot of collaboration, or you only expect hardcore hackers will be capable of or interested in contributing, then there's nothing wrong with keeping things this simple. In fact, that's probably what those sort of contributors will be happiest with.

=ZOOM=Community needs for a project vary over a huge range, depending on the skill-level and interests of the potential contributors to a project=

To get services like this for your project, your best bet is probably to just sign up on one of the existing free software incubators, like Sourceforge or Google Code. The price is certainly right: both services are free for free software projects (see figure 9.3).

=TEXTBOX_START=Ready-made Hosting for Free Software Projects=

=IMAGE=c20080930_sourceforge_googlecode.jpg=Figure 9.3: Sourceforge (left) is probably the best-known free software project incubator, providing a large collection of services that most free software projects depend on, although there is something of a learning curve. Google Code (right), on the other hand, is part of a newer generation of lightweight hosting options, providing a very minimal, but also very easy-to-use hosting environment for free software projects=

## Sourceforge

Features:

* Static webhosting (or can link to an outside page)
* Standard project page
* CVS or Subversion version control system
* News blog associated with each project (for announcements)
* Documentation server
* File download server
* Mailing list management
* Bug tracker

Advantages:

* High visibility (everyone knows to check Sourceforge for a project)
* Full range of features

Disadvantages:

* Requires approval for each project
* Often slow due to overload servers
* Interface is not very intuitive (though it has been improved gradually)
* Code for service is non-free (but there is gForge)

## Google Code

Features:

* Wiki for homepage and documentation
* Subversion repository for code
* File download server for releases
* Bug tracker

Advantages:

* Fast
* Simple

Disadvantages:

* 100 MB limit on file downloads
* "Lifetime limit" of 10 projects
* Not a lot of features
* Code for service is non-free (but there are free software packages to do the same things)
=TEXTBOX_END=

Although the software for Sourceforge is now proprietary, it was originally a free software package. The original package, gForge, is still available, and has continued to be developed. It is deployed by a number of other, usually more specialized, software incubators: Savannah (run by the GNU project for gnu.org and non-gnu.org projects) and Blender.org are two examples. Other software is used on sites like Plone.org and Zope.org, to support development for those environments. You may find similar services related to any frameworks you might be using for development, and there are many smaller general-purpose hosting services out there, catering to different needs (figure 9.4).

=IMAGE=c20080930_other_incubators.jpg=Figure 9.4: There are a wide range of other alternatives for hosting your project, ranging from highly-customized do-it-yourself sites, to minimalist and standardized database-driven sites=

Many projects will never need more than this, and can be hosted successfully on one of these sites. However, some projects will need to take a different approach.

# Adapting the Technology to Your Community

If you are writing software intended for other developers, you probably don't have much to worry about—they are likely to enjoy messing with the tools as much as you do. But if your software targets other users—engineers, scientists, mechanics, or homemakers, for example—then the people who know the most about how well your package is working may need a more accommodating and less cluttered environment.

Don't fall into the trap of predicting your _future_ community needs based only on your _present_ community's skills and temperament. You may very well have a small group of people who excel at using the tools you have, but that's a selection effect! You may have those people only because those are the only people who will contribute under the present circumstances.

=ZOOM=It's important not to fall into the trap of predicting your future community needs based only on your present community's skills and temperament=

So, if your project is potentially of interest to people who aren't hard-core internet users, who don't feel totally comfortable in the all-text world that so many programmers gravitate to, then you might be doing yourself a disservice by not accommodating them—even if no one presently contributing to the project has a problem.

The further we push the free development envelope into areas like textiles, graphics, multimedia, and engineering, the more and more we will encounter this problem: the people most familiar with the application domain will _not_ be the ones familiar with the standard development tools. Yet, in order to serve that application domain, you need the expert help of people who know it well. Lourens Veen, a developer on the Open Graphics hardware project put it this way:

> "Perhaps a key difference between hardware and software projects is that most hardware developers are not software developers, and the required tools mostly consist of software, not of hardware. If you give a programmer a buggy editor as well as its source, she will fix the editor. If you give a hardware developer a buggy schematic capture tool, he will find something else to work on. In a software project, creating the needed software tools is half the fun, in a hardware project it is a hurdle to be overcome" —— Lourens Veen

Projects can only go so far relying on the few amphibious savants who happen to excel in both domains. At some point, you've got to start making accommodations to make the tools adaptable by and for the people who will use them.

=IMAGE=c20080930_r2_nojoy_workflow.jpg=Figure 9.5: People will put up with a lot of pain if there's a paycheck in it, but when it comes to volunteering, an over-complicated workflow will just make them find something more fun to do with their time. (Photo/diagram credits: pengrin@Flickr/CC-By 2.0, Wonderlane LLC/CC-By 2.0)=

Version control systems are generally pretty off-putting to anyone but programmers. Subversion does improve on CVS a lot, and there are other alternatives, but none of them is really comfortable for a non-programmer (which could include someone who knows how to code, but doesn't self-identify as a programmer).

=ZOOM=Projects can only go so far relying on the few amphibious savants who happen to excel at both the application domain and the existing development tools=

Mailing lists are pretty solid twentieth century technology, but they also present barriers to some people. Those of us who've been using these services for years have a range of lore about "trolls" and "flames" and other annoyances. Some of us may even enjoy the libertarian "Wild West" feel of unmoderated mailing lists. However, for people accustomed to a certain level of civility, they can be pretty irritating places to be. As a result some people find them more trouble than they are worth.

Static websites are okay in themselves, but they really don't do much to build a sense of community. You should consider using various kinds of interactive tools to make the website a useful and active hub for your project.

Bug tracking is good: but realize that not everyone is going to use it. One of the roles you'll want volunteers for is to convert informal complaints, feature requests, and problems into intelligible bug reports.

# Productive Leisure

The ideal state of affairs for a project is a feeling of _productive leisure_. You probably felt this way when you started your project, and the best way to get others involved is to share that feeling. Think of how you feel in your favorite workshop, craftroom, sewing room, garage, machine shop, or home office. The tools you need are accessible. The work is clearly laid out. There's no interference from interlopers, and you are free to be creative.

That's the feeling that is ideal: a feeling of leisure, yes, but also of productivity and creativity. The sort of atmosphere that makes you want to _do_ something.

=IMAGE=c20080930_r2_workshops.jpg=Figure 9.6: The ideal setting is neither the pure leisure of a restaurant nor the austerity of a cubicle farm, but the feeling of creative energy you get in a workshop where you have easy access to your project and all the tools you need to work on it and peace of mind to work on it. (Photo credits: daveseven@Flickr/CC-By-SA 2.0, Rachel Reynolds/CC-By 2.0, ladyada@Flickr/CC-By 2.0, Mike Terry/CC-By 2.0  Florian Groß/CC-By 2.0, Rossina Bossio Bossa/CC-By 2.0)=

Psychologists who study this kind of work sometimes refer to it as a "flow activity": there is a great feeling of satisfaction for people when they are presented with work that is neither too hard nor too easy, thus leading to neither frustration nor boredom. Indeed people can become quite fascinated and absorbed in this kind of work, and this is the role that most hobby activities (model building, machine work, knitting, sewing, amateur radio, etc) tend towards. In order to sustain this feeling as the hobbyist learns and improves, he or she will tend to take on successively more challenging projects.

=ZOOM=The ideal state of affairs for a project is a feeling of "productive leisure"=

Rarely, will the hobbyist attempt to overcome enormous obstacles in difficulty. On the other hand, because of the fascination of the activity, the hobbyist will continue often to heights of skill that professionals generally will not attempt (a professional is motivated primarily to do a "good enough" job and move on to the next one).

=IMAGE=c20080930_r2_ramscoop.jpg=Figure 9.7: Like an information ramscoop, the ideal project will collect high-entropy information about user needs, and through the contributions of successive layers of interested parties, convert that into well-organized code contributions and documentation. In order for this to work, the lines of communication have to remain open, and ideally there is a very smooth transition between layers so that ultimately the boundaries become somewhat arbitrary, approaching a smooth graded slope from end user to core developer to project leadership (Background: Ralph Bijker/CC-By 2.0)=

For amateur-driven projects, it is this progression of interest and skill that replaces the conventional promotion and chain-of-command hierarchy of the commercial setting. The challenge is to create an environment that will encourage the natural behavior of contributors to _self-organize_.

In an ideal free-licensed collaborative project, the community should tend towards a kind of "onion model" (see figure 9.7) where the innermost leaders and core developers work directly on the code (or design), while successive outer layers: contributors, core users, and end users provide various degrees of feedback and contributed information.

Each layer in this model feeds information in a slightly more digested and organized form: general user satisfaction levels become specific feature requests and problem reports which in turn become patches or design concepts which in turn become usable code which then get built into the code or design itself. Likewise, information about the current state of the design or software matriculate outwards, in increasingly articulated and simplified ways: design documents become developer documentation which becomes user documentation which becomes application examples, tutorials, and how-tos.

# The Role of Facilitators

Probably the least appreciated contributors to a project are the folks who simply hang out in the community, chatting on the mailing list or forum associated with it. It's not obvious what value these people contribute to the project, and some project leaders have gone as far as actively discouraging such behavior.

However, it's important to realize the value of such community members: just by chatting, they can be providing an important _facilitation_ role for your project. If they are telling newcomers where to find more information, or even just repeating certain FAQs over and over again in their messages, they are preserving the layering order around your project. They may also serve a useful information-gathering role if they are also involved in other projects.

=ZOOM=Facilitators create a feeling of activity and life in the project which will encourage others to contribute=

If they are also reminding people of previous ideas or posts, they are also _moderating_ the exchange of information between the different layers of the project, and providing a kind of short-term memory for the project. They also encourage people to step across the various layer boundaries, thus blurring the distinctions between "developers" and "users". In this way, they contribute to the creation of a "graded slope" between users and developers, with an ever-increasing level of skill and involvement (which is the ideal condition for motivated amateurs, since it allows each to attain an individualized, self-selected "flow" experience in contributing).

By merely being visible, **facilitators** add their endorsement to the project, and create a feeling of activity and life in the project which will encourage others to contribute as well. So, they are also a means of _marketing_ your community to newcomers, and therefore encouraging better retention of interested potential contributors.

Often such facilitators are not aware of their value to the community, and it can be useful to not only remind them of that value, but also to guide them in maximizing it, through pointing out how these particular activities benefit your community. In other words, don't just shoo them away, learn how to make use of them.


=TEXTBOX_START=Troubleshooting Tips=
#Filling an Empty Room

In my experience, community building is the biggest stumbling block for commercial developers trying to enter the free software community. It's a whole different way of thinking about the project. An effective community has to be (at least partly) under community control, so you have to be willing to step back and allow the community to grow, rather than trying to "manage" it all yourself.

At the same time, you can't just throw the project data out there and just hope it'll catch on. You need to remain engaged with the community you start. Here are a few practical ideas about how to do that:

* Take care in picking software for your community site. Make sure it has features that the community is willing and able to use (see Appendix A for some leads on free software packages for community building). Remember that a simple, easy-to-use site is going to be more important than one which either looks really glossy or has lots of features. A lot of mileage can be had by simply putting up a standard forum or wiki system.

* Minimize "gated entry". Every "buy-in" you force users to make in order to contribute to your project will cut down contributions significantly. Let people make at least some contributions anonymously (you'll need some mechanism to cut out spam, but vandalism isn't as much of a problem as you might imagine). Some features might require a user account, but keep the overhead low: an email address and a password is enough for many sites. Don't hit users with a survey form, no matter how much you'd like to know their demographics.

* Get involved in the community yourself. If you're coming from a company environment, then assign some work hours to knowledgeable people to get on the community site and interact with users. This includes programmers and engineers: people want to know that they are talking to the folks who can actually make a difference or can actually answer their questions, not just sales staff. If you have difficulty finding the skills in your own organization, then considering hiring a paid moderator or two from the community.

* One of the most common mistakes with both forums and wikis is to overspecialize, resulting in lots of little divisions with no content and no users in any given one. This makes your site boring and the few people who are there will start to leave. Instead, keep the environment really small at the beginning: everyone in one discussion forum or mailing list. For a wiki, create a "what's new" or other page that concentrates all the available content in one place. The smaller site will feel more crowded and active, and that will encourage further contributions. Remember, you can always divide up the site later, when it has grown large enough to need it.
=TEXTBOX_END=


# If You Build It, They Will Come...

Don't give up too easily! Spend the time it takes to market your project. You may find that it finds supporters if you can approach them in a way that is comfortable for them. It doesn't take a lot of usability issues to make someone who's just there for fun decide that it isn't any, but on the other hand, it doesn't take that much effort to be fun, either.

=IMAGE=c20080930_r2_productive_leisure.jpg=Figure 9.8: People need a comfortable but energizing environment to turn creativity into action, and this is one of the challenges of creating a community around a free development project (Photo credits: One Laptop Per Child/CC-By 2.0, KOMUnews@Flickr/CC-By 2.0, polandeze@Flickr/CC-By 2.0, Ray Moore/CC-By 2.0, Ilpo's Sojourn/CC-By 2.0)=

Creating the right atmosphere of productive leisure may be a challenge for some projects, but it will be worth it. So spend some time to understand who you're trying to serve with your project and also who's likely to be in a position to contribute. Make it as easy as possible for them to do so.

As we push the envelope on what free development and commons based peer production can accomplish, we will need to pay closer attention to how communities are created and maintained. We will also need to adapt our techniques to suit a broader audience of potential contributors.

# Notes:

[1] See the Wikipedia article on [flow activity](http://en.wikipedia.org/wiki/Flow_%28psychology%29) for more about this subject

# Terms:

**facilitators**: Some people are unable or unwilling to contribute directly to a project, but are still interested in talking about it. Such people can contribute significantly to the visibility, memory, and enthusiasm of the community, regardless of whether they are materially contributing code.


