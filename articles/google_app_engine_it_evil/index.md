---
nid: '2833'
title: 'Google App Engine: Is it evil?'
authors: 'Terry Hancock'
published: '2008-04-24 0:22:03'
tags: 'free-software,web-applications,servers,google,lock-in'
license: verbatim_only
section: opinions
listed: 'true'

---
The Google App Engine doesn't really advance the cause of evil all that much, but it's not exactly good, either. Google makes a big deal about its corporate motto, "Don't be evil", but at the end of the day, Google really is just another corporation, no matter how well-intentioned its founders may have been. Regardless of whether the corporation holding the carrot is called "Microsoft" or "Google", developers should think long and hard before following the primrose path towards lock-in to non-standard designs.

<!--break-->

# Why goals are better than rules

So-called "ethical" arguments ask us to set some kind of absolute standard for compliance that allows us to discriminate the "bad guys" from the "good guys". The problem is, the world of commerce is full of lots of "slightly shady guys" who can, after long contemplation, usually figure out how to get the better of you without actually stepping over the defined line. That puts you in the uncomfortable position of having to re-draw the line: thus making the absurd claim that what wasn't "evil" yesterday is suddenly "evil" today.

That's why I'd argue that it's better to talk about "goals" rather than "rules".

It's more important to understand and support the _goals_ of free software (sharing of code, open development process, freedom of users) rather than the _rules_ (allow modification and redistribution, no limitations on running the code). Because even if someone sticks to the rules, they can create a situation which actually discourages your goals. One rather prominent example is the so-called "Tivo-ization" trick of locking software into particular piece of hardware. Another is providing completely open code which depends on closed code to actually be deployed.

=ZOOM=The Google App Engine doesn't break the rules, but it doesn't serve the goals, either=

The [Google App Engine](http://code.google.com/appengine/docs/whatisgoogleappengine.html) (GAE), like many of Google initiatives over the last few years falls into this gap: it doesn't break the rules, but it doesn't serve the goals, either.

# Evil or not evil?

But, for the time being, let's figure out whether what Google is doing with Google App Engine is "evil" or not. Certainly, it does on the surface sound like a "lock-in" attempt along the lines of Microsoft's infamous "embrace and extend" strategy, or like Microsoft-specific frameworks, like .NET or the "Microsoft foundation classes".

However, just how strong is the "lock-in"? Could you develop an application for GAE, and then deploy it on your own server? Or on some other service? In other words, does using the [GAE Software Development Kit](http://code.google.com/appengine/downloads.html) (SDK) lock you into a Google monopoly on hosting services?

The answer is a qualified "no".

The SDK includes a reference implementation of the server, in the form of a [test server](http://code.google.com/appengine/docs/python/thedevwebserver.html). The code that you write is limited to Python 2.5.2 (the GAE is a sandboxed Python execution environment), but of course, that is a free software interpreter.

The entire SDK is under free licenses, and all of the APIs it supports are fully documented. Thus, the APIs are an "open standard" in that the information is available for you to implement. You could probably implement it all using free software.

=ZOOM=The SDK includes a reference implementation of the server, in the form of a test server=

Finally, the code is extensively based on existing free software code. A good part of it is simply [Django](http://www.djangoproject.com/). Django is a free software server application toolkit written in [Python](http://python.org), so there is a definite path towards a full free-software implementation, if you are willing to take the trouble to do it.

For example, you can probably replace their file-based database storage with [ZODB](http://www.python.org/workshops/2000-01/proceedings/papers/fulton/zodb3.html) and even [ZEO](http://wiki.zope.org/ZODB/guide/index.html), without too much headache.

In other words, this isn't _really_ a case of lock-in, because there are defined interaction standards for this kind of application, and although I can't prove it yet, I'd say they're most likely just using fairly standard Django-based APIs for that part.


# But is it good?

However, the test server is deliberately under-capable. For example, the SDK documentation mentions that "dev_appserver.py can only serve one request at a time".

You obviously can't use _that_ in a production environment.

Still, in principle, you could adapt this to run on a [Zope](http://zope.org)-based or [Django](http://www.djangoproject.com/)-based server. It probably wouldn't be _that_ difficult, since production-capable free software servers based on those technologies do exist. But it would require extra work.

=ZOOM=However, the test server is deliberately under-capable=

More insidious are some of the details of the APIs that Google supports. Some of these are, admittedly, highly specific to services that Google is a well-known market leader for, and which are unique services, which therefore require a unique API:

The [Users API](http://code.google.com/appengine/docs/users/) seems to be mainly about creating a "single sign on" experience for the end user. The SDK server just has its own sign-in pages.

The [URL fetch API](http://code.google.com/appengine/docs/urlfetch/) seems a little strange to me, but the SDK just does it from your computer (but what else would it do?). I suspect that the deployed version provided by Google's hosting service probably uses some sort of caching here.

The [Mail API](http://code.google.com/appengine/docs/mail/) allows you to send mail with their specific API. The SDK version is supposed to be able to use your local Sendmail instance.

=ZOOM=If you design for GQL, you may be in for some very nasty surprises if you try to use a free software SQL server=

By far the most suspicious case is the [Datastore API](http://code.google.com/appengine/docs/datastore/). Google uses what it calls an "SQL-like syntax", which it then dubs the "Google Query Language" or [GQL](http://code.google.com/appengine/docs/datastore/gqlreference.html). This may be very nearly a subset of SQL, but they've offered no such guarantees. That means that if you design for GQL, you may be in for some very nasty surprises if you try to use a free software SQL server like MySQL or PostgreSQL.


# Alternatives

It's an important point that every one of these services is available as part of a free software web application framework (such as [Zope](http://zope.org)). So, you have the option to use a free software API, or to use Google's. They probably aren't really that different, but Google is offering no promises about that.

I can easily find standard free software server applications that provide all of these services in completely free ways. Zope (for example) provides all of these services, either as released, or through extension packages. Furthermore, Zope is a production-capable server, which can be scaled up in much the same way as the technology Google is using.

=ZOOM=It's an important point that every one of these services is available as part of a free software web application framework=

Caching is relatively easy to implement, if that is the point of the "URL fetch"; the Mail API is provided through a standard product in Zope (MailHost) or any of several alternatives; and it would probably be much more open to use [Open ID](http://openid.net/), rather than Google's specialized User API.

And of course, access to data in Zope is available through a standard object database or through SQL. In fact, one of the backends for the object database uses SQL to access an external SQL server (it works well with both [MySQL](http://www.mysql.com) and [PostgreSQL](http://www.postgresql.org), from what I have heard, and it probably works with a variety of other SQL servers as well).

And by using a free software based solution, you eliminate any dependency on a single supplier of internet hosting services, giving you a choice of a wide range of hosting services.


# Give and take

Finally, it's probably worth remembering that Google is largely _built_ on free software. Most of their unique services were derived from free software originals. They maintain an advantage against the free software community by deploying improved free software without sharing the code, exploiting a loophole which says they don't have to share code if they don't distribute it.

=ZOOM=Google is largely built on free software=

Google has of course done some great things for the community. They do share some of their code, and they do sponsor student developers and project mentors in their "Summer of Code" projects.

But if Google were to wholeheartedly pursue the _goals_ of the free software movement, it would share all of the improvements that it makes to free software packages.

Of course, we don't require that they do. We have established rules that they must follow in order to comply with free software licenses, and that's acceptable. The idea of whether to license software in such a way as to make such private modification and deployment legal was clearly thought out, and the decision was made not to limit that kind of use.

The point here is not that Google is doing something "wrong" or "unethical" (because we've carefully decided not to draw the line there), but that it's a fallacy to think of Google's "unique products" as truly original works. Likewise, it's a fallacy to imagine that Google is somehow being magnanimous in its "donations" of code to the community, when in reality, it is only reciprocating what the community has provided to it (and only partially). Nor is it really proper to call its sponsorship programs "generous", when in reality, the amount of free labor that Google has appropriated is much larger than what they have paid for.

Google has done what's best for Google, and we need to do what's best for us. There's no "ethics" or "philanthropy" here, it's "just business".

=ZOOM=Google has done what's best for Google, and we need to do what's best for us=

Google may play within the rules, but that doesn't mean they're our friend. Indeed, it is a fundamental misconception to apply such concepts as "friendship" or "loyalty" to corporations. They don't have such feelings. Larry Page and Sergey Brin may be decent, well-intentioned people—but that doesn't mean that Google necessarily will be. It certainly doesn't mean that it will remain so, even if it is now.

The constant pressure to seek profit will see to that. There is even a point of view from which the incessant attainment of profit at any cost to the public is the only "ethical" behavior for a corporation (a viewpoint popular with many wealthy shareholders, who may see losses taken for the benefit of the public to represent a betrayal of their interests).

Corporations are machines. Sometimes they're a benefit and sometimes they're a hazard. The mistake lies in thinking that they _are_ people, simply because they are constructed from people. But corporations are _less_ than the sum of their parts.

=ZOOM=Corporations are less than the sum of their parts=

That's because we haven't yet deployed a better way to organize people on that scale. It is possible that the free culture and commons-based production _is_ that "better way". But the "commons-based enterprise" is not as mature as the "corporate enterprise", so it will take time for that to be realized.

In the meantime, we have only the present uneasy detente with the existing corporate bodies. Google is a relatively good one, but don't make the mistake of trusting them too much.

Make no mistake: Google App Engine is designed to make Google profit, not serve the public good. They could have based their service entirely on free software, and contributed any improvements they felt were needed, back to the projects that have supplied them with the tools for economic success. But they _haven't_ provided such a fully-capable system in the GAE SDK. So they're not making it _easy_ for you to deploy elsewhere—they definitely want deploying on Google to be the path of least resistance.

Is that "evil"? Well, no, not really. But it isn't exactly "good" either. Which means, if you're a developer, you have to make the same tightrope decision: will you choose convenience and merely try to "not be evil", or will you choose freedom and try to actively "do good"? I can't condemn either option, but you should make the choice with your eyes open.

