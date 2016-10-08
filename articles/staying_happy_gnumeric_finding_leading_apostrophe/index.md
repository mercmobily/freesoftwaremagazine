---
nid: '3667'
title: 'Staying happy with Gnumeric: finding the leading apostrophe'
authors: 'Bob Mesibov'
published: '2012-01-15 14:10:45'
license: verbatim_only
section: end_users
main_image: main.jpg
listed: 'true'

---
In my previous [article about GNUMeric](http://www.freesoftwaremagazine.com/articles/staying_happy_gnumeric_text_text_instead_dates) , entering data with a leading apostrophe, as in '12/3, ensures that the 12/3 will be *interpreted* by Gnumeric as text, even when the cell is formatted 'General'.

But Gnumeric *displays* the 12/3 without the apostrophe. It's hidden. This can lead to unpleasant little surprises when sorting groups of cells, some of which contain hidden apostrophes and some of which don't.

For example, suppose I have four cells with 124, 125, 123 and '122. They're all displayed as numbers, but if I sort them ascending (Data > Sort) I don't get 122, 123, 124, 125. I get 123, 124, 125, 122 -- hardly what you expect.

To 'clean' the leading apostrophes out of (for example) a column of cells, insert a blank column to its right. Highlight the column with the entries to be cleaned, and from the Data menu choose Text to columns.... and click Finish. You now have a new column with no hidden apostrophes, and sorting in that new column will be as expected.

=IMG=2.png==

Note that if the blank column was formatted General, then '12/3 will appear in it as the date 12/3/2012, and if formatted as Number, then as the serial date 40980. Maybe Gnumeric needs a 'Greediness for dates escaped' option...
