---
nid: '1684'
title: 'Free Open Document label templates'
authors: 'Solveig Haugland'
published: '2006-08-22 18:41:58'
tags: 'worldlabel,open-document,labels,templates,openoffice.org'
issue: issue_14
license: cc-by-nd
section: end_users
listed: 'true'

---
If you’ve ever spent hours at work doing mailings, cursed your printer for printing outside the lines on your labels, or moaned “There has got to be a better way to do this,” here’s the solution you’ve been looking for. Working smarter, not harder! Worldlabel.com, a manufacture of [labels](http://www.worldlabel.com/) offers Open Office / Libre Office [labels templates](http://www.worldlabel.com/Pages/openoffice-template.htm) for downloading in ODF format which will save you time, effort, and (if you want) make really cool-looking labels

<!--break-->

# Using the right tool for the job

I believe in using tools. And if the tools are easy to use and free, so much the better. That’s why I’m a big proponent of using templates. Templates are one of the best ways to save time, effort, and be sure that your documents are consistent when they need to be.

<!--break-->

Templates make life easier when you use them for letters, documents, brochures, etc., but they really make life easier when you use them for labels. The spacing for your label documents has to be extraordinarily precise to make sure that the text is printed exactly where it needs to be—I’ve tried making my own and while it’s possible, it’s really not worth it. It’s not worth it primarily because there are so many excellent pre-existing templates to use instead.

There might be a few sheets of labels somewhere without a corresponding OpenOffice.org label template, but they’re rare. You can print on virtually any label sheets you want with the templates included in OpenOffice.org, and the templates available on the web, such as those from WorldLabel.

This article is about how to use the OpenOffice.org templates, in particular the WorldLabel templates, to print the labels you need. I’ll talk about how to download them, install them, use them as they are, and how to customize them with graphics and other features.

I’ll also touch on how to use the OpenOffice.org label wizard; you can use the label wizard each time, or save the template you create in the same template repository with your WorldLabel templates.


# About WorldLabel

WorldLabel lets you [download free templates](http://www.worldlabel.com/Pages/openoffice-template.htm) in OpenOffice.org format. You can download label templates in .stw or .ott file format for Openoffice.org 1.1x and 2.0 versions for Writer. You can look them up by the number on your Avery label sheet box or read the description. There’s a huge number of templates including those for CD and DVD, video, mailing, shipping, and diskettes, and with square or round corners. The templates are XML Open Document Format (ODF), Public Domain, licensed under GPL.


# Downloading WorldLabel templates

The first step, of course, is to get the templates onto your computer. First, make a directory where you’re going to put them. Create a directory at `C:\labels` or `home/labels`, for instance, though you can put them wherever you want.

Next, go to the URL for OpenOffice.org templates.


* If you want letter-size templates (this is what you want in the US) [go to this URL](http://www.worldlabel.com/Pages/openoffice-template.htm).
* If you want A4 sized templates [go to this URL](http://www.worldlabel.com/Pages/openoffice-a4.htm).

You can also just download one template at a time. You’ll see a list of templates. Find the one you want, by its corresponding Avery number (this is printed on your box of Avery labels), by the dimensions, or by the name if you know the WorldLabel name.


=IMAGE=downloadtemplates.jpg=Figure 1: WorldLabel templates=

To download the template, find the “Download” link, under the version you want. If you’re using the current version of OpenOffice.org, use the link under the 2.0 version for .ott files. Then right-click on “Download” and choose “Save Target As...”.

When the dialog box appears, specify the labels directory that you made, and click “Save”.

Repeat the downloading steps for any additional templates you want.


# Installing the templates in OpenOffice.org

Once you’ve got the WorldLabel templates, you should add them to the template repository and tell OpenOffice.org where they are. Strictly speaking, you don’t have to do any of this, since you can simply choose `File`→`Open` and find the template file. However, OpenOffice.org has a specific way to organize templates which is easier to use once you’ve got it set up.

This applies to any template that you download, as well as any template that you create.

There are several ways to do this; I’ll show you three.


## Copying to a directory

Copy your templates to the appropriate directory. The directory is _(OpenOffice)_`\share\template\`_language_.

Just paste your directory of templates into that location.


=IMAGE=copyto.jpg=Figure 2: Copying templates to the templates directory=


## Importing a single template

That other way was so easy, why bother with anything else? Good question. This approach is good if you want to just bring in a particular template and maybe put it in another category like “templates for the month-end reports”.


=IMAGE=importtemplate.jpg=Figure 3: Choosing to import the template=


1. Choose `File`→`Templates`→`Organize`.
1. Select a category on the left. (If you need to create one, right-click on an existing category, choose “New”, and immediately type the name of the new category.)
1. Right-click on the category and choose “Import Template” (figure 3).
1. Find the template and click “Open”.
1. The template will appear in the category.


=IMAGE=downloadtemplates.jpg=Figure 4: The imported template appears=


<!--pagebreak-->



## Pointing to a directory of templates locally or on the network

Why would you need yet a third way to point OpenOffice.org at your templates? If you’re a system administrator, you want to make things easy on yourself. Therefore you might want to put all the templates on the network and just point each user to them. Here’s how.


1. Put the directory of templates on the server.
1. **Important:** Create at least one subdirectory and put the templates there. It’s odd, but OpenOffice.org recognizes the subdirectories when you do it this way, but not the main directory. You’d have something like figure 5.
1. Choose `Tools`→`Options`.
1. Go to `OpenOffice.org`→`Paths` and select the “Templates” line.
1. Click “Edit”. In the window that appears, click “Add”. Specify the path on the network. Note that you can have several paths to templates (figure 6).
1. Click “OK”, then click “OK” twice more to save changes and close the window.


=IMAGE=subdirectories.jpg=Figure 5: Your template directory=


=IMAGE=templatepath.jpg=Figure 6: Pointing to the shared templates=

**Note:** There’s another way to add a template to the repository, but it’s more useful when it’s a template you create yourself, or create based on one of the wizard templates. I’ll talk about that approach later.


# Using WorldLabel templates

Now that you’ve installed the templates, the rest is easy. Just choose `File`→`New`→`Templates and Documents`. You’ll see the templates window and your templates; if you don’t, select the “Templates” icon at the left.


=IMAGE=templatewindow.jpg=Figure 7: OpenOffice Templates window=

Double-click the templates category you want, then select the template you want. Any information about the template will be displayed (figure 8).


=IMAGE=templatewindow.jpg=Figure 8: Selecting the template=

Double-click the template; it will open, as shown (figure 9).


=IMAGE=blanktemplate.jpg=Figure 9: A new document based on the template=

To add information, just click in the area where you want label information, and start typing (figure 10). Press “Return” to go to a new line, then press “Tab” twice to go to the next label area.


=IMAGE=labels_topline.jpg=Figure 10: Moving between labels=

To format text, just select one or more labels. To select all of the labels, click in the text for one, then press “Ctrl + A”. Apply formatting as you would normally, either with the toolbar, or by choosing `Format`→`Character or Format`→`Paragraph`.


=IMAGE=labelformatting.jpg=Figure 11: Formatting labels=

When you’re finished, just print and insert the correct sheet of labels in your printer.


# Customizing a WorldLabel template

You might be wondering how the WorldLabel templates are created, especially if you’ve used the wizard templates, which are based on Frames. The WorldLabel templates are created with tables; you don’t see the borders since they’ve simply been formatted that way. If you take a close look, though, when you click in the template, you can see the table toolbar.


=IMAGE=labelformatting.jpg=Figure 11: Labels and the table formatting toolbar=

This means you have all the formatting capabilities that you normally get with a table, including the following:


* alignment to the top, middle, or bottom (you might want to align your labels all the top),
* background formatting—you can apply a color to the background of each cell,
* easier cutting and pasting than with frames,
* easier selection of all the content of a row, column, or the whole table,
* easier copying and pasting; you can easily select the whole table and copy it onto the next page, to make multi-page sheets of labels.

To _apply values_ to the table, like backgrounds, choose `Table`→`Table Properties` and choose the appropriate tab (figure 12).


=IMAGE=tableproperties.jpg=Figure 12: Formatting labels using the Table window=

To _do_ things to the table, choose `View`→`Toolbars`→`Table` (figure 13).


=IMAGE=tablestoolbar.jpg=Figure 13: The Tables toolbar=


<!--pagebreak-->



## Showing and hiding table borders

I find that tables are easier to work with, when you’re doing any extensive customization, if the borders are visible. To see the borders of the table, select the whole table. You can simply click in the upper right cell and drag down to the lower right cell, or click in one of the cells and press “Ctrl + A”. Then click and hold down on the indicated borders icon in the Tables toolbar, and choose the lower right option for borders on all cells (figure 14).


=IMAGE=applytableborders.jpg=Figure 14: Adding visible borders to the labels=

The table borders appear. As you can see there are actually five columns, including the two spacer columns (figure 15).


=IMAGE=applytableborders_result.jpg=Figure 15: Labels with visible borders=

To take the borders off later, just repeat those steps but choose the upper left option for no borders on any cells.


## Pasting into label cells

Table-based label templates are much easier to paste content into. Let’s say you’ve just got a table somewhere else and you want to make labels out of it. Don’t worry about the dimensions of the original table. You will have to do some formatting once you’ve pasted, though, so this should be done if the time for reformatting is less than the time for retyping.


=IMAGE=copy1.jpg=Figure 16: Selecting content to copy=


1. Select one column of content (two columns won’t work since the separator column is in the template) and copy it (figure 16).
1. Go to the label template, click in one cell, and paste. The pasted content will fit into the label template, taking on the correct dimensions (figure 17).
1. To apply the correct formatting (you can do this after you’ve pasted all the content), select the pasted content and from the styles dropdown list, select Default (figure 18).
1. With the pasted content still selected, choose `Format`→`Paragraph`, click the “Indents & Spacing” tab, and specify `.07` inch in the first two fields (figure 19).
1. Click “OK”.


=IMAGE=copy2.jpg=Figure 17: Pasting content into the labels template=


=IMAGE=copy3.jpg=Figure 18: Applying the Default style=


=IMAGE=copy4.jpg=Figure 19: Applying the correct indent=

**Note:** You could also update the Default style to be indented `.07` from each side.


## Pasting one cell into multiple label cells

Let’s say you’re making moving labels, or business cards, or something else where you need exactly the same information in every cell. Rather than pasting into each cell individually, you can copy the text once, then paste into every cell.


1. Select the content to paste, as plain text. You don’t need it to be a table cell.
1. Go to the labels and select all the cells where you want that text to show up.
1. Paste. The content will appear in every selected cell.

Again, you’ll need to apply the Default style as before, and as before, only paste one column at a time because of the separator columns.


## Copying the first page to make additional pages

If you’re creating labels, you often need more than just one page. So, to make a multi-page sheet of labels, you essentially just have to select the whole table and paste it onto the next page.


1. Select the whole table. You can simply click in the upper right cell and drag down to the lower right cell, or click in one of the cells and press “Ctrl + A”.
1. Copy the table.
1. Click below the table (figure 20)
1. Paste. The table will appear on the next page. Repeat these steps to add additional pages.


=IMAGE=twopages.jpg=Figure 20: Clicking in the next available line, to paste another page=


# Using label wizard templates

There are two basic types of label templates in OpenOffice.org: documents that already exist, and templates that are created for you based on selections you make in the label wizard. Using the wizard labels is a bit different. But, it’s definitely a good idea to learn to use them as they provide two key features, mail merge and the ability to automatically update all labels in the sheet to match the first label. I won’t talk about mail merge, since that’s a big topic on its own, but I will go through how to do the automatic update, also known as synchronizing.


## Creating a label using the label wizard


1. Select the page size and Avery number that you want (figure 21).
1. If you want the same content to appear in every label, fill in that text in the blank field. (You can change and format it later.) **Note:** If you want to make slight adjustments to the label, click the “Format” tab and change the measurements. However, this is an advanced task and you shouldn’t have to do this.
1. Click the “Options” tab. If you want the text or formatting to be the same in all the labels, select the “Synchronize” option (figure 22).
1. Click “New Document”. The label document will appear, and if you selected Synchronize, the Synchronize button will appear, as well (figure 23).
1. You’re now ready to format, print, edit, or otherwise change the template.


<!--pagebreak-->



=IMAGE=labelwindow_select.jpg=Figure 21: Selecting the label to use=


=IMAGE=labelswindow_optionstab.jpg=Figure 22: Selecting the Synchronize option=


=IMAGE=labelsdocument.jpg=Figure 23: The new untitled label document=


## Updating labels using the synchronize feature

Here’s how the Synchronize feature works. It’s very handy—you can use it to update the text or the formatting (or the graphics) in the first label so that all other labels match (figure 24).


1. Make the changes you want in the first cell. Change the formatting as you would normally in a text document, change the content, or (as in the next procedure) add a graphic (figure 25).
1. Click the “Synchronize Labels” button.
1. All the labels will be updated to match the first one.


=IMAGE=synch1.jpg=Figure 24: Updating one label=


=IMAGE=synch2.jpg=Figure 25: The updated labels=


## Handling frames in a wizard template

Frames are the boxes that the wizard templates use to subdivide text into labels. (If you want to play around with them in other documents, just choose `Insert`→`Frame`.)


=IMAGE=frames.jpg=Figure 26: Frames in a wizard label template=

Frames are a little odd to work with. If you didn’t click the Synchronize option, you’ll be able to go from one frame, and you’ll want to. I’ll give you a few tips on how to do this.


* One of the issues is that you might want to click on the frame border, to change the width of the border or other options, or you might want to click inside to type. It’s not clear how to tell OpenOffice.org which you want. If you’re having problems clicking in a frame to type, just press the “Esc” key. Likewise, if you are typing in the frame and want to select the frame border, you can also press “Esc”.
* If you want to quickly move from one frame to another using the keyboard, press Esc, then press Tab, then press Enter. 


## Saving a wizard template as a standard template

Going through the Wizard to create labels each time is a bit more work than just opening an existing template. However, there is that handy Synchronize feature. What do you do to reduce the labor associated with the wizard labels? Just save the template the wizard creates in the same location as your other templates.


1. Create a template as you would normally, through the wizard.
1. Do any additional formatting once you have created the template.
1. Choose `File`→`Templates`→`Save`.
1. In the Templates window that appears, type a name for the template, and a category (figure 27). **Note:** To create a new category, click “Organizer”. In the left-hand list, right-click on an existing category and select “New”. Immediately type the name of the new category. Click “Close” to go back to the Templates window.
1. Click “OK”.


=IMAGE=templates_save.jpg=Figure 27: Identifying the template=

You can now use the template the same way you use any other template. Choose `File`→`New`→`Templates and Documents`, select the Templates category, and just double-click the template you want.


# Adding graphics to any template

A major feature of OpenOffice.org templates is the ability to add graphics. You can add them in the corner, or in the background as a watermark.


## Inserting a graphic


1. Just click in the cell where you want the graphic.
1. Choose `Insert`→`Picture`→`From File`.
1. Find the graphic on your computer and select it.
1. The graphic will appear (figure 28).
1. To resize it, hold down “Shift” and drag one of the corner handles in or out (figure 29).


=IMAGE=pic_appears.jpg=Figure 28: A graphic added to a label=


=IMAGE=pic_resize.jpg=Figure 29: Resizing a graphic=


<!--pagebreak-->



## Wrapping text around a graphic

At this point, you’ve got a graphic but it probably doesn’t look that good with the text.


=IMAGE=wrap1.jpg=Figure 30: A graphic without wrapping=

To wrap the text nicely around the text, right-click on the graphic and choose “Page Wrap”.


=IMAGE=wrap2.jpg=Figure 31: Specifying Page Wrap=

Now you can move the graphic and the text will get out of its way. If necessary, delete any new carriage returns that were created.


=IMAGE=wrap3.jpg=Figure 32: A graphic with wrapping=

**Note:** To specify a little more room around the graphic, right-click and choose “Picture”. In the “Wrap” tab, specify spacing.


## Adding a background graphic

You can add a graphic to the background of each label, too. I’ll use this lightened watermark OpenOffice.org logo as an example.


=IMAGE=ooo_watermark.jpg=Figure 33: A watermark graphic=


1. First, format the text the way you want it, since with a background graphic the text will be harder to select.
1. Insert the graphic in the label the same way you do with other graphics, by choosing `Insert`→`Picture`→`From File` (figure 34).
1. Then right-click on the graphic and choose `In Background` (figure 35).
1. You’ll see the graphic in the background (figure 36).


=IMAGE=water1.jpg=Figure 34: Inserting a watermark graphic=


=IMAGE=water2.jpg=Figure 35: Sending the watermark graphic to the background=


=IMAGE=water3.jpg=Figure 36: The watermark graphic in the background of the label=


# Conclusion

No templates article would be complete without mentioning styles. Styles can make formatting templates even faster. Styles are a far bigger topic than templates, but I hope you’ll google for information, use the online help, or refer to the styles section of my [blog](http://openoffice.blogs.com/openoffice/styles/index.html).

I hope you’ll use templates, either the WorldLabel templates or the wizard templates or both, to make your job easier. It’s easy to fall into the habit of doing things manually, and I do that myself, but the difference when you take a little time to set up templates is amazing. It’s particularly helpful when you have a large team of people—the time you save yourself might not be that much but the time that five or 500 people save is tremendous. If you have new people on your team regularly, if consistency is a goal or a challenge for your organization, or if you have a distributed team, templates can be tremendously helpful. They’re the right tool for the job.

