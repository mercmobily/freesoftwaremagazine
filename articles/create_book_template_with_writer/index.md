---
nid: '2447'
title: 'Creating a book template with Writer'
authors: 'Dmitri Popov'
published: '2007-11-01 7:51:20'
tags: 'openoffice.org,writer'
issue: issue_20
license: cc-by-nc-nd
section: end_users
listed: 'true'

---
While Writer allows you to create an advanced book template that consists of a master document and a number of subdocuments, there are situations where using a simpler, one-file template makes more sense. The main advantage of a one-file book template is that it helps you to work around two major problems in Writer.


<!--break-->


First of all, there is a bug ([1](http://qa.openoffice.org/issues/show_bug.cgi?id=11174) and [2](http://qa.openoffice.org/issues/show_bug.cgi?id=58721)) that makes it rather difficult to manage figure numbering. Moreover, the current implementation of the cross-reference feature makes managing cross-references between sub-documents quite cumbersome. Besides that, you might find it easier to work on a single file, where you don’t have to keep tabs on all the sub-documents. It’s also easier to troubleshoot if something goes wrong with the book layout. Moreover, creating a one-file template requires far fewer steps, which saves you time. So if a one-file book template best fits your needs, then read on. The following description assumes that you are familiar with OpenOffice.org and that you know how to work with paragraph and page styles.

First of all you have to outline the overall structure of the book. For this example, I will be creating a book template consisting of the following parts:


* Front matter, including a copyright page, table of contents (TOC), and a preface
* Book body consisting of several chapters
* Alphabetical index


# Creating paragraph styles

To set up the book template, you need to create custom paragraph, character, and page styles as well as specify outline numbering for use with the TOC. Which paragraph and character styles you need to create is completely up to you. However, as a minimum, you have to create the following paragraph styles:


* Text body for use in the book body
* Headings for chapter titles and subtitles
* Footer and header for use with the book’s headers and footers

Depending on the contents of the book, you might need to specify additional styles. For example, if your book is going to include numbered and bulleted lists, you need to create paragraph styles for them, too. The same goes for figure captions, tips, boxouts, etc. To create a new paragraph style, click on the _Paragraph Styles_ button in the _Stylist_ window, right-click somewhere in the window, and select _New_ from the context menu. (If you don’t see the _Stylist_, press F11 or choose _Format→Styles_ and _Formatting_). Then use the available options to set up the paragraph style. While most of the available options are self-explanatory, there are a few settings that deserve a closer examination. The _Organizer_ tab allows you to specify the _Next Style_ and _Linked with_ options. As the name suggests, you can use the _Next Style_ option to select the style that follows the current style in the book.


=IMAGE=Fig1.jpg=Figure 1: The Organizer tab allows you to specify the Next Style and Linked with options=

For example, in figure 1, the `BOOK_Heading` style is followed by `BOOK_Text_body` style. In practice, this means that after you’ve entered a heading which has the `BOOK_Heading` style and then pressed enter, Writer automatically switches to the `BOOK_Text_body` paragraph style. This is a nifty trick that can save you a lot of time. The _Linked with_ option allows you to select an existing style that you want to base the new style on. For example, when creating the `BOOK_Tip_body` style, you might want to link it with `BOOK_Text_body`. The linked `BOOK_Tip_body` style automatically inherits all the properties of the `BOOK_Text_body` style, so you don’t have to specify all the settings from scratch. More importantly, if you later make changes to the `BOOK_Text_body` style, they will automatically propagate to the linked styles, which can save you a lot of time.


=IMAGE=Fig2.jpg=Figure 2: Specifying the Text Flow option=


<!--pagebreak-->


If you want each chapter in your book to start from a new (usually right) page, you have to specify the _Text Flow_ options. To do this, click on the _Text Flow_ tab in the _Paragraph Style_ dialog window. In the _Breaks_ section, tick the _Insert check box_, select _Page_ from the Type list, select _Before_ from the _Position list_. Tick the _With Page Style_ check box and select the `BOOK_First_Page` (you have to create this page style first as described later) from the list. Make sure that _Page number_ is set to 0, and click OK to save the setting and close the window.

**TIP:** While you can modify Writer’s default styles for use in your book template (for example, Text body), it’s a good idea to create custom styles from scratch, so you can easily display them in the Navigator by selecting the _Custom Option_ from the drop-down list at the bottom. This may seem like a minor thing, but it saves you a lot of time in the long run. Also, to make it easier to identify the custom paragraph, character, and page styles, you might want to add a prefix to their names, for example, `BOOK_Text_body`, `BOOK_Monospaced`, `BOOK_First_page`, etc., (figure 3).


=IMAGE=Fig3.jpg=Figure 3: Custom styles in the Stylist=


# Creating page styles

Next step is to create the required page styles. Any book, even the most simple one, consists of several parts, and each of them requires its own page style. Based on your overall book structure, you can make a list of the necessary page styles that looks something like this:


* Title page—no numbering, no footer/header.
* Copyright page—no page numbering, no footer/header.
* Table of Contents (TOC)—page numbering starts with i, no header, book title and page number in the footer.
* Preface—page numbering continues from TOC, no header, page number in the footer.
* Chapters—page numbering starts with 1, book title in the header, page number and chapter’s title in the footer.
* Alphabetical index—two-column page, page numbering continues from the last appendix, no header/footer.

There is another important thing you must take into consideration. Unlike conventional documents, the book is printed on both sides of the pages, which are then bound. This means that you have to create separate page styles for left and right pages that mirror each other, and you have to make inside margins for each page style (also known as gutters) wider in order to accommodate the binding. This means that you have to create a set of three page styles for the book chapters: `BOOK_First_page`, `BOOK_Left_page` and `BOOK_Right_page`. To create the `BOOK_First_page` style, click on the _Page styles_ button in the _Stylist_ window, right-click somewhere in the window, and choose _New_. This opens the _Page Style_ window where you can specify the `BOOK_First_page` style’s settings, similar to those in figure 4. Note that the _Page Layout_ is set to _Only right_, which ensures that all chapters in the book always start on the right page. Note also that the style’s left margin is wider than the right one: this is done to emulate the gutter.


=IMAGE=Fig4.jpg=Figure 4: Specifying the BOOK_First_page style=

The `BOOK_Left_page` style is identical to `BOOK_First_page` except for two things. The _Page Layout_ option is set to _Left only_, and the right margin emulates the gutter. In other words, the `BOOK_Left_page` style mirrors `BOOK_First_page`. Finally, the `BOOK_Right_page` style is similar to `BOOK_First_page`: its Layout option is also set to _Right only_, and the gutter is on the left. Which begs the question why you need two separate right-oriented page styles at all? The answer is simple. Usually, the page of the chapter has a different layout: it may not have a header or footer, and it can use a completely different layout all together.

Now you have to link all three page styles:


* Right-click on the `BOOK_First_page` style, choose _Modify_, and select `BOOK_Left_page` from the _Next Style_ list under the _Organizer_ tab. Click OK.
* Right-click on the `BOOK_Left_page` style, choose _Modify_, and select `BOOK_Right_page` from the _Next Style_ list. Click OK.
* Right-click on the `BOOK_Right` page style, choose _Modify_, and select `BOOK_Left_page` from the _Next Style_ list. Click OK, and you are done.

Linking the page styles allows Writer to automatically apply the correct page style.


# Using pictures in chapters

If you plan to use pictures in the book, then there are a couple of additional things you have to take care of. First of all, you have to adjust the _Graphics_ style (in the Frame Styles section in the Stylist). If you plan to use captions with the pictures, then you either have to adjust the existing caption style (for example, _Illustration_ in the _Paragraph Styles_ section in the _Stylist_), or create a new one.


<!--pagebreak-->


To configure Writer to add captions automatically, follow these steps:


* Choose Tools→Options→OpenOffice.org Writer→AutoCaption.
* Tick the OpenOffice.org Writer _Picture_ check box, and specify the _Caption_ options.
* Click OK to save the settings and leave the window.


# Specifying outline numbering

In a nutshell, outline numbering is a hierarchy of different paragraph styles required, among other things, for generating a table of contents. To specify outline numbering, choose Tools→Outline Numbering, select 1 from the Level list, and select `BOOK_Heading` from the _Paragraph Style_ list. In a similar manner, you can specify paragraph styles for other levels as shown in figure 5.


=IMAGE=Fig5.jpg=Figure 5: Specifying outline numbering=


# Adding a table of contents and alphabetical index

Using the defined outline numbering, adding a TOC to the book is rather easy. Place the cursor where you want the TOC to appear, choose Insert→Indexes and Tables→Indexes and Tables, and select Table of Contents from the Type drop-down list under the _Index/Table_ tab. Tick the _Outline_ check box in the _Create from_ section. This forces Writer to use the specified outline numbering when generating the TOC. To add styles that are not specified in the _Outline_ numbering, such as _First chapter title_, tick the _Additional Styles_ check box, select the style and press the _>>_ button to move it one step forward. Press OK when you are done to close the window and generate the TOC.


=IMAGE=Fig6.jpg=Figure 6: Creating a table of contents=

Adding the alphabetical index is equally simple. Place the cursor where you want to insert the alphabetical index, choose Insert→Indexes and Tables→Indexes and Tables, and select _Alphabetical Index_ from the _Type_ drop-down list under the _Index/Table_ tab. Configure other options, then press OK to insert the alphabetical index.


# Final word

There are many ways to skin a cat, the described approach is the only way to create a book template. However, since I used this template for my book, [Writer for Writers and Advanced Users](http://www.lulu.com/content/221513), I can promise you that it works. If you find a better way of doing things, please drop a note to `dmpop` at `openoffice.org`.

