---
nid: '3814'
title: 'CoPa scripting: change text between copy and paste'
authors: 'Bob Mesibov'
published: '2012-12-21 9:22:49'
tags: 'bash-script,text-editing'
license: verbatim_only
section: hacking
main_image: main.png
listed: 'true'

---
This article describes a simple but useful hack: putting an `xclip` script between copy and paste. I call it 'CoPa scripting'.
<!--break-->

# An overview

If you don't already have the `xclip` utility on your GNU/Linux system, install it now from your distribution's repository. Only two of the `xclip` commands are used in a CoPa script, as shown here: 

=CODE_START=
#!/bin/bash

xclip -o \
| [some command or commands] \
| xclip -i
=CODE_END=

The first command, `xclip -o`, makes the contents of the X selection clipboard available to another program. You load that clipboard simply by highlighting some text – no need to use `Ctrl + c` or 'Copy' from the Edit menu. The X clipboard contents are then sent (piped) to another program, where the highlighted text is changed in some way by a command. Next, the changed text is sent back to `xclip`, where the command `xclip -i` loads the changed text into the X clipboard. The changed text can then be pasted simply by middle-clicking – no need to use `Ctrl + v` or Edit/Paste. ('Middle-clicking' means pressing the middle button on a 3-button mouse, or pressing the scroll wheel on a scrolling mouse, or simultaneously left+right clicking on a laptop.)

If you've never played with scripts before, here's the key: a script is just a simple text file. You write the script in a text editor (or copy/paste it) and save it somewhere handy as __[something].sh__. I save all my scripts in a folder called 'scripts' (/home/bob/scripts) because I'm really not very imaginative! Make the script executable by changing the file properties. A quick way to do this in most Linux distributions is to right-click on the script in your file manager, go to Properties, and choose 'Allow this file to run as a program' or its equivalent.

Now put a launcher icon on your desktop or panel, so that clicking on the icon launches the CoPa script. The way you do that will vary with your Linux distribution and your preferences, but in all cases you should be able to browse your file system to choose the application or command to be launched by that icon. Browse to your __something.sh__, choose it and you're ready to go.

# A simple example

Try this CoPa script, which I call __reverser.sh__. It copies text, then uses the `rev` command to paste the text in reverse:

=CODE_START=
#!/bin/bash

xclip -o \
| rev \
| xclip -i
=CODE_END=

__1.__ Highlight some text, as shown here:

=IMG_CLEAR=1.png==

__2.__ Click the icon that launches __reverser.sh__.

__3.__ Paste by middle-clicking into a program that accepts text, such as a text editor or LibreOffice Writer. Here's the result:

=IMG_CLEAR=2.png==

Simple, yes? What makes CoPa scripting so handy is its speed. All sorts of text modifications can be done in the background, and all you have to do is highlight the original text and click twice.

# Another example

This CoPa script uses the `tr` command to transform spaces between words into newlines, which converts the copied text to a list of words:

=CODE_START=
#!/bin/bash

xclip -o \
| tr ' ' '\n' \
| xclip -i
=CODE_END=

=IMG_CLEAR=3.png==

# A real-world example

I often copy single-column text from PDF documents. The text typically contains words broken by end-of-line hyphens, and is formatted with hidden [linefeed](http://en.wikipedia.org/wiki/Linefeed) characters that mark the ends of lines. This single-column layout is preserved when I paste the copied text:

=IMG_CLEAR=4.png==

To remove the linefeeds (LF) so that the text only ends at the end of the paragraph, I use my CoPa script __LF_killer.sh__ (below). The script also 'reconstitutes' any words broken by a hyphen at the end of a line.

=CODE_START=
#!/bin/bash

xclip -o \
| sed 's/-$/@/' \
| paste -d' ' -s \
| sed 's/@ //g' \
| xclip -i
=CODE_END=

And here's the pasted text:

=IMG_CLEAR=5.png==

The first `sed` command looks for a hyphen at the end of a line, and replaces the hyphen with the dummy character '@' if one is found. The `paste` command puts all lines on the same line, with a single space between them. The second `sed` command looks for @ followed by a blank space (created by `sed` and `paste` in the middle of hyphenated words) and deletes both.

For an introduction to `sed`, see this excellent guide (http://www.grymoire.com/Unix/Sed.html) and this handy list (http://sed.sourceforge.net/sed1line.txt) of one-line `sed` commands. The Unix `paste` command has its own Wikipedia page (http://en.wikipedia.org/wiki/Paste_%28Unix%29).

Note that __LF_killer.sh__  doesn't preserve paragraph breaks. There are ways to modify it for multiple paragraphs, but that will depend on how the paragraphs are laid out in the original text. Sometimes paragraphs are separated by one or more blank lines. Sometimes there's no separation, and a new paragraph is marked by an indented first line. Indented first lines are also used when paragraphs are separated. Because there's so much variation, I find it easiest to rebuild any paragraphing (if needed) after pasting.

# Possibilities!

CoPa scripts can also be written to transform highlighted cells in a spreadsheet. I use the `awk` language in a CoPa script to pull data items from a spreadsheet of biological records, then rearrange the items in a block of text formatted as a paragraph, with commas between data items and a semicolon between records. Another CoPa script takes a spreadsheet full of species locality records, pulls out latitude and longitude data and generates a KML file for displaying the species records as points in Google Earth. The two scripts save me a _lot_ of time! 

[Highlighting to put spreadsheet cells on the X selection clipboard works fine with OpenOffice or LibreOffice Calc. There's a small 'gotcha' if you use Gnumeric for spreadsheeting. With Gnumeric, you have to copy the highlighted cells with Edit/Copy or Ctrl+c before launching a CoPa script. This loads both the 'ordinary' clipboard and the X selection clipboard used by `xclip`.]

There are many other CoPa scripting possibilities. If you have good ones, post them in the comments section below this article.
