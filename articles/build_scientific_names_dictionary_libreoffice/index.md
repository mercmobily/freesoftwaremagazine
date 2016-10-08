---
nid: '3804'
title: 'Build a scientific names dictionary for LibreOffice'
authors: 'Bob Mesibov'
published: '2012-09-17 10:18:36'
tags: 'libreoffice,spell-checker'
license: verbatim_only
section: hacking
main_image: main.png
listed: 'true'

---
LibreOffice only knows how to spell a few scientific names, and the more scientific names you use in a Writer document, the more your pages fill up with squiggly red underlining – indicating misspelled or unrecognised words (see main image). You can add scientific names to LibreOffice's spell checker using the application's spelling dialog box, but only one word at a time.

Is there an easier way? Yes. This article explains how you can save a lot of time and effort by adding hundreds of scientific names to the spell checker all at once.

<!--break-->

#Adding words the slow way

The spell checker in LibreOffice is a module called [__hunspell__](http://hunspell.sourceforge.net/). When __hunspell__ finds a word it doesn't know, you're given the option of adding that word to a special, user-defined dictionary (first screenshot) in your home directory. In my Debian installation with LibreOffice 3.4.6, the words go into _/home/bob/.libreoffice/3/user/wordbook/standard.dic_.

=IMG_CLEAR=1.png==

However, LibreOffice also lets you build your own user-defined dictionaries. In any LibreOffice window, just go to _Tools/Options/Language Settings/Writing Aids_ and click on the 'New' button to the right of 'User-defined dictionaries'. A window opens up (second screenshot) in which you can name the new dictionary, then click 'OK' to create it (third screenshot).

=IMG_CLEAR=2.png==

=IMG_CLEAR=3.png==

I've called my scientific names dictionary 'names' (not very original!). The file is called _names.dic_ and it lives in _/home/bob/.libreoffice/3/user/wordbook/_, along with the default user-defined dictionary, _standard.dic_.

# Adding words the fast way

The scientific names I wanted in my names dictionary were already in a spreadsheet, one name per cell. I copied/pasted the names from the spreadsheet directly into a plain text file, `names.txt`, so that each name occupied a line (fourth screenshot). There were lots of duplicates, but these will disappear shortly (see below).

=IMG_CLEAR=4.png==

__hunspell__ in LibreOffice likes its word lists in alphabetical order, capitalised words first, and no duplicates. To keep __hunspell__ happy, I opened a terminal, navigated to the folder containing `names.txt` and entered the following commands:

=CODE_START=
export LC_ALL=C
sort names.txt | uniq > names_final.txt
=CODE_END=

The first command avoided a [problem](http://www.skorks.com/2010/05/sort-files-like-a-master-with-the-linux-sort-command-bash/) with the `sort` command mixing up capitalised and uncapitalised lines. With the environment variable `LC_ALL` set to 'C', the `sort` command sorted capitalised names first, then uncapitalised ones. The result of sorting was piped to the `uniq` command, which removed any duplicates and wrote the list of 600+ unique scientific names to _names_final.txt_ (fifth screenshot).

=IMG_CLEAR=5.png==

Finally, I copied the contents of `names_final.txt`, pasted the contents into `names.dic` after the header text (sixth screenshot) and saved `names.dic`. Next time I opened LibreOffice, all my scientific names passed the __hunspell__ test (seventh screenshot).

=IMG_CLEAR=6.png==

=IMG_CLEAR=7.png==

#Final thoughts

I still add scientific names to my LibreOffice spell checker, but I do it one at a time through the spelling dialog. When I click the 'Add' button (first screenshot) the drop-down list of dictionaries includes 'names', and I add the name there. LibreOffice then cleverly inserts the new name in its correct alphabetical place in _names.dic_. I can also change the spelling of an individual scientific name in my 'names' dictionary using the 'Edit' function, by deleting and re-entering.

If you build a special words dictionary as I did and put it in your home folder, it won't be available to other, separately logged-in users. To make your dictionary more widely available, consider building and uploading a LibreOffice dictionary extension; full instructions are [here](http://extensions.libreoffice.org/).