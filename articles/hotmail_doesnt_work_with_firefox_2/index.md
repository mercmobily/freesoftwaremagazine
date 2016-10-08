---
nid: '2671'
title: 'Hotmail doesn''t work with Firefox 2.0: Microsoft answers to GNU/Linux users "Switch to Outlook Express"'
authors: 'Mitch Meyran'
published: '2008-01-24 16:33:01'
tags: 'microsoft,gnu/linux,hotmail'
license: verbatim_only
section: opinions
listed: 'true'

---
I'm the increasingly discontent owner of an Hotmail account (don't laugh, I subscribed back when Hotmail wasn't owned by Microsoft). Recently, in order to compete with Google on the Web, Hotmail's interface was overhauled: it now has a "classic" interface, which works reasonably well but is still rather limited, and a supposedly "Full" interface that should make it the equal of sites like Google Apps and Yahoo Mail/Calendar/etc.

<!--break-->

# The background

## Required system

This is what Hotmail requires for the Full interface to start:

=TEXTBOX_START=Hotmail heading =
This version works better with your browser. The full version of Windows Live Hotmail runs on Internet Explorer 6.0 and higher (make sure you check the system requirements before you install it). The full version also works on Firefox 1.5.
=TEXTBOX_END=

Note that [Firefox 1.5](http://www.bestsoftware4download.com/software/t-free-firefox-download-danjsiwy.html) is supported; Firefox 2.0 is too, since "Firefox 1.5 or better is supported". What is not specified though, is that you need a screen resolution of 1024x768 for the Full interface to run too. OK, no biggie.

Back up a little: Firefox is supported. By nature, the source code used for ALL versions of Firefox is common to ALL platforms--a few shims to circumvent specific OS failings scattered here and there, but Firefox is basically cross platform. A website running on Firefox for Windows will look exactly the same under Firefox for AIX, provided it uses fonts with similar metric (and Arial is nothing more than a slightly modified Helvetica font, so variations are not all that great, even less now that Red Hat released their Liberation fonts).

However, try loading Hotmail under Firefox 2.0 under GNU/Linux: no cigar, the Full version is not available.

## Ask support

I contacted the Hotmail support staff (and for the first time since 1997, I actually got an answer) about the matter. 

=TEXTBOX_START=Me: =
Why, exactly, is "Full" disabled if one masks "Win" as the OS in the User Agent string, considering that Firefox doesn't use any Windows subsystem other than the TCP/IP stack and GDI? On Windows XP, hiding the fact that I'm using Windows in the UA string disables "Full", while masquerading as Firefox for Windows under Linux X86-64 (and a 64-bit build of Firefox) "Full" works very well.
=TEXTBOX_END=

This is their short answer:

=TEXTBOX_START=Hotmail Staff : =
Mitch, after reviewing the information you provided, I determined that Microsoft Product Support Services Team could best address your issue.  They are tasked to provide all the information you need to be able to configure correctly your Windows Live Hotmail through Outlook Express.
=TEXTBOX_END=

Yes, you've read that correctly: since Hotmail Full won't work under Firefox for Linux, configure Outlook Express to access your account.

I thought I was not being clear enough, so I replied:

=TEXTBOX_START=Me: =
Excuse me? I don't want to use Opendoor Virus Extreme - sorry, Outlook Express, I want to use Windows Live Hotmail, Full version, under Mozilla Firefox 2, on any machine and/or OS I have installed! I thought I was being clear, I'm using a BROWSER to access a WEBMAIL INTERFACE that seems to be ARTIFICIALLY LIMITED IN FUNCTIONALITY due to BASIC USER AGENT SNIFFING.
=TEXTBOX_END=

And here, the answer:

=TEXTBOX_START= Hotmail staff : =
Please make sure that your screen resolution is set to 1024 x 768 or higher to be able to view the full version of Windows Live Hotmail. To do this, please follow these steps: [steps for Windows XP/Vista]
=TEXTBOX_END=

I guess you're saying the same thing I did when I read that.

...

Yes, speechless.

I'm sending them a new mail now, saying specifically:

=TEXTBOX_START= Me: =
Short answer: Hotmail blocks non-Windows users from their full Hotmail accounts.
=TEXTBOX_END=

I'll keep you posted on the answer, but my guess is they'll keep dancing around the issue. Still, lucky you, I have a simple workaround.

# Browser Spoofing

As we've seen, Hotmail doesn't rely upon proprietary Microsoft Web extensions (Firefox is one of the less forgiving browsers out there about proprietary extensions, supporting less Microsoftisms than KHTML/Webkit or Opera); but then, how do we fool Hotmail into serving us its Full version? Well, it's far easier than you might think.

## Opera

Opera cumulates both the W3C and the IE event models and several extended features of both models can be used with it. You can try masquerading as either Internet Explorer or as Mozilla Firefox--It may just work. However, Opera isn't free, so of course it's not the recommended option.

However, if you already use Opera, just know this: Hotmail doesn't seem to get fooled by a simple masquerading--and you get a lot of Javascript errors.

## Konqueror

Konqueror can masquerade as Firefox (but with slightly lower CSS capabilities) or as Internet Explorer (but it doesn't support its event model). With it, you can start Full Hotmail - but you'll get many bugs or even an unworkable interface.

Both Opera and Konqueror make it easy to pass off as another browser.

## Firefox

Firefox is a bit more difficult to use here: you either need to modify strings in about:config, or to load the much more practical [User Agent Switcher extension](https://addons.mozilla.org/fr/firefox/addon/59) by Chris Pederick. Once done, configure it: in Tools > User Agent Switcher, go into Options > options..., and add a new identifier:

* Field 1 : Firefox for Windows
* Field 2 : Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.8.1.11) Gecko/20071127 Firefox/2.0.0.11

Or, you can paste the following into an XML file and import it through the same menu:

=CODE_START=
<useragentswitcher>
  <useragent description="Firefox for Win32" 
  useragent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.8.1.11) Gecko/20071127 Firefox/2.0.0.11" 
  appname="Netscape" 
  appversion="5.0 (Windows; en-US)" 
  platform="Windows" vendor="Mozilla" vendorsub=""/>
</useragentswitcher>
=CODE_END=

And then, you'll be able to access the full capabilities (hem, hem) of Hotmail outside of Windows.

# Conclusion

All things said, I prefer Gmail.
