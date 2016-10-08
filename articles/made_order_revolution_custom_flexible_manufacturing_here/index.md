---
nid: '3372'
title: 'The Made-To-Order revolution: custom flexible manufacturing is here'
authors: 'Terry Hancock'
published: '2010-08-09 12:29:58'
tags: 'open-hardware,android,manufacturing,arduino,open-cores'
license: verbatim_only
section: opinions
listed: 'true'

---
<!-- The Made-To-Order Revolution: Custom Flexible Manufacturing Is Here -->

Manufacturing has been getting smaller, cheaper, and more flexible for years. It's now possible to make products as sophisticated as smart cel-phones, PDAs, toys, clothing, books, and even houses in almost any shape or form you want down to very small numbers. The mass production barrier has fallen, so that today, it's possible for a home inventor, hobbyist, or crafter to create almost anything by assembling one-off manufactured components, either from a service or from affordable home-fabrication equipment (or a combination of these).

<!--break-->


Once upon a time, almost everything was made to order -- one unit at a time. In the early to mid 19th century, though, that changed, along with the industrial revolution, and it became much cheaper to "mass produce" products. Over time, these economies of scale became so great that more and more expensive-to-prototype devices became commonplace.

Eventually, we became very dependent on these objects, so their mass-production model imposed a kind of material conformity on society: we drove mass-produced cars, talked on mass-produced phones, watched mass-produced televisions, cooked on mass-produced stoves, wore mass-produced clothing, and eventually used mass-produced computers.

Manufacturing production was centralized and the economy focused on selling millions of identical objects to millions of customers. 

=ZOOM=Whereas once, there were enormous entry barriers to creating any new product, today the only real barrier is how much time and effort you want to spend on creating a custom design=

However, ever since the computer was invented, the trend has been slowly reversing. Programmable machines can make many different parts instead of just repetitively churning out the same ones. For many years the cost and flexibility advantages of this were taken up by industry, because the equipment was still very expensive. But by the turn of the 21st century, most manufacturing equipment for most kinds of consumer products had gotten down to the budget of a small shop or a very serious hobbyist.

At the same time, the growth of free software, free culture, and open hardware have produced enormous libraries of design data from which new designs can be made

With internet trends like "social networking," "crowd-sourcing", and the ubiquity of network access for small businesses, there is new trend of easy-to-use online service manufacturers. With open hardware designs, enabled by free software design tools, these services become a way to materialize free designs into custom, made-to-order hardware.

=IMAGE=fig_quantity1.jpg=Design and manufacturing technologies have caught up with production technologies, bringing one-off manufacturing back to the fore-front=

We still have some way to go before products cost as little to prototype as they do to manufacture in quantity, but today "quantity" may mean 10 or 100 units, not tens of thousands. And for many "print-like" products, the cost of a single prototype may be less than twice the marginal cost.

Whereas once, there were enormous entry barriers to creating any new product, today the only real barrier is how much time and effort you want to spend on creating a custom design. The actual cost of tooling for manufacturing is becoming -- if not quite negligible -- at least very affordable.

# Split It, Fab It, Assemble It, Program It, Use It

Many designs involve a relatively limited range of fabricated components, which are then assembled. A typical [cell phone](http://en.wikipedia.org/wiki/Mobile_phone), for example, combines a printed circuit board ([PCB](http://en.wikipedia.org/wiki/Printed_circuit_board)), several [integrated circuit](http://en.wikipedia.org/wiki/Integrated_circuit) "chips", an assortment of [discrete electronic components](http://en.wikipedia.org/wiki/Discrete_device), a few wires (not very many), a rechargable battery module, a rubber or plastic keypad, and a metal or plastic chassis. Fancier phones (all the new smartphones) also have a color LCD display, which is probably the single most limiting mass-produced element you would have to use.

=IMAGE=fig_cell_phone.jpg=Cellular or mobile phones are sophisticated pieces of hardware, yet today one could be assembled to a custom design by a hobbyist, the parts fabricated by service-based contract manufacturers, assembled at home, and programmed entirely with free software (Photo Credits: Nesnad@Wikipedia/CC By-SA, Isageum@Wikipedia/CC By-SA)=

Today, a cel phone could be designed to an open hardware design, the parts fabricated using online made-to-order manufacturing services, and then assembled at home. The resulting hardware could have a free software operating system and a smart phone "stack" such as Android could be installed on it, allowing you to essentially design your own smartphone from scratch, with exactly the capabilities you want, and any external appearance that you like.

The discrete components are highly standardized and available from many different manufacturers. They are mass-produced, have many different applications, and are unlikely to disappear from the marketplace. Most likely, I would buy these from someone like [Mouser Electronics](http://www.mouser.com), but there are many different suppliers. The battery, battery clips, wire, and mounting screws would be acquired in the same way. For mechanical components (small spur gears or bearings) you might look at [Stock Drive Products](http://www.sdp-si.com/), [Berg](http://www.wmberg.com/), or [Small Parts](http://www.smallparts.com/). Or you might go to your local hardware store.

=IMAGE=fig_pcb_fab.jpg=Several companies provide PCB fabrications services for short-run work. The boards can be quite sophisticated nowadays (Photo credit: Silver Circuits/PR)=


The chips are much more specialized, but can in some cases be replaced by more generalized "field programmable gate array" ([FPGA](http://en.wikipedia.org/wiki/FPGA)) chips which can be programed, almost like computer flash memory, with logic circuitry implementing a hardware design expressed in a "hardware description language" ([HDL](http://en.wikipedia.org/wiki/Hardware_description_language)), like [VHDL](http://en.wikipedia.org/wiki/VHDL) o [Verilog](http://en.wikipedia.org/wiki/Verilog).

The two biggest FPGA manufacturers are [Xilinx](http://www.xilinx.com) and [Altera](http://www.altera.com).

FPGA synthesis is a tough spot in the design chain, the tools for that are still non-free, although there are non-free, zero-cost binaries available for [Xilinx's Webpack](http://www.xilinx.com/tools/webpack.htm) and [Altera's Quartus II Web Edition](https://www.altera.com/download/software/quartus-ii-we).

=ZOOM=Many electronic design tasks are possible with the GNU Electronic Design Automation (GEDA) system=

Many electronic design tasks are possible with the GNU Electronic Design Automation ([GEDA](http://www.gpleda.org/)) system.  Schematics can also be designed in [xcircuit](http://opencircuitdesign.com/xcircuit/), [dia](http://live.gnome.org/Dia), or other packages. 

Once designed, the circuit board design would then be sent to one of the several companies providing PCB prototyping services (such as [Silver Circuits](http://www.custompcb.com), [PCB Express](http://www.pcbexpress.com/), or [PCB Universe](http://www.pcbuniverse.com/)), for through-hole or surface-mount components (or any combination of the two) on a board having anywhere up to fourteen layers (even a very sophisticated cel phone could be built with a four- or six-layer board).

=ZOOM=Many of these tasks would still be hopelessly complex, though, if it weren't for the large amounts of available design data online=

Many of these tasks would still be hopelessly complex, though, if it weren't for the large amounts of available design data online. For FPGAs, there is the [Open Cores](http://opencores.org/) project which contains many logic designs ranging from simple replacements for common logic devices up to entire microprocessors. The [Open Graphics Project](http://wiki.opengraphics.org/tiki-index.php) continues to work on accelerated 3D graphics design. There are many online sites containing simple circuit diagrams, including [Electronic Circuit Diagrams](http://freecircuitdiagram.com).

=IMAGE=fig_laser_sinter.jpg=One of the most amazing prototyping technologies today is "selective laser sintering" where a 3D form is built up by selectively fusing powdered material with a laser. It allows almost any imaginable shape to be created (Drawing Credit: Materialgeeza@Wikipedia/CC By-SA)=

The chassis or shell of the cel phone could be designed in 3D software, like [Blender](http://www.blender.org) (ideal for artistic designs like outer cases), [BRL-CAD](http://brlcad.org), or [FreeCAD](http://free-cad.sourceforge.net/). 

Then it could be manufactured by "selective laser sintering" ([SLS](http://en.wikipedia.org/wiki/Selective_laser_sintering)) of plastic, a process more commonly known as "3D Printing" today. Although it's probably possible to find a rubberized keypad from an existing cel phone or other source, the purist could pour one from flexible plastic into a mold printed through the same 3D printing technology (this can be done in a home shop with a minimum of supplies and equipment).

=IMAGE=fig_shapeways.jpg=Shapeways.com is an online 3D printing service that can print to a variety of materials including several plastics, "sandstone", glass, and even stainless steel=

Once all of the components were fabricated, the phone could then be assembled at home with little more than a screwdriver and a soldering iron.

Want a unique cell-phone pouch with your own unique branding? You _could_ create a special themed pattern, have it printed on heavy fabric, and then sew it at home, using a service like [Spoonflower](http://www.spoonflower.com), which makes custom-printed fabric in a number of different materials ranging from $16.20 to $28.80 a yard. The graphics for this could of course be created in [Gimp](http://www.gimp.org). It's probably not useful on this project, but there's a similar service to print wallpaper (either repeating patterns or giant murals), called [Design Your Wall](http://www.designyourwall.com).

=IMAGE=fig_crowdsource_designs.jpg=A number of companies, like Spoonflower (shown here), have adopted a commission model, allowing them to crowdsource designs. The designer makes a cut from sales of their design, which provides some motivation for sharing them=

Once you're finished assembling your phone, you'll be able to install a GNU/Linux (or Busybox/Linux) distribution targeted for embedded systems. You might want to start with a ready-made operating system for cell phones, like Google's [Android](http://source.android.com/). Linux, of course, has been ported to essentially every known microprocessor, so it leaves you very open from a hardware design standpoint.

When you're done, you might even want to publish a manual using [print on demand](http://en.wikipedia.org/wiki/Print_on_demand) book publishing. This would be especially useful if you wanted to share your design with other people who might like one like yours.

=IMAGE=fig_lasercutting.jpg=Another powerful and economical technique is laser-cutting, which can be used to make very complex cutouts from flat material=

For some designs, it might make sense to use [laser-cut](http://en.wikipedia.org/wiki/Laser_cutting) flat parts. This can be a more economical process than SLS, especially for larger parts. [Inkscape](http://www.inkscape.org) can be used to create SVG vector graphics to be used by laser-cutting services like [Custom Laser Cutting](http://www.customlasercutting.com/). This can also include laser-etching, which marks the material with grooves rather than actually cutting through it (you might, for example, etch button labels this way). This approach can be used with a wide range of materials ranging from plastic and wood to cloth and rubber. For serious fabric cutting (as for fashion designers), there are specialized services such as [Laser Cut Fabric](http://www.lasercutfabric.com).

Of course, another option is home CNC machining. For traditional machine shop fabrication, it's possible to buy a GNU/Linux-based  [CNC system](http://www.sherline.com/CNCmenu.htm) from [Sherline](http://www.sherline.com) (which sells a range of small mill/drill/lathe machines targeted at amateur machinists and small shops). Traditional machining is usually more work (even for CNC), but it still has significant advantages for situations where mechanical strength, high tolerances, or high surface quality are required. Examples include high-speed bearings, trackways and slides, and any frame part where strength and weight are critical. This is the method used for most metal parts used in the aerospace industry, for example.

=ZOOM=This would be a very expensive phone, and a much cheaper mass-produced phone would probably suit most people better. But the point is that it is now possible=

Of course, I'm not seriously proposing that this is how you should get your next cell phone. This would be a very expensive phone, and a much cheaper mass-produced phone would probably suit most people better. But the point is that it is now possible -- even _feasible_. And for something _like_ a phone, but with more capabilities -- some sort of perfect "fusion device" that you have wanted, but cannot find -- it might be the _only_ way to get it. 

A very similar story would apply if this were a digital camera or camcorder, recording device, portable television, universal remote control, toy robot, talking rag doll, intercom unit, walkie-talkie, laptop computer, game console (and controllers), and on and on. You'd of course have many options to simplify the problem by choosing a ready-made mass-produced components, but you could opt to customize at many levels. For really advanced projects such as a classroom research robot or a [CubeSat](http://en.wikipedia.org/wiki/Cubesat) satellite, it might be very practical indeed.

# Quick Reference

Just in case you actually want to try this for some project of your own, here's a quick review of services:

Service           | Makes             | Design With             | Quote/Order
------------------|-------------------|-------------------------|-------------------
[Silver Circuits](http://www.custompcb.com)  | PCBs, 1-6 layer   | [GEDA](http://www.gpleda.org/)                    | [Quote Form](http://www.custompcb.com/pcb_production_quote.htm)
[PCB Express](http://www.pcbexpress.com/)       | PCBs, 1-6 layer   | [GEDA](http://www.gpleda.org/)                    | [Price Sheet](http://www.pcbexpress.com/products/prices.php)
[PCB Universe](http://www.pcbuniverse.com/)      | PCBs, 1-10 layer  | [GEDA](http://www.gpleda.org/)                    | [Quote Form](http://www.pcbuniverse.com/pcbu-quote.php)
[Sunstone](http://www.sunstone.com)          | PCBs, 1-14 layer  | [GEDA](http://www.gpleda.org/)                    | [Quote Form](http://www.sunstone.com/quoteFF.aspx)
[Shapeways](http://www.shapeways.com/)         | 3D Shapes         | [Blender](http://www.blender.org), [FreeCAD](http://free-cad.sourceforge.net/)        | (Login)
[Spoonflower](http://www.spoonflower.com)       | Cloth             | [Gimp](http://www.gimp.org), [Inkscape](http://www.inkscape.org)          | [Upload](http://www.spoonflower.com/designs/new)
[DesignYourWall](http://www.designyourwall.com)    | Wallpaper         |  [Gimp](http://www.gimp.org), [Inkscape](http://www.inkscape.org)         | [Custom Order](http://www.designyourwall.com/store/favoritedrawing.php)
[Lulu](http://www.lulu.com)              | Books             | [Scribus](http://www.scribus.net)                 | [Publishing](http://www.lulu.com/publish/index.php?cid=en_tab_publish)

=TABLE_CAPTION=Quick guide to services from the previous section=


# The Future is Bright for Open Hardware

What this means in practice is that for the home inventor or hobbyist, the possibilities are great. With the barriers to manufacturing falling, the serious problem is that of design. And of course, as the history of free software has shown, that barrier can be brought down by cooperative groups of individuals.

=ZOOM=What this means in practice is that for the home inventor or hobbyist, the possibilities are great=

For technical designs such as cores for FPGA and ASIC chips, circuits, and even some printed circuit board designs. There are even whole board designs like the [Arduino](http://en.wikipedia.org/wiki/Arduino).

For creative design, at least, there is already an active community. Spoonflower, Shapeways, and Lulu all have systems for users who already share their designs through the system (in fact, they pay commissions to those users when you buy products based on their work).

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=


