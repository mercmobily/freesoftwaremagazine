---
nid: '2112'
title: 'How to print more than one record on a sheet of paper in OpenOffice'
authors: 'Solveig Haugland'
published: '2007-04-13 6:30:00'
tags: 'openoffice.org,databases,mail-merge,staroffice,database,writer,base'
issue: issue_17
license: cc-by
section: end_users
listed: 'true'

---
When you download mail merge template or create your own, you lose a feature that's built into the OpenOffice.org mail merges and reports: printing more than one record on a sheet of paper. However, it's easy to add that ability yourself.

This article addresses the issue of how to have information from multiple records on the same sheet of paper, in mail merges for lists, downloaded label templates, and other mail merge documents. The first section of this article explains how mail merges work regarding when the next record is chosen, and why. If you’re already familiar with this, go straight to the solution in the tutorial part of the article, _Triggering a new record whenever you want it by using the next record field._

This article has three sections: the problem, how the program works, and how to get around it.


* _How mail merges work by default_ covers the default behavior, and why that’s not always what you want
* _Why the mail merge doesn’t trigger the next record all the time_ covers why it’s sometimes a good idea, and sometimes not, to have the same record print multiple times on the same sheet of paper. It’s a “nice to know” explanation that you can skip if you’re looking for the solution.
* _Triggering a new record whenever you want it by using the next record field_ provides steps for controlling exactly when your mail merges switch to the next record.


=ZOOM=A mail merge is a connection between a document and a database=


# How mail merges work by default

A mail merge is a connection between a document and a database. The document pulls information for certain fields, like _Name_ and _Address_ and _Birthdate_, out of the database. You set up your mail merge document easily (figure 1).


=IMAGE=nameaddressbirthdate1.jpg=Figure 1: Standard mail merge setup=

The information for the first record (the first person in this case) is printed, then the second record, and so on (see figure 2).


=IMAGE=nameaddressbirthdate2.jpg=Figure 2: The printed results of a mail merge=

Here’s the question, though:

When do you go to the next record? What makes the mail merge document switch so that we see the information about Miranda?

In labels, it makes sense for information about the next record to show up in the next label, which is the next time that the field appears. And that’s how it works when you create labels—at least, when you create labels by choosing `File→New→Labels`. It’s also how things work when you create a report generated from your database; multiple records will be printed in the same page because the logic is built into the report wizard.

Let’s say that you don’t want to use the document-creation tools provided by OpenOffice.org; you want some more control over exactly what output you have. So you download templates, like the ones at [WorldLabel.com](http://www.worldlabel.com/Pages/openoffice-template.htm), which has free [OpenOffice.org](http://www.openoffice.org) templates. If you’re using those templates or if you create your own mail merge document from scratch, you’re going to get the same name and address in every label area until you go to the next page, with 10 or 30 labels for the same person. The logic to trigger the next record isn’t built into those templates.


# Situations when you want to have multiple fields from the same record on the same page

The default behavior for mail merges is to err on the side of giving you the opportunity to repeat information if you want it. And sometimes you do. If you’re creating a mail merge letter, you sometimes want the same information for one record to repeat. Sometimes your letter goes for three pages. It certainly doesn’t make sense to show information from the next record after each carriage return, or the next time the field shows up.


=ZOOM=The default behavior for mail merges is to err on the side of giving you the opportunity to repeat information if you want it=

FIgure 3 shows you how you might set up a typical mail merge letter.


=IMAGE=mailmergesetup.jpg=Figure 3: Setting up a mail merge letter=

Figure 4 shows you what it would look like if you triggered a new record each time you got a new carriage return, reuse of a field, or new page.


=IMAGE=mailmergewrong.jpg=Figure 4: Unfortunate results of a mail merge that flips to the next record each time a field appears again=


<!--pagebreak-->


These are specific situations for printing on the same page. When you do want a bunch of different records on the same page, however, how do you trigger the Next Record?


# Triggering a new record whenever you want it by using the next record field

Every time you want to trigger the next record, choose `Insert→Fields→Other`, Database tab. In the Type column select Next Record, and in the Database Selection list select your database and table. Click Insert (Figure 5).


=IMAGE=nextfield.jpg=Figure 5: Inserting the Next Record trigger=

You will see either nothing appear in the document, or a very small gray speck. If you insert it by itself you’ll see it, but you won’t see it when you insert it, as you typically will, next to another field (figure 6).


=IMAGE=nextfieldscreenshot.jpg=Figure 6: How the Next Record field looks (at its most obvious)=

You don’t even need to click Insert every time. You can copy and paste that small gray field to the next line, or the next label, or, another four inches down the page—wherever you want the next record to begin.

Here are a couple ways you could use it.


## Labels

In labels you create from WorldLabel templates or other templates, set up the first label normally and copy it to the second label area too. Then insert the Next Record field in front of the FirstName field in the second label area, and copy the whole label. Paste it to all the other label areas in the template. You only need to insert the Next Record field once per record; not in front of each field (see figure 7).


=IMAGE=pastinglabels.jpg=Figure 7: Using the Next Record with labels=


## Reports or lists

If you don’t want to use the Reports function in the database management window, or if you just want something simpler, you could set up a report like this. Drag the first line of fields out, then press Return and copy and paste them to the second line.


=ZOOM=Having control over exactly what you want to do doesn’t always mean it’s easy to figure out=

Click to the left of the first field in the second line and insert the Next Record field. You only need to insert the Next Record field once per record; not in front of each field.

Now copy that second line and paste it again until you’ve filled the page figure 8).


=IMAGE=report.jpg=Figure 8: Setting up a report using the Next Record=


# In conclusion: control doesn’t always mean simplicity

As we know from using LaTeX and Word, having control over exactly what you want to do doesn’t always mean it’s easy to figure out. There are two logical and very different ways for the mail merge to work. OpenOffice.org chose one, and if you want it to work the other way, well, it’s just a matter of inserting the Next Record field. On the plus side, you only need to set up your label template once, then use it again each time you print new records.

