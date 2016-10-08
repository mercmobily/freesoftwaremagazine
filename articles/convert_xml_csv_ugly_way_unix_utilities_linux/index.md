---
nid: '3790'
title: 'Convert XML to CSV the ugly way using Unix utilities'
authors: 'Bob Mesibov'
published: '2012-07-20 6:12:44'
tags: 'xml,csv,text-tools'
license: verbatim_only
section: hacking
main_image: main.png
listed: 'true'

---
I recently wanted to export my email address book from [Sylpheed](http://sylpheed.sraoss.jp/en/) email client and import it into my Gmail account. Unfortunately, Gmail wants to [import contact lists as CSV files](http://support.google.com/mail/bin/answer.py?hl=en&answer=14024), and there isn't an export-address-book-to-csv feature in the otherwise wonderful Sylpheed. Worse, the Sylpheed address book is in XML format, and XML-to-CSV conversion isn't straightforward.

__Warning:__ _What follows contains code that may offend real programmers. The code works but it's pretty simple-minded, and if you're a real programmer and not a hobbyist hacker like me, you may not want to read any further._
<!--break-->

#The address book XML

=IMG=1.png==

The first screenshot shows a typical set of five entries from the 174 in my Sylpheed address book (names and addresses changed, of course). What I did was extract each full name and its associated email address from this XML file and separate them with a comma, as shown in the second screenshot. I then added `Name,Email` as the first line of the file and uploaded it to Gmail.

=IMG=2.png==

#The ugly code

To understand how I did this, you need to see the address book not as something formatted in a complicated way as XML, but as simple lines of text. And lines of text can be manipulated easily in a terminal using simple command line tools.

I navigated to the directory (`~/.sylpheed-2.0`) containing the Sylpheed address book, which is called `addrbook-000001.xml`, and entered the following one-line commands, one after the other:

=CODE_START=
grep -o 'cn=".*"' addrbook-000001.xml | tr -d '"' | cut -c4- > names.txt
grep -o 'email=".*"' addrbook-000001.xml | cut -d " " -f1 | tr -d '"' | cut -c7- > emails.txt
paste -d "," names.txt emails.txt > ~/Desktop/gmail.csv
=CODE_END=

The result was the file `gmail.csv` on my desktop, looking just like the second screenshot, but listing 174 real names and addresses.

#The first command

Start with the third screenshot to see how this works for the first entry in the address book.

=IMG=3.png==

The first command searches with `grep` for lines containing the string `cn="[something]"` in the address book. The `-o` option means that `grep` only reports the strings it finds, not the whole lines. The result of the search is sent (piped) to the `tr` command with the `-d` option, which in this case deletes the double quotes in the list. The trimmed result is sent to the `cut` command. Here the `c4-` option tells `cut` to report everything in each line beginning with the 4th character, or in other words after the first three characters, `cn=`. The final list is written to a new text file, `names.txt`.

#The second command

=IMG=4.png==

As shown in the last screenshot, the second command first pulls out the email addresses, but note that `grep` finds everything up to the last double quote in the line. To remove the `remarks=""` strings, I used `cut` again. I told `cut` that the line consisted of fields (`f`) which were delimited (`d`) by a blank space, and asked it to report back with the contents of the first field (`f1`) only. The result was sent to `tr`, then to `cut` as for the first command, and `emails.txt` was written.

#The third command

To create `gmail.csv` from `names.txt` and `emails.txt`, I merged the two files with the `paste` command. What `paste` does is put line 1, file 1 and line 1, file 2 into a new line 1 in a new file, and so on, line by line through the paired files. The `d ","` option told `paste` to use a comma to separate each pair of merged lines in the new file.

Note that this won't work if there's more than one email address in each entry. In that case the emails list will be longer than than the names list, and `paste` won't be able to do the correct matching. In my address book, people with more than one email address have more than one entry, such as `Joe Blow - work`, `Joe Blow - home`, `Joe Blow - church`.

#Slightly embarrassed

If you search the Web for ways to extract values from XML files, or for ways to manipulate strings with `sed`and `awk`, you'll find that there are much more sophisticated ways than mine to convert XML to CSV. My excuse is that I really like the Unix and GNU text tools! Like the man with a hammer for whom everything looks like a nail, I'm afraid I always reach first for `grep`, `cut`, `tr`, etc. And they work!
