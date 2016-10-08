---
nid: '2111'
title: 'The simplest way to make databases in OpenOffice.org'
authors: 'Solveig Haugland'
published: '2007-05-09 6:30:00'
tags: 'openoffice.org,spreadsheets,data,databases,mail-merge,staroffice'
issue: issue_17
license: cc-by
section: end_users
listed: 'true'

---
Do you need to make a database, but fear it’s too much of a pain or you don’t have the right tools? Don’t worry: it’s easy, free, and useful, too. Use the free OpenOffice.org office suite to get your data in shape for mail merges, queries, or useful analysis of your business data.


# What’s the point of making a database?

Not everyone needs a database. But sooner or later, anyone who has to keep track of and retrieve important information is going to benefit from one. Databases are for storing data, of course, but their benefit comes in letting you get at the data you want, and in displaying or printing it the way you want. For instance, once you have a database, you can, of course, do mail merges—whether it’s a letter to each of the 500 people you met at a free software convention or printing labels for each of the 870 legal DVD backups you own. Databases are also necessary for setting up data entry or data viewing forms; creating relations between tables so you can print connected data; or for creating a list that shows the average number of items your customers bought per purchase during the holiday shopping season.


=ZOOM=Not everyone needs a database. But sooner or later, anyone who has to keep track of and retrieve important information is going to benefit from one=


# What kind of database do you create?

Once you’ve decided to create a database, the way ahead looks simple. You just choose:

`File→New→Database`

However, then one last question remains: what type of database do you create? Do you connect straight to your Oracle database? (This is best only if you are or have access to an Oracle guru.) Do you investigate some of the simpler choices such as spreadsheets, or if you are well informed or psychic, do you choose the entirely invisible option of importing existing data?

If you’re a database god and enjoy spending time deep in a database—well, you can do anything you want. If you want the most results for the least trouble, here’s what I recommend.


* Get your data in a spreadsheet, then create a database file that can read the spreadsheet. This is simple and if you don’t need advanced database features, it’s all you need. See _Creating a simple database that connects to a spreadsheet._
* Or get your data in a spreadsheet, and paste it into Base to create a native Base database. This involves slightly more work but gives you a great deal more power. See _Creating a native OpenOffice.org Base database._


## Creating a simple database that connects to a spreadsheet

The simplest approach is to simply create an OpenOffice.org database file that points to a spreadsheet chock full of data. The spreadsheet doesn’t have the power to do mail merges and the other database-related features I mentioned earlier, but the database file pointing to it can. It acts as a middle man saying “The data’s over there, with these fields—go get it”.


=ZOOM=The simplest approach is to simply create an OpenOffice.org database file that points to a spreadsheet chock full of data=

You either have your data in a spreadsheet already, or you can get it into a spreadsheet pretty easily. You’ll want to have it set up to look something like this, with field labels across the top, and with each piece of data separate. See figure 1.


=IMAGE=namesdata.jpg=Figure 1: Spreadsheet data=

Now you’re ready to create the database. It’s pretty simple.

**1.** Choose `File→New→Database`.

**2.** In the first window, select Existing Data Source, and Spreadsheet type. Click Next. See figure 2.


=IMAGE=dbss1.jpg=Figure 2: Choosing to create a spreadsheet-based database=

**3.** In the next window, point to the full path (I’ve just shown the filename here) of the spreadsheet you want to use. Click Next. See figure 3.


=IMAGE=dbss2addresses.jpg=Figure 3: Specifying the spreadsheet name and path=

**4.** Leave all the checkboxes marked. You don’t need to edit the database but the first time, at least, it’s good to take a look at what the main database window looks like. Click Finish. See figure 4.


=IMAGE=dbss3.jpg=Figure 4: Finishing the database=

**5.** Name the database. This name will show up when you do mail merges, and it’s the name and location you’ll look for when you want to do things with the database (like create queries or reports). Click Save.  See figure 5.


=IMAGE=dbss4.jpg=Figure 5: Naming and saving the database=

**6.** You’ll see the database. Click the Tables icon at the left, and select a table name. Each sheet containing data in your spreadsheet will become a table. Now, on the right side, instead of None, select Document. You’ll see the data in the spreadsheet. See figure 6.


=IMAGE=dbss5names.jpg=Figure 6: Viewing the database file that connects to your spreadsheet=

There’s nothing else you have to do. Here’s a little more information, though.


## Updating the data

When you have more data, just add it to the spreadsheet. When you want more tables, just add the data to another sheet in the spreadsheet.


=ZOOM=When you have more data, just add it to the spreadsheet=


## What you can’t do with this type of database

There are some fairly cool features that you might or might not need that you won’t have available. You can’t, for instance, use the functions that can tell you: for every invoice, what was the average total amount on the invoice. You can’t create data entry forms. You can’t join two tables to relate the data. But you can create queries, and reports, and data view forms. (Click the Forms icon on the left side in your database editing window, and use the wizard to create the form.) See figure 7.


<!--pagebreak-->



=IMAGE=moviesform.jpg=Figure 7: A data-viewing form=


# Creating a native OpenOffice.org Base database

If you want all the power that Base can provide, and you don’t have Access or Oracle or another engine sitting out there to connect to, then you’ll want to create a native database. This is similar to start off with, but with a lot of extra steps to define the tables, and a lot of extra steps to bring the data in.


=ZOOM=If you want all the power that Base can provide, and you don’t have Access or Oracle or another engine sitting out there to connect to, then you’ll want to create a native database=


## Creating the database

**1.** Choose `File→New→Database`.

**2.** In the first window, choose to create a new database. Click Next. See figure 8.


=IMAGE=dbnative1.jpg=Figure 8: Creating a new database=

**3.** Leave the checkboxes with the default selections and click Finish. See figure 9.


=IMAGE=dbnative2.jpg=Figure 9: Accepting the default values=

**4.** Just name the database and click Save. See figure 10.


=IMAGE=dbnative3.jpg=Figure 10: Saving and naming the database=

**5.** The database appears. See figure 11.


=IMAGE=dbnative4.jpg=Figure 11: Your native Base database (without tables)=


## Creating tables and entering data by pasting

There is a long, traditional way to create tables. You can do it in design view, or using the wizard. See figure 12.


=IMAGE=dbnativedesignviewcreate.jpg=Figure 12: Creating a table from scratch=


=ZOOM=This article is about telling you how to get the most bang for your effort buck=

But this article is about telling you how to get the most bang for your effort buck. So, I’m skipping that and going straight to the easy, invisible way. This way is an advantage only if you have the data out there somewhere already: in another database, in some CSV file, in an Excel or Openoffice.org Calc spreadsheet, or even in a big HTML table. And that is the case most of the time.

**1.** Get the data into a spreadsheet. You can export the data from your database to a spreadsheet or CSV, or copy it from an HTML table if it’s not there already.


* From HTML: Copy the table, then click in one cell of a spreadsheet and paste.
* From CSV (comma-separated files): In OpenOffice.org choose `File→Open`. In the File Type list of the Open window, select Text CSV (click in that list and type T four times). Select the CSV file and click Open. In the window that appears, verify that the settings are correct for the data, then click OK.
* From Excel: Just open the spreadsheet in OpenOffice.org. See figure 13 and Figure 14.


=IMAGE=opencsvfile.jpg=Figure 13: Specifying Text CSV format so that the file will open in a spreadsheet=


=IMAGE=opencsvfile2.jpg=Figure 14: Checking the conversion settings for the text file=

**2.** Make sure the data is set up right. Make sure there are field headings, that the data is granular enough, etc. If you don’t have a unique primary key field such as an ID, don’t worry; you can create one on the fly as you add the data.

**3.** In the spreadsheet, copy all the data including the headings.

**4.** Go to the database file and click the Tables icon at the left side.

**5.** In the Tables area, right-click and choose Paste. See figure 15.


=IMAGE=dbnativepaste1.jpg=Figure 15: Pasting the data to create a table=

**6.** In the window that appears, type the table name you want, and choose to add both the data and the definition, or just the definition if you want to significantly edit the table definition. You can also choose to create a new field that will function as the primary key. It’s a good idea to paste just the definition first, if you want to set one of the fields you’re pasting in as the primary key. Then paste again and just paste data.

Click Next. See figure 16.


=IMAGE=dbnativepaste2.jpg=Figure 16: Specifying what should be copied and created in the new table=

**7.** Add all the fields that you want in the table, then click Next. See figure 17.


<!--pagebreak-->



=IMAGE=dbnativepaste3.jpg=Figure 17: Specifying the fields you want=

**8.** Make any changes to the field definitions. Click Create. See figure 18.


=IMAGE=dbnativepaste4.jpg=Figure 18: Modifying field definitions=

**9.** The table will appear in the database. Select the table, and from the right side choose Document rather than None, and you’ll see the data. Close the database, saving changes. See figure 19.


=IMAGE=dbnativepaste5.jpg=Figure 19: Viewing and saving the table and database=

You’re done—you’ve got a fully functioning native Base database with a table. You can create views, relations, data entry forms, reports, write SQL queries on the data, and anything else that Base provides.


## Adding more tables or pasting data into a table definition

Just repeat the pasting process with another set of data.


## Changing the table definition

Right-click on the table name and choose Edit. See figure 20.


=IMAGE=dbnativeedit1.jpg=Figure 20: Choosing to edit the table definition=

You’ll then see design view, where you can change some aspects of the definition. For instance, to make a field auto-value, just make it an Integer type, then choose Yes under AutoValue at the bottom of the work area. See figure 21.


=IMAGE=dbnativeedit2.jpg=Figure 21: Modifying the table definitions=

If you want to change the primary key, right-click on the field you want to make the primary key and select Set Primary Key. See figure 22. **Note:** This works only if you are pasting just the definition, not the definition and the data.


=IMAGE=dbtableaddressprimarykeywizard.jpg=Figure 22: Modifying the table definitions=


## Updating the data

To add data, paste the new data again the same way you did before—select the data and choose Paste. In the window that appears, just choose to Append, and make the same choices you did last time. See figure 23.


=IMAGE=dbnativepaste_add2.jpg=Figure 23: Appending data=

Alternately, double-click the table name and change or add the data just by typing.

Another approach, if you’re going to need to do a lot of updating, is to create a data entry form. Click the Forms icon on the left side of the database editing area and use the forms wizard to create the form. Be sure to state, when prompted, that the form is for both viewing and entering data.

I should emphasize that with all data, be sure that it is set up correctly in the spreadsheet before you paste it in. Be sure columns names are correct and that the data is granular enough. Also, it looks like creating the primary key in the first window of the wizard, when prompted, is the only way to do it. If  you want to change it later, you can’t because the table already contains data. A way around this might be to paste only the definition first, don’t set the ID as the primary key when prompted, and then set the appropriate field as the primary key by editing the table definition. Then, paste just the data.


# Conclusion

This process reinforces a general theme about OpenOffice.org advanced features—basically, that many things are possible but they are not obvious. If you don’t see a button or a checkbox for something in the interface, that doesn’t mean it’s not possible. Keep looking.

