---
nid: '3181'
title: 'Six new editing tools and four plugins. Shutter just got even better'
authors: 'Gary Richmond'
published: '2009-07-24 14:43:53'
tags: 'gimp,screenshots,shutter,crop,drawing'
license: verbatim_only
section: opinions
listed: 'true'

---
=ZOOM=If you want to do more serious, integrated screenshot stuff then Shutter's the kiddie=

A few months ago I stumbled across [a screenshot utility called Shutter](http://www.freesoftwaremagazine.com/columns/shutter_ubuntu_mother_all_free_software_screenshot_utilities). I liked it. A lot. So I decided to give it some well deserved publicity. I wasn't the only one. It has been been getting rave reviews and it will be or should be in everyone's toolbox. Bog standard screenshot software has been available as bundled software in both Gnome and KDE desktops for ever. They're good at what they do but they are limited to relatively simple tasks. If you want to do more serious, integrated stuff then Shutter's the kiddie. The [latest version of Shutter (0.80)](http://shutter-project.org/) takes the "serious stuff" to the next level by adding six new features to the Edit tool. Shutter's screenshot-taking features alone make it worth installing but the additions for editing make it _the_ software of choice. This article describes the latest tools.

<!--break-->

Good software is characterized by many things, but one of the most important is the willingness and ability of the developers to listen to user feedback, respond quickly and implement feature requests. And Shutter's developers, Mario Kemper and Vadim Peretokin, are (and I can testify from direct, personal experience) _very_ responsive, friendly and helpful. If you send them a bug report or a suggestion for a new feature you will get a response. And get it, fast. These are the kind of developers you'd want in a shell hole, under fire.

They have been listening, and it shows. The Edit tool, which wasn't exactly short on features to begin with, seems to have benefited from user feedback as well as the developer's own original input. Those additional features make Shutter an indispensable screenshot utility for writers of howtos, tutorials and software documentation. So, what's new and improved? 

* do/undo buttons
* highlight tool
* incremental tag tool
* crop tool
* draw an arrow
* resizable canvas

Just so we know where they are (tooltips are on anyway, hovering the mouse over each button reveals all), here's a screenshot of the Shutter's Drawing tool (taken with Shutter of course). Once you have loaded a file into the main window, click on the Edit button to open the drawing tool:

=IMAGE=Shutter's_default_drawing_tool_screen.jpg=Figure 1: Shutter's default drawing tool screen=

# At last, buttons for dummies

=ZOOM=Do/Undo: A simple feature but you'll wonder how you ever managed without it=

No, I haven't been commissioned to write a book in that well-known series (alas). _I'm_ the dummy and I'm always grateful for any feature in a piece of software that allows me to get out of trouble faster than my keyboard and fingers got me into in the first place. It's hardly new. Anyone who has used OpenOffice.org for example, is eternally grateful for the Do and Undo buttons on the toolbar. I am writing this article in Kwrite and those two little helpers are worth their weight in digital gold. Version 0.80 of Shutter now has them too.

If you are using Shutter (or anything other piece of software) for the first time you're on a learning curve. You're guaranteed to make mistakes and if you can't rectify them, sometimes the only choice is to close Shutter without saving and start all over again. No more. Select the wrong tool, or the right one but place the feature against the wrong item, and a quick click of the Undo button does the trick. Didn't mean to undo that last action? No worries, just redo it. A simple feature but you'll wonder how you ever managed without it.

# Edited hightlights, so to speak

Many documentation writers find that one of the most effective ways to annotate their howtos or software manuals is to highlight a particular piece of text or a button on a toolbar. Shutter now incorporates this tool as well. Just select it from the buttons down the left-hand side of the Drawing tool screen. The mouse arrow will now appear as a grid box to help you line up the target area. Drag the mouse across the text or graphics to hightlight it. How good looking the effect is depends on how steady your mouse hand is. This was the best I could do:

=IMAGE=I_need_a_ruler.jpg=Figure 2: I need a ruler=

If you want a more professional-looking finish then select the Highlight tool and hold down the `CTRL` key as well. This time the highlight is perfectly straight.

=IMAGE=Ah,_found_the_ruler.jpg=Figure 3: Ah, found the ruler=

That's better. The only disadvantage of this method is that you cannot highlight a larger area in a single pass; the workaround is to run the highlight tool several times, repositioning each time, until the desired area is covered. Do it enough times though and you may effectively obliterate what you were actually highlighting.  Incidentally, this also works as an _ad hoc_ censor tool, but Shutter makes this superfluous as it already has a such a feature (and it can be used in conjunction with the `CTRL` key to assist accurate, straight placement.)

Depending on the colours in your screenshot you may want to vary the highlight colour to make it easier on the eye. If you do, highlight the item(s) you want and then click on the Stroke Colour button at the bottom of Shutter and choose one from the wheel. (You can't select the colour first. The default is yellow.) Now you can do a series of highlights in a variety of colours.

# Incremental tagging

Yep, you can highlight to illustrate but it's hard to beat numbering in screenshots. This has now been added. Just select the tool (the button with the circle and the plus sign) and click the left-hand mouse button at the place in your screenshot you want to annotate. If you now move to another part of the screenshot and click again the annotation will appear again but it will be _incremented_. You can therefore do annotations like this in a batch.

=IMAGE=Keep_clicking_to_increment_numerical_tags.jpg=Figure 4: Keep clicking to increment numerical tags=

=IMAGE=The_finished_article.jpg=Figure 5: The finished article=

Better still, if you need to do some other annotation in between you can return to the incremental tag tool and continue where you left off. Shutter is clever enough to remember where you were. Neat. Like highlighting, this tool can be configured for size, stroke and fill colour-right click on the numbered tag: select Properties and you can set your contextual parameters from there.

# Crop tool

Cropping will be familiar to anyone who has used graphical packages like GIMP but this powerful tool is now available in a dedicated screenshot utility. Select it (it's the button second from bottom) and a lightbox appears on the screenshot. The mouse cursor becomes a crosshair. A Crop tool also appears on the right-hand side of the screen which allows you to set the dimensions of the crop, if you prefer that to the drag method. Just select a starting point and drag your mouse to select the area you wish to crop. If your screenshot is bigger than the viewing area, there is good news: the scroll bar is still operative, if you need to select an area currently not viewable. Once you're satisfied, hit the crop button. You will see the final result which can then be saved. If you'd made an error it's a relief to know that the Undo button is still functional in crop mode too. Once you've made your final choice however, click on the Crop button and the image is cropped and resized.

=IMAGE=Crop_the_screenshot_to_the_desired_size.jpg=Figure 6: Crop the screenshot to the desired size=

and hey presto:

=IMAGE=The_screenshot_cropped.jpg=Figure 7: The screenshot cropped=


# Arrow tool

The arrow tool in the previous version was, well, a little ugly, unwieldy and didn't scale particularly well. Version 0.80 sports an entirely new tool for this important function. The tool is fifth from the top (why is it opaque and the same as the first tool which allows you to move/resize a selected item? Or is this a bug). Click on it and drag it to where you want to place it. To orientate the direction of the arrow, click on it and use the mouse to rotate it in the direction you want and then drag it to set the length. After that it's the usual call to Properties to customise appearance: colour, size, arrow head size, including the ability to have arrow heads at both ends. When annotating multiple objects in a screenshot these features are useful for making your screenshot visually effective.

# Resizable canvas

Is your screenshot a bit cluttered? Is there much free space to add annotations? If not, and you want to number the features and add a legend for example, then the new resizable canvas tool is just what you've been looking for. It really is an incredible useful piece of kit. Take a screenshot, open it with the Drawing tool (the Edit button on the toolbar). You'll need to zoom out now and then click on the top left-hand button to move/resize the screenshot. Screen handles of the type you'd see in a conventional graphics package will now appear. Grab one with the mouse and drag out to the required size to create the extra space you want and start using the annotation tools. Save the resulting masterpiece.

=IMAGE=Import_zoom_out_and_drag_to_make_space.jpg=Figure 8: Import zoom out to make space=

=IMAGE=Now_you_have_lots_of_space_to_annotate.jpg=Figure 9: Now you have lots of space to annotate=

# Conclusion

=ZOOM=With these six additional editing tools you have to keep reminding yourself that Shutter is _just_ a screenshot tool=

When I first started using and writing about Shutter it was already a featureful utility. With these six additional editing tools you have to keep reminding yourself that Shutter is _just_ a screenshot tool. It's simply the best tool in its class. Simple as that. Oh, if that's not enough to impress you then perhaps I should mention that the developers have thrown in a few new plugins. The best are the Watermark, Reflection and 3D Rotate plugins. For my money, Watermark is the most useful but all three have powerfully detailed configurations. 

From occasional articles, user manual documentation to uploading to your website, Shutter is a veritable one stop shop for all your needs and if you find that it is still missing something you need, just contact the developers. They're very friendly. They don't bite.


