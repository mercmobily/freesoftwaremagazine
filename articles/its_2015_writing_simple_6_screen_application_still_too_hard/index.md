---
nid: '3852'
title: 'It''s 2015, writing a simple 6 screen application is still too hard'
authors: 'Tony Mobily'
published: '2015-06-15 6:53:00'
tags: development
license: verbatim_only
section: opinions
main_image: main.jpg
listed: 'true'

---
Last night I saw a message from a friend of mine in Facebook: she is trying to organise a baby sitting community where people who trust each other will exchange "tokens" when they babysit each other's children. My first reaction was something I just couldn't resist: I drew up a normalised bunch of tables (6, to be precise) which will organise carers, children homes, and bookings. I even wrote the server side part of the story as a bunch of REST calls (it took me 2 hours in total). Then... I realised that giving an interface to my data was way, way harder than it should be.

<!--break-->

Often, I have one of those fantastic little ideas which would make our lives a million times easier; nearly always, I discover after a 3 minute search that these ideas are already implemented in the form of a web site or a slick phone app. It's rare -- but it does happen -- that I have a really useful, simple idea that nobody has implemented yet.

There may be several reasons behind the gap in the market: sometimes they are simple ideas with a very tricky implementation (that's probably why it took so long for something like Uber to come by: it's a simple idea, but the actual implementation is really quite hellish); sometimes, the ideas are just not worthwhile in terms of economic return (for example, think about... a babysitting swapping network).

When I do have an idea that I feel is worthwhile, I soon realise that I shouldn't even dare going that path.

# The (easy) server side

As a developer, I seriously whipped the server side of things in less than 4 hours;  was facilitated by [Hotplate](http://www.hotplatejs.com/) -- which I know really well, since I... _wrote it_. Thing is, in less than 4 hours I had a fully working set of REST stores, including validation, that were ready to be used to store useful data.

This is the beauty of server-side technology: it doesn't evolve as quickly as the client side; so, technologies have time to become established. NodeJs is the new kid in the block: released in 2009, it reached notoriety a couple of years later and today it's established as a platform to write server side applications, with thousands and thousands of modules actively developed. PHP has been around since... well, forever, in web terms and frameworks that sit on top of PHP, like Symfony, have reached a level of stability that most of the other projects should simply envy. It took me 3 years to put Hotplate together, and it's still very relevant.

In comparison, Angular came out the same year, and reached notoriety around the same time; however, _it's now being rewritten from scratch_ (with people around the web wondering if [the Angular Team lost their marbles?](http://blog.dantup.com/2014/10/have-the-angular-team-lost-their-marbles/) ). Polymer, another client-side framework, has a story that is very similar to AngularJS' (although the 1.0 release seems to be coming a little quicker); Yahoo's YUI has been discontinued, and Dojo usage collapsed in the last 2 years, with version 2 slowly coming along.

So, to go back to my problem: I have this great API, ready to go. What now?

# The interface dilemma

There are so many options, that it's hard to even mention them and make much sense.

If you talk about mobile devices (that is, Android and iOS), what route should I go? Shall I write a native Android app _and_ a native iOS app? Or maybe I should use something like PhoneGap? Or maybe I should just write a mobile-friendly site, maybe even going as far as emulating the look&feel of the operating system viewing it?

What about the web app? Should I write a one-page Javascript-rich app? Or maybe just a bunch of page-reload pages? Do I create the layout with a text editor and raw CSS+HTML? Or shall I use a WYSIWYG editor?

What should I use, in terms of widget? The good old Dojo Toolkit? Or the unfinished Polymer 1.0? Or the soon-to-be-obsolete-by-its-own-release AngularJS? Or just go native?

Back in 1992, _more than 23 year ago_, I used a tool called "Remind". It was called a CASE (Computer Aided Software Engineering): it gave you a simple text-based interface to create advanced, database-driven applications, with the ability to customise code whenever you wanted to; it even managed record locks. Don't even bother looking it up: it was before the Internet existed, only paper magazines ever talked about it, so it's not in the Internet's giant short-term distributed memory. Well, using Remind, I would have put together an interface for my tables in less than 4 hours -- start to finish. I am talking about a finished product, with menus, custom code, and ability to _fully_ function. Fast forward to 2015: "forget it". In four hours, I can barely make my mind up on how confused I am about the available choices. For hours is probably not even long enough to make up some mockups with Gimp or Photoshop for the Android mobile app.

Companies like Google and Apple, who write the underlying libraries and development tools, have no excuses for not providing a visual environment where you draw your application and inject custom code when needed. Visual Basic and Delphi did it 24 years ago: surely, it must be possible to do it now.

# We shall still develop

Regardless of how bad the situation is, I thing I should still sit down and at least _try_ to get this little project going. I will put it up on GitHub, and see if anybody is willing or able to help. It's for a good cause after all.

However, I just can't stop thinking: it can't be this hard; and surely, it _shouldn't_ be this hard.
