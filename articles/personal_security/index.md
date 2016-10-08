---
nid: '1330'
title: 'Personal security: passwords'
authors: 'Robin Monks'
published: '2006-03-27 11:17:23'
issue: ''
license: cc-by-nc-nd
section: end_users
listed: 'true'

---
Passwords are, without a doubt, the perferred method of online security by online blogs, portals, e-commerce sites and just about anything else. For the most part, this is a good system. But, like all security systems, there is a point of possible disclosure, and it lies with you, the password creator, manager and holder. There are tricks to managing passwords, and free software programs to make managing passwords simple and I’ll show you some of them, right now...


# The problem

You are expected to make a secure password for each site you visit, that’s a lot of responsibility for one person to manage, and because of that many people choose easy passwords or use the same passwords over and over, almost begging for trouble.

=TEXTBOX_START=Book Competition!=
This week we are giving away a copy of [Linux Made Easy: the Official Guide to Xandros 3 for Everyday Users](http://www.freesoftwaremagazine.com/free_issues/reviews/book_review_linux_made_easy) by Rickford Grant.

All you need to do to enter is check out the [latest book competition announcement](http://blog.freesoftwaremagazine.com/users/announcements) on our blogs page.

GOOD LUCK!

_Thanks go to _[No Starch Press](http://www.nostarch.com/)_ for providing this fantastic prize._


=TEXTBOX_END=

=ZOOM=Many people choose easy passwords or use the same passwords over and over, almost begging for trouble=

The fact is, if you don’t choose the best possible password, the security provided by it slowly decreases to none. In an ideal world, you would have a completely unique and random password for each site. Unfortunately, remembering such a large number of passwords would be nearly impossible, and that’s where some unique tricks and tools come in to help you keep your data private, and keep the bad guys out.


# Site zoning

Site zoning is where you decide what sites require what type of security depending on what type of content the password accesses. You’d have “low” for logging on to blogs (other than your own) and most portals; “medium” for things like IRC nickserv; “high” for things like your own blog, web hosting, site administration and online auction sites; and lastly, you’d have an “extreme” level for online banking, credit cards, ebay and your primary email account.

Why place such protection on your email account you ask? Well, many sites will email you your password back, or allow you to recover your password by sending it, or a new password back to your email. So, once someone gains access to your email account, they can pose as you on almost any website your email is connected to.

Site zoning lets you use simpler passwords for the “low” level and increasingly complex passwords up to the “extreme” level. Many people do this without really thinking about it, although if you’re not and you don’t want to use a more secure password database with random passwords (both explained below), you should consider using a system like this to give yourself at least a good security foundation.


# Password hashing

Password hashing allows you to use one master password and then modify that password for each site you visit. A password hash can be, in simplest cases, just pieces of the site’s URL mixed in with a password at certain points. For example, you can place one letter of the URL in place of every other letter in your password.

Other more complex uses of password hashing such as the ones employed by [PasswordMaker](http://passwordmaker.org) (described in more detail below) allow you to use complex mathematical equations to make sure that each password is completely unique and that the site’s owner can’t find your master password by seeing one or more of your created passwords.


<!--pagebreak-->


Password hashing is probably the easiest way to create a large number of secure passwords without having to remember each password yourself. Of course, you have to remember what settings you use with your password hash program, or if you do it by hand make sure you remember the sequence, otherwise you’ll lose access to all sites you made a password hash for (something you’ll definitely want to avoid).

It’s also worth noting that when you do use password hashing by hand you should try to obscure the master password so somebody with access to two or more of your end result passwords can’t reverse engineer them back to your master password, that’s where programs such as [PasswordMaker](http://passwordmaker.org) come in handy.


# [PasswordMaker](http://passwordmaker.org)


=IMAGE=passwordmaker.jpg=PasswordMaker=


=ZOOM=Passwordmaker.org allows you to create unique hashes easily, making it easy to create unguessable, and very secure passwords for all the sites you visit=

PasswordMaker.org allows you to create unique hashes easily, making it easy to create unguessable, and very secure passwords for all the sites you visit. PasswordMaker is available as an extension for Firefox and IE, a Yahoo! Widget, a command-line program, a PHP script, a JavaScript, for mobile phones and PDAs, and a manual for doing it manually; there’s even an online version. That opens PasswordMaker up to most every platform, person and place.

The Firefox and IE extensions allow you to enter you master password and have the system automatically fill forms based on the sites URL and your master password (and, if you set them, the advanced options selected).

As an extra plus, PasswordMaker is free software released under the LGPL.


# Password databases

Password database applications allow you to keep an encrypted list of all your passwords. Because the passwords are stored (and in most cases easy to insert directly into forms), you can choose more difficult (and ideally) randomly generated passwords for the sites you visit.

With any password manager it’s important to remember to keep backups of your passwords and/or your settings, so you can restore your passwords if, for example, your hard drive crashes. If your backups are stored unencrypted, be sure to store them in an extra-safe place so no one can gain your entire identity by getting access to your backups.


## fpwdman


=IMAGE=fpwdman.jpg=fpwdman=

[fpwdman](http://fpwdman.sourceforge.net/) allows you to store a list of webpages, and the passwords for them, and then encrypt the entire list with one master password. It has been designed simplisticly, and is just a basic database for your passwords. fpwdman is available for both MS Windows and GNU/Linux, and has the option to import or export in various formats. It’s also released under the GPL.


## Password Safe


=IMAGE=passwordsafe.jpg=Password Safe=

[Password Safe](http://passwordsafe.sourceforge.net/) (released under the [Artistic Licence](http://www.opensource.org/licenses/artistic-license.php)) is a very advanced password database, allowing you to store and sort your passwords into groups. It also has a handy feature that will autofill forms as well as a tray application. Password Safe uses a format reconized by a number of programs, and Password itself also has forks for [GNU/Linux](http://www.semanticgap.com/myps/), PocketPC, [Tcl/TK for Windows/Linux/Mac](http://www.fpx.de/fp/Software/Gorilla/) and as a [UNIX command-line utility](http://nsd.dyndns.org/pwsafe/).


## KisKis - Keep it secret! Keep it safe!


=IMAGE=kiskis.jpg=KisKis=

[KisKis](http://sourceforge.net/projects/kiskis) is a password manager much like Password Safe, but is unique in that it also stores PIN numbers for bank accounts, network accounts, etc. It is written in Java which lets it run on any Java-supporting operating system. KisKis also has a built-in password generator and is released under the GPL.


# Conclusion

I hope you have been encouraged to keep safe password security habits. Now that more and more services are moving online, more and more importance needs to be placed on password security. Keep safe!

