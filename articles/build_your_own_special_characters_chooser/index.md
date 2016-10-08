---
nid: '3724'
title: 'Build your own special characters chooser'
authors: 'Bob Mesibov'
published: '2012-03-06 3:59:40'
tags: 'symbols,characters'
license: verbatim_only
section: hacking
main_image: Special_characters.png
listed: 'true'

---
I often need to insert a special character in my writing, like the degree symbol or the Greek letter _mu_. Although LibreOffice Writer, my favourite writing application, helps me do this with an _Insert special character_ function, it offers too many choices. There are only a few special characters I use regularly, and they're scattered across several font subsets.

<!--break-->

The ideal solution would be a little popup dialog box that would let me choose my most frequently used special characters for inserting into text. It would also be 'font-agnostic': once I chose the character I wanted, I could insert it first into a Times New Roman document in LibreOffice Writer, then into a Liberation Sans document in my favourite text editor, gedit, and in both cases the inserted character would be in the correct font.

Sounds handy? Then read on, because making that customised special characters chooser is easy!

__1.__ Install `xclip` from your Linux distribution's repository, if it isn't already installed.

__2.__ Copy this one-line script into a text editor and save it to your home directory as `characters.sh`:

=CODE_START=
#!/bin/bash
zenity --list --title "Special characters" --text "Load primary clipboard with..." --column Character $(echo -e "\xE2\x80\x93") $(echo -e "\xC2\xB0") $(echo -e "\xC3\xA4")  $(echo -e "\xC3\xB6") $(echo -e "\xC3\xBC") $(echo -e "\xCE\xBC") | tr -d '\n' | xclip
=CODE_END=

__3.__ Make the script executable. In the Thunar file manager, for example, just right-click on the filename, select _Properties..._ and tick _Program_ on the _Permissions_ tab.

__4.__ Make a launcher for the script in your panel, or launch it with a keyboard shortcut (I use `Ctrl+Alt+c`).

# How do you use it?

Launch the script and you'll see the dialog box shown in the illustration. Pick the special character you want and click OK. You have now loaded that character onto your primary clipboard, which is the one you can paste from using a middle-click. You can paste that character as many times as you like by middle-clicking -- it won't be replaced on the primary clipboard until you highlight something, or until you use the special character chooser again.

=IMG=picker.png==

To customise your chooser, replace those `$(echo -e "\xE2\x80\x93")`-type bits in the script with the correct codes for the characters you want. My system and all my applications use UTF-8 encoding. That first character, the en dash, has the UTF-8 code 0xE2 0x80 0x93. Note how the code has been transformed for use with the echo command.

# Where are the codes?

Where to get special character codes? You could look on the Web, but a great resource is _gucharmap_, included as the 'character map' in Ubuntu and some other distributions. Once you find the character you want in gucharmap, click on the _Character Details_ tab for its various codings (see illustration).

=IMG=gucharmap.png==

You can add and subtract characters from your chooser by editing the script, and move characters up and down on the list by changing their script positions.

Easy!

__Note:__ Like a lot of hobbyist hackers, I rely on other hackers for elegant solutions to annoying problems. This script contains a tweak suggested by fflarex (an Arch Linux forum contributor), to whom I am very grateful!