---
nid: '3737'
title: 'Is the radioactive H.264 going to poisoning us, and the web, until 2028?'
authors: 'Tony Mobily'
published: '2012-03-21 6:56:34'
license: verbatim_only
section: opinions
main_image: main.jpg
listed: 'true'

---
Whether we like it or not, H.264 is "the" de-facto standard on the Internet. Every time you visit Youtube, you are watching a video encoded using the H.264 standard. The video quality is great, the compression is astonishing. And so is the price. H.264 is subject to a huge number of software patents. You need to pay hefty licensing fees if you want to create H.264 files today. We, the users, are not feeling this as we are not paying a cent. However, the freedomes allowed by this format are limited, and vague at best: here is why. _(Note: this piece originally had a different title, "The bomb called H.264 is set to explode in 2015. Are you watching?". However, I have been pointed out that the terms have indeed been extended. The problem, however, is still there)_

# Who gets the money?

The licensing money from H.264 are managed by [MPEG-LA](http://www.mpegla.com/main/Pages/About.aspx). They manage the "patent pools" that cover the H.264 standard. Having a separate organisation was a must, since there are countless patents, owned by several corporations; some of them, you may well have heard of: Apple, Cisco, DAEWOO, Dolby, Fujitsu, Hewlett-Packard, Hitachi, JVC KENWOOD, Philips Electronics, LG, Microsoft, Mitsubishi, Nippon, Panasonic, Bosch, Samsung, Sharp, Siemens, Sony, LM Ericsson, Toshiba. A lot of them are not _exactly_ devoted to the well being of the technological world.

Anybody writing software that decodes, creates or serves H.264 files is subject to pay license fees up to 5 million dollars (!). Since Flash uses H.264 (and so do you, every time you watch a Youtube video), they surely pay their fee. So so pretty much every hardware maker that makes cameras -- in fact, anybody who makes hardware or software able to create H.264 files is meant to pay licensing fees for this "open" standard, allegedly licensed at "reasonable rates".

# No, you are not safe

What about end users?

The nice gents at MPEG-LA first gave users assurance that users _decoding_ H.264 contents that is _free_ won't own any royalties [at least until 2015](http://www.mpegla.com/Lists/MPEG%20LA%20News%20List/Attachments/226/n-10-02-02.pdf). They then adjusted their terms, and extended it [during the entire life of this License](http://www.mpegla.com/Lists/MPEG%20LA%20News%20List/Attachments/231/n-10-08-26.pdf).

The wording in their press release is highly confusing. People online are trying to figure out what this license actually allows you to do. For GNU/Linux users, and for anybody using free software programs like VLC or free browsers like Chrome, this only means that if you are using your codecs to view _free_ contents from the internet, you are safe. It is unclear whether the developers need to have paid the H.264 licensing fees or not. Using VLC to view paid contents might well be very illegal, even now.

# Alternatives, anybody?

At the moment, if you want to distribute videos online you have three options:

* [H.264](http://en.wikipedia.org/wiki/H.264/MPEG-4_AVC)
* [OGG/Theora](http://en.wikipedia.org/wiki/Theora)
* [Google's WebM](http://en.wikipedia.org/wiki/WebM) 

H.264 is what it is. OGG/Theora, partially because of its technical faults, hasn't managed to win over H.264 -- and it looks less and less likely that it will in the near future. WebM is Google's [123 million effort](http://en.wikipedia.org/wiki/On2_Technologies), released in May 2010. It does deliver in terms of file size and quality, but it's still young.

So, there is a patent-encumbered standard; one less advanced, free option; and one fantastic, license-free effort. Why hasn't the free option squashed the expensive one out of existence yet? 

# Because of Adobe Flash. And copy protection. And advertising

We are still watching videos in H.264 format every day for tree reasons:

* Adobe's broken [promise to support WebM](http://blogs.adobe.com/flashplatform/2010/05/adobe_support_for_vp8.html). They promised they would last year. Then, Flash 11 came out, and there was no trace of WebM support. Corporations do break their promises, remember?

* Copy protection. the HTML5 way of doing things is easy: you just use the `<video>` tag. Except, publishers don't like it, because users can _easily_ get to the video file's URL, and download it. It's possible to do so with Flash as well, but it's complicated. Producers do not like this.

* Advertising. See how Youtube forces you to watch some ads before a video? And how you cannot skip the ads? Well, HTML5 was thought as a web standard, not as a way to shove ads down people's throats. So, Youtube, Netflix, and pretty much any other major video provider still depends on Flash -- and will do for the foreseeable future. And since Flash doesn't support WebM...

# It gets worse

Yes, it gets worse. Much worse. The fine gents at MPEG-LA are now trying to create a patent pool to [get licensing money from Google's WebM](http://www.mpegla.com/Lists/MPEG%20LA%20News%20List/Attachments/237/n_2_10_11.pdf ) as well. (or, VP8 which is what WebM is based on) The move didn't go unnoticed: the Department of Justice in the us [launched an investigation](http://online.wsj.com/article/SB10001424052748703752404576178833590548792.html) to look into the allegations.

# The radioactivity level is raising...

Once a technology is well established, it's hard work trying to get people, vendors, hardware makers to stop supporting it. The more established H.264 us, the harder it will be to change it.

The question is: is it possible to use WebM, _and_ keep everybody happy at the same time? (Maybe using Javascript to view ads?) Google is the company that should provide the answer.

If the answer is not there soon, the Internet's radioactivity level might rise to the point where only the big corporations -- probably the ones listed at the beginning of the article -- will survive.


# Updates and thanks

This article was heavily revised when I was pointed out that I made a few mistakes. The main one was that I didn't know that the terms of the "free" licensing had been extended beyond 2015. The main part is that whatever the MPEG-LA granted, was vague and insignificant.
Many thanks to  [DJ Walker-Morgan](https://plus.google.com/110944853355774677851) and [Jan Wildeboer](https://plus.google.com/112648813199640203443) for the hints.

# Final note

_In the original article, I wrote X.264 instead of H.264 several times. The reasons have something to do with my muscle memory fooling by brain. You need to be over 40 to figure out why...!_