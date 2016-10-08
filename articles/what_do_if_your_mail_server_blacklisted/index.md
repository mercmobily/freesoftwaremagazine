---
nid: '3709'
title: 'What to do if your mail server is blacklisted'
authors: 'Tony Mobily'
published: '2012-02-06 6:29:26'
license: verbatim_only
section: hacking
main_image: main.png
listed: 'true'

---
This article is not strictly about free software. In fact, it's not about free software at all: it's about what to do to find out if your server's IP is blacklisted for sending mail. I just discovered [Valli.org](http://multirbl.valli.org/) as one of the things I had to do to sort the Free Software Magazine mailing list, and wanted to check why some of our emails were rejected. (Note: We are not affiliated in any way with Valli.org.) If you manage a Postfix mail server, this is a resource you cannot miss.

<!--break-->

When I started setting up internet servers, back in 1996 (!), the mail server was an absolute no-brainer. Apache was a bit of a pain, FTP needed some amount of love, and other services needed just plain black magic. Today, the picture is very different. In case you hadn't noticed, the Internet is full of spam. As we speak, I have 26000 spam emails in my inbox -- and that's only counting the last 30 days worth of spam. (I look at the number and wonder why it went from 9000 a couple of months ago to 26000 now.) Spam isn't just a problem: it's a threat that changed radically the internet along the way.

One possible way of stopping spam is finding hosts that actually send spam, and block them.

Trouble is, there are dozens and dozens of lists; each server can use one or more or those lists, making things tricky at best.

Here comes previous help from [Valli.org](http://multirbl.valli.org/): All you need to do is feed it the IP address of your mail server (obviously based on free software!), and there you go: it will tell you exactly who is blacklisting it, among _many_ black lists out there.

Enjoy!

(Note: blacklisting servers This was more effective in the past, when spam was sent by established mail servers; today, spam is mostly coming from virus-infested Windows machines acting as Spambots. Anyway, spam blacklists today exist)
