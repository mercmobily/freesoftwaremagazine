---
nid: '2240'
title: 'Interview with Arturo "Buanzo" Busleiman, developer of Enigform'
authors: 'Tony Mobily'
published: '2007-04-27 22:12:24'
tags: 'interview,enigform,arturo-busleiman'
license: verbatim_only
section: interviews
listed: 'true'

---
In most industries, innovation comes from big companies that invest large amounts of money in equipment and research. The IT industry is different: the only real investment is a PC—and copious amounts of time necessary to study and research. (Without free software it could have been a very different story today, since we could live in a world where you couldn’t program without forking out several thousands of dollars just for a compiler. Does anybody remember how much the first version of Visual C++ cost?)

In computers, the most important leaps forward are often made by single (outstanding) individuals. I’ve had a chance to talk to Arturo "Buanzo" Busleiman, who wrote [Enigform](http://freshmeat.net/projects/enigform). If Enigform becomes a standard, it could change the way everybody logs onto their internet banking sites and more. He’s the best person to talk about Enigform... so, here he is.


<!--break-->


**TM: Arturo, please tell us about yourself!**

I’m a 25 year old Argentinian GNU/Linux user, admin and developer who really loves information security, programming and guitar playing (I play the guitar and sing in [a punk-rock band](http://www.futurabanda.com.ar), check it out people!). I’ve been “Linuxating” since late 1994, and GNU/Linux and the FLOSS movement helped me to become what I am today: a full grown geek. (Yes, I do have a wife, and children, too).


=IMAGE=arturo_busleiman.jpg=Arturo Busleiman, developer of Enigform=

**TM: You developed Enigform... can you give us a very simple description of what it does?**

Enigform is a Mozilla Firefox extension that implements OpenPGP signing (and in the future, encrypting) of HTTP requests, allowing web servers (or proxies, for example) to authenticate the identity and integrity of the request. It uses GnuPG, and works on any operating system where Mozilla and GnuPG can run.

**TM: What about a more detailed/technical description?**

GnuPG allows its users to sign and encrypt files, but it’s mostly used for email. If I send you a signed email, and you have my public key, then you can verify that *I* have sent it. I can also encrypt it so you are the only one who can decrypt it and thus read it. Both operations can be combined, of course. That’s quite cool, because signing also gives the ability of verifying the contents of the message. Email forgery is not valid here.

Imagine all those benefits for web browsing! No Phishing, no session hijacking, no man-in-the-middle attacks! Alternatives to SSL. A safer browsing experience. Better eCommerce. Imagine Paypal or Google Checkout or Home Banking where both the user and the server can identify each other with the same level of confidence we can expect from PGP Signed/Encrypted email...

Of course, server-side support is required. That’s why I had to develop [mod_auth_openpgp](http://freshmeat.net/projects/maopenpgp), an Apache module that you can enable for a server or virtual host (per-directory support is on its way).

Enigform does not break HTTP in any way, it just adds a set of request headers. Servers that do not support the OpenPGP extensions will not benefit from them, but won’t be affected either.

**TM: So, it needs an Apache module to actually work. What about other web servers? And on the client side, what about IE, Opera, etc.?**

Regarding Microsoft’s IIS... well, I wouldn’t code for it myself, but could provide support to other programmers. However, I’m willing to port `mod_auth_openpgp` to other open source, freedom-based httpd implementations. In any case, it just depends on GPGME (a library of GnuPG functions that is quite easy to use), so should be an easy task.

Opera has a plugin API, and I quite like it because it runs on many mobile platforms, which is a great thing. I’d like to support it just because of that, even though it’s not open source (yet!).

IE 7 now has a plugin API. I guess someone will port Enigform... In any case, I don’t think IE (and Windows as we know it) will live much longer. I’ve always believed that if Microsoft went GPL, they would really benefit. Who knows.

**TM: Who will benefit from this module? Can you give us a couple of use cases?**

Both users and web developers/admins/etc. Signing HTTP requests (encryption is still not supported) allows web programmers, webmasters and administrators to authorize access to private content, or simply to identify users. I like to think that Phishing (as no user and password are required!) and Man in the Middle attacks can be rendered obsolete by this. Some people have suggested that it could also help in scenarios where HTTP traffic must be encrypted. SSL is used for this, but for the whole certificates process to work you need one public IP per virtual host. As Enigform works on the application layer, not at socket layer, it can even work behind accelerators, reverse proxies, etc.

**TM: So, people would have only one set of keys (private/public), and then provide their public key to their bank, their favourite shopping site, and so on (assuming that they support Enigform). Which also means that they will only have one password to remember—the password to their private key. Is this correct?**

You got it right! Enigform can also make use of the gpg-agent, so it is not necessary to input the passphrase for every request. Enigform can also store the passphrase in memory, but using the gpg-agent is far better in terms of security.

**TM: Enigform will basically confirm that the key belongs to the right user. However, the OpenPGP architecture doesn’t have a central authority to have a list of “confirmed” identities. Is this a problem? If I were (for example) a bank, and wanted to use Enigform, what would I have to do in order to get my customers to use it?**

First of all, “trust” comes in a different flavor under the OpenPGP mechanism. I can sign other people’s public keys, making them more trust worthy. And there are even documents on “How to organize a pgp key-signing party”. Yes, it’s completely different, but I think that’s the good thing: it is an alternative. Not a different implementation, but a whole different concept that fully differs from SSL and that could actually coexist with it.

For example, Banks are requesting their users to type their Home Baking password using a “virtual keyboard” that appears on-screen. This has already been hacked, and for different browsers and banks. With Enigform, banks could just request users to submit their public key to a keyserver, or send it via email to some special email address, and then tell them to type in their pgp keyid at the neareast ATM. How does this differ from current procedures? Instead of setting the Home Banking password at the ATM, you specify your OpenPGP Key ID. No password is necessary. Not even a username. Of course, an attacker would have to steal the user’s private keyring AND the passphrase, but once the user’s computer is compromised... no security mechanism applies.

**TM: I am a little concerned about mobile devices, that might be too small to actually have OpenPGP. How would you address that? (If every bank used it, I wouldn’t be able to do internet banking with my tiny tablet!**

Well, GnuPG is currently not working with Windows CE, for example, but Palm has announced the switch to a Linux-based OS... thus GnuPG will potentially be supported. Mobile is not my field (... yet! I’m from Argentina, I’ve not attended a security conference yet because of money issues, so... Mobile? What’s that?!)

**TM: Does Enigform actually need to deal with encryption as well? I mean, you could use Enigform to verify the user’s identity, and transfer information through HTTPS, right?**

Of course. But when HTTPS is not an option, or when you only want certain requests to be encrypted thus avoiding the bandwidth payload, then request encryption is clearly an interesting alternative. Additionally, the benefit of avoiding the high cost of SSL certificates is definitely nice. Well, we could also talk about the cryptographic benefits of using the algorithms and keysizes an OpenPGP implementation allows, but... :)

**TM: Is there anything equivalent in the free software world? What about the proprietary world?**

The only thing remotely similar that I’ve found so far (and I’ve really googled for this) is a CCI PGP extension documented [here](http://www.w3.org/Conferences/WWW4/Papers2/245.html). I believe its from 1995...

**TM: I understand you want it to become an accepted standard. How is the approval process going?**

Some guys from the IETF OpenPGP Working Group are helping me with some procedural details, but I expect to have it submitted to the IETF by July this year (2007). Hopefully, it can become an RFC. That would probably make Enigform and other plugins obsolete, because the browser itself could/should support it. I’d love to focus on the server-side, really.

**TM: What are your future plans about Enigform/`mod_auth_openpgp`?**

Well, I want to enhance Enigform itself with some per-domain, or regex based, rules like “always sign for this domain using key 0xdeadb33f”, provide some key-exchange negotiation mechanism, and support it in reverse: the browsing user can verify the remote web server. If verification works both ways, then it would simply be fantastic. Absolutely no more phishing! Of course, to add request encryption is pretty high up in my TODO list.

**TM: For this to work, it will need widespread adoption. Is it easy for the user to actually set their public key? Does the plugin help the users create a keypair? And, if/when this makes it into normal browsers, do you think it will be easy enough to use for common users?**

Well Tony, once you have configured GnuPG, and once your keypair is ready, Enigform is ready to be used. If no specific key-id is chosen in Enigform’s Preferences Dialog, then the default one is used. It does not help the user in any way, but Enigform 1.0.0 has not yet been released either! My TODO list has a “gnupg wizard” item, but it’s not high on my priority list. As you say, for this to work, it will need widespread adoption. If I don’t focus on the HTTP-PGP process fully, then it will become an unstable platform. I’d rather define a clear workflow (i.e. the Internet Draft), and then implement better user interface elements. Of course, if anyone is willing to help, then some user-friendly features could be added asap. If it ever makes it into normal browsers, then each one will provide its own OpenPGP implementation and/or wizards, and all of that would be presented to the user in the format and design they’re used to seeing in those browsers. I trust the design and development team at Mozilla and Opera! :)

**TM: Thank you so much for your answers, Arturo. Best of luck with your project and with its acceptance as a standard!**

