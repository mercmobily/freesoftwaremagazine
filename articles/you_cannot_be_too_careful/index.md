---
nid: '2236'
title: 'You can’t be too careful'
authors: 'Steven Goodwin'
published: '2007-06-17 8:00:00'
tags: 'security,question'
license: verbatim_only
section: opinions
listed: 'true'

---
Having a web page is probably the most complex of the 'simple' tasks available. The typical process pipeline would begin with DNS, converting a human-friendly name into an IP address, and would be registered through one of the many registrars on the Internet. This IP address would connect, via your ISP's address block, to your public router or load balancer, routing valid traffic (and _only_ the valid traffic) to the appropriate machine on your network. This machine could be a GNU/Linux box, an embedded device, or an arbitrary, standalone, application that just happens to open a suitable port. This machine relies on the server software and (sometimes) the underlying operating system to determine which files are available to which users.

And at every stage there's software involved that could be bugged, broken, or suffering planet-sized security flaws. Each configuration file gives an opportunity for human error, opening the holes wider. Every registration service discloses a little more of your private information to the general public. With so many steps involved, is it any wonder that problems exist?


<!--break-->


So, there’s a chap in Michigan, let’s just call him “Steve”, who’s into porn. Big time. He likes mature women, black women, and something called “big bubble butt” porn. Whatever that is.

I know his address, phone number, hobbies, the music he likes, and even what his coffee table looks like. This took _one_ step—typing a simple term into Google.

I then typed one piece of information into whois—and I think you all know which this was—and now I have his full name, photograph, work address, and number.

Let’s face it, this was too easy. I’ve done white hat hacking before, and found the security flaws and issues that any self-respecting hacker would know. What is outlined above can found by any self-respecting web surfer without even trying. There’s no attempt on the part of “Steve” to hide it, and as he’s made everything open to the public, it might not even come under computer misuse. It’s akin to looking at his public notice board, rather than breaking down his door to read his diary.

The barrier to entry (pardon the pun) is too low.

So, who’s to blame?

