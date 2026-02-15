---
nid: '3464'
title: 'Making realistic characters for Blender with MakeHuman'
authors: 'Terry Hancock'
published: '2010-12-09 2:38:00'
tags: 'movies,blender,free-softwre,makehuman'
license: verbatim_only
section: end_users
listed: 'true'
book: making_free_movies_with_free_software
book_weight: '1'
layout: book
---
<!-- Making realistic characters for Blender with MakeHuman-->

There are lots of options for creating 3D characters for animation, and they are often made from scratch by mesh-modeling artists. But it's obviously a very often-needed task, using a lot of common elements, so you'd think someone would come up with a tool to make it easier. And you'd be right. The free-software tool of choice for this task is MakeHuman. I had looked into a much earlier version of the software before, but today it is rapidly approaching the first real release, version 1.0 (currently it's at 1.0-Alpha 5, with plans to go through several more alphas still). The progress is remarkable, and this is going to be a really important tool for 3D modeling in the future.

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies, _Marya Morevna_, through the [Morevna Project](http://www.morevnaproject.org) and [Lunatics](http://lunatics.tv), which we are working on as Anansi Spaceworks.
=TEXTBOX_END=


Of course, my first question is, "Can we just use this for the characters in _Lunatics_?" And, failing that, "How far can we go with it?"

=IMAGE=fig_makehuman_splash.jpg=Figure 1: MakeHuman is a powerful tool for creating realistic human body meshes for character modeling in 3D applications, including Blender. It's currently in an "alpha" development phase preceding a 1.0 release=

# Installation

MakeHuman is built for several distributions, including Ubuntu. There is no general "Debian" package, and it isn't included in the regular Debian distribution. However, the Ubuntu packages work just fine on the Debian "Squeeze" distribution that I'm using. There are two options, the "Alpha" package, which has the most recent released alpha, and the "Nightly" package which is built nightly from the code in development by an automated script. Of course, there is some chance that the development code will be in a broken or buggy state when you use the "Nightly" version, but it'll give you the most up-to-date version.

=ZOOM=Many different package options are available from the MakeHuman download page=

Many different package options are available from the [MakeHuman download page](http://sites.google.com/site/makehumandocs/download). Installation on my Debian "Squeeze" system required the following procedure:

Edit the `/etc/apt/source.list` to include the following line (`AMD64`):

=CODE_START=
# deb http://download.tuxfamily.org/makehuman/deb/amd64/ /
=CODE_END=

or for `i386` architecture:

=CODE_START=
# deb http://download.tuxfamily.org/makehuman/deb/i386/ /
=CODE_END=


Then you can install the "Alpha"...

=CODE_START=
# apt-get install makehuman-alpha
=CODE_END=
 
... or the "Nightly" ...

=CODE_START=
# apt-get install makehuman-nightly
=CODE_END=

... with `apt-get`. This required no additional input in my case.

It is also possible to download the [Alpha-5 Debian package](http://makehuman.googlecode.com/files/makehuman-alpha_5_amd64.deb) ([i386](http://makehuman.googlecode.com/files/makehuman-alpha_5_i386.deb)) and install it using `dpkg`. In fact, I was also able to install the [Alpha-4 Debian package](http://makehuman.googlecode.com/files/makehuman-alpha_4_amd64.deb) ([i386](http://makehuman.googlecode.com/files/makehuman-alpha_4_i386.deb))this way, so that I could see the differences.

# Versions (Alpha-4 and Alpha-5)

The in-program help files are a little confusing. They were actually written for the Alpha-4 release, and they mention some things, including the "Ethnic Chooser" that are not included in the Alpha-5 (it's supposed to return in Alpha-6 after some rework is completed).

=ZOOM=The in-program help files are a little confusing. They were actually written for the Alpha-4 release, and they mention some things, including the "Ethnic Chooser" that are not included in the Alpha-5=

I was a little disappointed by that, since it would've made my life somewhat easier to be able to get appropriate initial body proportions and face shape keys based on my characters' ethnic backgrounds. I even went back to Alpha-4 for a bit to try this out, but unfortunately, the work on ethnic group data is very incomplete, and only a few African and (East) Indian groups are included. This covers only one of my major characters, so it's not that useful (though I did have a go at that one character, "Sarah").

Despite the loss of this system, however, the Alpha-5 was much more satisfying to experiment with, because this minor loss in function was overwhelmed by hugely better fine control of the character's dimensions. The Alpha-5 release includes separate sliders for almost every major body dimension, and a very interesting "face tool" which allows you to swap out different meshes for some parts of the face, as well as to move, stretch, and scale facial features. This gives you much more ability to match a character model to an existing concept (or to photo references).

Also, the Alpha-5 release has much more conventional sliders for controls than those that are depicted in the help. Personally, I think I'd like the simple sliders better (or in an ideal world, sliders that act like the controls in Blender, which provide input methods for fine and coarse control as well as readout in one widget -- why learn two interfaces when one will do?).

# Saving Your Work

If you're working with one of these experimental builds, I suggest you test saving and loading your work. The interface is pretty kludgy, and notes on the site suggest that it is being overhauled considerably, so it may change. The in-program help says, in fact, that the save and load features don't work, and suggests a work-around for exporting models. However this information is apparently out of date, as the version I used did permit saving and exporting files.

However, I have not found any way of _loading_ them! This is my biggest disappointment with the program as it exists now -- there's no way to re-edit models I saved earlier. But that's the problem with life on the bleeding edge -- you bleed a lot. No doubt this problem will get fixed in later releases; it may not exist by the time you read this; but I did want to warn you about it.

# What can you do?

When you open up the program, you see a basic model of a "hermaphrodite" person with a collection of sliders on the left which control several basic parameters. On the lower right are two preset camera positions for viewing your character, one on the whole body and one on the face. However, you can also use keyboard or mouse controls to rotate your character for viewing from other angles. This is the "General" tab of the "Modeling" mode (Figure 2).

=IMAGE=fig_mh_alpha5_sc.jpg=Figure 2: The initial model and general modeling controls=

From here, you can change the gender, age, height, weight, and muscle tone of your character. If you specify a high weight with low tone, you'll get a fat character, whereas if you specify a high tone, you'll get a muscular character.

=ZOOM=When you open up the program, you see a basic model of a "hermaphrodite" person with a collection of sliders on the left which control several basic parameters=

The program is quite intelligent in that it draws on a lot of database information, specialized meshes, and rules to create the model. For example, it knows that both fat and muscle typically accumulate in different parts of men's and women's bodies, so you'll see a different pattern according to gender. This mesh and statistical data is the real value of the program, far beyond the actual code.

Of course, these will leave you with a character that is still very generic, so you'll want to go into the detail tab to do some more modeling. Figure 3 shows a substantially modified model's face, in the detail tab.

=IMAGE=fig_mh_detail_tab_sc.jpg=Figure 3: The detail tab includes a number of finer controls, including shapes for facial features=

New in the Alpha-5 package is the "Advanced" mode, which includes controls for much finer manipulation of the model's dimensions as well as new tools for applying left-right asymmetries to the model. This is more use than you might at first think. Real people aren't perfectly symmetrical, and models which are tend to have an uncanny disturbing impression. Adding a tiny amount of asymmetry can contribute greatly to the believability of the model (see figure 4).

=IMAGE=fig_mh_character_heads.jpg=Figure 4: Five different character heads I created with MakeHuman, showing some of the range the program is capable of. Of these, only the upper left head uses the asymmetry features. I was surprised by how much this improved it=

I was able to create several rather different characters (figure 4) in less than an hour, simply by tweaking the various controls. Of course, there are some limits, especially in this alpha version. There may be a way to change the coloring, for example, but I haven't figured it out (it may be a little disconcerting modeling an Asian woman with bright blue eyes). However, I'm sure I'll be repainting these characters in Blender later on, anyway, if I use them.

# Importing characters into Blender

To make use of the characters, you need to go to the "File" mode and the "Export" tab. The filename box is a little off-putting, since there's no visible text cursor, but just start typing and you'll see the text. Oddly the box constrains you to lowercase characters and dashes instead of underscores, which limits not only what you call your character, but also where you put it. But you can move it elsewhere after you export, of course. Hopefully, the release version will use or implement a more conventional file-chooser for this task. Note that you should select "MHX" format for use with Blender (or you can export to Wavefront "OBJ" format as well, and import that).

=ZOOM=The model is quite a detailed, fine mesh=

In the Blender 2.49a that comes with Debian "Squeeze", I found importing the files to be trivial. Inside Blender, choose "File->Import->MakeHuman(.mhx)". You'll see a dialog box with some controls. If you don't need to adjust anything (I didn't), then just click on "Load MHX file." Then browse to the file and select it. I found that MakeHuman always creates two MHX files, one ending in "`-24.mhx`" and another with "`-25.mhx`". I think these are probably slightly different versions intended for Blender 2.4x and 2.5x, respectively. Since I have the former installed, I used the "`*-24.mhx`" files.

The model is quite a detailed, fine mesh, as you can see in figure 5. You'll note, if you look closely that the mesh is made entirely of quadrangles rather than triangles. This is the preferred type of mesh for high-fidelity character modeling.

=IMAGE=fig_wireframe_man.jpg=Figure 5: MakeHuman creates a highly detailed "high-polygon" model, with quads (rather than triangles)=

Despite the fact that the in-program help files deny it, the model also comes with an armature rig! A portion of the rig can be seen in Figure 6. The rig is already attached to the model, and the character can be posed at this point. I have only done some experimental posing so far, and I don't have the experience to comment on the quality of the rig, but I can say it definitely does work.

=IMAGE=fig_armature_rig.jpg=Figure 6: As of Alpha-5, MakeHuman definitely does export an armature with its characters=

# Hair and clothes

Though I obviously want my characters to have hair and clothing, these are challenging modeling problems which can be solved in many different ways with Blender. MakeHuman does have some support for hair (though not clothes as yet), but the results seem to be pretty rough so far. I can't recommend it for this yet, although again, this may be much better in the actual 1.0 release. The "Libraries" mode shows what we might expect later on (figure 7). I think the coarse hairs you see here are meant to be just the control hairs for particle-system-based hair.

=IMAGE=fig_hair_libraries.jpg=Figure 7: There is some indication that hair modeling will be included (left), although so far, the results may not seem too promising (right)=

# How good is this?

At this point, I'm convinced that MakeHuman is going to be a valuable part of my toolchain for character development on _Lunatics_. I'm not sure if we can actually produce usable final-model characters from it. We should certainly be able to use it to model "extras" -- which is worth a lot, as otherwise those are a lot of work for very little screen time. We may also be able to use the models as a basis for further model revision in Blender. Or, as MakeHuman develops, we may actually be able to do all of our character modeling in it.

=ZOOM=At this point, I'm convinced that MakeHuman is going to be a valuable part of my toolchain for character development=

I was limited somewhat on my child character, who is supposed to be seven years old. The models were designed with adults in mind, and so it's tricky to get it to model such a young child. The face tool has an appropriate age slider that can produce the correct facial dimensions. However, the body age slider stops at "12" and it's necessary to use a 100% "male" body to eliminate breast development (which should not exist at all at the age of my character). On the other hand, this makes the hips too narrow (even little girls have wider hips than boys, this is probably the single biggest difference at that age). However, with the new advanced mode, it's possible to go in and adjust the hip size directly. With enough tweaking, it works well enough to be useful.

At the other extreme, I do have a 60-year-old man, and the program seems to handle that quite well. It doesn't do much in the way of wrinkles (which is understandable, since they can get pretty complicated and are very unique to each face), so you might have trouble with characters much older than that.

I'm very excited to see where this program goes, and it looks like the 1.0 release may be just in time for my project. Also, rather pleasantly, I've found that the program itself is written in Python and the project obviously needs documentation help, so this may also be a chance for me to contribute a little, which is always fun.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=

