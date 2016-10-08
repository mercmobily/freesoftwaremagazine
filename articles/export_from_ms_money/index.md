---
nid: '2078'
title: 'Trial balances and tribulations:  attempting to import MS Money data'
authors: 'Chris Mostek'
published: '2007-02-21 5:38:44'
tags: 'free-software,import,finances'
license: verbatim_only
section: opinions
listed: 'true'

---
For most of our home computing needs, I've long since transitioned from a Window's environment to FOSS alternatives.  Edubuntu as our operating system with the standard list of applications.  However, I still dual-boot our system to accommodate a few hold-outs running on Windows.

The most important hold-out is [MS Money](http://www.microsoft.com/money/default.mspx).  I've been using MS Money since the end of 1999 and find the program provides all the functionality, reporting and ease of use to  manage our funds.  However, I'm getting tired of dual-booting the computer.  So, I wanted to try transitioning to a FOSS Personal Finance program.  I decided to try importing the MS Money data into [Grisbi](http://www.grisbi.org/), [KMyMoney](http://kmymoney2.sourceforge.net/index-home.html)and [GnuCash](http://www.gnucash.org/). 


<!--break-->


With almost eight years of data, this a slug of data for another program to swallow.  So I will only evaluate the program's ability to import the data.  The application's ease of use, overall functionality and reporting options won't be addressed in this writeup.

The first hurdle is getting the data out of MS Money.  In Money 2006, you individually export each account.  This means each separate checking, retirement, college savings and investment accounts has to be exported by itself.  The export options are loose QIF and strict QIF, but do not include OFX/QFX.  For test purposes, I exported our checking account and the two largest investment accounts in the loose QIF format.

Let's start with Grisbi.  I tested Grisbi on both Windows XP and Edubuntu.  After installing the program, I chose Import from the File menu, pretty standard for all the programs.  The Import Wizard was straightforward.  I only had to specify the import file location, add US dollars to the currency options and set USD as the default currency.  After that, Grisbi imported in the checking account data without any issues.  All the transactions and the final balance were correct.

We're off to a good start, now let's try importing the investment accounts.  Oops, Grisbi pops up an error message stating investment accounts are not implemented at this time, but it can try to import the file as a bank account.  A Personal Finance program that doesn't track investments has limited use.  Strike One.

Now, let's give KMyMoney a chance.  Before importing, I had to set up a KMyMoney data file which specifies my personal data, default currency and account template.  In KMyMoney, the date format is critical to importing the data.  Launching the Import Wizard from the File menu, I had the option to adjust the date format filter.  Clicking on the “New” button in the QIF profile section brought up various date options.  Also, be sure to click “Automatically create missing payees” tick box.  I found out the hard way that if I didn't, I then had to manually address each missing payee.  That was an excruciating process.  I gave up and attempted importing again (this time clicking the tick box).  Then KMyMoney prompted me to manually match every different expenditure category to the KMMoney equivalent.  Are you tired by this point?  I was.

Finally, the program imported the checking account data.  A quick look at the account balance revealed an incorrect amount.  How can that be?  I must have gotten sloppy and picked a wrong option along the way.  Let's try again.   Repeat the process and get the same incorrect checking balance.  A sample audit of the account register reveals that KMyMoney didn't import any transactions where funds moved from the checking account into an investment account.  Strike Two.

Ok, now it is GnuCash's turn.  Same as the other programs, I launched the Import Wizard from the File menu and mapped to the QIF file.  GnuCash began the import and prompted me to match the QIF accounts and categories with GnuCash's suggestions.  Since these suggestions duplicated the QIF file, that was an easy step.  Next, I specified the default currency.  Then, GnuCash wanted me to match up any duplicated entries between two lists.  I skipped matching any duplicates and GnuCash successfully imported the checking account.  The account balance was even right.

Remembering Grisbi, I started the import on one of the investment accounts with a bit of trepidation.  Similar to the checking account import, GnuCash prompted me to match accounts and categories plus set the default currency.  Next GnuCash brought up a section to manually enter each stock symbol.  After these steps, GnuCash imported the investment account.

However, when I launched the Investment Portfolio Report the fund values were incorrect.  So the next step was to open the Security Editor option under the Tools menu.  Then for each separate investment, I checked the tick box to “Get Online Quotes”.  Next I went to the Tools menu, picked the Price Editor option and retrieved the updated price quotes.  Lo and behold the fund balances were correct.  Success!!  Not a home run, since I only uploaded a sample of our finances, but a base hit for sure.

Only GnuCash was able to cope with my particular data file and transaction history.  However, your particular situation may be different and allow you to use one of the other applications.

Overall, I really wasn't surprised by these trials and tribulations.  I've had a similar experience attempting to get information shared between MS Money and Quicken.  There was also the nasty work experience when the boss decided to switch from his five year old version of QuickBooks for Mac to an updated version of QuickBooks for Windows.  So, the difficulties in importing financial data isn't an issue limited only to FOSS applications.

But with some persistence and a little luck, I might be able to get out of this dual-boot madness.  Now if I can only get the Hallmark Greeting Card program switched to Edubuntu.  If you've ever taken little children to a greeting card store, you'll know why I won't give up that program.

