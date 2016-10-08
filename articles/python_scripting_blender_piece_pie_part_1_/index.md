---
nid: '3713'
title: 'Python Scripting in Blender: A Piece of Pie - Part 1'
authors: 'Terry Hancock'
published: '2012-02-16 5:30:42'
tags: 'blender,python,programming,free-software,3d,graphics'
license: cc-by-sa
section: hacking
main_image: 2012-02-13-blender_pie_24.png
listed: 'true'

---
<!-- A Piece of Pie, Part 1 - Python Scripting in Blender 2.49 -->

Since script extensions are going to be a part of our toolchain on creating Lunatics, I thought it would be a good idea to familiarize myself with how scripts are created and run in Blender. As a learning project, I decided to create a script for creating 3D pie charts from CSV data files. My first task is to write this for Blender 2.49 using the API for Python 2.6. This is the version documented in the Python Scripting book from Packt that I recently reviewed, so it's a good place for me to start.

<!--break-->

Note: there is code to [download](/files/downloads/blender_piechart.zip) for this article!

This is not really a tutorial, but with the new file-hosting feature, I can simply share the source code for my experimental implementation, which is mostly self-explanatory. A few interesting things are worth mentioning about the [Blender 2.49 Python API](http://www.blender.org/documentation/249PythonDoc/). Of course [Blender](http://www.blender.org) is the premiere free software 3D modeling and animation application and [Python](http://www.python.org) is its scripting language.

This is a useful script for making 3D pie-chart graphics, and yet it is under 200 lines of code (including comments and the colorscheme datablocks -- the actual functions take up about 100 lines). That's fairly encouraging. It also means the attached source file is a pretty easy read if you want to see how I did it.

Pretty much everything is accessible through the "Blender" module, which is visible to the Python interpreter embedded in Blender (you can't run this code from the regular command line interpreter for Python, it has to be used in Blender).

To get it into Blender, there are basically two options: 1) you can load it into a text window inside Blender, then save the document as a .blend file or 2) you can put the script into the `.blender/scripts` directory in your home directory (on GNU/Linux systems, at least).

I've used the very simplest GUI code here, which is the `Blender.Draw.PupBlock` ("pop-up block") widget. This is far from ideal -- it would be much nicer to use Blender's file-chooser interface to find the CSV file instead of having to type the filepath in manually. It would also be nice to have the colorschemes identified descriptively instead of using a number. However, the simplicity suits me for this project.

It would have been possible to create a command line utility for drawing pie charts, with all of the lighting and labeling taken care of in the script (the bar chart example in the [Blender 2.49 Scripting](http://www.freesoftwaremagazine.com/articles/book_review_blender_249_scripting) book is set up this way). However, in practice, I'd always want to tweak something anyway, so it's much simpler to just package this as a special mesh creation tool.

### Installation and Use

If you'd like to try it out, just download the attached zip file (which contains the python script and the test CSV file). Put the python file in your `~/.blender/scripts` directory and then start Blender. Press the spacebar to "add" an object, and from the menu select `Mesh`→`Pie Chart` (the Python scripts are at the bottom of this menu, marked with python icons). You'll have to remember where the CSV file is in order to type in the correct path at the prompt, but it doesn't really matter where you put it.

This pops up a small widget which asks for three parameters: The "Thickness" is how thick do you want the pie to be in blender units -- bearing in mind that the pie from this script is always 1 blender unit in radius. The "Data File" is a string which takes the path to the data file in CSV ("comma separated value") format. I used CSV format because it is common, very simple to edit, and Python has a ready-made module for reading it. The final option, "Colorscheme" takes an integer to select from the available colorschemes:

0) A muted scheme I created in Inkscape
1) A process-based color scheme (permutations of linear divisions of the RGB color space)
2) A cool-colors process-based scheme (i.e. red is suppressed)
3) A warm-colors process-based scheme (i.e. blue is suppressed)
4) A sequence of gray-scales (no color)
5) Alternating black and white
6) Rotating red, green, and blue

After answering the questions, click "OK" to draw the pie chart. If all goes well, the chart will appear almost instantaneously in your 3D window. There are no pick-off labels (I think it looks better to label the slices with text overlaid on the rendered 2D image of the 3D pie rather than having 3D text labels floating around the pie, and it's one less thing to code). However, if you use the "N" key in Blender to see object names as they are selecting, you can find the name associated with each pie slice, which you can use as a guide when adding the labels for publication.

And of course, you can edit the resulting pie using Blender tools, which gives a lot of flexibility.

The error checking is not too careful, so if anything goes wrong, you'll probably have to check the console (start Blender up from the command line with the `blender` command if you want to be able to read console messages). The most common mistake is probably typing in the wrong file location for the CSV data file.

Overall I found this pretty fun. The GUI is a little disappointing, and it looks like getting it to work more intuitively would require a lot of work. But it does the job, and this is a good enough script that I probably will be using it to make charts for articles when I need them.

The other thing I want to do is to upgrade to the new Python API used in Blender 2.5 -- that will be the subject of "Part 2".