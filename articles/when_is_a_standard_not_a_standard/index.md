---
nid: '2110'
title: 'When is a standard not a standard?'
authors: 'Edward Macnaghten'
published: '2007-03-03 4:58:48'
tags: 'microsoft,odf,ooxml,ecma,iso'
license: verbatim_only
section: opinions
listed: 'true'

---
I had a massive argument with my brother the other day over an IT issue close to my heart.  I had to be careful because he is a member of the Metropolitan Police, part of the Domestic Violence Policy Unit.  To clarify, his department is responsible for the policy of _policing_  domestic violence.

What he was saying was that he, and the entire metropolitan police force, use Microsoft Word, all the police departments and stations he deals with do as well, as do all organizations he needs to interact with outside the police including the name drop-able big-wig departments in the UK government.  He said they had "standardized" on Microsoft Office formats and did not see a problem with that, nor did he see my objections.


<!--break-->


The police are by no means the only ones.  My mother receives documents from theater organizations  in .doc and .xls formats, as do I from local organizations.  The local Cambridge and Cambridgeshire governments post documents on their web sites using them.  I understand how people can see it as a standard.

Except it is not.

These formats have never been submitted to a standards body, on the contrary Microsoft have done all they can to keep them closed.  The only reason why myself, my mother and others who do not use Microsoft Office can read them is due to the fact technicians spent hours in front of binary dumps of the files getting inside the head of the Microsoft developers and reverse engineering the specification:  a scenario that is hardly the basis of global interaction.


=ZOOM=Technicians reverse engineering binary dumps of Microsoft's closed formats is hardly the basis of global interaction=

All this is being replaced by new XML based formats.


# The Story so far

Open Document Format - or ODF -  now ISO/IEC 26300:2006 – was designed to be an open standard anyone could use for office document interchange based on recognized existing standards and conventions (1).  Microsoft refused to have anything to do with it, instead pushing their own new format - Office Open XML - or OOXML.

Microsoft initially placed restrictions on the use of their format.  When the Commonwealth of Massachusetts' IT Division would not entertain storing documents using a format with IP restrictions, and other governments and organizations were following that example, Microsoft opened the IP using Non Assertive Contracts (2).  Microsoft then submitted this format to ECMA for standard approval, however the format is not based on existing recognized standards, and it's main objections are to create an "XML"ization of their closed existing formats so that documents can be converted to these more than produce genuine interoperability with other programs(3).

Microsoft achieved ECMA accreditation, which is no surprise as one of ECMA's roles in this universe is to approve standards for submission to ISO for rapid adoption(4), and sure enough, OOXML was submitted to ISO for fast track approval.  However, this is when things started to go wrong for Microsoft.  People noticed that OOXML's standard was bogus.  National standards bodies were lobbied accordingly, and an unprecedented twenty members raised comments, fourteen were decidedly negative and only one supported it positively.

ECMA had a month to reply to the above contradictions and comments, so they duly submitted a report to the JTC1 on the 28th February 2007.


# OOXML Contradictions, objections, arguments, problems and comparisons to ODF

The object of a format standard is to facilitate and promote genuine interoperability and choice.  No standard can be one hundred percent perfect, the issues are too numerous for that.  After examining the technical issues I think that ODF has gone a long way to achieving this and that Microsoft's OOXML has not.  I would like to expand on some of OOXML's contradictions and problems, some possible counter arguments that exist for them and my personal problems with those.


## Objection 1 – OOXML duplicates and overlaps with ODF

It is pointless to have OOXML when ODF already exists as a standard for office document interoperability.

**Argument against #1 – No problems having multiple standards for the same thing**

Standards already exist that overlap, such as HTML, PDF/A and ODF for exchanging office documents, CGM and SVG for vector graphics, JPEG and PNG for image formats, RELAX NG and DTD for XML schema definitions and and TIFF/IT and PDF/X for publishable graphics.

**My problem with that**

The examples given are not relevant to OOXML's duplication of functionality with ODF.  To take each in turn:

HTML, PDF/A and ODF are used for very different purposes.  HTML to store marked up textual content, though not in any predefined format.  PDF/A to reproduce an unchangeable paper representation of a document, and ODF to interchange editable documents for later publication.  To say their collective use is for "exchanging office documents" is as crazy as saying a car, plane and ship are all similar because their use is to "get from A to B".


=ZOOM=To say that HTML, PDF/A and ODF are the same because their collective use is for "exchanging office documents" is as crazy as saying a car, plane and ship are all similar because their use is to "get from A to B"=

JPEG is used for storing and transmitting photographic type images, while PNG is more suited to logos and charts: they are designed for very different types of content.

The DTD standard was created in the 1980s.  RELAX NG in the 2000s.  DTD was becoming dated and could not handle the more complicated schema formats correctly so a new updated standard was needed.  Not by any means an ideal situation, but one that is irrelevant to OOXML and ODF.

The TIFF standard, although, did what it was designed to do which was to create a standard reliable format for pre-press data.  It (currently) simply handles transfers of bitmap data.  PDF/X is a more versatile format created later and addresses some shortcomings in TIFF, including image compression, late editing and others providing for data transfer in different scenarios.  Although these have similar functionality the difference with these is that they have nothing to do with maintaining compatibility with a specific vendor's product, as is the case of OOXML.

In conclusion, although multiple format standards for the same content exist, they are hardly desirable, and are rare.  Often they actually represent important differences in content, as in many of the examples given, and where this is not the case the reason is often that technology has moved on since the first standard was originally created, and that it is still kept for legacy reasons.  ODF caters for editable office document exchange in the modern world.  OOXML was submitted long after ODF's acceptance.  On that score it is superfluous.

**Counter argument #2: OOXML has a distinct purpose of storing existing Microsoft Office documents**

OOXML is different to ODF in that OOXML was designed with compatibility with existing Microsoft closed formats and ODF was designed for document interoperability.

There are many existing Microsoft Office documents in existence; a standard should exist that reproduces the precise formatting of these documents as originally written.  Those that require this include national library archives and mission critical scenarios.  Also persistence of this precise formatting is required when moving data to and from other platforms such as mobile and fixed computers.

**My problem with this**

This argument is incompatible with the real world: Microsoft Office document rendering varies between different versions of Microsoft Office, it also varies between the same version if different printers and/or fonts are installed, all making the above argument moot.

Editable document format interchange is never going to be precise in rendering as there are too many uncontrollable variables, and no standard can control all of them, nor do I believe any should.  There are other types of formats for precise rendering, such as PDF, mentioned above.  Documents that require exact duplication should use that rather than an editable document format.

Also, the point that OOXML's purpose is to represent the closed formats of a single vendor makes me wonder how that qualifies it for a standard in the first place.  Standards are for interoperability and choice; basing one solely on a single product is counter-productive.

**Counter argument #3: ODF and OOXML cannot be merged but canco-exist**

The fundamental differences between ODF and OOXML means they cannot be merged.  OOXML was designed to be compatible with Microsoft Office documents, and ODF was designed for document interchange, this as well as some "nitty gritty" differences makes merging them impossible.

However, translators can be written, are being written and have been written to convert from one format to the other, therefore co-existence is possible.  This means there is no contradiction between these two.

**My problem with this**

The two paragraphs above cancel each other out.  Having analyzed the two formats myself I agree that they cannot be merged, my point is that OOXML should not be a standard.  It is obvious to me that the best solution is to interchange and store the document using ODF and for the office application itself to "translate" it when loading and saving.


=ZOOM=Microsoft should interchange and store the document using ODF and for the office application itself to "translate" it when loading and saving it=


## Objection: OOXML contradicts existing standards including ODF

OOXML contradicts existing standards, in particular ODF (ISO/IEC 26300:2006),  Representation of Dates and Times ( ISO 8601:2004),  Codes for the representation of names of languages (ISO 639) and Computer Graphics Metafile (ISO/IEC 8632).

**Counter argument**

There is no formal definition of the word "contradiction" in a "Standard Format" scenario.  If two formats can co-exist on the same machine and there are translators that have been written to interchange the two formats then a contradiction cannot exist.

**My problem with that**

The point of a format standard is that data interchange of that type should use it.  The only exception to that would be if the world has moved on since the idea of standard's was conceived and it is inadequate.  The existing ISO standards involving dates and times, language codes and computer graphics can cope with all  the data of those types an office document program generates, and therefore should be used.  Not doing so is a contradiction involving those standards; it is as simple as that.

Also, if translators exist between OOXML and ODF then as ODF is an existing standard OOXML must contradict it.


## Objection: Thirty days is too short to review a document over six thousand pages long

The OOXML specification is over six thousand pages long.  Thirty days represents two hundred pages a day.  It is impossible to adequately review the document in that scenario.

**Counter arguments**


1. The term "contradiction" is not defined so it is adequate to simply consider an overview of the standard in relation to other standards.
1. The first draft of the OOXML standard was available in May 2006, seven months before the review period.  Comments and contribution have been welcome from anyone since then..
1. As part of the "fast track" proposal ECMA produced a fourteen page summary to facilitate understanding the OOXML standard.

**My problems with that**


1. It is near impossible to review a six thousand page document in thirty days regardless of what the definition of "contradiction" is.
1. To review a standard you need the correct draft.  It is pointless reviewing earlier ones as you do not know what may have changed.
1. To review a standard properly you need to read it, not just a fourteen page summary.


## Objection: OOXML has inconsistencies with existing ISO standards

OOXML uses means of storing and transferring data that is inconsistent with existing standards.  Namely Paper Sizes (ISO 216), Language Codes (ISO 639) and Color names (ISO/IEC 15445 (HTML)).

There is an issue with the representations of dates and times (ISO 8601).  This standard specifies the use of the Gregorian calendar, but OOXML treats 1900 as a leap year, which it was not, and cannot represent dates prior to 31 December 1899.  This is because OOXML spreadsheets (SpreadsheetML) represents all dates as a decimal number either from 31st December 1899 or 1st January 1904 depending on the "Date System" set rather than the format specified by the aforementioned standard.

ISO 8879 states that SGML tag names should be human readable and minimum emphasis placed on terseness, whereas OOXML not only uses short, abbreviated and also cryptic names it uses them in an inconsistent manner within itself, for instance, "scrgbClr". "algn", "dir" and "w" are not clear in meaning.

References are also made to "Enhanced Metafiles" and "Windows Metafiles".  These are some of Microsoft's closed formats and have no place in a supposedly open standard.  The Computer Graphics Metafile format (ISO 8632) should be used for that.

The OOXML standard is inconsistent within itself, as well as with recognized methods, of the representations of percentage values, which can be represented as a decimal integer - (Magnification Settings - 2.15.1.95), an enumeration of codes made up of a percentage integer prefixed with "pct" - (Shading Patterns - 2.18.85), as a code made up of an integer being the real percentage multiplied by 500 (Table Width Units - 2.18.97) and a real percentage multiplied by 1000 (Generic Percentage Unit - 5.1.12.41).  Which one depends what part of the OOXML specification is being dealt with.

**Counter arguments #1: OOXML Page Sizes**

Page Sizes: The ISO 216 page sizes are represented in OOXML, as well as others.  OOXML simply uses a number to represent each page size and what number represents which size is documented there.

**My problem with this**

XML is not meant to be cryptic.  If a page size is Letter, A4 or C4, then it makes sense for the attribute value to be "Letter", "A4" or "C4", not "1", "9" and "30".

**Counter arguments #2: OOXML Language Codes**

Language Codes: OOXML gives the implementer a choice.  Either the ISO 639/ISO 3166 combination can be used or a special two byte hexadecimal value as specified in the document.

**My problem with that**

If a standard is there, and it does the job, then it should be used.  Putting these "optional alternatives" in is pointless and only detracts from adoption.  The ISO 639 and 3166 codes should be used alone, the Microsoft specific hexadecimal codes should be dropped.

**Counter arguments #3: Color Names**

OOXML uses its own abbreviations for color modifications, "dk" for "dark", "lt" for "light" and "med" for "medium".  It also uses it's own description of colors such as "darkRed" (OOXML) for "maroon" (ISO 15445) and "darkCyan" (OOXML) for "teal" (ISO15445); these are more meaningful.

**My problem with this**

These OOXML specific names are only more meaningful in the opinion of its authors.  The purpose of standards is that if everyone uses them it will make the world a more meaningful place.  Unilaterally defining alternative and/or redefining the actual colours in a standard that is supposedly open is a contradiction.

Should the writers of Microsoft Office, or any other software authors, feel that "Dark Red" is more meaningful to their users than "Maroon" (for example) then there is nothing stopping them from calling it that in the application itself (though I would have thought inadvisable), it is just the standard (ISO 15445) should be adhered to in the interchangeable file.

**Counter argument #4: Dates and times**

There are legacy applications, such as Microsoft Excel and Lotus 123 that treat the year 1900 as a leap year.  The two methods of converting numbers to dates are to help cater for that.  The first (the number of days since 31st December 1899) is to cater for the legacy applications, the second (the number of days since 1904) gives a more accurate representation for newer applications.  Although the range of dates supported for OOXML (12-December-1899 or 1-January-1904 to 21-December 1999) is not as big as the range for ISO 8601 it should suffice.

**My problems with this**

What a mess!  There is no call nor need to support specific legacy applications that way.  This is supposed to be a format for document interchange.  Old unmodified legacy instances of Lotus 123 and Microsoft Excel will not be able to read it anyway.  Catering to them in this way is pointless.


=ZOOM=There is no call nor need to support specific legacy applications in an open document standard by incorrectly making 1900 a leap year=

It would be a lot simpler just to specify the dates as ISO 8601 – for example: 28th February 2007 can be represented as "2007-02-28".  No silly numbers from an arbitrary date, nice and simple.  It should be up to the application to parse it and convert it to an internalnumber.

**Counter argument #5: terse tag names**

Other SGML standards have terse tag names.  For instance, the HTML standard has tag names such as "<P>", "<HR>", "<TR>", "<TD>" and so on.  OOXML is a specification for a technical markup language and it is not unreasonable to expect direct manipulation and implementation to be done with a reference manual.

**My problem with this**

OOXML is supposed to be a standard for document interchange that uses XML.  One of the advantages of XML is that descriptive tag and attribute names can be used: this makes understanding and implementation of the standard easier.  Using short and/or inconsistent abbreviations is not applicable to an open standard.

As for comparing it to the HTML standard, there are two points to note.  Firstly, that HTML was created and deployed before XML standards really matured.  The standard that then ensued was thus not to the quality as perhaps it should be.  Second is that the old version of HTML had about thirty tags or so making it relatively easy to remember them all despite their cryptic nature, whereas OOXML has several hundred making the sane naming of tags all the more important.

**Counter arguments #6: Inclusion of closed Enhanced and WindowsMetafiles**

This is mentioned on two occasions: the first - "Embedded Object Alternate Image Request Types"(6.2.3.17) the OOXML format mentions these formats in enumeration lists, any formats can be included.  The specification does not limit embedded graphic types to those formats.  The second - "Clipboard Format types" (6.4.3.1) – simply specifies suggested action taken by the application in certain circumstances and again does not limit the document's embedded graphic format types.

**My problem with this**

The enumeration list mentioned on the first instance (6.2.3.17 ) includes: Bitmaps, Enhanced Meta Files (EMF) and (any other) Picture format.  The question I have is why single out Bitmaps and EMFs?  This looks like they are trying to cater to specific applications, which is not the point of a standard.  The treatment of those types should be the same for "Any other picture format" and the attribute should be dropped.

The second instance should not be specified in an open document standard at all.  The precise behavior of a particular application for particular (closed) formats is unique to it and not really transferable.  Document standards are for interoperability of the documents itself, not a determination of how any particular application behaves: should this be needed for Microsoft Office then it should be stored in a more generic, application defined, "config" type field that does not infringe on other applications.


=ZOOM=Microsoft should store their unique quirks in a generic "config"tag or similar rather than on the main name-space=

**Counter arguments #7: Percentage inconsistencies**

Where the percentages are actual values they have been converted to integers to allow for efficient parsing.  Fractions of a percentage are catered for by multiplying the actual percent by a number.

For the Shading Pattern (2.18.85) the enumerated code represents specific patterns where a value that can be used in calculations is irrelevant.

**My problem with this**

Computers can be used for calculations.  They are good at that.  The overhead for converting a percentage value of "27.32" into an internal integer value of "27320" is trivial.  So much so that compared to the processing resource used and time spent by the computer retrieving the document data from a disk, memory card or network the overhead of that calculation would be unnoticeable.

The fact that sometimes OOXML specifies the percentage should be multiplied by 500 in some circumstances, and 1000 in others I feel is simply the icing on the cake of contradictions.

I admit that I can in fact find no ISO standard that specifies that percentages should be represented as a number whose range of 0 to 100 represents none to all; I think the reason for this is because the whole population of the world from infant school students to retirement home residents from Indiana to India use percentages that way: that is everyone and everything except OOXML.  I do not see why percentages should not be represented as, well, percentages.

I can see why the "Shading Pattern Codes" (2.18.85) should be a name rather than a value.  However, should a more descriptive code be required in that circumstance then it should be something like "shadingPercent10" rather than "pct10" to keep it consistent with the other names of shading patterns.


## Objection: references to undocumented behavior in closed Microsoftproducts

There are a number of tags in OOXML that are references to undocumented behavior in closed proprietary products, notably previous versions of Microsoft Office.  These include "footnoteLayoutLikeWW8" (Emulate Word 6.x/95/97 Footnote Placement – 2.15.3.26)  and useWord2002TableStyleRules (Emulate Word 2002 Table Style Rules -2.15.3.63).

These reference closed proprietary products, and the behavior of some cannot be imitated unless the product is somehow obtained, and some of these products are no longer sold or supported by the vendor (notably the "footnoteLayoutLikeWW8" tag).

**Counter argument**

These are relatively few when compared to the large number of fully documented tags in OOXML, also it is not necessary for the implementor of the standard to cater for these.  They are settings specific to those applications so those applications can behave in a consistent manner between saving and loading.

It is worth noting that ODF and OpenOffice.org has a similar, though undocumented, case in ISO 26300, namely the use of the "config:config-item" tag and the "config:name" attribute value for what is set.  Notable examples are when OpenOffice.org sets the attribute value to "AddParaTableSpacingAtStart" or "UseFormerLineSpacing", or when KOffice set this to "underlinelink" or "displayfieldcode".

**My problem with this**

On the face of that argument it sounds like a school child's lament of "Well they did it over there so why shout at me for doing it here".  However the reality is different: no open office document standard can be perfect and cater for every application's quirk and scenario, but these applications need to store their own unique meta information and sometimes unspecified peculiarities for consistency between sessions.

To this end, OOXML have chosen to select few applications – namely the ones in Microsoft Office and some WordPerfect formatting which Microsoft supports, place the features in the main name-space specification and then ignore all other applications.

ODF on the other hand provides a mechanism for any application to add their unique quirks without breaking the standard.  It does these by placing the "quirk" in a "config" attribute value defined by the application, not a name, and placing the setting in the body of thattag.

In both the above it is important to remember that an open office document standard cannot, nor should not, reproduce the rendered document exactly.  It is impossible because not only do documents render differently between versions of the application but between the same version running on separate machines of the same operating system.  This is just as true for the Microsoft Office programs as it is for anyone else's: to duplicate rendered documents standards such as PDF should be used.

In short, OOXML's method of dealing with the problem in effect locks out all applications that are not Microsoft Office, whereas ODF's method keeps the standard vendor neutral and usable by any office suite.


=ZOOM=OOXML's method of dealing with the problem in effect locks out all applications that are not Microsoft Office, whereas ODF's method keeps the standard vendor neutral and usable by any officesuite=


# A misconception about ODF and OOXML

There is a misconception about ODF and OOXML in existence which was highlighted in an [e-mail interview](http://blogs.zdnet.com/microsoft/?p=290#more-290) between Mary Jo Foley of ZDNet and Tom Robertson of Microsoft.  In it Tom Robertson wrote:


>The discussions around Open XML and ODF are a proxy for product competition in the marketplace. Ultimately, this attention and focus on the needs of those who use office productivity software is a good thing for all concerned, but the attention being paid relates back to the commercial opportunities for MS Office, IBM's Workplace (Open Client), and OpenOffice commercial offerings from Sun and others. For us, the move to an XML-based file format is an important aspect of Office 2007.

I will not comment if I think he was intentionally lying when he wrote "The discussions around Open XML and ODF are a proxy for product competition in the marketplace".  Certainly this is not true.  The purpose of an open format is about about choice and interchangeability.  There is nothing stopping Microsoft from placing an ODF file "save" and "open" facility in their Office suite(5).  They have many other formats so why not ODF?  They claim they have translators between the two formats so therefore there cannot be any technical difficulties: any quirks of Microsoft Office can be placed in the "config" tag mentioned above.  After all, OpenOffice can open Microsoft .doc, .xls and .ppt files and save them as ODF with reasonable reliability and reverse the process, and it is not as though Microsoft do not have the resources to do the same in their product.


# Conclusion

Going back to my argument with my brother.  Microsoft have a large section of the market sewn up and the standard method of transferring documents there is by using their closed office formats.  I believe they enjoy that position, and despite noises from their PR department, they would like to keep control of the document interchange format by whatever means possible in order to keep their monopolistic lead in the market place.

I do not believe Microsoft are really interested in open standards, but just paying lip service to them.  The history of the OOXML and ODF "discussions" supports this theory.  OOXML is not as open as it's name applies: it ignores existing standards and it only fully caters for Microsoft Office programs making it near impossible for a competing product to use.  By Microsoft's own admission it is simply an "XMLization" of existing closed .doc, .xls and .ppt formats.  It should not be adopted by ISO, and certainly not "fast tracked".

ODF is genuinely open.  There is no reason why Microsoft cannot use it.  Adoption of ODF will benefit everyone who is not trying to maintain a near monopoly in the Office Production Suite domain.

One thing my brother perhaps should ponder considering his profession: improperly maintaining monopolistic practices and situations are usually considered illegal.


#  Notes

Note 1: Form the OASIS document _Open by Design_ - [http://www.oasis-open.org/committees/download.php/21450/oasis_odf_advantages_10dec2006.pdf](http://www.oasis-open.org/committees/download.php/21450/oasis_odf_advantages_10dec2006.pdf): "The OpenDocument Format was designed to be vendor neutral and implementation agnostic. It was designed to be used by as many applications as possible. In order to simplify transformations and to maximize interoperability, the format reuses established standards such as XHTML, SVG, XSL, SMIL, XLink, XForms, MathML, and Dublin Core."

Note 2: Precise history is documented at [http://www.groklaw.net/staticpages/index.php?page=20051216153153504](http://www.groklaw.net/staticpages/index.php?page=20051216153153504).

Note 3: IN Microsoft's open letter "Interoperability, Choice and Open XML" found at [http://www.microsoft.com/interop/letters/choice.mspx](http://www.microsoft.com/interop/letters/choice.mspx) it states: "OpenXML was designed from the start to be capable of faithfully representing the pre-existing corpus of word-processing documents, presentations, and spreadsheets that are encoded in binary formats defined by Microsoft Corporation".

Note 4: From ECMA'a web site - [http://http://www.ecma-international.org/](http://www.ecma-international.org/):

"Ecma is the inventor and main practitioner of the concept of "fast tracking" of specifications drafted in international standards format through the process in Global Standards Bodies like the ISO."

Note 5: From the ZDNet interview mentioned in the article Tom Robertson wrote "Office 2007 enables people to choose from many formats, and now the Open XML Translator has enabled read and write capabilities for ODF as well".

