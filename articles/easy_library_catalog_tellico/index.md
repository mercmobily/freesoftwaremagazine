---
nid: '3130'
title: 'An easy library catalog with Tellico'
authors: 'Terry Hancock'
published: '2009-04-01 8:13:49'
tags: 'books,catalog,tellico,isbn,barcode'
license: verbatim_only
section: end_users
listed: 'true'

---
Setting up an electronic "card catalog" for my books always seemed like a lot of work, so I hadn't really attempted it before; lately, I happened across a KDE program called Tellico that made it so easy and fun that I completed my inventory in under a week. Plus, I finally found a use for that "CueCat" scanner I've had collecting dust for the last several years!

<!--break-->

Over the years, I've accumulated a lot of books. Somewhere around a thousand, finding the book you're looking for starts to become a problem, even if you are intimately familiar with your books. Once upon a time, long long ago when I was much younger, had a lot more free time on my hands (and fewer books), I made my own paper catalog system. I even invented my own cataloging system, because, well, that was the sort of thing I did. A few of my books still have the old labels I put on their spines with cellophane tape and typing paper. But for the most part, that era is gone and forgotten. I don't even remember what the numbers meant any more.

=IMAGE=fig_old_paperbacks.jpg=Old paperbacks were among the more challenging things to find, as some of them date back to before the ISBN system was invented. Also quite a few of mine are badly worn and the numbers can be hard to read=

I do remember it was nice to be able to locate a book when I wanted to, though.

Recently, I stumbled across a free software program called "[Tellico](http://periapsis.org/tellico/)" (written by Robby Stephenson) while looking for something else, and the description intrigued me. The author calls it a "collections manager", since it can be used to catalog any sort of collection (books are the default and templates are provided for other common media like videos and music, but as the fields can be changed to suit your needs, you could use it for anything you want).

I decided to give the program a try, which was as easy as typing "`apt-get install tellico`" in a root window on my computer, since the program is in the main Debian distribution. At first, it seemed like the expected laborious process, entering lots of data fields by typing into forms. But what makes collection management with a program like Tellico really feasible is the automatic data capture from popular internet sources like Amazon, The Library of Congress, or The Internet Movie Database.

Such resources have been growing over the years, and the coverage of the Amazon database alone is mind-boggling. Although I have managed to find books that aren't listed, I've been very surprised at some of the ones that are—including a number of books from the 1970s and earlier, long before that database ever existed. Obviously Amazon did not sell those books new, but they are also in the used-book business these days, and so they continue to accumulate an enormous database of product information for them. One side benefit of that is that it's an easy way to look up the information on a book you own a copy of.

Tellico makes that extremely easy to do. All you really have to do is type in the ISBN (International Standard Book Number) for the book, and let Tellico look the data up in the Amazon database and show it to you. If it looks plausible, then you can add it to your own database with a couple of mouse clicks.

If you have a barcode scanner, you can even skip the typing for quite a few books. As it happens, I ordered a "declawed" [CueCat](http://en.wikipedia.org/wiki/CueCat) barcode scanner from an electronics supplier as a curiosity some years ago. These CueCats had been hacked to disconnect the circuitry that spews out a serial number and other stuff at the beginning of each report, so it only reports exactly what it reads. This being the case, there is no need for a driver or anything. You just plug it into an available USB port, and the numbers come through exactly as if you'd typed them from your keyboard.

=IMAGE=fig_cuecat_scanner.jpg=I finally found a use for my barcode scanner. Until I started this project it had been gathering dust in a drawer. It's a nice little product, though—more than adequate for my needs=

However, even if you're not so lucky as to have a hacked version (or the knowledge of how to alter it yourself), there are a number of free software CueCat driver packages available for download. I imagine there are also other barcode scanners out there, if you can't find a CueCat (they are no longer made, but there were so many dumped on the market that there's still a good chance of finding a used one even now in 2009).

# Using Tellico

In my Debian GNU/Linux "Lenny" installation, Tellico appears in the "Office" applications in KDE (you'll need to install it using the usual method for your distribution). When you open it for the first time, it will automatically start a catalog document called "My Books", which is of course based on the "Books" template. If you want to create a different sort of collection, or later on, start a separate collection of the same type, you can do this with the `File→New` selection from the menu. Note that the program's options all regard the _catalog_ as the "document", so "Save", "Save As...", and so on all refer to operations on individual collection catalogs, which are stored in a Tellico-specific binary file format with the ending "`.tc`" (there are various export options if you need to get the data into a more "transparent" format for use with other programs).

=IMAGE=tellico_sc-plone.jpg=Tellico, displaying a book entry=

There is also an "Open Recent" option which allows you to easily switch between catalogs. Given the desirability of keeping your catalog systems unified, it's unlikely that you will need more than a tiny few `.tc` files to do all of your cataloging, so the ones you need will stay "recent". I currently use this to switch between my "Video" and my "Books" catalogs (I could probably try to unify these further into a single collection, but this way I can use separate pre-configured templates which are optimized for their tasks).

Conceptually, the simplest way to add a book or other item to your collection is to select `Collection→New Entry...`. This will open a tabbed dialog box which allows you to enter "title", "author" and other fields for the book. Of course, doing your entire collection this way would be very tedious!

# Searching and scanning

One of the defining characteristics of our industrial mass-production world is that we mostly all own things that are owned by thousands of other people, sold by thousands of other people, and therefore digitally catalogued by thousands of other people. Due to internet commerce, some of those catalogs are available online. Others may want to wax on about the philosophical, economic, and sociological implications of this, but for the present task it happens to be very convenient.

=IMAGE=tellico_sc-multiple_isbns.jpg=The multiple ISBN/UPC search box allows you to enter a lot of ISBNs at a time for more efficient searching=

So why repeat effort? Instead of tediously re-entering data that many people before you have, you should be able to simply tap into their databases with an appropriate key and grab the info you need. It is automating this step that makes using a program like Tellico genuinely fun, instead of a chore.

If you select `Edit→Internet Search...`, you will get a search dialog which will allow you to look your book's information up in various online sources, notably Amazon. You can select several different fields to search. The most useful are probably "ISBN" and "UPC/EAN", because these are meant to be _unique_ keys for particular editions of books, and will generally lead you right to the correct entry.

In fact it's so reliable, that for ISBN and UPC/EAN searches, there is a "Multiple ISBN/UPC" search option which will open a dialog with a multi-line text box to capture a list of numbers, one on each line, to be searched. This makes it really easy to use a barcode scanner to enter your books, since the scanner will output the number followed by a newline after each read, just as if you were typing in the numbers.

### The world is number

The most common search key that we use for books is something called the "[International Standard Book Number](http://en.wikipedia.org/wiki/ISBN)" (ISBN), an artifact of our digital society that has a long and fascinating history. An ISBN is a sort of precursor to the [URL](http://en.wikipedia.org/wiki/URL) (or [URI](http://en.wikipedia.org/wiki/Uniform_Resource_Identifier)): a unique form of identification for a particular edition of a particular book. If you never noticed these numbers before, don't be embarrassed—probably very few people other than publishers actually _pay attention_ to ISBNs, even though nearly every one of us has _used_ them.

=IMAGE=fig_10key_pad.jpg=Typing in ISBN and UPC/EAN numbers will give your ten-key skills a workout=

It originated in the United Kingdom as the "Standard Book Number" (SBN), provided as a catalog service to publishers, and has gone through a number of incarnations, most recently (in 2007) being absorbed, along with "[Universal Product Codes](http://en.wikipedia.org/wiki/Universal_Product_Code)" (UPC), into the now much more universal 13-digit "[European Article Number](http://en.wikipedia.org/wiki/European_Article_Number)" (EAN) system, which nowadays is invariably printing in barcode form on books (and just about everything else you buy as well).

At present, all of these numbers are likely to turn up in a personal library: SBN, ISBN, UPC, and/or EAN. Somewhere on most of your books (or at least most of the ones printed in the last 50 years or so, at least one of these numbers probably appears. Failing that, and also for books roughly 50-100 years old (yes I have some of those), you can also often find a "[Library of Congress Classification Number](http://en.wikipedia.org/wiki/Library_of_Congress_Classification)" (LCCN). The Library of Congress is, of course, a US government institution, but even many UK or European books would carry this number since they might be sold in the US.

=IMAGE=tellico_sc-multi_entry-karekano-2.jpg=After entering a bunch of ISBNs, you'll get results which you can select and add to the collection database=

For books older than 100 years, you're probably out-of-luck and will just have to type the data in. But of course, if you've kept a book that old, it's probably because it's really valuable, and thus _worth_ the trouble, right?

In fact, there is a kind of inverse relationship between the value of books and the likelihood of them having good, clear, well-documented numbers and barcodes. This is not so much Murphy's Law as it is a selection effect: after all if your book isn't really, really valuable to people, you need to make it really, really easy to stock and to buy, right? Hence barcodes were adopted early for things like cheap children's books. Even my daughter's plastic "Bob the Builder" bath book has an ISBN. But, some of my technical books don't. This may seem ironic, but it's actually very convenient, because it means you'll be spending the extra time with the books you really care about, while the trivial ones are trivial to catalog. This encourages completeness, so I guess it's a good thing.

### The shadow realm of barcodes

Even typing one number in for each book, though, can still be tedious when you are looking at a big pile of books (more so if you suffer from Carpal Tunnel Syndrome, which sadly, I do—it's an occupational hazard for writers and programmers alike). And that's where a barcode scanner, even a really cheap one like the CueCat, can come in handy.

=IMAGE=fig_barcode.jpg=A typical barcode=

Barcode readers, of course, work by tracking alternating light and dark bands which cause the field of view of a photodiode to flicker as the pattern is passed across the device, illuminated by a light-emitting diode (LED). I will have to admit that I do not understand the process much better than that (I still find it remarkable that this works as well as it does). As far as I can tell, the technology in a simple, no-moving-parts barcode scanner is remarkably similar to the technology in a modern "optical mouse" (I suspect the latter was derived from the former).

Also, for the record, there are also scanners which actually _scan_ a laser across the code. You've probably used one of these in the supermarket, and they are a lot more reliable. The scanning system in the CueCat relies on you to scan the sensor across the barcode smoothly and rapidly so that the pattern can be read. This takes some practice and can be tricky. Often there seems to be no correlation between _your_ ability to see a barcode clearly and the _scanner's_ ability to do so. In my brief experience with the device, I've noticed some trends in what causes "hard read" barcodes: highly-glossy reflective surfaces, intervening plastic covers, left-over glue from stickers placed over the barcode (a frustratingly common practice!), and of course barcodes printed in odd colors, particularly reds and pinks. The last one is undoubtedly due to the _red_ LED illuminating the pattern—obviously red-on-white bars will tend to disappear in monochromatic red lighting. I think the glue problem stems not from obstruction of the view, but from creating an uneven texture which interferes with getting a good, constant-velocity pass over the code.


Most older barcodes will _NOT_ contain the ISBN number, by the way. This can be somewhat frustrating. Instead, they are usually the UPC or EAN number.

### Avoid the ISBN parsing 'gotcha'

The single most annoying feature of the otherwise beautifully simple Tellico program, is the ambiguity surrounding the parsing of ISBN and UPC/EAN numbers, especially when using the multiple-entry feature. The problem is that there are basically two different ways to handle the numbers you put in, and there is not really a clear rule about which is best:

* Direct searching UPC/EAN database
* Converting to ISBN and searching for that

When the search field selected is "ISBN", the second method will be used: the numbers you type in should be ISBN numbers. If they are scanned EAN numbers, the program will convert them to ISBN and then search. Even if this conversion is successful, though, the program will still report the first number as a failed search (apparently it fails, then the altered number is attempted, so this message is technically correct, though somewhat misleading). In any case, the numbers you enter will be lost as the program will validate and convert the input to ISBN format, even if the numbers aren't actually ISBN numbers.

=IMAGE=tellico_sc-bogus_notfound.jpg=Even if an EAN number can be converted to an ISBN and is found, you will still get a somewhat misleading "not-found" message=

In order to _actually_ search for UPC/EAN numbers from the source database, you must be _certain_ you have UPC/EAN selected before opening the multiple entry dialog. It's very easy to screw this up, and you can't just back up and correct your mistake, because the original numbers you typed in get replaced with the validated numbers.

=IMAGE=tellico_sc-checkout.jpg=Feel like turning your collection into a lending library? Tellico will also help you track the checkouts and checkins=

For brand-new books, the UPC/EAN _is_ an ISBN number—it's the new ISBN-13 number, to be exact. For older books, the two numbers are different, and for very old, out-of-print books, the UPC/EAN may have been _retired_ (it is not as unique as the ISBN) resulting in false matches.

=IMAGE=tellico_sc-group_summary.jpg=Tellico can also generate statistical reports about your collection=

# The benefits of a catalog

Once you've collected data from all of your books (or other collectibles), either by direct-entry or by search, you'll be able to use the catalog to help keep things organized. Tellico can search and group your items by any of the fields you provide. You can use this for simple author and title searches, or you can do more subtle things by adding your own fields or classifications or making use of fields such as "series".

=IMAGE=tellico_sc-takaya_natsuki.jpg=Tellico allows you to look up entries on the basis of fields, such as "Author" as shown here=

Tellico can also give you statistical information on your collection and help you keep track of works you've loaned out (just in case you want to turn your collection into a lending library). Using general fields capabilities, you could even assign classification numbers or shelving locations to help with finding the items in your collection.

It's not quite a professional library catalog system, but for my modest-sized home library, Tellico made a wonderfully easy and fun choice for cataloging.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=
