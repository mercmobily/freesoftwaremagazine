---
nid: '2251'
title: 'Book review: Pro Open Source Mail: Building an Enterprise Mail Solution by <i>Curtis Smith</i>'
authors: 'Raymond Burke'
published: '2007-06-21 6:30:00'
tags: 'book-review,email,sendmail,apache,squirrlmail'
issue: ''
license: cc-by-nc-nd
section: reviews
listed: 'true'

---
Setting up an enterprise mail system can be a daunting task for anyone. Curtis Smith shows you how to do it easily.

When you first open this book, you may think it’s merely a software guide. Curtis Smith shows you everything from installing Fedora Core all the way to setting up mailing lists. If you only skim through the book, you’ll think it’s just a software guide. However, if you read through the book, you will find it rich with valuable information. There is history, RFC summaries, server issues, and much more.


<!--break-->



=IMAGE=cover.jpg=The book’s cover=


=ZOOM=Curtis Smith shows you everything from installing Fedora Core all the way to setting up mailing lists=


# The contents

Curtis Smith has written a complete manual on configuring an enterprise e-mail system. Whether you need this system for home or a business, you’ll find lots of useful information. The book starts with the system’s hardware and operating system. Although the author gives good ideas for RAM and disk space, he seems to hurry through the processor. He does mention processing power being hard to estimate, but some speed suggestions may have been helpful. Smith in this instance prefers Fedora Core. Explaining why this choice, he goes as far as listing various packages and saying which ones not to install.

Smith immediately jumps into sendmail. He explains the advantages and disadvantages of this ubiquitous free software. After configuration, you’re walked through generating your first e-mail via sendmail. Once your outgoing mail works, you discover POP3 and the different modes of IMAP. For that, you’re walked through setting up Dovecot. Once you’re able to send and receive mail, the author has you install Apache, securing it with SSL and then SquirrelMail for webmail.

Most people would think at this point, they’re home free. Well, Smith reminds you of the dark side of e-mail. If you want to block e-mail from certain sources or forward it, you’re shown how to do just that with procmail. Unfortunately, there are worse things out there than just an annoying ex. The book goes farther by showing you how to scan for viruses, worms, and everyone’s nemesis, spam. The virus scanner ClamAV is used for stopping viruses, while MailScanner and SpamAssassin are the free software of choice for this last problem.

At this point, Smith reminds us that this is a guide about enterprise e-mail, not specifically a home solution. One of the main purposes of business e-mail is mailing lists. Not intent on letting this be an issue that’s hard to achieve, he tells you what exactly a mailing list is, how to administer one, and most importantly how to set one up. For this, he suggests using Mailman.


# Who’s this book for?

Smith by trade is a professional system and network administrator specializing in e-mail solutions. As such, he targets his book at a similar audience. If you are not a system administrator, you will still be able to follow along. If you’re a novice to the internet or computers, you will not be able to use his book. If you’re a novice at GNU/Linux, you may have a bit of a learning curve. While he does show you how to install the various packages, there is not much in the way of troubleshooting. There is a bit about dependency issues (mainly don’t ignore them), there isn’t much help if you run into major issues. In his defense, a novice wouldn’t be the one asked to set up enterprise e-mail. Advanced home users will still gleam quite a lot from Pro Open Source Mail. You could easily adapt the instructions for home use, as I intend to do.


=ZOOM=If you are not a system administrator, you will still be able to follow along=


# Relevance to free software

As in his day-to-day work, the author prefers free software. And this is obvious throughout the book. He starts with Fedora Core being the distribution of choice, moving into sendmail, Dovecot, SquirrelMail, Apache, and so on. He even has a very brief explanation of how to use vi to edit all these many configuration files! If you’re looking for a guide to show the boss or accountant how to save money but still have a robust system, this is it.

Every bit of free software used in this book has been used by thousands of others and shown to be strong enough for business. Fear not; Smith does not merely mention the names of these packages. He gives you URLs to get them and shows you how to install them. He gives many examples of configuring them, as well.


# Pros

This book is valuable guide for anyone needing enterprise e-mail. There is rich information that even systems analysts may miss. You’ll find history, RFC summaries, server issues, and much more. I’d recommend this for anyone with this need.


=ZOOM=This book is valuable guide for anyone needing enterprise e-mail=


# Cons

If you’ve installed software hundreds of times, you may get bored by the many pages of installation instructions. It’s doubtful that someone wanting to set up enterprise e-mail wouldn’t know this. To be fair, some of the software must be retrieved via wget, while others require rpm, so Smith shows you each one individually.

Smith does an excellent job at showing you the software for your new system. I wish he had explained a lot more about the job of administrator. There didn’t seem to be much emphasis on doing your updates, checking security sites, and so on.


 | |
-|-|
Title | Pro Open Source Mail: Building an Enterprise Mail Solution | 
Author | Curtis Smith | 
Publisher | Apress | 
ISBN | 159059598X | 
Year | 2006 | 
Pages | 423 | 
CD included | No | 
FS Oriented | 10 | 
Over all score | 8 | 

=TABLE_CAPTION=In short=

