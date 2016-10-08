---
nid: '3800'
title: 'Color picking made simple'
authors: 'Bob Mesibov'
published: '2012-09-05 8:27:08'
tags: 'color,color-tool'
license: verbatim_only
section: hacking
main_image: main.png
listed: 'true'

---
If I see a color on my computer screen that I'd like to use somewhere else, I want to know that color's hexadecimal code. Conversely, if I see a color's hex code, I want to know what that coded color looks like on-screen.

Some time back, I wanted an application that does both those jobs _simply_ in Linux. The best tool I found was [gcolor2](http://gcolor2.sourceforge.net/), described below. It's great for finding hex codes, but it doesn't display colors in a large enough 'swatch' to suit me. To do that job I wrote a simple script, also described below.

<!--break-->

#Picking a color

=IMG=1.png==

gcolor2 is a GTK+2 color selector available in most of the Linux repositories. It has a simple and familiar-looking GUI (first screenshot). Click on the eyedropper button at left and your mouse cursor changes to an eyedropper. Position that eyedropper anywhere on your screen and left-click. The color under the cursor will appear in the right half of the color box to the left of the eyedropper button (second screenshot). The color's hex code ('color name'), HSV and RGB values and opacity will be shown, and the color's position on a color wheel will be marked.

=IMG=2.png==

Once you pick a color with gcolor2, you can modify it by changing its HSV or RGB values, its hex code, or its position on the color wheel. As you make your changes, the color displayed in the color box will change. You can also save a color within the gcolor2 application and choose your own name for it: click on the 'Show saved colors' text, and a 'Save' button and a list of already saved colors will appear. To compare your saved color with a new one, select a new color. The color box will now show your saved color on the left and your new color on the right.

To display a color without selecting one with the eyedropper, enter a hex code (with leading #) or HSV or RGB values in the appropriate places in the gcolor2 GUI. The coded color will appear in the right half of the color box.

# Displaying a color

The color box in gcolor2 is too small for me! I like to see a big swatch of a color before I use it. The following script allows me to enter or copy/paste a hex code, then see a 400 x 400 pixel swatch of the coded color:

=CODE_START=
#!/bin/bash

color=$(zenity --width=150 --entry --title="Swatch maker" --text="Enter the hex code:")
if [[ $? == 1 ]]
then 
exit
else [[ $? == 0 ]]
convert -size 400x400 xc:#$color /tmp/swatch.png ; display -size 400x400 /tmp/swatch.png ; rm /tmp/swatch.png
fi
=CODE_END=

Copy/paste this code into a text editor, save it as _swatch.sh_ and make the file executable.

=IMG=3.png==

I use a launcher icon in my desktop's panel to start the script. When I click on the icon, I see a [Zenity](http://library.gnome.org/users/zenity/stable/) dialog box into which I enter a hex code, without the leading # (third screenshot). If I click Cancel or the exit button at top right, the dialog box disappears and nothing more happens. If I press Enter or click OK, a 400 x 400 pixel swatch of my coded color appears in the centre of the screen (fourth screenshot). To make the swatch disappear, I just press 'q' or click on the exit button on the swatch window.

=IMG=4.png==

The script relies on the [ImageMagick](http://www.imagemagick.org/script/index.php) program included in most Linux distributions. The `convert` command creates an image file (swatch.png) in the /tmp directory, colored as specified in the Zenity box. The `display` command then puts that image on the screen. When you exit the swatch, the `rm` command deletes the image file from the /tmp directory.

Happy color picking!