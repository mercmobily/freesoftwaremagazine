---
nid: '2579'
title: 'Today''s Perl problem is popularity, not power'
authors: 'Marco Marongiu'
published: '2007-11-16 7:00:00'
tags: 'perl,perl6'
license: verbatim_only
section: opinions
listed: 'true'

---
The best thing for a programming language is to be powerful and popular at the same time. Perl was like that some time ago, but over the years it has slowly lost its appeal, even while retaining and increasing its power. And Perl 6 has just come too late to save the day.


<!--break-->


Perl is a great tool for my job. Period. Small quick-and-dirty one-liners, “glue” scripts, complex automation tools... there is no area of my job where it hasn’t helped me doing my job better and solve problems that would have taken too long otherwise (with other tools or programming languages).

Nevertheless, despite its great power, the language has lost much of its popularity over the last decade. The effort that led to starting the Perl6 project aimed, beyond other things, at improving the strengths of the language (i.e. its power) while, at the same time, attempting to regain some of its former popularity.

Seven years have just passed. Maybe, at least as far as popularity is concerned, it’s just too late.


# Let’s talk about popularity

When I started using Perl more than a decade ago, it was quite popular. No other language seemed to be more appropriate for server-side web programming, and since the web was in its “boom”, so was Perl. And that was Perl version 4.

Today, with version 5.10 near to release and a huge number of very good modules and tools on CPAN, Perl is much more powerful and useful than before. Nevertheless, its popularity is in a constant decline. With PHP (which started as a Perl project in the beginning), Java and Microsoft’s junk on the web server side, Java and Javascript on the web browser side, and Java again for the applications (with Python gaining popularity and strength day after day), Perl’s appeal is a fraction of what it had in its golden age.

It would be tempting to complain about Sun feeding Java with marketing and money while Perl has no paying sponsor, but that would be too easy. What would we say about PHP and Python then?

In the middle of year 2000, the community perceived that the wind was changing, and fired up the Perl 6 project. It was a kind of democratic process, where a number of people proposed how they would have liked the new version of the language to be in some aspects.

The process went on, and goes on today. The last Apocalypse document from Larry Wall, the inventor of Perl, dates April 13th, 2004 and was last revised on May 25th, 2006.

The last Exegesis document dates February 26, 2004.

Synopses date back in 2004, with some recent revision (October 2007), showing a sign of activity there.

And it’s recent news that [the Perl Foundation and Mozilla Foundation granted a new Perl 6 Development Grant](http://news.perlfoundation.org/2007/11/patrick_michaud_awarded_perl_6.html).

Nevertheless, after seven years, the design is still incomplete and the current implementation of “Perl 6 engines” is far from being complete (and how they could be considered complete, since some aspects of the language are not yet covered in the design phase?).

And it’s pointless to ask for an estimate, where the process is, how long it will take to complete... You can do that, I did it myself. You’ll get many answers, like “you can use Pugs/Parrot”, or “look at the Perl6 namespace on CPAN, you can already use Perl6 code in your Perl5 programs”, but the real question (i.e. “When will Perl6 be released?”) simply can’t be answered.


# Now let’s talk about power

With all this depressing talk you might be discouraged from trying Perl.

Don’t be.

I could now sit here and enumerate a great list of reasons for you to use Perl today, but, if I did, as though I was the holder of a religious-like truth, it might cause too much controversy. And I don’t want that.

Therefore, here are the reasons why I personally use Perl. I don’t mean in any way that they are absolute values, I just hope they will fire up enough curiosity in you for you to give the language a try.


## Perl is understanding

I assume that you are a good car driver: you always take the time to fasten your seat belt before even starting the engine, you respect the speed limits, the traffic lights, the road signs and so on.

Nevertheless, I expect that if you were rushing to take one of your loved ones to the hospital, you would be quite upset if the car wouldn’t move unless you fastened the seat belt, or would force you to respect the speed limit even if you needed to go as fast as you could. You are a good and rule-abiding citizen, but there are times when you simply can’t.

Perl works the same way.

When you need to build a big, composite, complex application, Perl gives you all the tools you need to do the job the right way (e.g.: it forces you to declare variables, it gives you the chance to use the Object-oriented paradigm, it comes with a bundle of ready-to-use, high-quality modules for the most common needs...).

But if you just need a quick hack, it doesn't get in the way. E.g. if you don’t ask it to be strict with variables, it won’t be; if you just need two or three subroutines and a few lines of procedural programming, it won’t force you to be perfect.

It’s up to you to decide how tight your leash will be. You can even decide not to have any leash at all.


## Perl is flexible

As its creator says, “Perl was made to make easy things easy and hard things possible”. Whether you need to parse a full-fledged, huge XML file or the simple output of a UNIX command, whether you are creating a complex client-server system or a peer-to-peer application, a command-line interface or a graphical user interface, a program that will run just on one operating system or a multiplatform application, you can do that, and much more, with Perl.


## Perl is powerful

With a rich library of core modules bundled with the distribution (and with many others available from CPAN), and a wide range of powerful tools and features (just think of the power of regular expressions, that were extended in Perl and later ported to a number of other programming languages and tools), Perl is always a powerful tool for a wide range of problems. In particular, it is a **must** for System Administrators.


## Perl speaks your language

With all the advantages and disadvantages that it may bring, with Perl there is always more than one way to do anything (Perl’s motto is “There is more than one way to do it”). If you have sufficient knowledge of the language you’ll find concise and expressive ways to do the job with a touch of elegance. If you just know a few constructs, no problem: Perl won’t complain about your “baby talk” as long as it will do the job.


# In conclusion...

Powerful, flexible, programmer-friendly... are you sure you don’t want to give it a try?


# References


1. [State of the Onion 2000](http://www.perl.com/pub/a/2000/10/23/soto2000.html)
1. [Perl6 development site](http://dev.perl.org/perl6/)
1. [Perl6 Apocalypses](http://dev.perl.org/perl6/doc/apocalypse.html)
1. [Perl6 Exegeses](http://dev.perl.org/perl6/doc/exegesis.html)
1. [Perl6 Synopses](http://dev.perl.org/perl6/doc/synopsis.html)
1. [Patrick Michaud awarded Perl 6 Development Grant as a joint initiative by The Perl Foundation and Mozilla Foundation](http://news.perlfoundation.org/2007/11/patrick_michaud_awarded_perl_6.html)
1. [How much Perl6 have we got?](http://perlmonks.org/?node_id=485426)
1. [How much Perl6 have we got? (take 2)](http://perlmonks.org/?node_id=614842)


# Post Scriptum

Sorry for being away for such a long time, due to health problems. Nothing grave, just serious.

