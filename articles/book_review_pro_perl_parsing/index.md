---
nid: '1734'
title: 'Book review: Pro Perl Parsing by <i>Christopher M. Frenz</i>'
authors: 'Alan Berg'
published: '2006-09-21 8:09:14'
tags: 'book-review,perl'
issue: ''
license: cc-by
section: reviews
listed: 'true'

---
Pro Perl Parsing is a well-written tome on the subject of various ways of pulling information out of sources such as the HTML, RSS, XML, CSV, the command line and text. More correctly put, the book discusses the extraction of data and some analysis via Perl. The author Christopher M. Frenz understands the value of using CPAN modules and describes parsing through pleasantly brief code examples.


=IMAGE=cover.jpg=The book’s cover=

My first impression of the book was one of to-the-core efficiency. Pro Perl Parsing defines that which is required to understand concepts such as context free grammar, regular expression pattern matching and even manages to squeeze in a little data mining.

Accurate and focused, this book does not have an ounce of fat. The author Christopher M. Frenz understands the value of using CPAN modules.


=ZOOM=My first impression of the book was one of to-the-core efficiency=


# The contents

Frenz’s well-balanced book packs much compressed information into its relatively short 252 pages. He starts with a “show us the money” chapter on the important subject of parsing and regex expressions and then quickly moves through details of how grammar parsers actually work. I got the distinct impression of mentally flowing seamlessly to the main points and then having the author deal accurately with the required background concepts.

There was a slight slow down when hitting chapters four and five as the chapters where harder to digest due to the underlying complexities of correctly configuring `Parse::Yapp` and `Parse::RecDescent`. The story speeds up again after this and I encountered the fun chapters on pulling information from the internet and data mining. I particularly liked example 6-1 (page 147), which, within a few lines of easy to understand code, pulled and processed the temperature for a particular location from Weather.com.

Sadly for me, I have to admit that, despite thinking I knew much in this subject area, I managed to pick up a trick or two from Pro Perl Parsing. Data mining is a pet love for me and chapter ten delivered a couple of practical hints that I will add to some of my prototype code later. For example, listing 10-1 (page 221) explains briefly the use of `Statistics::Descriptive` for finding the mean and standard deviation of a particular dataset. If I had known of this module earlier, I would not have previously written a number of custom functions myself (and on more than one occasion).


=ZOOM=I managed to pick up a trick or two from Pro Perl Parsing=


# Who’s this book for?

This book has a number of target audiences. Perl scripting system administrators may gain some insight into improving parsing of command line options or configuration files. Scientists, teachers or students should find value in data manipulation and mining.


# Relevance to free software

Since its inception in 1987, Perl has been free and has accumulated a particularly large following of addicted developers. This thoroughly RAD scripting language has been ported to possibly more platforms than Java. Pro Perl Parsing addresses one of its significant strengths, as Perl is well known as the main language for report generation and ad hoc data parsing.

This quick to script language has great influence on the proper running of many Linux servers. If you look around a typical server, you will find code for log rotation, report generation, general cleanup scripts and a number of command line tools. Even in this mundane everyday environment an understanding of Perl parsing is at the least handy.

Looking further afield, programming of data parsing and crunching is a fundamental skill for most scientists who coincidentally need to choose from proprietary or open languages or tools. Therefore, this book is helpful to the momentum of the free software movement at a number of levels.


# Pros

Accurate and to the point, this book describes the parsing of data via CPAN modules correctly and without fuss. A good solid read and not too thick in pages to be off-putting.


# Cons

If you are looking for a hard core Perl regex book then you may find this book light on the subject. However, you may be surprised by how relevant parsing is to your problem domain. Therefore, please read the table of contents before passing this one over.


 | |
-|-|
Title | Pro Perl Parsing | 
Author | Christopher M. Frenz | 
Publisher | Apress | 
ISBN | 1590595041 | 
Year | 2005 | 
Pages | 272 | 
CD included | No | 
FS Oriented | 8 | 
Over all score | 9 | 

=TABLE_CAPTION=In short=

