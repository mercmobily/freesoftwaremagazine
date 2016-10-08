---
nid: '1633'
title: 'Was BRL-CAD the tool I was looking for?'
authors: 'Terry Hancock'
published: '2006-06-28 3:00:00'
tags: 'brl-cad,cad'
license: verbatim_only
section: hacking
listed: 'true'

---
It seems like it’s been almost half a year since I wrote [TFME4: Tools of the Trade](http://www.freesoftwaremagazine.com/articles/free_matter_economy_4) in which I explored the serious options for 3D CAD on GNU/Linux, and didn’t think we had much. I advocated building something on top of [Blender](http://www.blender.org), which may still be a decent idea.

But I’m starting to think I gave really short shrift to the US Army Research Lab’s [BRL-CAD](http://www.brlcad.org), which has recently released a new version (7.8.0) with support for Windows and a number of user interface and modeling tool improvements.


<!--break-->


BRL-CAD’s design is based on the idea of “Constructive Solid Geometry” (CSG), a CAD representation model which has become less stylish in recent years. The more popular system these days is called “Boundary Representation” (BREP) which is what you see in Blender, for example. This is at least partly because BRL-CAD traces its origins back to 1979 at the US Army Research Laboratory. The program has been under continuous development during all that time, although it was only a few years ago that it was released under a free license.


=IMAGE=brlcad_ss2.jpg=BRL-CAD is a CSG-based CAD system developed by the US Army Research Lab. (Original caption: “Stryker ICV w/ Slat Armor rendered with ADRT/RISE”)=

Given these facts, I was quick to dismiss BRL-CAD as incapable of representing a large amount of modern CAD data, and therefore somewhat questionable as a common interchange tool. However, the notes in the [BRL-CAD Overview](http://www.brlcad.org/overview.html) make a pretty strong case for why I should love CSG (and I have to admit that CSG seems more intuitive to me):


>**Why CSG Modeling?**. Although BRL-CAD has been used for a wide variety of engineering and graphics applications, the package’s primary purpose continues to be the support of (1) ballistic and (2) electromagnetic analyses. Accordingly, developers have found CSG modeling to be the best approach in terms of model accuracy, storage efficiency, precision, and speed of computational analysis. . While polygonal and boundary representation (B-rep) modeling often focuses on just the surfaces of objects, CSG modeling focuses on the entire volume and content of objects. This gives BRL-CAD the capability to be “more than skin deep” and build objects with real-world materials, densities, and thicknesses so that analysts can study physical phenomena such as ballistic penetration and thermal, radiative, neutron, and other types of transport.. 

Wow. I hadn’t thought of that, but it’s obviously true. If you want to model the solid body properties of a system, then you need a model that defines the interior composition. As a system for space development (the main focus of my [TFME series](http://www.freesoftwaremagazine.com/search/node/%22Towards+a+Free+Matter+Economy%22)), I’m starting to think I should’ve written a more in-depth analysis of how to use BRL-CAD, and I suppose I will have to do that now.


=IMAGE=brlcad_ss.jpg=BRL-CAD’s MGED is the main tool for modelling. CSG, because it models the interior of objects, is good for simulation models involving electromagnetic or other mass properties of materials.=


=IMAGE=brlcad_pdp11780.jpg=BRL-CAD has definitely been around for awhile! (Original caption: “Mike Muuss working with BRL-CAD on the PDP-11/70”)=

BRL-CAD 7.8.0 is available as a source distribution from Sourceforge, along with pre-compiled binaries for Linux, BSD, Solaris, Irix, OS X, and Windows. I’m downloading a binary now to try out—maybe I’ll actually write a review after I’ve had a chance to play with it. I haven’t fully figured out if this was the tool I was looking for all along, but I am starting to wonder. I’d love to hear from anyone advocating BREP as to whether CSG is really a problem, as well as on the subject of integrating BRL-CAD models with other types of CAD and 3D models ([Nurbana](http://sourceforge.net/projects/nurbana) looks like an interesting lead, though there isn’t much written about it).

