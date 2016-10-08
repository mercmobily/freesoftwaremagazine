---
nid: '3666'
title: 'Staying happy with Gnumeric: text as "text" (instead of "dates")'
authors: 'Bob Mesibov'
published: '2012-01-12 10:25:12'
license: verbatim_only
section: end_users
main_image: main.jpg
listed: 'true'

---
Gnumeric is an excellent spreadsheet application and gets a lot of use in our house. Every now and then, though, you can hear a "!Q#z$%* Gnumeric!" from me or my wife, because we didn't pay attention to cell formatting.

By default, every cell is formatted 'General', which means Gnumeric guesses what type of data you enter in that cell. Gnumeric seems to be particularly fond of dates, and strings that are definitely *not* dates get interpreted as dates anyway. If I enter 12/3, Gnumeric uses my Australian date format preferences and displays 12/3/2012.

Reformatting that cell as text (select the cell and go to Format > Cells > Format, and then select "text") doesn't recover the 12/3. Instead, Gnumeric displays 40980, the serial equivalent of 12 March 2012 -- not something you want.


Like it says in the Gnumeric manual (http://projects.gnome.org/gnumeric/doc/sect-quick-format-number.shtml):

> The order in which the formatting operations occur is critical. It is not possible to alter the type of a datum currently in a cell by formatting. To alter the interpretation of the data type in a cell, formatting must occur prior to the entry of the data.

=IMG=1.png==

Which means that the cell should have been formatted as text *before* I entered 12/3. To escape Gnumeric's greed for dates I can lead with an apostrophe, as in '12/3. Strings entered with a leading apostrophe are interpreted by Gnumeric as text, and displayed without the apostrophe.

Enjoy!