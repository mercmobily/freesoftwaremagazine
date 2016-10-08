---
nid: '3818'
title: 'Refactoring in a Multimedia Project with Inkscape, Blender, and Audacity'
authors: 'Terry Hancock'
published: '2013-04-17 4:16:31'
tags: 'refactoring,multimedia,linking,blender,audacity,inkscape'
license: cc-by-sa
section: hacking
main_image: refactoring_multimedia.jpg
listed: 'true'

---
<!-- Refactoring in a Multimedia Project with Inkscape, Blender, and Audacity -->

One of the special problems with managing a multimedia project (versus a text-based software project), is that there are often links to external data files which can get broken when you try to move the files around -- such as you might do when re-factoring the source code to make it more navigable. Three programs that we use extensively in the [Lunatics](http://lunatics.tv) project present this problem, and each requires slightly different handling. These are Inkscape, Blender, and Audacity. I have never found a compact guide to keeping the links straight in these programs, so I'm going to write one here.

<!--break-->

A _lot_ of the process of managing a software development project is managing the web of _dependencies_ between the files and on outside libraries. Large multimedia projects also have to deal with these kinds of dependencies between files, but they aren't quite as easy to manage.

What makes multimedia data so challenging is that it takes special software to examine and edit it. You often can't easily look into the "source" file and process it as text. And this means that certain kinds of editing are harder -- including checking for and fixing bad references. The only real consolation is that multimedia project files usually aren't quite as complexly linked as similarly-sized software projects.

We are currently using [Inkscape](http://www.inkscape.org) (version 0.48), [Audacity](http://audacity.sourceforge.net) (version 2.0.0), and [Blender](http://www.blender.org) (version 2.63) in [Lunatics](http://lunatics.tv), which I address here. There are other packages such as [Kdenlive](http://www.kdenlive.org) and [Ardour](http://ardour.org) that we may have problems with in the future, since they do link data, but we haven't yet had to worry about them, so I won't cover them here.

# Embedding and Linking

Unless you're already into software development or theory, you may never have stopped to think about what happens when you paste an image into a document in a word-processor. Specifically: _where does the image data go_?

In fact, this depends on the program and the file format, and there are two main options: *embedding* and *linking*.

If the image is *linked* (as happens in HTML, for example), then the image is stored on disk (or possibly not moved at all), and only the location of the image (the *link*) is placed in the file. You know this drill -- it's how HTML pages on the web work.

Alternatively, if the image is *embedded* (as generally happens with ODF format or a PDF), then the image is stored as part of the document file itself.

We still retain both of these options, because neither of them is really "better" than the other, and because they each have specific uses.

### Embedding

Embedding is great when you want to:

* Make the file easily portable (it's "encapsulated")
* Make certain the contents don't change over time (the file remains just as you designed it)

Embedding is the simplest concept. It means you simply copy one file or a portion of a file into another file. 

=IMG=inkscape_linking.png=Figure 1: Linked images in an SVG drawing in Inkscape=

### Linking

Sometimes, though, it's much more convenient to use *linking*. This is useful when you want to:

* Keep working on two documents in parallel, even though one is dependent on the other.
* Save storage space by not duplicating information.
* Make sure that the combined document always uses the most up-to-date versions of the included object.

In a multimedia project, there are _many_ places where we want this kind of relationship. For example, we may want to design a 3D animated character in one file, and then link that character into all of the scenes in which she appears. Or we may want to create a texture in Gimp for a 3D object in Blender -- and we want to be able to improve the rendering over time as the texture is improved.

The downside of linking is that it is more complicated and the link references can break. So you need to know how to fix them if that happens.

It also gives you another choice, which is whether to use *absolute* or *relative* links (figure 2).

=IMG=absolute_relative_links.png=Figure 2: Linked files in Inkscape, Blender, and Audacity, showing both relative and absolute links=

Most of the time, in a collaborative project, shared (as ours is) through a version control system, you are going to want to use _relative_ links pretty much all of the time. That's because, with relative links, you can move the source file and the user file together onto another computer, and all of the links will still work (this happens when a collaborator checks out a "local copy" of the source tree, for example). If you use absolute links, the computer will start looking for the exact same filepath -- and unless the working copy is in the exact same place on both computers, it probably won't be there!

On the other hand, if you are reorganizing your source tree, and you want to change the relative relationship between the main document file and the linked data file, then a relative link will break. You might fix this manually, or you can convert to an absolute link (which won't be affected by the move) and then convert back to a relative link afterwards.

# Inkscape

With Inkscape, the most common problem arises with image files. Inkscape supports both embedded and linked images, but it's more common to use linked images. By default, Inkscape uses the _absolute_ path for the image. Here's a snippet of SVG code showing an absolute link (*`xlink:href`*):

=CODE_START=
  <image
     width="300"
     height="38"
     xlink:href="file:///project/terry/Learn/Inkscape/fsm_logo.png"
     id="image3047"
     x="0"
     y="0" />
=CODE_END=

This means that if you move the drawing to a new location (or when as part of a project source tree, it is opened on another computer), then the links will fail. When the drawing is rendered on screen, a default "link not found image" will be used instead of the proper image (figure 3).

=IMG=inkscape_link_fix.png=Figure 3: Fixing a broken image reference in Inkscape (and also making it a relative link)=

You can fix this by right-clicking on the image object, selecting "Image Properties" and manually correcting the path. You can even eliminate the path, causing a relative link to be used instead. When this happens, Inkscape actually stores both the relative (*`xlink:href`*) and absolute (*`sodipodi:absref`*) links, like this:

=CODE_START=
  <image
     sodipodi:absref="/project/terry/Learn/Inkscape/A/fsm_logo.png"
     xlink:href="fsm_logo.png"
     y="0"
     x="0"
     id="image3047"
     height="38"
     width="300" />
=CODE_END=

I have not thoroughly explored what Inkscape does with this information, but the most important thing is that it is easy to fix broken references in Inkscape.

If the image or the drawing is very large, then can get a little awkward, because Inkscape keeps trying to find the file as you type (it can slow your computer down to the point where it's hard to type correctly). If that happens, you can alternatively solve the problem by using Inkscape's built in SVG/XML editor tool. Just find the image object, then use the attribute editor to change the file location. This will work even if the drawing is really large and takes a long time to render.

Alternatively, you can avoid this situation by using the `Extensions->Images->Embed Images` extension to embed all of the images in your SVG file. When you do this, the images are _copied_ into the SVG file as a block of encoded data. You can leave the document that way if you are happy with _embed semantics_ or you can extract the images using the `Extensions->Images->Extract Image` option on each image in the document. You can also decide to embed images when you load them into your drawing.

And if all else fails, at least SVG files actually _are_ text, so theoretically you could fix these problems with a text editor, although it would be very tedious work.

# Audacity

Because of its design, Audacity is not really able to use linking semantics for audio source material (Audacity has to be able to directly modify the audio in order to work). This not quite so obvious, because Audacity will allow you to use some audio data "in place". However, this is simply to save disk space -- if you do this, it's imperative that you don't alter the audio source data, because this will destabilize your project.

So you should probably always select the option to copy the audio files into your project.

However, _inside_ the Audacity project, the sound clips are all stored in a sub-directory adjacent to your project file. So, if you have a "`MyProject.aup`" file, there will also be a "`MyProject_data`" directory. It is imperative that you keep this data directory and its contents in the same directory as the project file, otherwise the links will be broken. However, it does appear that this relationship is a _relative_ link, so as long as you move the project file and the clips directory together, there's no problem with portability.

I'm not sure if it's any use to know this, but the Audacity project file (the "`.aup`" file) is actually in an XML format, although it's a custom format for Audacity.

# Blender

For me, Blender is by far the most confusing about handling embedded and linked data. Both "embedding" and "linking" semantics and both "relative" and "absolute" filenames are supported. The program provides a set of menu options for interconverting between all of these cases.

Somewhat awkwardly, Blender will sometimes quietly delete references to files it can't find! So you have to be careful not to save a document with broken links -- you can lose linking and proxy information this way!

### Moving a Blender File without breaking links - Hess Method

In his books "Animating with Blender" (for Blender version 2.4) and "Blender Production" (for Blender version 2.6), Roland Hess describes a useful method for moving a Blender file with dependencies on another Blender file. I'll call the library file "`src.blend`" here and the file using data from it, "`user.blend`". Figure 4 illustrates this technique:

* Open `user.blend` and select `File->External Data->Make Paths Absolute`. This makes it so the path to `src.blend` no longer depends on the location of `user.blend`.
* Save and close `user.blend`, and then move it to the new directory location (with your file manager or the command line).
* Re-open `user.blend` in the new location and select `File->External Data->Make Paths Relative`. This will then fix the path back to a relative link, corrected for the changed relationship between the files.

=IMG=hess_method_move_blender_file.png=Figure 4: Moving a Blender file which depends on another in a source tree, using the method suggested by Roland Hess in "Blender Production"=

### Moving a Blender Asset Library without breaking links - Direct Editing

I have since discovered, however, that you can also make direct edits to library paths using the outliner tool in Blender. Simply switch the outliner to "Libraries" mode, double-click the path that needs to be changed, and then press return to accept the change. Check the console by pulling down the top menu in Blender -- if you've made a mistake and the new location doesn't exist, there will be a warning here. In that case, you would need to fix it before saving, or the link will be lost.

=IMG=fig_direct_edit.png=Figure 5: Directly changing the path to a depended-on library can be done by double-clicking the entry in Blender's outliner=

This technique might be the best way to move the `src.blend` file if you need to (Hess recommends strongly against this, because there is no general way to know all of the files which depend on a given source file -- so this should obviously be done with caution!).

In order to do this, first make a _copy_ of the `src.blend` file. Then open the `user.blend` file, edit the necessary paths (which will then go from one valid path to another valid path). Then save `user.blend`; exit; and delete the old copy of `src.blend`.

### Moving data blocks for a Blender file without losing them - Pack/Unpack Method

For things like image textures, there is a third approach which can be quite useful on a collaborative project, and that is to take advantage of Blender's "Pack" and "Unpack" tools. On the same "`File->External Data`" menu, there is an option to "pack" external data. This will convert links to _non-Blender-data_ to embedded data blocks (which Blender calls "packed").

So, for example, if you have been sloppy about how you move texture files into your Blender file (linking to textures all over your filesystem, for example), this can help you to make things neater. Just use `File->External Data->Pack into .blend file`to move the textures into the current Blender document. This will make the file independent of those data sources.

=IMG=pack_unpack_data.png=Figure 6: Packing and unpacking menu in Blender (left) and the option sub-menu (right) for how to unpack the data=

At that point, you can move the Blender document to a better location if you need to. Then select `File->External Data->Unpack into files` to unpack the data. A sub-menu will pop up, giving some additional choices. In this case, you'll want `Write files to current directory`. Instead of trying to write the data back to all of those original locations, it will write them into sub-folders adjacent to the Blender file. So, for textures, it creates a "`textures`" folder in the same folder as the Blender file.

This seems like it will generally be the right thing to do. If you have a lot of Blender files in one folder, then there's probably a chance of having a name collision with an incompatible texture. However, in practice, when I have more than one Blender model in a directory, it is usually because they are closely related, and so a texture with the same name is likely to be the same texture shared by both models.

### Checking linkage in Blender

At any time during these operations, you may find it useful to use the "`File->External Data->Report Missing Files`" option. This will simple print out the missing paths on the console. To see the output, simply grab the top menu bar in Blender and pull it down -- the console will appear above this. Missing file lines will be highlighted in a nice bright red-orange color, so they're hard to miss.


=IMG=fig_report_missing_files.png=Figure 7: Also on the External Data menu is an option to report missing files (Note that these are reported even if the data itself is packed into the Blender file)=

One thing to be aware of, though: even when data is "packed", Blender remembers the file locations the data came from and will report them as missing, even though the Blender file is not broken. That is to say, it reports that the source file for the texture is missing, even when the texture itself is available due to being packed into the Blender file. It's not until you unpack the file that this warning will go away (presumably, it updates the path to reflect the new location.

There is also a "`File->External Data->Find Missing Files`" option to open a file browser and locate the missing files you need. This will probably work as an alternative to manually editing them in the outliner as I suggested earlier.

I did notice some "magic" when I was testing these moves earlier -- it seems that in some cases, Blender will try to do a little searching and fix itself if a file is not where it expects. I wouldn't want to rely on this, but it's interesting -- in some cases when I intentionally broke the link relationship, Blender would automatically correct its links.

# Keeping the Source Tree Neat

With these tools, it's possible to fix mistakes in how you've organized your source tree. This can help you to keep your data organized so that it's easier to find. As a project gets larger, this gets more and more important! You can find yourself wasting a lot of time browsing around in the source, trying to remember how you had organized things in the past. Keeping a lot of special exceptions in your head is wasteful -- it's much better to come up with a consistent plan and follow it.

Ideally, you'd do that from the outset, but mistakes are inevitable. So you need to have the ability to fix problems after they happen, even if you're very careful.

