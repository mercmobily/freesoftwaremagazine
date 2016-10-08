---
nid: '2344'
title: 'Creating a free CD or DVD database and labels in OpenOffice.org Base'
authors: 'Solveig Haugland'
published: '2007-10-13 15:29:24'
tags: 'labels,openoffice.org,cds,databases,dvds'
issue: issue_20
license: verbatim_only
section: end_users
listed: 'true'

---
If you’re serious about music or DVDs, at some point you cross the threshold of having more than you can keep track of easily. The box full of index cards has served its purpose; it’s time to move on to storing information about your CDs and DVDs in a database.

This might seem like more of a pain than you can stand. What’s the point of doing a database when you can just type it all into a spreadsheet, for instance? Well, a spreadsheet is a good start but with a database you get a lot more features, including easily printing custom labels for all those legal backups you’ve made. You could also print out a record of all your movies or music, if you keep notes on them such as summaries, who you’ve loaned them to, and anything else you track.

Putting together a database and creating the forms to print what you want takes more than a couple steps, but it’s not that difficult. Even better, it’s free, since you can use the free software office suite OpenOffice.org to do everything.

You can download and install OpenOffice.org from [their website](http://www.openoffice.org). Once you’ve got the program installed, you’ll complete these steps.


1. Create a database: There are several ways to do this, but I’ll show you the quickest way.
1. Create or download the document you want to print, from a source such as [WorldLabel](http://www.worldlabel.com), and connect the document to the database.


# Creating a database

If you’re a database god and enjoy spending time deep in a database—well, you can do anything you want. But, if you want the most results for the least trouble, here’s what I recommend: get your data in a spreadsheet, then create a database file that can read the spreadsheet. This is simple and if you don’t need advanced database features, it’s all you need.

This process creates an OpenOffice.org database file that points to your spreadsheet of information. The spreadsheet doesn’t have the power to do mail merges, but the database file pointing to it does. It acts as a middle man saying “The data’s over there, with these fields–go get it”.


## Getting data into a spreadsheet

You either have your data in a spreadsheet already, or you can get it into a spreadsheet pretty easily. You’ll want to have it set up to look something like this: field labels across the top, and with each piece of data separate.


# The problem of blank [Address2] lines

Some people live in houses; some in apartments. Some work in enormous campuses with mailstops or buildings in the address; others receive their work mail at a post office box.

Everyone knows this, of course. So why is this worth mentioning? Because it affects how you do mail merges when you send mail to these people. You’ll need all the relevant information for their addresses to print out on labels, or in the header of form letters. You want them to look like figure 1.


=IMAGE=moviedata.jpg=Figure 1: Data setup=

If your data is in .csv files, you can open those files in a spreadsheet.

**1)** In OpenOffice.org choose File→Open.

**2)** In the File Type list of the Open window, select Text CSV (click in that list and type T four times), as shown in figure 2.


=IMAGE=opencsvmovies1.jpg=Figure 2: Selecting the Text CSV file format=

**3)** Select the CSV file and click Open. In the window that appears in figure 3, verify that the settings are correct for the data, then click OK.


=IMAGE=opencsvmovies2.jpg=Figure 3: Verifying settings=

**4)** Save the file as a spreadsheet, in spreadsheet format, as shown in figure 4.


=IMAGE=opencsvmovies3.jpg=Figure 4: Saving the imported data in spreadsheet format=


## Creating the database file that points to the spreadsheet

Now you’re ready to create the database file that reads the information out of your spreadsheet. It’s very simple.

**1.** Choose File→New→Database.

**2.** In the first window, select Existing Data Source, and Spreadsheet type, as shown in figure 5. Click Next.


=IMAGE=dbss1.jpg=Figure 5: Specifying Spreadsheet as the database type=

**3.** In the next window, point to the full path of the spreadsheet you want to use, as in figure 6. Click Next.


=IMAGE=dbss2movies.jpg=Figure 6: Pointing to your spreadsheet=

**4.** Leave all the checkboxes marked, as in figure 7. You don’t need to edit the database but the first time, at least, it’s good to take a look at what the main database window looks like. Click Finish.


=IMAGE=dbss3.jpg=Figure 7: Finishing the database creation=

**5.** Name the database, as shown in figure 8. This name will show up when you do mail merges, and it’s the name and location you’ll look for when you want to do things with the database like create queries or reports. Click Save.


<!--pagebreak-->



=IMAGE=dbss4.jpg=Figure 8: Naming and saving the database=

**6.** You’ll see the database, as shown in figure 9. Click the Tables icon at the left, and select a table name. Each sheet containing data in your spreadsheet will become a table. Now, on the right side, instead of None, select Document. You’ll see the data in the spreadsheet.


=IMAGE=dbss5movies.jpg=Figure 9: Viewing the new database and its table(s) in the database editing window=

You don’t have to do anything else—you’re ready to pull information into your documents.


## Updating the data

When you have more data, just add it to the spreadsheet. When you want more tables, just add the data to another sheet in the spreadsheet.


## Creating a query to restrict data

Let’s say you might want to print labels for all the DVDs in your collection, or you might want to print labels only for DVDs released between 1998 and 2002. You’d need to create a query so that you could print labels based on that query, or on the whole database.

**1.** Open the .odb database file you created.

**2.** Click the Queries icon at the left side.

**3.** Click the option to use Design view.

See figure 10.


=IMAGE=query1.jpg=Figure 10: Creating a query in Design view=

**4.** In the window that appears in figure 11, click Add to add the table you want to base the query on.


=IMAGE=query2.jpg=Figure 11: Selecting the table to base the query on=

**5.** Double-click each field that you want to add to the query. Then add the limiting information in the Criterion field; an example is shown in figure 12.


=IMAGE=query3.jpg=Figure 12: Creating the query=

**6.** Click the Run Query icon, with the green checkmark, to see the results shown in figure 13.


=IMAGE=query4.jpg=Figure 13: Running the query and seeing the results=

**7.** Click the Save Query icon and name the query. See figure 14.


=IMAGE=query5.jpg=Figure 14: Saving and naming the query=

**8.** Close the window.


# Printing CD or DVD labels from your database

Let’s say that you’ve created a lot of backups of your movies or you’re a musician with a burgeoning music career, or you’ve created a number of mix CDs. For whatever reason, you need to print out a lot of labels. The easiest way to do this is to create a mail merge that sucks the information out of your database and prints a label for each of your movies or CDs.

**1.** You need to print, so you need a document. You can download a CD template such as the [4.5" CD-ROM WL-OL1200 template from WorldLabel](http://www.worldlabel.com/Templates/Draw/WL—OL1200.ott), or use one that you already have that works. The spacing is important so you’ll probably make more trouble for yourself than it’s worth by creating your own label template from scratch. I’ve shown the template here with the borders on—it’s created as a table—so you can see what you’re working with more easily. See figure 15.


=IMAGE=medialabel1.jpg=Figure 15: Template for CD or DVD case label with borders showing=

**2.** To pull the data from your database, press F4 or choose View→Data Sources. Expand the database you want to use and select the table or query to use. See figure 16.


=IMAGE=medialabel2.jpg=Figure 16: Selecting the query or table to do labels for=

**3.** Click on the name of the field (not the data) that you want to use and drag it into the label. When you move your mouse over the field, you’ll see the full path of the database, table, and field. Drag in all the fields that you want to use. See figure 17.


=IMAGE=medialabel3.jpg=Figure 17: Dragging in the fields to print on the labels=

**4.** At this point, most of the choices are up to you. Add any other text, like labels for the title, actors, etc. You can put in graphics, do colorful formatting; anything you want. Use table formatting tools to align the text at the top or bottom, or just press Return a few times to get it where you want it. Add shading to the table or to the background of the document to get the color you want. Do everything in the first label to the second label, as well (the same formatting, etc.). See figure 18.


<!--pagebreak-->



=IMAGE=medialabel4.jpg=Figure 18: Formatting the fields in the labels=

**5.** Copy the fields from the first label to the second.

**6.** You now need to insert the trigger that will make the next record in the database print—otherwise the next movie’s information won’t print until the next page.

**_a)_** In the second label area, click to the left of the first field, in this case Movie. See figure 19.


=IMAGE=medialabel5.jpg=Figure 19: Preparing to insert an extra logic field=

**_b)_** Choose Insert→Fields→Other, Database tab, select the Next Record field, select the database and table you’re using, and click Insert. See figure 20.


=IMAGE=medialabel6.jpg=Figure 20: Inserting the field that will trigger the next record=

**_c)_** The Next Record field will be inserted but it doesn’t take up any space, so it won’t be very obvious. You only need to insert the Next Record field once per record; not in front of each field. See figure 21.


=IMAGE=medialabel7.jpg=Figure 21: The inserted Next Record field=

**_d)_** If you have three or more label areas in the template, copy all the fields from the second label area to _each additional area_.

Now when you print, you’ll get a new record for each label.

**7.** Choose File→Print and click Yes to print a form letter. Don’t mark the checkbox; you want this window to appear each time. See figure 22.


=IMAGE=medialabel8.jpg=Figure 22: Choosing to print a form letter, also known as a mail merge=

**8.** In the print window, choose to print to a printer and click OK. See figure 23.


=IMAGE=medialabel9.jpg=Figure 23: Selecting the output for the mail merge=

**9.** In the Print window, select the printer you want, and be sure it’s loaded with labels. Click OK. See figure 24.


=IMAGE=medialabel10.jpg=Figure 24: The printed labels=

**10.** One label will be printed for each movie (or other record) in your database.


# Conclusion

As with anything, organizing your spices, your sock drawer, or your office, setting up a database and labels takes a little time. But you’ll save time, effort, and be able to keep track of who you’ve loaned your DVDs to, down the line.

