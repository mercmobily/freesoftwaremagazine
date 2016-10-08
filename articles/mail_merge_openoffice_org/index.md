---
nid: '2673'
title: 'Mail merge in OpenOffice.org'
authors: 'Michael Crider'
published: '2008-06-17 3:58:45'
tags: openoffice
issue: issue_22
license: verbatim_only
section: end_users
main_image: hide.jpg
listed: 'true'

---
The office where I am network administrator switched most users to OpenOffice.org (OOo) back at version 1.1, and has followed the upgrade process to the current version 2.3 (a few poor users who have to exchange documents outside the office with high fidelity are still clinging to their MS Office 97). Our receptionist does a lot of general secretarial duties, including lots of letters, envelopes, and labels that involve mail merge. Since this seems to be a sticking point for many people, I am putting everything I have learned from helping her and have gleaned from various sources on the Internet together in this tutorial.

<!--break-->

# Mail merge overview

In OOo there are lots of different ways to do mail merge. It took some trial-and-error to find the best methods for us, and that is what I will be describing here. The first choice to make is database format. Our receptionist had always used Excel spreadsheets as data sources for MS Word, so we first tried using OOo's Calc spreadsheets. It turns out that this choice leads to several limitations. For example, if you find a mistake in your data while you are doing the mail merge, you must return to the spreadsheet to fix the mistake, then completely close OOo and open it again before continuing the merge. Also, each spreadsheet must be set up as a new data source. I then ran across a suggestion to use dBASE files, which have been the perfect solution. 

=ZOOM=We found the dBASE file format to be the perfect solution for everyday mail merge tasks=

We also made the decision to avoid the normal mail merge tools provided in OOo 1.1, which evolved into the Mail Merge Wizard in 2.x. While the wizard may be good for limited cases, it does not handle the variety of mail merge tasks we needed. It is actually fairly simple to go through the steps manually once you get used to them.

# Creating data sources

The first step in preparing for any mail merge task is to set up your data source. If you will be doing a lot of mail merge with a lot of data sources, it is appropriate to plan ahead how your files will be laid out. Our receptionist has a directory for each department. When using dBASE files as your data source, you only need to set up one data source for each directory (as will be explained later), and can add and remove files as needed. If you are working with existing data, you can probably convert it by opening it in Calc and saving it as a dBASE file. This works for spreadsheets, comma-delimited (CSV) files, and any other filetype that Calc will open. In the first row of the file, specify field names. A limitation of dBASE files is that field names can only be ten characters—Calc will shorten whatever you put in to this length. You may also wish to specify the field type and length. Character fields may be specified as "FIELDNAME,C,10", and dates may be specified as "FIELDNAME,D", while numeric fields may be specified as "FIELDNAME,N,4,2". On numeric fields, the first number is the length allowed before the decimal, and the second number is the number of digits stored after the decimal. If you do not specify these, Calc will determine the proper values based on the data in the column. I recommend that you specify zip codes especially, either as character or as number with no digits after the decimal, so you won't receive any surprises when you merge. When you save the file, Calc will ask you to choose a character set. The default "Western Europe (DOS/OS2-850/International)" has always worked for us.

After you have one or more dBASE files, it is time to set up your data source. From any OOo application, click on File→New→Database. You will be taken to the Database Wizard. On the first screen, select "Connect to an existing database", and choose dBASE as the type. On the next screen, either click on Browse and locate the directory where you stored your dBASE files, or type in the full path of the directory. Again I emphasize, you only point to the directory, not to an individual dBASE file. If you use the file browser, click OK when you are in the directory with the dBASE file(s). On the final screen of the wizard, leave the default to register the database, but probably turn off "Open the database for editing". When you click Finish, you will be presented a Save dialog. I refer to the file saved here as a database connection—it contains only the information for OOo to access the data, not the data itself. Give it an appropriate name and save it wherever you wish. I prefer to designate a single directory for all of these files.

=ZOOM=OOo database connections point to a directory of dBASE files, not an individual file=

You can verify that the data source is set up properly by opening either Writer (the word processor) or Calc, then selecting View→Data Sources (or pressing F4). The document portion of your window will split vertically. You will see a list of your data sources on the left side of the top area (see figure 1). If you click on the + next to the name of your new data source, and on the + next to Tables, and on the name of the dBASE file, you will see your data on the right side. From this view you can edit the data, as well as add and delete records.

=IMAGE=mailmerge-figure1.jpg=Figure 1: viewing data sources in OOo=

# Using mail merge for letters

Now it is time to put the data to use. Open Writer and start your form letter. You may either type your entire letter first and then add the fields to be merged, or you may add the fields as you go. There are (at least) two ways to add fields. Using View→Data Sources, you may click on a column header (field name) and drag it to the letter in the spot where you want the field. Our receptionist did not care for this approach because she did not have as much control over where the field ended up, could not view as much of the letter at a time with the data view at the top, and had no control over formatting of numbers, dates, etc. The other method is to place your cursor where you want the field, and go to Insert→Fields→Other..., which opens the Fields dialog box (see figure 2). Go to the Database tab, and click on "Mail merge fields" on the left, then open up your table on the right and select the desired field. If any special formatting needs to be applied, use Format→User-defined→Additional formats... (if necessary) at the bottom. 

<!--pagebreak-->

This opens the Number Format dialog used for formatting cells in Calc. For example, you can force a numeric field to appear as currency, with two digits after the decimal and the appropriate currency symbol in front. No formatting is available for character fields. After you have the formatting set appropriately, click on Insert, then click on Close (or move your cursor and repeat with the next field). If you do not need to format a particular field, you may double-click the field name instead of selecting it and clicking on Insert. At this point you will see a tag inserted in your letter, with the field name inside brackets on a grey background (some settings can cause the tag to appear differently). You can apply font formatting to this tag just like any other character.

=IMAGE=mailmerge-figure2.jpg=Figure 2: adding mail merge fields to a letter=

One important question is often asked: How do I get rid of the blank lines caused by empty fields? I have found several answers, but will only describe the method we use. As an aside, this is one area where OOo could learn from MS Office (at least 97 has an easier method). Anyway, the key is to tell OOo to make the line a hidden paragraph if the field is empty. Place your cursor before the tag, and go back to Insert→Fields→Other... (see figure 3). Go to the Functions tab, and select Hidden Paragraph. On Condition, type _NOT followed_ by the field name (in my example screenshot: "NOT ORGANIZATI"). Click on Insert, then Close. At this point the line will disappear unless you have marked View→Hidden Paragraphs.

=IMAGE=mailmerge-figure3.jpg=Figure 3: hiding blank lines=

If you think your data might have an effect on the pagination of your document, and want to check it before you print, return to View→Data Sources. Click on the empty box to the left of a record you want to check, highlighting that record. Find an icon in the toolbar immediately above the data with the tooltip label "Data to Fields", and click on it. The appearance of the icon can vary depending on what build of OOo you are using. In figure 1, it is the second icon after the last divider (these screenshots are from OOo 2.3.0 in Ubuntu 7.10). You may repeat this with other records, but only one record at a time can be applied (this isn't so important on letters, but can become an issue on labels). This method can also be used to ensure that data will be formatted properly.

=ZOOM=Use "Data to Fields" to check pagination and data formatting=

When you are ready to merge the data, proceed as if you were printing the letter. A question will appear: "Your document contains address database fields. Do you want to print a form letter?" Answer Yes, and the Mail Merge dialog will appear (see figure 4). Under Records, you may choose to print all records, a range of records by number, or records you have selected in the top part of the dialog. Again, records are selected by clicking on the box to the left of the record. You may use shift-click to select single additional records or control-click to select a range of records (just like selection in most GUI lists these days). Under Output you may choose between sending your merged letters to a printer or to a File. If you choose Printer, clicking OK will send you to a standard print dialog. If you choose File in version 2.3, you will then need to choose between saving as a single document (in ODF format), or in individual documents with a naming convention you specify (older versions do not have the single document option).

=IMAGE=mailmerge-figure4.jpg=Figure 4: doing the mail merge=

# Using mail merge for envelopes

Depending on what printer you use with OOo, envelopes are probably the most complicated type of document to get right. Start a new envelope in Writer by going to Insert→Envelope..., opening the Envelope dialog (see figure 5). On the initial Envelope tab, you may lay out the Sender and Addressee portions of the envelope. Fields are added at the cursor by specifying the database, table and field in the dropdowns, then clicking on the black left arrow. You  may turn off the Sender block if you are using envelopes with pre-printed return addresses. On the Format tab, specify the envelope size you will be using under Size→Format. Most envelopes I have worked with do not need any other changes on that tab. On the printer tab, it is important to tell OOo the envelope orientation for your printer. I have never seen any difference in the top and bottom settings—YMMV. If the current printer is correct, you may click on New Doc. Rarely if ever will you want to Insert, which will add the envelope as a page to your current document and greatly complicate printing.

=IMAGE=mailmerge-figure5.jpg=Figure 5: setting up envelopes=

As an aside, how do you remove an envelope that has been added to a document? This is a common question for people first getting used to OOo. The quickest fix is to change the page style from Envelope to Default (or whatever page style the rest of your document uses). This can be done using the "Styles and Formatting" dialog (opened with Format→Styles and Formatting or F11) or by right-clicking on the page style in the status bar. Then the Addressee and Sender blocks can be cut and the blank page can be removed with a single press of the Delete key. Undo will also remove an envelope if no further changes have been made to the document.

I have seen three common "gotchas" with envelopes. The most confusion I have seen with envelopes is from people using printers that feed envelopes in the center. OOo handles this by creating a custom page size that will reach from the proper location for the bottom of the envelope to the right edge of the printer, with a margin that restricts text to the printable region of the envelope. Numerous times I have found people attempting to change the page size to an actual envelope, and it doesn't print correctly. In most cases, it is important to leave the page settings alone. The second problem is that some printers don't print the envelope on the area where OOo intends. Most of the time you can return to the Envelope dialog and add a "shift right" value on the Printer tab to correct this. If you must do this, click on Modify to change the envelope you are working with, rather than create a new one. I also recommend that if you have a printer that needs non-standard settings for envelopes, save a blank envelope and use it as a template for future envelopes. The third problem is that, for some reason, the Envelope dialog uses line breaks instead of paragraph breaks, which can be seen if you mark View→Nonprinting Characters. This is also true of the Labels dialog below. I have not investigated why, although I am sure there is a very good explanation tucked away in a bug report. What this means is that the trick for hiding blank lines given above will hide the entire address. If you need to hide blank lines on envelopes or labels, the quickest fix is to place your cursor at the end of the line, then press Enter followed by Delete. This will replace the line break with a standard paragraph break.

=ZOOM=If your printer feeds envelopes in the center, the page format will appear wrong—it is not=

Once the envelope is laid out, merging works just like for letters.

<!--pagebreak-->

# Using mail merge for labels

Sometimes instead of printing envelopes directly, you want to print on labels and put them on envelopes. Even when printing envelopes, our receptionist likes to keep a sheet of "labels" printed on plain paper for each mailing, as a record of who received the mailing. Go to File→New→Labels to open the Labels dialog (see figure 6). Lay out the fields as you did in the Envelope dialog, and choose the appropriate labels under Format. Since Avery is a _de facto_ standard in label formats, whatever brand of labels you use will probably provide an equivalent Avery number. If you do not know the number, you can browse through the list until you find one with dimensions that match the labels you are using. It is important to note that where the dimensions are shown, the first pair of numbers are the physical dimension of each label, and the second pair in parenthesis gives the number of labels across and down on the sheet. In the screenshot example, Avery 5160 has 3 labels across each sheet and 10 down, for a total of 30 on the sheet, with each label measuring 2.63" x 1". If you find a format that matches your labels, you will not need to visit the Format tab. If you need to use it for an odd format, it is self-explanatory. On the Options tab, you will want to mark "Synchronize contents". You will see why shortly. You can also specify what printer you will be using on the Format tab. When you are finished, click on "New Document".

=IMAGE=mailmerge-figure6.jpg=Figure 6: setting up labels=

Other than the problem with line breaks mentioned in the previous section, the biggest problem I have seen with labels is that there is no way to scroll within a label if the text is longer than will show on a single label. This can be a problem if you have a lot of fields. The only solution I have found is to select the entire label (Edit→Select All or Ctrl+A), change the font to a smaller size, do your editing, then set the font back to the desired size.

=ZOOM=Line breaks from the Envelope and Label dialogs can lead to hidden addresses instead of hidden blank lines=

If you choose to start with a blank label template and insert fields as I showed you with letters, or if you are just curious, you might wonder how to make a different record show up on each label. Place your cursor at the end of the label, go to Insert→Fields→Other, and go to the Database tab. Click on Next record on the left, and the table name on the right. Click on Insert, then Close.

By now you have probably noticed a little window floating over your main window, with a single button "Synchronize Labels". If you make any changes to the labels after you finish the Labels dialog, you can make your changes on the first label only, then click on the button. This will update all other labels to match the first label.

Once the labels are laid out, merging works just like for letters and envelopes. I would highly recommend printing a page on plain paper first and make sure the labels line up. If they don't, you may need to use the Format tab in the Labels dialog to make everything fit. One of the biggest problems I have found with OOo is that you cannot modify an existing sheet of labels—you have to start over with the Label dialog and create a new document. If anyone knows a better solution, please add it to the comments.

# Conclusion

Hopefully this answers many questions about mail merge in OOo, and makes it simpler to understand the basic steps. As I stated in [another article on mailmerge](http://www.linux.com/feature/122265) recently, once you understand the basics of mail merge, you will find yourself applying it in other totally unrelated projects.

Finally let me say, for any IT person who supports OpenOffice.org users, anything written by [Solveig Haugland](http://openoffice.blogs.com) is required reading. She has helped me overcome numerous hurdles, especially in early versions of OOo that required workarounds to get normal work done.

=TEXTBOX_START=Work and staff management=
*  [Work Management Software](http://www.workmanagementsoftware.us). Work management happens with project management and CRM.
*  [Organize your office](http://www.organizeyouroffice.net). Important hints to remember when you organize your office.
*  [Staff management software](http://www.staffmanagementsoftware.us). Staff management is about time management: how to manage your staff's time
*  [Online management software](http://www.onlinemanagementsoftware.info). How the online revolution changed the rules of management.

=TEXTBOX_END=