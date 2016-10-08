---
nid: '1187'
title: 'Book review: Regular Expression Recipes <i>by Nathan A. Good</i>'
authors: 'Martin Brown'
published: '2005-09-22 11:01:43'
issue: issue_07
license: cc-by-nc-nd
section: reviews
listed: 'true'

---
I’ll admit right up front that I am something of a regular expression junkie.Years before I even knew such a system existed (before the days of the internet) I wrotemy own regular expression system to handle the needs of a free-text database managementpackage. Today, we are all familiar with regular expressions in Perl, sed, awk/gawk andeven in “user” applications like email and word processors. 


=IMAGE=159059441X.jpg=The book’s cover =

Despite the utility of the regular expression library used in these systems, getting yourregular expression right can be a major exercise. With the wrong expression you canmatch, or replace, the wrong text and in some applications that could have direconsequences. 

Apress have released a new title, _Regular Expression Recipes_, written by Nathan AGood, that attempts to solve some of the riddles and complexities of the regularexpression writing process by providing example regular expressions to be used indifferent situations and against a variety of problems. 


=ZOOM=For each problem, a full range of solutions is provided in different languages (perl, sed, etc.), using regular expressions and/or scriptsrelevant to that environment.=


# The contents

Good has used an interesting approach to organizing the book. One of the major problemswith regular expressions is that they are used in a variety of applications, sometimeswith slight differences. Although the majority of modern applications use a derivationof the Perl regular expression library, some use their own, often out of a need forhistorical compatibility. 

The book therefore starts off with a look at the various regular expression systems and arange of handy tables summarizing the differences between Perl, grep and Vim, whichsupport the three main regular expression systems. Handier still, the book goes on toadd details on how to use regular expressions in popular environments, such as Perl,Python, PHP, Vim, grep and sed. 

This list of tools is relevant to the rest of the book as each example problem andregular expression solution is followed by two or more examples using the tools. In manycases these are full scripts or examples, although for some a simple fragment would beenough to get the idea. In addition, all of the scripts and regular expressions areexplained and their operation detailed so that you understand why it works. 

The bulk of the book is then split up into specific areas of issues that can be resolvedwith regular expressions, beginning with the more obvious area of basic textmanipulation. Here we find the common—but not alwaysstraightforward—issues of finding words and lines and then finding andreplacing text, for example capitalizing the first letter of a word, before moving on tothe more complex issues of finding text in, or around, quotes. 

Also handy in this section are a series of examples on replacing ASCII and non-ASCIIcharacters with their equivalents. For example, replacing smart quotes with straightquotes or copyright and trademark symbols with a textual equivalent (i.e. ™with (tm)). 

With the basics out of the way, the book moves on to more interesting topics. Iwon’t list all the examples, or even all the different topic groups intowhich they are placed. I will say, however, that there isn’t an example herethat I thought was superfluous. Some highlights and personal favourites include,validating credit card numbers, extracting HTML attributes and a whole bunch onreformatting code. 

As stated earlier, for each problem, a full range of solutions is provided in different languages (perl, sed, etc.), using different regular expressions and scriptsrelevant to that environment. For example, one of the examples validates dates andexample scripts and expressions are provided in Perl, PHP, grep and Vim. 


# Who’s this book for?

Regular expressions are one of the interesting parts of the computing world. Technicallynot a programming language, regular expressions are heavily used in programming. Theyare also common in a number of command line tools like grep and sed. All of this makesregular expressions, and by association this book, useful for just about any“power” user. Administrators will appreciate some of the tools forhelp in their scripts, log file parsing and when searching for information. 

For programmers in particular, the book offers a wide range of examples and samples thatcan be used or adapted in applications. Most of the samples can be used verbatim, otherswill probably benefit from direct modification according to your needs. 


# Pros

The amazing range of problems and their solutions would be my first reason to recommendthe purchase of this book. There is a regular expression example here for everybody. Mysecond reason for recommendation would be the range of environments demonstrated throughthe examples. Use regular expressions, but not a Perl programmer? No problem, not onlydo you get the Perl sample, you get examples in an environment in which you might bemore familiar, such as Vim or PHP. By covering each regular expression, and also detailsabout why it works and examples for key environments like Perl or sed, the book becomesmore than just a regular expression tool. This range means that the book is also anadvanced scripting, programmers and administrators toolkit for performing a variety oftasks. 


# Cons

I really couldn’t find anything wrong with this book. Occasionally, I thoughta sample in a particular environment was missing, but with such detailed information onthe regular expression it really isn’t that difficult to embed the expressioninto your own script. I’m really scraping the barrel here though; the book iswithout a doubt one of the best and I highly recommend it. 


 | |
-|-|
Title | Regular Expression Recipes | 
Author | Nathan A Good | 
Publisher | Apress | 
ISBN | 159059441X | 
Year | 2005 | 
Pages | 289 | 
CD included | No | 
Mark | 9 | 

=TABLE_CAPTION=In short=

