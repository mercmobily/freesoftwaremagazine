---
nid: '3554'
title: 'Creating 3D Printed Models with Blender and the Shapeways Printing Service'
authors: 'Terry Hancock'
published: '2011-05-26 5:50:36'
tags: 'free-culture,movies,blender,3d,hardware,lunatics,3d-printing,shapeways'
license: verbatim_only
section: end_users
listed: 'true'
book: making_free_movies_with_free_software
book_weight: '2'
layout: book
---
<!-- Creating 3D Printed Models with Blender and the Shapeways Printing Service-->

One of the most exciting technological trends in recent years has been the rise of "3D printing" technologies for rapid prototyping of arbitrary shapes. I've written about this before for Free Software Magazine, but this month I finally got to try the technology out for myself -- in order to create "study models" (a fancy name for "toys") for my video project, Lunatics. In this column, I'm going to walk through the complete process, from creating 3D models to receiving the final product in the mail.

<!--break-->

The main reason for doing this project is simply that I wanted to test out the capabilities of the 3D printing services provided by [Shapeways](http://www.shapeways.com). Shapeways has combined 3D printing services with an online community design that makes for a vibrant and fun environment for creating and ordering models, driven by the community they've created. It's a very easy-to-use service, and the printing services are apparently of very high quality. They also provide a wide variety of printing materials, including fused ceramics, metals, and plastics.

=IMAGE=fig_on_keyb_comp.jpg=Figure 1: Designed in Blender, exported and uploaded to Shapeways, delivered as 3D printed plastic models -- Is this cool, or what?=

The secondary reason is that we'd like to have something a little more tangible for planning [Lunatics](http://lunatics.tv). I love working on computers, but sometimes you want to have something to hold and manipulate with your hands when you're trying to block out scenes or plan scripts. So we're going to build a model of the lunar colony in which most of the action takes place. This is mostly an affair of foam-core with printed floor plans -- a bit like a game board. And like a game board, we'd like to have "pieces" representing our characters. We could co-opt some "Clue" pieces or use color-coded Chess pawns or Parcheesi pieces, but it'd be much cooler if we had pieces that actually _looked_ a bit like our characters -- even if we only have the silhouette designs I made myself so far.

To the same scale (namely 1:100), I also wanted to create some of the vehicles. I decided to start with the "Moon Truck" -- a pressurized lunar rover vehicle designed for carrying cargo and passengers. It's also a part of the "Lunar Transportation System" (LTS) which I conceived of as a sort of mid-century equivalent to today's (soon to be yesterday's) "Space Transportation System" (STS), colloquially known as the "Space Shuttle". This figures fairly prominently in the story, where a number of important hardware elements are intended to be LTS components or spin-offs and discards from the LTS program. One reason for this was that I've had some difficulty in consistently imagining this vehicle, and it seemed like it would be useful to try to externalize it, both as a 3D model in the computer and as a physical model to hold and look at.


# Character Pieces

I created the original silhouettes as stand-in art for Lunatics very early on. They started out as public domain generic architectural scale figures, but I tweaked them so much that they started to really show the personality of the characters. I've avoided going any further with the character design, because I don't want to be too biased when I commission designs from an artist. For the present project, though, the silhouettes will be just fine -- I'm going to make the markers as simple cut-outs on a round base, not unlike toy soldiers or the game piece figures from "Clue" (though at 1:100 scale, these figures will be a little smaller than either).

To create the figure models, I started by selecting each of the characters from my original Inkscape drawing, and pasting them into separate SVG documents (Figure 2). I saved these as "plain SVG" for maximum portability.

=IMAGE=fig_svg_prep.jpg=Figure 2: I first copied the SVG silhouette drawings into separate drawings and saved those in "Plain SVG" format=

I imported each of these SVG outlines into Blender as curves (Figure 3). There were eight main characters, plus two more "extras" I wanted to create to represent the occasional walk-on parts. It's necessary to stretch them to the right size: At 1:100 scale, each real meter is a centimeter and so I opted to use the convention that 1 Blender Unit (BU) would be 1 cm. I scaled the curves accordingly.

=IMAGE=fig_import_to_blender.jpg=Figure 3: I imported the SVG objects into Blender as curves=

Curves are special objects in Blender, and there are a lot of limitations on how they can be used. The more common type of object is a "mesh" and that's what you need for 3D printing. So, after importing the curves from the original SVG files, I had to convert them into meshes. To do this, I either type "Alt+C" or choose "Change Object Type..." from the "Object" menu.

After conversion, though, I only have vertices with edges connecting them. In order to create a "face" representing the figure, I use the "Beauty Fill" by pressing "Alt+F" or by selecting the Mesh→Faces→Beauty Fill menu option in edit mode (I enter and leave edit mode by hitting the "Tab" key). In reality, this doesn't create one face, but many -- the space is filled in automatically with triangles.

I could spend some time simplifying the fill more, but it isn't very important for this project. The most important thing is to make sure the facets are really co-planar.

=IMAGE=fig_extruding_figure.jpg=Figure 4: Extruding a figure=

Next, I have to give the cutout some thickness. I decide to make them one millimeter thick, which is one-tenth of a Blender Unit at my chosen scale. To do this, I select the mesh, then flip to the view along the X axis by hitting "NumPad 3". I then hit "Tab" to go into edit mode and I select all the vertices (hit "A" to toggle selection of all vertices -- if something is selected already this will take multiple presses). Then hit the sequence: "E" (extrude), "Y" (direction), and "0.1" -- this will extrude the combined face into the Y dimension (Figure 4).

=IMAGE=fig_anya_figure.jpg=Figure 5: Figure of "Anya" shows how the extruded figure just overlaps the cylindrical base. There's no need to formally connect them in Blender=

I have to do this for each of the ten figures I create. For each, I create a single mesh base by extruding a cylinder mesh. I simply overlap the extruded figures and the base (See Figure 5) -- it isn't necessary to formally merge the objects in Blender, so this saves me some complexity.

=IMAGE=fig_all_figures.jpg=Figure 6: All 10 figures as they appear in Blender=

# Uploading the model

I went through a lot of cycles with this, originally uploading just one of the characters, and then trying different combinations. Shapeways, fortunately, does not care if a model consists of a single piece or a dozen, but they do charge a flat-rate, per-model set up fee for most of their materials. This means that it's generally cheaper to print a small collection of objects as a single model if you can -- especially if they are small, as in this case.

=IMAGE=fig_export_stl.jpg=Figure 7: Exporting a blender model to STL format for 3D printing on Shapeways=

When you finish your design, the next step is to export to a format Shapeways will understand -- the one I found easiest to use was STL format (Figure 7). This format is provided by the standard export menu in Blender (File→Export→STL...).

To print the model using Shapeways, I start by navigating to the Shapeways site in my browser. I log in. Then I click the "upload" button at the top. This takes me to a form I can use to upload my model (Figure 8). The form allows for you to create a model only for your own use or to make it generally available. In fact, as with some other crowd-sourced manufacturing service community businesses, if you do put your model up for sale, you get a commission on sales. In my case, I'm not quite ready to release these models into the wild yet, so I just click the private boxes.

=IMAGE=fig_upload_model_shapeways.jpg=Figure 8: Uploading the "Anya" figure to Shapeways=

You may find you have to modify the upload if you want the picture to look right -- on one upload, I followed some bad advice and oriented the "Y" axis as "up" instead of "Z", getting the result in Figure 9. This will print fine, but it looks terrible in the preview render.

=IMAGE=fig_oops_wrong_way.jpg=Figure 9: Oops! The "Z" axis should be the "up" direction if you want the preview to look right (here I used "Y")=

Once you've successfully uploaded your model, you can order a 3D print of it in a variety of plastics, sandstone, a few different types of metal, and different finishes of glass (Figure 10). Conveniently, the interface automatically computes the volume and prices each material for you for comparison. The cost for my 10-figure set ranges from $3.20 for sandstone up to $64.40 for silver (I actually got them in the "Indigo strong and flexible" plastic, since I've been using indigo for a lot of the Lunatics artwork, and it was a limited time seasonal material). The costs are charged as a function of the model's computed volume (not the bounding box -- the actual model), plus a flat rate setup charge per model.

=IMAGE=fig_materials_costs.jpg=Figure 10: Materials available and costs for my figure set=

# Moon Truck

After uploading the figure models and attempting to order them, I did discover one downside to Shapeways' service: there is a minimum order of $25. So if I didn't want to waste my money, I'd need to order something else. I decided therefore to create another 1:100 scale model -- this time of one of the vehicle designs for Lunatics (Figure 11). I won't go into the details of how I modeled this, though it's obviously a more complex design.

=IMAGE=fig_moontruck_in_blender.jpg=Figure 11: The Moon Truck design in Blender (I didn't print the passenger module to the right)=

I made the truck in several parts to be assembled afterwards. This was partly to allow for modular assembly of the parts with other models (the wheel quads are actually supposed to be removable on the real truck, for example). Others were simply to make it easier to create a thin-walled hollow model that wouldn't cost so much to print. The removable lid on the module is also for access to the interior, although there isn't really any interior detail to speak of (but I might add some in a later version).

At this point, you can order the parts using a simple checkout system, just like any other e-commerce site. As "manufacture on demand" products, there is a manufacturing delay as well as a shipping delay included in the availability promise (Figure 12).

=IMAGE=fig_ordering_models.jpg=Figure 12: Shapeways promises a 10 day turnaround on manufacturing in the shopping cart view=

# Delivery

Well, this article wouldn't be complete without photos of the goodies as I got them. They come in nice little packages, one per model, as you can see in Figure 13.

=IMAGE=fig_in_packages.jpg=Figure 13: My items, as they came from Shapeways=

I was happy to see that none of the figures broke off at the feet. The truck came in several parts as planned (Figure 14).

=IMAGE=fig_truck_parts.jpg=Figure 14: The truck was printed in five parts (main chassis and cabin, two wheel quads, a docking hatch, and the cabin roof)=

Assembling the truck worked pretty well on the first try. The "snap-on" wheels were more sort of "slip-on", but they stay on just fine. The hatchway plug was a very tight fit, so I was a little worried about breaking it, but the plastic was strong enough to avoid that (Figure 15).

=IMAGE=fig_assembling_truck.jpg=Figure 15: Snapping the Moon Truck components together=

It's interesting to examine the texture up close. It's possible to see the facets from the original Blender model (the round cylindrical parts are actually high-number polygons, so they are faceted when you examine them up close). In other places, the scan lines from the printing process are more obvious -- as in the top of the wheel quad in Figure 16.

=IMAGE=fig_quad.jpg=Figure 16: Close up of one of the wheel quads -- note the visible scan lines from the printing process=

And that's it! As an aside, I should mention that I originally hoped the wheels would turn -- I had attempted to do an articulated model design as a challenge, but I apparently did not leave sufficient clearance for this, and they are locked up as if they were printed solid. That's one of several design problems I'll be looking into before attempting to print this model again.

Figure 17 shows the assembled models with a penny and a DVD for scale. I'm delighted to finally be able to test out this technology, which I've been writing about for some time already.

=IMAGE=fig_fullset_w_scaleitems.jpg=Figure 17: My completed parts, with penny and DVD for scale=

Can't write any more... _busy now_, "_vroom_ _vroom_...."

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=


