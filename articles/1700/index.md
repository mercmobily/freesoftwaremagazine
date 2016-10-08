---
nid: '1700'
title: 'What do we know?'
authors: 'Tony Mobily'
published: '2006-07-29 12:50:58'
tags: 'programming,ruby'
license: verbatim_only
section: opinions
listed: 'true'

---
I’ve always been interested in how our brains work. The brain is a very powerful computer, and we still don’t really know just how it _really_ works.

As a writer and a programmer, I sometimes experience a “wow” moment. Today, I had one of them.

I am a proud Ruby programmer; Ruby saved me from Perl, and I can only be extremely grateful to Matz for creating it. I can say now that I “know” Ruby (even though I don’t really know it as well as I would like). And yet...

And yet, I don’t. At all.

My brain knows Ruby. I can sit down, enter the magical “programming space” and simply program; however, my awareness of what is actually happening is very limited.

The “wow” moment came from me thinking “there are two ways in Ruby to define a block. One is the inline way, and one is the longer way. Now, how do you do that... either way?”

This is a very, very, very, basic question in Ruby. Anybody who has used it for more than 6 days knows how to answer it.

But I couldn’t.

I really, really couldn’t, because _I_ simply didn’t know.

I decided to torture myself a little more, and said to myself “You can always string several instructions in the same line using a separator. So, what is the separator in Ruby?”

Again, I had no idea. I couldn’t decide if it was the semicolon or a colon.A few minutes later, I gave in: opened my laptop, ran irb (Interactive Ruby), and typed instantaneously and without hesitation:


=CODE_START=

5.times do |n| puts n; puts "Again"; if n == 2 : puts "TWO!" end; end
5.times { |n| puts n; puts "ah!"; }

=CODE_END=

I read what _I_ wrote, and all of my questions were answered.

So, do I really “know” Ruby? Maybe not. Maybe programming is somehow wired into my brain, in a place I can only really access when I enter my “programming space”—which is frustrating, because I cannot get rid of the feeling I don’t actually know anything.

If you’re a programmer, do you experience this phenomena?

