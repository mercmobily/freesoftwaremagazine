---
nid: '3731'
title: 'Measures on the command line'
authors: 'Bob Mesibov'
published: '2012-04-02 2:43:48'
tags: 'command-line,gnu,conversion'
license: verbatim_only
section: end_users
main_image: main.png
listed: 'true'

---
In an [earlier article](http://www.freesoftwaremagazine.com/articles/find_time_zones_using_command_line) I promised to demonstrate more 'magic words' for the command line. All you do is open a terminal, enter the magic word, hit Enter – and cool things happen! The magic word this time is `units`. The _GNU Units_ program isn't installed by default in most Linux distributions, so you'll probably need to install it from your distribution's repository. Also, until you get to know GNU Units, I recommend that you enter `units -v` (_v_ for _verbose_) on the command line. This makes the output a little more easy to understand.

The GNU Units program converts quantities from one unit system to another. 

<!--break-->

When you enter `units -v` you get the result shown in the first screenshot.

=IMG=1.png==

  
To do a conversion, just type the quantity and its units at the _You have:_ prompt, and press Enter. Let's try 4139 feet (second screenshot).

=IMG=2.png==

At the _You want:_ prompt, type the new units you want. We'll ask for centimeters, then press Enter (third screenshot).

=IMG=3.png==

The first line of the output shows the direct conversion: 4139 feet = 126156.72 centimeters. The second line shows the reciprocal of the conversion factor, then GNU Units prompts you for another conversion.

If you like, you can have a list of possible units you can convert to by pressing _?_.

# The cool factor

Do I hear you saying "So what? There are lots of online converters. Even Google does it."

Yes, but... Not only does GNU Units work offline, it has a simply enormous database of units it draws on. This document is stored in __/usr/share/misc/units.dat__ and it's a fascinating read. Try converting cubic barleycorns to British firkins in any other program, or Montana miners inches to cubic meters per second. And did you know that 1 borgis is exactly 9 didotpoint? Or that spooned cocoa weighs 82 grams per US cup?

Even more useful is the way GNU Units automatically converts units during calculations. How many USA beer kegs of water fall on a block of land 55 meters wide by 191 feet, 8 inches long during a storm that dumps 1 Biblical cubit of rain? See the last screenshot.

=IMG=4.png==

To exit the program, just enter `Ctrl + c` or `Ctrl + d`. For more on GNU Units, see the [GNU page](http://www.gnu.org/software/units/units.html) and [Wikipedia](http://en.wikipedia.org/wiki/Units_%28software%29), or enter `man units` in a terminal after units has been installed. GNU Units was written in C by Adrian Mariano, a mathematician at Cornell University. A Java version is available on [SourceForge](http://units-in-java.sourceforge.net/#top).