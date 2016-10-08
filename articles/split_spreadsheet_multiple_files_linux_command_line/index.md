---
nid: '3813'
title: 'Split a spreadsheet into multiple files with the GNU/Linux command line'
authors: 'Bob Mesibov'
published: '2012-11-19 5:34:31'
tags: 'spreadsheet,command-line'
license: verbatim_only
section: hacking
main_image: main.png
listed: 'true'

---
Have you ever wanted to split a spreadsheet into several spreadsheets according to the contents of a particular field? For example, you might have a music tracks spreadsheet with an 'artist name' field, and you want separate spreadsheets for each artist, with the usual field names along the top of each new spreadsheet.

You can split a spreadsheet by copying and pasting the different sections into new spreadsheets if there aren't many records. If there are lots of records, this manual approach can be pretty tiring. For splitting very large spreadsheets, most users turn to special stand-alone programs (in the Excel world) or fairly complicated macros (Excel, Open/LibreOffice Calc).

I split my spreadsheets using the GNU/Linux command line, as explained in this article. It's another of my trademark [ugly hacks](http://www.freesoftwaremagazine.com/articles/convert_xml_csv_ugly_way_unix_utilities_linux), but it works well and the command line steps can be combined into a script which runs fast and reliably.
<!--break-->

#The overall plan

Here's a made-up example (screenshot 1): an accounts spreadsheet with records in date order. There are five different customers, and there are data in six fields for each record. What we're going to do is split this spreadsheet into five different spreadsheets, one for each customer.

=IMG_CLEAR=1.png==

We'll do it by first sorting the spreadsheet by customer, then adding a flag in the sorted spreadsheet to show where the customer changes. We'll then convert the sorted and flagged spreadsheet to a text file, use text-editing commands to remove the flags, create one text file for each customer, add field names to those files and rename the files with the relevant customer's name. Each of those tabbed text files can then be opened in a spreadsheet program.

Now for a step-by-step explanation...

#Get the spreadsheet ready

__1. Make a working copy of the original spreadsheet.__ We'll be doing the hack on the copy, not the original!

__2. Sort the copy of the spreadsheet on the field of interest.__ As shown in screenshot 2, I've sorted the example on the Account_ID field, which is field D.

=IMG_CLEAR=2.png==

__3. Add the flags.__ Insert a new column at the far left of the spreadsheet. In the top cell of the new column, enter the formula (screenshot 3)

=CODE_START=
=if(D1=D2,0,1)
=CODE_END=

=IMG_CLEAR=3.png==

The formula means _If the contents of cell D1 are the same as the contents of cell D2, put a '0' in the cell; if they're different, put a '1'._ Copy this formula down to the bottom of the first column (screenshot 4).

=IMG_CLEAR=4.png==

The '0's and '1's in the first column are flags. If you see a '0' at the left of a record, you know that the the customer in the next record down is the same. If you see a '1', the next record has a different customer.

Note that the last flag is a '1', because there's no customer at all in the next record. To simplify what we're going to do next, change that last '1' to a '0' (screenshot 5).

=IMG_CLEAR=5.png==

__4. Save the spreadsheet as a tabbed text file (text with tabs) called _sheet1.txt_.__ The way you do this will depend on your spreadsheet program. The resulting text file is shown in screenshot 6.

=IMG_CLEAR=6.png==

#Command line trickery

__5. Open a terminal and navigate to the directory containing _sheet1.txt_.__  Enter the command

=CODE_START=
sed '/^1/a\break' sheet1.txt > sheet2.txt
=CODE_END=

Without going into the gory details of how the `sed` command works, what we've done here is create a new file, _sheet2.txt_, in which a line with the word 'break' has been inserted after each line beginning with a '1', as shown in screenshot 7.

=IMG_CLEAR=7.png==

_For an introduction to `sed`, see this excellent [guide](http://www.grymoire.com/Unix/Sed.html)._

__6. Trim off the flags.__ Enter the command

=CODE_START=
cut -f2- sheet2.txt > sheet3.txt
=CODE_END=

Here we've used the `cut` command to remove the '0' and '1' flags at the beginnings of lines and create _sheet3.txt_, shown in screenshot 8.

=IMG_CLEAR=8.png==

_For more on `cut`, see its [Wikipedia entry](http://en.wikipedia.org/wiki/Cut_%28Unix%29)_

__7. Split the text file on 'break'.__ Enter the command

=CODE_START=
csplit -ks -b "%02d.txt" sheet3.txt /break/ {*}
=CODE_END=

Again ignoring details, we've used the `csplit` command here to split the text file just before the five lines with 'break' into six different files, as shown in screenshot 9. The first file, 'xx00.txt', contains the field names, while each of the remaining files has a single customer's records.

=IMG_CLEAR=9.png==

_Note that `csplit` has a limit of 99 splits. If you have more than 99 different values (customer ID, music artist) in the field you've sorted, the last file will contain the remainder, unsplit. You can repeat the procedure on that last file after finishing the remaining steps (below) for the first split. For more on `csplit', see its [GNU reference](http://www.gnu.org/software/coreutils/manual/html_node/csplit-invocation.html)._

__8. Replace 'break' with field names.__ Enter this ugly-looking command:

=CODE_START=
find . -type f -name 'xx*.txt' -exec sed -i 's/break/'"$(cat xx00.txt)"'/' {} \;
=CODE_END=

and you'll find that each of the files now has the field names in the first line, instead of 'break', as shown for _xx01.txt - xx03.txt_ in screenshot 10.

=IMG_CLEAR=10.png==

There are two commands at work here. The `find` command looks through the current folder for any _.txt_ files with a name beginning with _xx_. These are the files that were generated by the `csplit` command. When `find` locates such a file, it executes the `sed` command, which substitutes for 'break' the contents of that first file, _xx00.txt_, containing the field names. The substitution doesn't happen in _xx00.txt_ because 'break' doesn't appear there.

_For more on the remarkably versatile `find`, see [this tutorial](http://content.hccfl.edu/pollock/unix/findcmd.htm)._

__9. Rename the new files with understandable file names.__ Enter this _very_ ugly command:

=CODE_START=
for i in xx*.txt; do mv $i $(awk 'BEGIN {FS="\t"; OFS="_"} FNR==2 {print $1,$2}' $i).txt; done
=CODE_END=

This command uses a _for_ loop to process files one by one. It looks for filenames of the kind 'xx(something).txt', and when it finds that file it renames it with the `mv` command. The `mv` command, in turn, uses the `awk` program to build the new filename from the contents of fields 1 (Last_name) and 2 (First_name) separated by an underscore (see screenshot 11). Because `mv` won't get a result from `awk` for _xx00.txt_, containing the field names only, it deletes that file.

=IMG_CLEAR=11.png==

Instead of the customer name, I could have renamed the files using the data from the Account_ID field. In that case the command would have been

=CODE_START=
for i in xx*.txt; do mv $i $(awk 'BEGIN {FS="\t"} FNR==2 {print $3}' $i).txt; done
=CODE_END=

_For good introductions to `awk`, see [this webpage](http://www.thegeekstuff.com/2010/01/awk-introduction-tutorial-7-awk-print-examples/) and [this guide](http://www.grymoire.com/Unix/Awk.html). 'About.com' has the basics of [`for` loops](http://linux.about.com/od/Bash_Scripting_Solutions/a/How-To-Write-Bash-For-Loops.htm), and the ancient [`mv` command](http://linux.about.com/od/Bash_Scripting_Solutions/a/How-To-Write-Bash-For-Loops.htm)._

#Make it simpler, please!

Each of the tabbed text files can now be imported into a spreadsheet program, as shown in screenshot 12, but it's not easy to remember all those commands, or to enter them correctly in a terminal!

=IMG_CLEAR=12.png==

To make the whole process simpler, the five commands we used after building sheet1.txt can be combined in a single script. As a final touch, we'll also delete _sheet1.txt_, _sheet2.txt_ and _sheet3.txt_ with the `rm` command. Here's the script:

=CODE_START=
#!/bin/bash

#Inserts 'break' after lines beginning with '1'
sed '/^1/a\break' sheet1.txt > sheet2.txt

#Cuts out flags at beginnings of lines
cut -f2- sheet2.txt > sheet3.txt

#Splits the text file into separate ones at the 'break' line
csplit -ks -b "%02d.txt" sheet3.txt /break/ {*}

#Replaces the leading 'break' line with field names
find . -type f -name 'xx*.txt' -exec sed -i 's/break/'"$(cat xx00.txt)"'/' {} \;

#Renames files with items from field contents
for i in xx*.txt; do mv $i $(awk 'BEGIN {FS="\t"; OFS="_"} FNR==2 {print $1,$2}' $i).txt; done

#Deletes sheet1.txt, sheet2.txt and sheet3.txt
rm sheet*.txt
=CODE_END=

I've saved this script as a text file called _spreadsheet_splitter.sh_ and I've made the script executable.

Next time I want to split a spreadsheet like the one in our example, I first build _sheet1.txt_ with steps 1 to 4, above. I then find _sheet1.txt_ in my file manager, right-click it and browse under _Open with_ for the script _spreadsheet_splitter.sh_. The act of opening _sheet1.txt_ with the script generates the separate, correctly named text files and deletes _sheet1.txt_, all in a couple of seconds.

Which is a lot less time than it takes to explain how this works! The only modification of the script I need for different spreadsheets is to change the `awk` command to use particular items in the output text files for renaming.

_The venerable `rm` command is discussed in [Wikipedia](http://content.hccfl.edu/pollock/unix/findcmd.htm). Two good introductions to bash scripting are at [How-To Geek](http://www.howtogeek.com/67469/the-beginners-guide-to-shell-scripting-the-basics/) and [The Linux Documentation Project](http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO.html)._