---
nid: '2716'
title: 'gedit: a powerful, underrated text editor for everybody'
authors: 'Andrew Min'
published: '2008-02-15 22:15:44'
tags: 'ubuntu,gedit,text-editor'
license: verbatim_only
section: end_users
listed: 'true'

---
Most computer users spend their entire life looking for the Holy Grail. In other words, they spend all their life searching for the perfect editor that supports all their languages, is free as in speech, has spelling, has highlighting... you get the picture. Obviously, there isn't a perfect editor out there. However, some come pretty close. Ironically, one of them is one that any Ubuntu (or in fact, any Gnome) user has installed, though they may not know it. It's called [gedit](http://www.gnome.org/projects/gedit/) (also known as Text Editor).

# gedit: not as simple as it looks

Most of the world doesn't use gedit for much more than they used Notepad back on Windows (or TextEdit, if you happen to be a Mac user). In other words, all it's used for is basic editing (like config files or docs). It doesn't have any power... right? Wrong. In fact, gedit is one of the most powerful editors in the GNU/Linux world.

So what makes gedit so special? First of all, it's probably got the lightest footprint of any _graphical_ text editor I've seen in a long time. gedit uses a patheticly small 5.5 MB of RAM (sure, you have to add the GNOME libraries to that, but if you're running GNOME you won't notice). Second, it's got syntax highlighting. Wiktionary [defines](http://en.wiktionary.org/wiki/syntax_highlighting) syntax highlighting as the "highlighting of source code using different techniques (coloring, boldfacing)". So your function names will be one color, your variables another color, and your tags a third color. Figure 1 gives a good example for HTML/PHP. Syntax highlighting is supported for Ada, awk, Boo, C, C#, C++, CSS, D, Docbook, DTD, Erlang, Fortran 95, Haskell, HTML, IDL, Java, LaTeX Literate Haskell, JavaScript, Luah, m4, Makefile, Nermerle, Objective-C, Objective Caml, Pascal, Perl, PHP, Python, R, Ruby, Scheme, sh, SQL, Tcl, Texinfo, Vala, VB.NET, Verilog, VHDL, and XML. Plus, you get highlighting for Changelogs, .desktops, Diffs, DPatches, gettext translations, GtkRCs, inis, libtools, MSILs, OCLs, pkg-configs, RPM specs, and Yaccs. In other words, if you know a programming language, chances are syntax highlighting for it is supported in gedit. It also auto-indents your code, which makes readability a lot easier. Additionally, it matches your brackets, essential for any programmer. You can also open remote files, useful if you're working over SSH or an LAN. Finally, you can run external tools (like the Make compiler or a terminal) using the External Tools plugin (see the section below).

=IMAGE=figure_1.jpg=Figure 1: Syntax highlighting for HTML/PHP=

# Plugins

This is where the real power of gedit takes place. Sure, gedit is extremely powerful by itself. But it's the plugins that makes it _really_ powerful. gedit ships with twelve plugins: Change case, Document Statistics, External tools, File Browser, Indent, Modelines, Python console, Snippets, Sort, Spell, Tag list, User Name, and Insert Date/Time. The `gedit-plugins` package adds Bracket Completion, Charmap, Code Comment, Color picker, Join lines/Split lines, Session saver, Smart Spaces, Show tabbar, and Terminal. And those are only the official ones!

In my opinion, the most useful plugin is External tools. Once enabled (under Edit → Preferences → Plugins), External tools lets you execute any Bash script with a hotkey. External tools ships with Build (runs `make` in the document directory), Open terminal here (opens a terminal in the document location), Remove trailing spaces (removes the useless trailing spaces in your document), and run command (runs a command and pastes the output in the file). And if you know any Bash scripting, you can easily create your own plugin.

Another really handy plugin is color picker. Any web developer knows the pain of having to find the Hex value for just about any color. That's what this color picker (based on the GColor picker) aims to rectify. You click on anything on your desktop, and you immediately see the Hue, Saturation, Value, RGB code, and Hex code for your color. Click the insert button and the color will be inserted. A very handy tool for any web programmer.

These are just a few of the plugins available for gedit. There are also tons of 3rd party plugins (see a huge list at [http://live.gnome.org/Gedit/Plugins](http://live.gnome.org/Gedit/Plugins) ).

# Conclusion

Hopefully, by now you'll have realized that gedit is more than what meets the eye. Between the plethora of plugins and the powerful features, gedit is a winner in any developer's book.

* [gedit homepage](http://www.gnome.org/projects/gedit/)
* [gedit list of plugins](http://live.gnome.org/Gedit/Plugins)
* [gedit mailing list](http://mail.gnome.org/mailman/listinfo/gedit-list)
* [gedit themes](http://live.gnome.org/GtkSourceView/StyleSchemes)
