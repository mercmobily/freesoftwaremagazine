---
nid: '3769'
title: 'A spreadsheet jukebox'
authors: 'Bob Mesibov'
published: '2012-06-13 7:33:07'
tags: 'calc,command-line,music-player'
license: verbatim_only
section: hacking
main_image: main.png
listed: 'true'

---
My wife has a huge collection of Scottish country dancing music on her Linux laptop – more than 2000 dance tracks. Details of all tracks are recorded in an _OpenOffice Calc_ spreadsheet.

She asked me, "Could you make the spreadsheet into a jukebox, so that I could do a filtered search for a suitable track, then just click on the track to have it play?" The answer was yes, but it took a while to get there!

#The overall plan

In the spreadsheet, each track occupies a separate row. There are fields for dance name (not necessarily the track title), type of dance, number of couples, measures, duration, CD from which the track comes, track number on the CD, etc.

To make the spreadsheet into a jukebox, I could add a new field containing a clickable hyperlink to that audio file on her laptop's hard drive. Clicking on that link would open the file in her default music player. The hyperlink should have the absolute path to that particular track, in the form _file:///path/to/track.ogg_, for example, in case the spreadsheet is relocated on the hard drive.

While it would be simple enough to write that path by hand for a half-dozen tracks, entering the paths for 2000+ tracks would take ages. I needed a quicker way.

#Organising the tracks

Fortunately, my wife stores her tracks on the laptop by the audio CD they came from. She has one music folder, called 'dance-tracks', within which are separate folders for each of the CDs, and within each CD folder the audio file names begin with the track number from the CD. What's more, she's given each CD a unique serial number, so a particular folder might be named 'CD43' or 'CD178'.

This meant I could sort her spreadsheet first by CD, second by track number (first screenshot). The 2000+ tracks would then be listed in the spreadsheet in the same order as they appeared in her file manager. Now, how to get the file paths and correct file names from the file manager into the spreadsheet?

=IMG=1.png==

#Calling on `tree`

The `tree` [command for Linux and other Unix-like OS'es](http://mama.indstate.edu/users/ice/tree/) on the command line was my solution. It generates a tree-like text structure for a file hierarchy. I used it with the `-f` option, which gives the full path to each file. I also used the `-F` option, which appends a forward slash at the end of the path to each folder, for a reason I'll explain in a moment. The command was:

=CODE_START=
tree -f -F ~/dance-tracks > ~/tracks.txt
=CODE_END=

The result for the tracks in the first screenshot is shown in the second screenshot.

=IMG=2.png==

#Cleaning up the path list

To get this text into the right form for pasting into the spreadsheet, it needed cleaning up. The first things to remove were the lines with folder names. To do this I used the `grep` command with the `-v` option to select all the lines that _didn't_ have that trailing slash added by the `-F` option in `tree`.The command was:

=CODE_START=
grep -v "/$" ~/tracks.txt > ~/tracksonly.txt
=CODE_END=

The tracks-only text is shown in the third screenshot.

=IMG=3.png==

Next, I opened `tracksonly.txt` in my favourite text editor, _gedit_, and removed leading characters and spaces, and the asterisk which ended each file name (added by `tree -F`).

I then pasted the cleaned-up text from _gedit_ into a new field in the spreadsheet, as shown in the fourth screenshot.

=IMG=4.png==

#Setting up the links

The file paths weren't quite ready for hyperlinking, because they lacked the _file://_ address at the start. I added this in the spreadsheet by concatenating each path with the _file://_ string. The result is shown in the fifth screenshot.

=IMG=5.png==

The last bit was easy. In a new field called _Play_ I copied down the function `=HYPERLINK (cell,"play")`, where 'cell' was the first cell in the _File path_ field (cell __I2__ in the sixth screenshot). That created 2000+ clickable links in a few seconds, each marked with the word 'play'.

=IMG=6.png==

#The jukebox works!

Audio tracks on my wife's laptop are set to open by default in [Gnome MPlayer](http://sites.google.com/site/kdekorte2/gnomemplayer), a utility that puts a little control box at the top left of the screen showing the spreadsheet (last screenshot). Click on the _play_ link for any track, and the track starts playing in Gnome MPlayer.

=IMG=7.png==

The final result is a spreadsheet which can be sorted and filtered as my wife wants, but will still play each track with a single click.