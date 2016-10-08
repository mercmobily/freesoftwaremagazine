---
nid: '3734'
title: 'The F4 trick in Gnumeric'
authors: 'Bob Mesibov'
published: '2012-03-23 4:03:25'
tags: 'gnumeric,tips-&-tricks'
license: verbatim_only
section: end_users
main_image: main_F4.png
listed: 'true'

---
As in Microsoft Excel, the F4 key in [Gnumeric](http://projects.gnome.org/gnumeric/) spreadsheet has two very useful functions: _repeat last action_, and
_cycle through cell reference choices_.

Here's how they work.

<!--break-->

# Repeat last action

You can use this function as an alternative to copying and pasting. Enter something in a cell, then move to another cell and press F4. The 'something' is pasted into the new cell exactly as it appears in the first cell. You can paste this way as many times as you like. You can also paste cell formatting with F4.

To 'load' F4 from an already filled cell, press F2 (as though you were going to edit the cell contents), then Enter (restoring the contents without editing).

The F4 trick is particularly handy for copying formulas with absolute cell references. Normally, if you copy/paste a formula, the pasted formula uses cell references relative to its new position. F4 repeats the original formula's cell references (see first screenshot).

=IMG=repeat.png==

#Cycle through cell reference choices

When you enter a cell reference in a formula in Gnumeric, the default is a relative reference (see second screenshot). Press F4 once, and the reference becomes absolute. Press F4 again and only the row reference is absolute. Press F4 a third time and only the column reference is absolute. Press F4 a fourth time and you're back to relative referencing, and so on.

=IMG=cycle.png==

Unfortunately, neither of these handy F4 uses is available in Calc, the OpenOffice/LibreOffice spreadsheet. Pressing F4 in Calc opens 'Data Sources' instead. To repeat the last action in Calc, use Ctrl+Shift+y. To cycle through cell reference choices in Calc, use Shift+F4.