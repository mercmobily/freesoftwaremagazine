---
nid: '3833'
title: 'Finding changes in a sorted list: a trick'
authors: 'Bob Mesibov'
published: '2013-06-22 8:34:21'
tags: 'sed,awk'
license: verbatim_only
section: hacking
main_image: main.png
listed: 'true'

---
Think of a phone directory listing with a lot of Browns followed by some Brownes, Brownings and Brownleys. Is there a simple way to identify the places in the sorted list where Brown changes to Browne, Browne to Browning and Browning to Brownley?

If you're a programmer, you've probably just thought of an 'if, then' test for items in the list. If you're an AWK-lover (like me!) you may have started thinking about the _getline_ option.

There's another and more interesting way to do this job on the GNU/Linux command line, as explained below.
<!--break-->

#But first...

Regular readers of _Free Software Magazine_ may remember that I tackled this 'find the changeover' problem in an [article](http://fsmsh.com/3813) last year on splitting spreadsheets.

In that article, I showed how to use a spreadsheet function to add a 'changeover' flag to the row just before a change happened, in a special flagging column. The spreadsheet function was the _if X, then A; if not X, then B_ kind. The spreadsheet with its flags was then saved as a text file, and command-line trickery was used to split the sections between flags into new spreadsheets. If our phone directory listings were in a spreadsheet, you would finish up with a Browns sheet, a Brownes sheet, and so on. (For a better command-line trick to do this splitting, see below.)

But what I really wanted was a way to do that 'changeover' flagging on the command line, without needing a spreadsheet, and now I have it.

#A look at the numbers

Here's a sorted, comma-separated directory listing of Brown-type names. I've numbered the lines for  clarity. Notice that there are 9 Browns, 3 Brownes, 7 Brownings and 2 Brownleys. 

=CODE_START=
1	Brown,A,"446 Wivern Hwy",Atn,"9551 2616"
2	Brown,BD,"49 Burnett St",Rmd,"9551 3613"
3	Brown,BG,"18 The Passage",Spr,"9551 9048"
4	Brown,F,"67 Richmond Rd",Atn,"0422 561 389"
5	Brown,JA,"55 Burnett St",Rmd,"9551 6350"
6	Brown,JJ,"441 Tennyson Ave",Spr,"9551 3663"
7	Brown,JS,"61 Richmond Rd",Atn,"9551 6737"
8	Brown,R,"33 Coalfield Rd",Wav,"9551 3477"
9	Brown,W,"95 Underwood St",Spr,"0422 113 777"
10	Browne,C,"4 Ellington Cres",Spr,"9551 3305"
11	Browne,F,"265 Crown Rd",Wav,"9551 3039"
12	Browne,SH,"71 Skyline Dr",Und,"0422 840 211"
13	Browning,B,"108 Market Ave",Wav,"9551 6942"
14	Browning,CE,"106 Market St",Wav,"9551 8763"
15	Browning,G,"183 Kent St",Und,"9551 7418"
16	Browning,GR,"33 Marshall Ave",Und,"0422 565 719"
17	Browning,H,"24a Archer St",Rmd,"0422 888 470"
18	Browning,RD,"3a Archer St",Rmd,"9551 4112"
19	Browning,V,"77 Botany St",Spr,"9551 7485"
20	Brownley,C,"12 King St",Wav,"9551 7619"
21	Brownley,E,"314 Litchfield St",Spr,"9551 1624"
=CODE_END=

Did you check the numbers by counting? You don't have to. We can use the command line to do the counting. First, we save the list as a file, 'names' (without those added line numbers). Next, we use AWK to print just the first field (last name), after telling AWK that the field separator is a comma. We pipe the resulting list to the _uniq_ command with the _-c_ option, and the result is a count of the unique last names:

=CODE_START=
awk -F"," '{print $1}' names \
| uniq -c

9 Brown
3 Browne
7 Browning
2 Brownley
=CODE_END=

#A play with the numbers

Now for the trick. The line number in the original comma-separated list just before Brown changes to Browne is 9 (see above). The line number just before Browne changes to Browning is 12, which is 9+3, and the Browning to Brownley changeover happens just after line number 19, which is 9+3+7.

These changeover line numbers are _subtotals_ from the _uniq -c_ list we generated above. To calculate them automatically, we can first use AWK to grab just the counts of unique names, which is the first field in that list we created. We can pass the counts to AWK again to calculate subtotals. The full command now looks like this:

=CODE_START=
awk -F"," '{print $1}' names \
| uniq -c \
| awk '{print $1} \
| awk '{subtotal+=$1} NR%1==0 {print subtotal}'

9
12
19
21
=CODE_END=

The result is a list of the line numbers just before the changeovers. We don't really need that last subtotal (21), which is the line where the Brownleys and the list finish, so we can delete it before the subtotalling happens, with _sed_:

=CODE_START=
awk -F"," '{print $1}' names \
| uniq -c \
| awk '{print $1} \
| sed '$d' \
| awk '{subtotal+=$1} NR % 1 == 0 {print subtotal}'

9
12
19
=CODE_END=

#Now what?

Job done, we have the 3 line numbers we wanted. But to make these numbers really useful, we need to turn them into a 'shopping list' for other commands to use when they go through the _names_ file. We can do that by first saving the subtotal list as a file, _list_. That's our 'shopping list'.

=CODE_START=
awk -F"," '{print $1}' names \
| uniq -c \
| awk '{print $1} \
| sed '$d' \
| awk '{subtotal+=$1} NR % 1 == 0 {print subtotal}' > list
=CODE_END=

An excellent command-line tool for processing files like _names_ is _sed_, but how do we get _sed_ to use our _list_ file as its 'shopping list', in other words to do something _only_ on lines 9, 12 and 19?

The wizards at [_Stack Overflow_](http://stackoverflow.com/) considered this question [recently](http://stackoverflow.com/questions/17036938/sed-or-awk-how-to-call-line-addresses-from-separate-file), and contributor 'perreal' suggested a nice general solution. First, we use _sed_ to build a list of steps for another _sed_ command to carry out later on. These steps will each be preceded by the _-e_ option, which simply adds the step to the list of things for _sed_ to do.

For example, the command

=CODE_START=
sed -e 's/^/-e /' -e 's/$/p' list
=CODE_END=

will take the _list_ file and build this series of commands for later use:

=CODE_START=
-e 9p
-e 12p
-e 19p
=CODE_END=

Here the 'p' will just tell _sed_ to print that line (9, 12 or 19). If we feed the output of this command to _sed_ and tell it to do these steps with _names_, it prints out just those chosen lines:

=CODE_START=
sed -n $(sed -e 's/^/-e /' -e 's/$/p/' list) names

Brown,W,"95 Underwood St",Spr,"0422 113 777"
Browne,SH,"71 Skyline Dr",Und,"0422 840 211"
Browning,V,"77 Botany St",Spr,"9551 7485"
=CODE_END=

Or how about printing the two lines bracketing each changeover, and spacing out the bracketing pairs?

=CODE_START=
sed -n $(sed -e 's/^/-e /' -e 's/$/,+1p/' list) names | sed '0~2G'

Brown,W,"95 Underwood St",Spr,"0422 113 777"
Browne,C,"4 Ellington Cres",Spr,"9551 3305"

Browne,SH,"71 Skyline Dr",Und,"0422 840 211"
Browning,B,"108 Market Ave",Wav,"9551 6942"

Browning,V,"77 Botany St",Spr,"9551 7485"
Brownley,C,"12 King St",Wav,"9551 7619"

=CODE_END=

#More useful

Let's do that '_sed_ directed_by _sed_' command again, but this time we'll append a blank line after each changeover line, using _G;_ instead of _p_:

=CODE_START=
sed $(sed -e 's/^/-e /' -e 's/$/G;/' list) names

Brown,A,"446 Wivern Hwy",Atn,"9551 2616"
Brown,BD,"49 Burnett St",Rmd,"9551 3613"
Brown,BG,"18 The Passage",Spr,"9551 9048"
Brown,F,"67 Richmond Rd",Atn,"0422 561 389"
Brown,JA,"55 Burnett St",Rmd,"9551 6350"
Brown,JJ,"441 Tennyson Ave",Spr,"9551 3663"
Brown,JS,"61 Richmond Rd",Atn,"9551 6737"
Brown,R,"33 Coalfield Rd",Wav,"9551 3477"
Brown,W,"95 Underwood St",Spr,"0422 113 777"

Browne,C,"4 Ellington Cres",Spr,"9551 3305"
Browne,F,"265 Crown Rd",Wav,"9551 3039"
Browne,SH,"71 Skyline Dr",Und,"0422 840 211"

Browning,B,"108 Market Ave",Wav,"9551 6942"
Browning,CE,"106 Market St",Wav,"9551 8763"
Browning,G,"183 Kent St",Und,"9551 7418"
Browning,GR,"33 Marshall Ave",Und,"0422 565 719"
Browning,H,"24a Archer St",Rmd,"0422 888 470"
Browning,RD,"3a Archer St",Rmd,"9551 4112"
Browning,V,"77 Botany St",Spr,"9551 7485"

Brownley,C,"12 King St",Wav,"9551 7619"
Brownley,E,"314 Litchfield St",Spr,"9551 1624"
=CODE_END=

Now for the improvement on the file-splitter I mentioned earlier. This time we'll use AWK (with a fairly complicated command!) to search for blank lines, split the file at the blanks, and name each file 'part1', 'part2' etc:

=CODE_START=
sed $(sed -e 's/^/-e /' -e 's/$/G;/' list) names \
| awk -v n=1 '/^$/{close("part"n);n++;next} {print > "part"n}'
=CODE_END=

As an example, here's the resulting _part3_ file:

=CODE_START=
Browning,B,"108 Market Ave",Wav,"9551 6942"
Browning,CE,"106 Market St",Wav,"9551 8763"
Browning,G,"183 Kent St",Und,"9551 7418"
Browning,GR,"33 Marshall Ave",Und,"0422 565 719"
Browning,H,"24a Archer St",Rmd,"0422 888 470"
Browning,RD,"3a Archer St",Rmd,"9551 4112"
Browning,V,"77 Botany St",Spr,"9551 7485"
=CODE_END=

#And finally...

On the command line, there are nearly always alternative ways to reach the same end. I like the procedure outlined above (identify changeovers with _uniq -c_ and subtotals, generate a list of changeover lines, use the list in other commands) and I've already applied it in a long shell script, but readers who are experienced programmers might prefer a different approach.

Note also that in our phone directory example, our starting list was already sorted on the first field (last name), and we looked for changeovers in that first field. We could also have sorted the _names_ file on the fourth field (town abbreviation),  then the first field, then had AWK pull out the fourth field for the _uniq -c_ trick. That would give us alphabetised 'Brownian' names by town:

=CODE_START=
sort -t, -k4,4 -k1,1 names > names4

awk -F"," '{print $4}' names4 \
| uniq -c \
| awk '{print $1} \
| sed '$d' \
| awk '{subtotal+=$1} NR % 1 == 0 {print subtotal}' > list

sed $(sed -e 's/^/-e /' -e 's/$/G;/' list) names4

Brown,A,"446 Wivern Hwy",Atn,"9551 2616"
Brown,F,"67 Richmond Rd",Atn,"0422 561 389"
Brown,JS,"61 Richmond Rd",Atn,"9551 6737"

Brown,BD,"49 Burnett St",Rmd,"9551 3613"
Brown,JA,"55 Burnett St",Rmd,"9551 6350"
Browning,H,"24a Archer St",Rmd,"0422 888 470"
Browning,RD,"3a Archer St",Rmd,"9551 4112"

Brown,BG,"18 The Passage",Spr,"9551 9048"
Brown,JJ,"441 Tennyson Ave",Spr,"9551 3663"
Brown,W,"95 Underwood St",Spr,"0422 113 777"
Browne,C,"4 Ellington Cres",Spr,"9551 3305"
Browning,V,"77 Botany St",Spr,"9551 7485"
Brownley,E,"314 Litchfield St",Spr,"9551 1624"

Browne,SH,"71 Skyline Dr",Und,"0422 840 211"
Browning,G,"183 Kent St",Und,"9551 7418"
Browning,GR,"33 Marshall Ave",Und,"0422 565 719"

Brown,R,"33 Coalfield Rd",Wav,"9551 3477"
Browne,F,"265 Crown Rd",Wav,"9551 3039"
Browning,B,"108 Market Ave",Wav,"9551 6942"
Browning,CE,"106 Market St",Wav,"9551 8763"
Brownley,C,"12 King St",Wav,"9551 7619"
=CODE_END=

[Where there is a shell, there is a way](http://www.my-iguru.com/ipad/ipad-wallpapers/computers-wallpapers/unix-ipad-wallpaper.php), especially when the powerful _sed_ and AWK can be used!