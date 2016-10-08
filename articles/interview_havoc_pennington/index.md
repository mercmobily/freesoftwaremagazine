---
nid: '2356'
title: 'Interview with Havoc Pennington'
authors: 'Jonathan Roberts'
published: '2007-06-12 19:07:01'
tags: 'interview,future,havoc-pennington,mugshot,online-desktop'
license: verbatim_only
section: interviews
listed: 'true'

---
I read a piece in which the author criticized the free software world for not being innovative enough; needless to say this angered me, so I decided to try and demonstrate that this is not the case. Over the next few weeks I’m going to post a series of e-mail interviews with developers who are driving forward the ideas and expectations of the computer industry as a whole, in new and exciting ways! This week’s interview is with Havoc Pennington, who’s currently working on a number of great projects related to the idea of an “online desktop”: read on to find out more!


<!--break-->


**JR: Hey Havoc. To start, it would be great if you could introduce yourself to our readers and tell us a bit about your past work?**

HP: I got into free software after reading the GNU Manifesto, which I found inside Emacs on the school servers in college. I worked on Debian documentation for a while (my computer at the time was too underpowered to compile software).

As I learned to program, I wrote a variety of useless and not-really-working applications, and contributed some of the more misguided bits of the original GNOME 1.0 libraries. After a couple years of messing around I had some kind of clue and Red Hat hired me to work on GNOME.

My first project that still survives today was GConf. Later I was part of the team working on GTK+ 2.0 (2.0 was an overhaul to bring GTK+ up to par with other modern toolkits). Later projects included the D-Bus cross-desktop IPC system and Metacity window manager.

Somewhere in there I started freedesktop.org, which today hosts all sorts of projects that sit between the low-level kernel/libc layer and the GNOME/KDE desktop apps layers. I was also on the original board of the GNOME Foundation and helped organize that.

**JR: What are your current projects?**

HP: Mugshot is a project we started in order to learn more about users who aren’t using free software today, and to teach ourselves more about server-side and web technologies. It keeps track of what your friends are doing on a number of different sites such as Facebook, Amazon, Flickr, Twitter, Netflix, and so forth, and merges all the info together so you can see it in real time.

What we’re doing now is taking the knowledge and some of the code back from Mugshot to see how we can enhance GNOME and Linux. We’re also pulling in some stuff we’ve learned from the One Laptop Per Child project. The set of changes we’re thinking about for the Linux desktop we’re calling “online desktop”.

The basic idea is that the world is changing to be much more about web apps and social/collaborative features enabled by the internet than it was a few years ago. If you look at the proverbial kids today their apps are web mail, instant messaging, and social networking.

In the business world too, you see things like Google Apps for Your Domain, Salesforce.com, or QuickBooks Online. These online apps require no installation, backup, upgrades, or other hassles; and they can offer unique social and collaborative features.

Proprietary vendors Microsoft and Apple are also talking about “internet centrism” as the main roadmap for the next versions of their OSes. (Though we were going here before we learned of their plans, and I bet we’ll still do it better—for example, working with all the best-in-class services and sites you want to use, not just Microsoft’s Live services.)

The free software community has an opportunity to be on the leading edge and offer the best OS for what people really want to do on their computers today.

**JR: Do you think there is a potential for free software apps to fill the shoes of GMail, Facebook, Flickr, etc., which Bigboard and Mugshot are going to link in with?**

HP: Free software absolutely could do this, and in some cases there are successful sites that put free and open at the center of their mission, such as Wikipedia.

At the same time, many free software developers seem to have their head in the sand and are not even trying out the popular sites and apps, let alone developing free alternatives to them.

I also think there’s a problem in that licensing alone isn’t enough to define what would make a hosted site free or open. If you look at something like Wikipedia they had to create an open governance model as well, since the thing is inherently a single instance and is inherently data as much as it is code. Sure people can and do run MediaWiki themselves, but running the same software doesn’t make your site Wikipedia. You also need the data and the community surrounding Wikipedia.

So, as people are increasingly not running the software themselves, but using software hosted elsewhere—for them to continue to have the benefits of freedom may require some new guidelines and ideas about what’s important, beyond the free community’s traditional emphasis on licensing alone. For example, what kind of access to my data do I need to be able to move my data to another instance of the same service?

Ignoring the real advantages of centrally-hosted software is a head-in-the-sand approach and won’t work. Instead we need to figure out how to get those advantages while preserving freedom.

**JR: What are your thoughts on other projects pursuing a similar track (for example, Gimmie or AWN/Affinity)? What do you think the best way forward for collaboration between these project is?**

HP: Those projects have emphasized innovation in areas like switching between applications, which isn’t something we’re focused on at all for the online desktop direction. BigBoard can even co-exist with the GNOME panel (for now that’s the idea) and the main purpose of BigBoard is to be a place to stick the UI for showing your friends and their presence, your online calendar, etc.—all this connectivity to the web that we want to have.

I think the competition with Gimmie or AWN is mostly superficial—“it’s a dock/panel/sidebar type of thing”—but if you look at the details of what the projects are interested in doing and focusing on, they are complementary.

Which is good news, because it means we could, for example, combine Gimmie’s application switching model with stuff from BigBoard, or whatever.

In the end, these are all useful experiments and people who want to shut down trying new things in the name of designing the Grand Unified Single Solution from day one are just wrong. Choice is good and experiments are good. The real danger is lack of motion. And there’s no better way to get lack of motion than to insist on knowing everything up front.

**JR: How do you see the concept of the online desktop developing in the future? Will it ever go as far as “distributed computing” with software and data held on servers, the desktops only being a thin client?**

HP: The literal answer is maybe no, the client will have lots of logic in it so isn’t quite a thin client. But in spirit yes, I think the client ends up having much less “state” and you can effectively stop worrying about backups and easily access your stuff from any computer, because your data is on the server.

This is very close to reality already, if you use an online calendar, word processor, webmail, photo site, and so forth. For me the only things I can’t figure out how to keep online yet are my music collection and the assortment of PDF files I seem to end up with. For the PDF files, there’s even a hacky solution (email them to yourself), though not a good solution.

**JR: Thanks for talking with me Havoc.**

