---
nid: '3660'
title: 'When the command line "grep" wins'
authors: 'Bob Mesibov'
published: '2012-01-06 1:23:27'
license: verbatim_only
section: end_users
main_image: grep.jpg
listed: 'true'

---
I was working on a big website recently and faced a really tedious job in editing the content. I needed to find and replace certain words, like 'southeastern' for 'southeast', scattered over something like 140 files in half a dozen folders.

What to do? Install a powerful Content Management System with lots of menus and a global editing tool? Nope. I took the easy way out, using the tools at hand. The trick was to remember that webpages, regardless of how complicated they look in a browser, are really only plain text files.

I opened a terminal and cd'ed to the directory containing the website. Then I entered

=CODE_START=
grep -r "southeast " .
=CODE_END=

`grep` finds patterns in text. In this case, it looked for 'southeast', and the space in "southeast " made sure that grep didn't look for 'southeastern' or 'southeasterly'. The `-r` option meant that grep would look through all the files in the website directory, recursively. The trailing period ` . ` meant that grep would start searching from the current directory.

And report it did, in about a zillionth of a second. It gave the path to each file containing 'southeast', followed by the complete line of text containing that word. Scanning the results, I could see on which pages I needed to do southeast -> southeastern.

I fired up my favourite text editor, gedit, in the same workspace as the terminal. gedit is a multi-tab editor, meaning you can work on a lot of text files at a time, switching from tab to tab. I opened each of the webpages identified by grep and me as needing a fix, one webpage per tab.

=TEXTBOX_START=Gedit's search and replace function=
Next, a cool bit. gedit has a search-and-replace tool which opens in a little window above the text to be edited. This window is persistent - it stays open and usable until you close it. I opened the search-and-replace window `Ctrl + h` over the first tab, entered 'southeast' in the 'Search for' space and 'southeastern' in the 'Replace with' space. Now for keyboard fun: `Alt+a` (does the replacing), `Ctrl+s` (saves the revised text on that tab), `Ctrl+w` (closes that tab). The search-and-replace window is still there, waiting to do its job over the next tab. Do `Alt+a`, `Crtl+s`, `Ctrl+w` again. And again, until all tabs are closed and all pages edited.
=TEXTBOX_END=

That took *much* longer to write about than to do. My tedious website editing job was done in just a few minutes. Thank you, grep, and thank you, gedit.