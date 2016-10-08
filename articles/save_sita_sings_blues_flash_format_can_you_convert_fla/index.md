---
nid: '3271'
title: 'Save "Sita Sings the Blues" from the Flash format: can you convert FLA?'
authors: 'Terry Hancock'
published: '2010-01-29 13:03:10'
tags: 'flash,file-formats,free-content,open-movie,sita-sings-the-blues'
license: verbatim_only
section: opinions
listed: 'true'

---
<!--Save "Sita Sings the Blues" from the Flash format: can you convert FLA?-->

Nina Paley's "Sita Sings the Blues" is becoming a huge critical success, and may even succeed financially, which is unusual for any independent film, but virtually unprecedented for free culture films ("Sita" was released under the CC By-SA). There's only one sad thing about this for free software fans, and that's that "Sita" was made using proprietary software, and the "source code" is in a proprietary format: Adobe Flash's "FLA" format, to be precise. Paley has posted these files on the Internet Archive, but she doesn't know how to translate them into any free software friendly format (and neither do I). Can _you_ help?

<!--break-->

Like Sita trapped by the evil Ravana, the source data for "Sita Sings the Blues" is trapped in a proprietary file format which makes it very hard for derivatives to be made using free software tools. Want to help rescue it?

=IMAGE=sita_rakshasha.jpg=Can you help rescue Sita from the evil proprietary prison of Flash format? (Image: Nina Paley / CC By-SA 3.0)=

There's no question that Flash is the leading tool for free culture animators at this time. I wish I could say it was [Synfig](http://www.synfig.org) or [KToon](http://ktoon.toonka.com) or some other free software tool, but it isn't. ["Sita Sings the Blues"](http://www.sitasingstheblues.com) is only the most visible case.

It would be extremely beneficial if there were a way to migrate such animations from their existing proprietary homes into free software friendly formats so that they can be extended upon and derived from as their authors hope they will be. Doing this would likely increase the number of animators using the free tools, as they would have a way to migrate their previous work to the new platform.

=ZOOM=Animation standards are not very standard, as it turns out=

This is not such an easy task, though, as I discovered when I went looking for tools to convert the data. Animation standards are not very, well, _standard_, as it turns out -- much like desktop publishing standards 20 years ago.

It would be nice to be able to flat-out convert an FLA file to a SIF (Synfig Animation) file, but just being able to extract the animation cels from an FLA in SVG format would be a huge step forward.

# What is FLA format?

"FLA" stands for "FLash Animation". It is the "source" format for animators using the Flash animation application to create their animations. It is, however, apparently a proprietary, binary file format.

According to the Wikipedia [Adobe Flash](http://en.wikipedia.org/wiki/Adobe_Flash) page:

> .fla files contain source material for the Flash application. Flash authoring software can edit FLA files and compile them into .swf files. The Flash source file format is currently a binary file format based on the Microsoft compound file format.

Naturally, you'd want to know what the "Microsoft compound file format", this appears to refer to [Microsoft CFBF](http://en.wikipedia.org/wiki/Compound_File_Binary_Format):

> Compound File Binary Format (CFBF), also called Compound File for short, is a file format for storing numerous files and streams within a single file on a disk. CFBF is developed by Microsoft and is an implementation of Microsoft COM Structured Storage.

Yes, at this point my eyes are beginning to glaze over. Hopefully there are hardier folks among my readers, because the plot thickens: [COM Structured Storage](http://en.wikipedia.org/wiki/COM_Structured_Storage).

Presumably, the contents of this compound file are vector representations of the "cels" or individual frame drawings for the animation, additional metadata or timing information, and sound files. It's probably quite complex.

# Leads for conversion tools

I couldn't find any free software application or library that was intended to access FLA files to extract resources from them. Ironically, there was _much_ more information about how to extract SVG data from "SWF" -- the "compiled" format from Flash (I presume this is because you need this to be able to write viewers for Flash animations).

Here's what I found though, as a quick start for anyone interested in researching this problem:

* Description of [SWF-to-SVG process](http://www.eprg.org/research/SVG/flash2svg/swfsvganim.php)
* A web service to convert SWF to SVG: [Convert Flash into SVG](http://www.eprg.org/~sgp/swf2svg.html)
* A package for extracting SVG from SWF: [Flash Exploit](http://swf2svg.3d2toy.com/)
* A library for doing a number things with SWF: [SWFTOOLS](http://www.swftools.org/)
* Converting SVG into Synfig Animation Format: [Svg2Synfig](http://www.synfig.org/Svg2synfig)
* The [GPL Flash Library](http://www.swift-tools.net/Flash/) is produced by [Swift Tools](http://www.swift-tools.net/), who presumably would know more about this.
* Two GPL libraries for processing Microsoft COM formats: [GSF](http://projects.gnome.org/libgsf/) and [pole](http://pole.berlios.de/).


# Toolchain, library, application, or service?

It's not clear to me which is the right strategy for approaching this problem. One could use Flash itself to generate SWF files, then use one of the above tools to convert the SWF to SVG format. This would presumably lose some information compared to accessing the FLA directly -- but the tools do seem to be better developed.

=ZOOM=If you know more about how to solve this problem, please leave a comment below=

On the other hand, one might start by writing a compound format reader and exploring what the contents of an FLA file are.

And of course, it's also possible that the solution is already out there, and I just haven't been able to locate it.

This is where _you_ come in. If you're reading this, and you know some more about how to solve this problem -- _please_ leave a comment below and some sort of lead that could be used to find out more.

For a set of FLA files which need converting, check out the ones for [Sita Sings the Blues Files](http://www.archive.org/details/Sita_Sings_the_Blues_Files), which are free-licensed ([Creative Commons Attribution-ShareAlike 3.0](http://creativecommons.org/licenses/by-sa/3.0/us)).
