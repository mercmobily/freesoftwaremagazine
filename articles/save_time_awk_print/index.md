---
nid: '3828'
title: 'Save time with AWK print'
authors: 'Bob Mesibov'
published: '2013-05-30 7:10:42'
tags: 'awk,spreadsheet'
license: verbatim_only
section: hacking
main_image: main.png
listed: 'true'

---
Since discovering AWK [last year](http://fsmsh.com/3822) I've been using it regularly with tables of data. It seems like everything I do with those tables is faster and easier with AWK on the command line than the same jobs would be with spreadsheet software.

Below are a couple of examples that demonstrate the handiness of the __print__ command in AWK. If you've never used AWK before, see the links at the end of the article for a quick introduction to the basics.
<!--break-->

#Insert blank columns

The AWK __print__ command is a simple concatenator that strings together whatever bits and pieces you tell it to print, including field separators. That makes AWK a great tool for adding blank columns to a table.

Here's a table of imaginary big-city restaurants, shown as it would look in a spreadsheet:

=IMG_CLEAR=1.png==

Suppose I wanted to add a 'Rating' column before the 'Restaurant' one, a 'Mobile' column after the 'Phone' one, and a 'Website' column after the 'Cuisine' one. If I had the table in a spreadsheet application like LibreOffice Calc, I would highlight the column to the right of a proposed new one, put the cursor on the top of the column, right-click and choose 'Insert Columns'. I would then repeat the process for each new column.

However, my table _Restaurants.txt_ isn't in a spreadsheet. It's actually just a comma-separated text file (CSV), and that means I can add the three blank columns all at once with one AWK command:

=CODE_START=
awk 'BEGIN {FS=",";OFS=","} {print ","$1,$2,$3,","$4,","$5,$6 }' Restaurants.txt > Restaurants_new.txt
=CODE_END=

The BEGIN part of the command tells AWK that fields in the input file are separated (FS) by commas, and that the output file should also use a comma as field separator (OFS). The first field is recognised by AWK as $1, the second $2, and so on. The unquoted commas in the __print__ part tell AWK to use the chosen field separator (in this case, a comma) when printing. Note the extra commas in quotes – that's how the blank columns are added. First a comma is printed, then $1, then a comma, then $2...

And here's how it looks when imported into a spreadsheet application:

=IMG_CLEAR=2.png==

We can add the new column headers with AWK, too, by printing them in the BEGIN section, then starting the __print__ command on the second line with _NR>1_ so as to miss out the former headers:

=CODE_START=
awk 'BEGIN {FS=",";OFS=","; print "Rating,Restaurant,Address,Landline,Mobile,Cuisine,Website,LatDD,LonDD"}
NR >1 {print ","$1,$2,$3,","$4,","$5,$6 }' Restaurants.txt > Restaurants_newer.txt
=CODE_END=

As seen in a spreadsheet:

=IMG_CLEAR=3.png==

#Add a style code to KML placemarks

In a [previous article](http://fsmsh.com/3764) I explained how to code a KML file for use in Google Earth and other spatial browsers. I also showed how to generate a large number of placemarks using a spreadsheet formula. AWK does this second job a bit more cleverly, with the __print__ command.

Getting back to our restaurants table (first screenshot), we can use the latitude and longitude fields in our placemark, and if we add the markup

=CODE_START=
<description>[Restaurant]<br />[Phone]</description>
=CODE_END=

to each line, then clicking on a marker icon will pop up a box with the restaurant name, with the restaurant's phone number underneath. But wouldn't it be neat to style each placemark with a suitable icon? We can do that by adding a style element to the placemark line, like this:

=CODE_START=
<styleUrl>#[insert here a code for this style]</styleUrl>
=CODE_END=

For example, a Chinese restaurant might get the style code 'Chi', as in '<styleUrl>#Chi</styleUrl>', while an Indian restaurant might get '<styleUrl>#Ind</styleUrl>'

Let's try it:

=CODE_START=
awk 'BEGIN {FS=","}
NR>1 {print "<Placemark><description>"$1"<br />"$3"</description><styleUrl>#"substr($4,1,3)"</styleUrl><Point><coordinates>"$6","$5",0</coordinates></Point></Placemark>"}' Restaurants.txt > Restaurant_placemarks1.txt
=CODE_END=

That looks complicated, so I'll break it into parts:

__BEGIN {FS=","}__ tells AWK that the separator between fields in _Restaurants.txt_  is a comma.
__NR>1__ tells AWK to start with line 2 of the file, ignoring the header line with the field names.
The __print__ command simply strings together the following bits and pieces, one after the other:

"<Placemark><description>" (_The text to be printed needs to be quoted_)

$1 (_The 'Restaurant' field_)

"<br />" (_Markup to put phone number on next line_)

$3 (_The 'Phone' field_)

"</description><styleUrl>#" (_Next bit of the markup_)

substr($4,1,3) (_Clever AWK trick! The __substr__ function looks in field 4 ('Cuisine'), starts with character 1 and returns the first 3 characters in the string_)

"</styleUrl><Point><coordinates>" (_Next bit of the markup_)

$6 (_The longitude field_)

"," (_A comma_)

$5 (_The latitude field_)

",0</coordinates></Point></Placemark>" (_Another comma, zero elevation, and the close of the placemark markup_)

And here are the first two lines of the result:

<Placemark><description>La Campanita<br />9551 3613</description><styleUrl>#Mex</styleUrl><Point><coordinates>152.4076
,-33.8373,0</coordinates></Point></Placemark>

<Placemark><description>Jade Phoenix<br />9551 9048</description><styleUrl>#Chi</styleUrl><Point><coordinates>152.4696
,-33.8628,0</coordinates></Point></Placemark>

Works! But if we're going to style those placemarks in a KML file, they'll need to be grouped by style, each group in its own folder. That's easily done with the __sort__ command, with _t,_ telling __sort__ that the field separator is a comma, and _-k4_ saying 'Sort on the 4th field' ('Cuisine'). And to make sure the header line doesn't get sorted into the mix, we'll start with AWK to delete that first header line, then print all lines in a second AWK command:

=CODE_START=
awk 'BEGIN {FS=",";OFS=","} NR>1 {print}' Restaurants.txt \
| sort -t, -k4 \
| awk 'BEGIN {FS=","}
{print "<Placemark><description>"$1"<br />"$3"</description><styleUrl>#"substr($4,1,3)"</styleUrl><Point><coordinates>"$6","$5",0</coordinates></Point></Placemark>"}' > Restaurant_placemarks2.txt
=CODE_END=

with this result:

=IMG_CLEAR=4.png==

This might seem like a long-winded way to build placemarks, but I use a version of that AWK __print__ command in a shell script to pull as many as 2000-odd placemarks with up to 30-odd style codes out of a spatial data table – in the blink of an eye.

#Spreadsheet? What spreadsheet?

More and more of my spreadsheet tables are going into tab- or comma-separated text files, where I can get my AWKish hands on the data and do complex tasks easily and quickly. I don't have a UNIX background, and finding AWK has been like stumbling across buried treasure!

#Some handy AWK links

[Common threads: Awk by example, Part 1](http://www.ibm.com/developerworks/library/l-awk1/)

[Common threads: Awk by example, Part 2](http://www.ibm.com/developerworks/linux/library/l-awk2/index.html)

[Common threads: Awk by example, Part 3](http://www.ibm.com/developerworks/linux/library/l-awk3/index.html)

[Getting Familiar with awk](http://billconner.com/techie/awk.html)

[AWK (with examples)](http://sparky.rice.edu/awk.html)

[Learning Linux Commands: awk](http://how-to.linuxcareer.com/learning-linux-commands-awk)

[AWK Syntax](http://www.vectorsite.net/tsawk_2.html)

[UNIX Bash scripting: AWK](http://unstableme.blogspot.com.au/search/label/Awk)