---
nid: '1229'
title: 'We can all finally install'
authors: 'Tony Mobily'
published: '2005-02-15 16:00:00'
issue: issue_10
license: verbatim_only
section: hacking
listed: 'true'

---
I’ve seen a lot of new users—and even kids—using Linux comfortably. And everything goes fine—until they decide to install new applications.

You see, in Mac people can install an application by simply downloading it, copying it wherever they like, and double-clicking on it. In Windows, it’s a matter of running an ugly installer, answering a few questions, and letting it copy a zillion files all over the place.

In Linux... it depends.

Even though distributions such as Ubuntu do a terrific job in giving users an amazingly complete “base” system, and a reasonably intuitive way of installing new software (thanks to the Synaptic Package Manager), users always get lost when they try installing an “unplanned” piece of software (that is, one that was not pre-packaged and pre-compiled by the distribution’s maintainers).

Unfortunately, no matter how well distributions try to add every single package to the list of “supported” applications, such a list can never be 100% complete. The problem is even more relevant if somebody wants to install a piece of non-free software, which will obviously never be supported by a distribution! Users also need to be “root” to install software, and that’s not always ideal...

I feel it’s only fair that I show my cards, and admit right away that I am a fan of “The Apple way of doing things”: each application has its own directory, which contains _everything_ needed by the program, and is seen by the user as a fancy icon (chosen by the application’s developer). Uninstalling a program is as simple as dragging it into the rubbish bin!

It sounds simple, and it is—for the user. Apple has been doing this for many years, and it definitely works.

However, things that makes life easier for the user often add much more complexity to the system. In the case of Appdirs, there are several issues, and not all of them are purely technical. Appdirs need to be a joint effort: distributions and desktop environments (see: Gnome and KDE primarily) need to agree what an “Appdir” is, how it works, and so on; Appdirs go against the Unix philosophy of putting each file in the right place—this is possibly why there is resistance to Appdirs in the Linux world; with Appdirs, the “automatic upgrade” process becomes tricky to say the least (however, it’s definitely not impossible); the desktop environment must be able to “register” each Appdir (probably at its first execution), and must be able to associate a file type with a particular Appdir; finally, existing applications (and there are a lot of them!) all need to be repackaged.

Some of these problems might never be solved completely; this is possibly why Linux has taken some steps toward Appdirs. However, no distribution or “desktop environment” has endorsed them fully. These problems have never had an easy solution.

Until now.

Thanks to [Klik](http://klik.atekon.de/), developed by Simon Peter, this situation has finally changed. Klik deals with _most_ of the issues I mentioned above (if you are curious, check [the FAQs](http://klik.atekon.de/wiki/index.php/User’s_FAQ)); very importantly, it works well under Ubuntu, which happens to be the fastest growing distribution at the moment. Thanks to Klik, you can download your favourite applications, burn them onto a CD, and give them to your favourite and least experienced Linux user—even your grandmother!

Klik is another huge step towards Linux’s desktop domination. Right now, thanks to Klik, there’s one less excuse for not using Linux. Are there any left now?

