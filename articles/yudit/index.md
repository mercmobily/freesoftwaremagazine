---
nid: '1725'
title: 'Yudit: edit your multi-language text easily'
authors: 'Gianluca Pignalberi'
published: '2007-05-04 6:30:00'
tags: 'yudit,multi-language,unicode'
issue: issue_17
license: cc-by-sa
section: hacking
listed: 'true'

---
In this article I will show you how to write multi-language texts without the cumbersome OpenOffice.org. Back in 1999, the Hungarian Gáspár Sinai needed to edit Hungarian and Japanese texts. So he decided to write an editor that was Unicode [1] compliant. Once he had done the basic work, it was a straightforward task to include other languages, and Yudit [2] was born.

Yudit was built for Unix, but Sinai did do a version for Windows.

In this article I’ll show you how easy it is to write multi-language documents with Yudit. Every time I refer to documents, I’ll be referring to plain text documents.


# The Unicode standard

7-bit ASCII can only do the basic Latin alphabet, with a few other characters. If I want to write in my own language (Italian) I have to use a special mapping of 8-bit ASCII.


=ZOOM=7-bit ASCII can only do the basic Latin alphabet, with a few other characters=

The first time I tried to write an Italian document containing some Russian words, I immediately came across the following problem: if extended ASCII gives me Italian letters, what do I have to use to get Cyrillic letters, too? Then I discovered that there are a lot of ASCII extensions: ASCII codes 0—127 match those of 7-bit ASCII; 128—255 provide different characters, according to the set language.

Unicode was designed to answer similar questions, and to replace the number of different overlapping ASCII extensions. It assigns every known letter a unique code, and it is compatible with ASCII (codes 0—127), so that every ASCII document is a Unicode document, too. Of course, a Unicode document is not necessarily an ASCII document. Unicode describes characters in up to 6 bytes. The high order bits of the first byte determine how many bytes a character is. They also group characters by family, for example, Latin or Cyrillic.


=ZOOM=Unicode was designed to replace the number of different overlapping ASCII extensions=


# Enter the (Y)Unicode eDITor

Yudit is designed to save texts in Unicode. So you can use it to write something more complex than programs: for instance, I used Yudit instead of _vi_ to write this article.

When you run the program, you are given a window like the one in figure 1.


=IMAGE=yudit_window.jpg=Figure 1: the (Y)Unicode eDITor that I used to write this article=

From top to bottom you’ll find: an information bar below the titlebar, which indicates the name of the file you’re currently editing and the text encoding (usually utf-8); the buttons; the editor; a data bar, where you read cursor’s line and column, font size and the current character’s Unicode number. At the bottom of the window there is a command line, similar to the one in vi or Emacs. The command line is good for quickly entering commands. You access it either by escaping from the editor, or by clicking on it with the mouse.

The same operations lead you from the command line to the editor. Be careful: once you enter a valid command you’ll no longer be in the command line, but back in the editor.

The first feature I noticed was the cursor, shaped like an arrow: it points into the direction you’re going to write. The only directions, up to now, are left-to-right (as with English) and right-to-left (as with Hebrew). The author managed to change cursor direction and text color when reversing your direction: do it by clicking on the button, or typing Ctrl-D. Figure 2 shows a multi-language document with this feature. Unicode allowed me to mix Italian, French, English, Spanish, Icelandic, Russian, (politonik) Greek and Hebrew in the same document. I have to tell you that I only typed Italian, English and Russian lines, and cut and pasted the others from the internet.


=IMAGE=yudit_multi.jpg=Figure 2: Yudit edits a multi-language (and multi-directional) text=

Suppose you’ve just opened Yudit for the first time. It’s ready to write left-to-right in plain ASCII. Now reverse the cursor and try to write something.

It’s easy, isn’t it? Don’t forget that backspace and delete keys exchange their usual behavior when writing from right to left.

As Yudit is completely multi-language, you can decide which end-of-line (EOL) character to use. DOS, Mac and Unix, as well as Unicode line and paragraph separator are available. You can even mix them, though it isn’t advisable.

You can always ask Yudit to help you: just enter `help` in the command line and you’ll be shown a FAQ file.


# Babylon by bus

Yudit allows you to change the current font type and size. To change them you can either click the buttons or type function keys (font family) and Ctrl-A (smaller size) or Ctrl-Z (bigger size). If you feel that there aren’t enough font families to choose from, you can install other True Type fonts; you can even install Open Type fonts for the Yudit’s newest versions. Be careful because not all the installed font families provide all the glyphs. Even though you typed your document reading all of it, you may change the font and miss some letters, replaced by their Unicode number.

At last, you have to pay attention that Yudit will apply font changes to the whole text, not to parts of it. Text highlighting is not intended to apply a font change, as in a common word processor.

It’s now time to talk about Yudit’s most interesting feature: easy-to-type Unicode characters. There are several ways to do it, and they involve changing keyboard mapping.

If you start typing in plain English, the mapping (input, from now on) button will say “straight”. This shows that you can type letters as they appear on your keyboard, or your normal mapping.

If you want extra letters, you can change the input with the F1—F12 keys. If you need more input keys, click on the input button to see how many keyboard maps are provided. Here you are invited to provide other maps.

Yudit assigns default keyboard maps to function keys. If they wholly match your needs, you’re okay; if they don’t, you can change the bindings.

Figure 3 shows the keyboard map (KMap) setup window.


=IMAGE=yudit_kmap.jpg=Figure 3: the keyboard maps window=

To change the default bindings, just select one of the available inputs (from the list on the left), one of the function keys (from the list in the center), and click the arrow button between them. In the right-hand list you can see some input-output associations.

You can type most of the languages directly or typing a sequence of Latin letters for every glyph. For instance, to enter the Cyrillic “я” you have to type the “q” letter according to the JAWERTY mapping, or the “ja” string according to a Russian-transliterated mapping. As you’ll easily understand, every Latin string reproduces (transliterates) the original letter sound.

Okay, you now know how to type almost everything. The only thing I have left to tell you is how to type characters that are not immediately available in any of the mappings.

Suppose you have to type an em-dash. You’re not likely to change the default binding, and associate the em-dash to the hyphen always present on keyboards (you’ll probably need it). You have to type its Unicode number (2014). To enter it switch to “unicode” input, and then type the string “u2014”. As soon as you type “u”, it will be underscored, since it is an escape character in this input. The subsequent valid characters (hexadecimal figures, i.e., 0—9,a—f) will be underscored, too. As soon as you enter a valid sequence (4 hexadecimal figures) the underscored string will be replaced by the corresponding Unicode character. In my example an em-dash.

Tony once said I was a LaTeX guru, but I’m only a LaTeX power user. Anyway, Yudit has a TeX input mode, that substitutes glyphs for TeX commands (i.e., if you type “\times” you’ll get “×”).


# Conclusions

I introduced a simple, but powerful, text editor that allows you to easily enter multi-language texts and to save them according to Unicode encoding.

I find it handy when writing articles for Italian or foreign magazines. Unfortunately, they often look for RTF documents, or similar. In this case Yudit isn’t suitable.

In case you need a text editor as fast as vi, or as powerful as Emacs, maybe you won’t find Yudit to your liking. However, if your need is to easily type multi-language, plain text documents, maybe Yudit is what you need.


# Bibliography

1. [The Unicode Consortium](http://www.unicode.org).

2. [The (Y)Unicode eDITor](http://www.yudit.org).

