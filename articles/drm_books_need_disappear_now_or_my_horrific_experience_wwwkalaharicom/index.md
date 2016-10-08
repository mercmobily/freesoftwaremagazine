---
nid: '3761'
title: 'DRM books need to disappear. NOW. (Or, my horrific experience with www.kalahari.com)'
authors: 'Tony Mobily'
published: '2012-05-17 13:00:32'
tags: 'crack,drm,epub,adobe'
license: verbatim_only
section: end_users
main_image: main.jpg
listed: 'true'

---
DRM turned a 10 minute purchase into a 2 and a half nightmare (and counting). I wanted to buy a book: I ended up in a journey which made it dead clear that in a sane world, there is absolutely no space for DRM-protected contents. The only real warning I have about this article is that it may make you feel sick.

<!--break-->

**UPDATE**: I received an email from support later that day, following my phone call, which read:

> Good Day Tony After testing your ebook, your Adobe ID “XXXX@mobily1.com”  is an invalid ID. The error message below is received when you download an eBook with another Adobe ID or you have not created an Adobe ID before you downloaded the eBook. “The book has already been fulfilled by another user.” If you have another Adobe ID, please do forward those details to us whereby we may attempt to download your book again. Please do reply at your earliest convenience.

My reply was:

> The ID I used was "XXXXX@gmail.com". My ID with *your* website is XXX@mobily1.com. My Adobe id is XXXXX@gmail.com. I am not sure what the ID has anything to do with this. I managed to download the book using my mother's computer, but that's *hardly* useful to me. I would like to get it on my tablet.  So let me explain it again: 1) In your application, I am logged in as XXXXX@gmail.com in Adobe, and XXXXX@mobily1.com in Kalahari.com. So, saying that I don't have a valid ID is incorrect. See screenshot attached. 2) The error happened when I first bought the book, BEFORE I managed to download the book with my mother's computer. So, it CANNOT have already been fulfilled. 3) The error I am getting is *after* all this, and it is "Your book could not be fulfilled" after "Contacting publisher" when I try to download it. Please tell me what to do to actually place the book I bought on my tablet.

Yesterday, all day, I didn't receive a response from them.

**END OF UPDATE**

My wife is pregnant. This is a wonderful experience, and -- as a person who practices Yoga daily -- I decided to get a book for her: Teach Yourself Yoga for Pregnancy by Uma Dinsmore Tulli. I wish I could tell you how this book was. I ought to, especially since I paid for it. Unfortunately, I wasn't so lucky.

# The purchase and the surprise

The purchase went fine, like any other purchase of any other item: you pick, chose how to pay, pay... and (as with electronic items) the order is fulfilled instantaneously. Everybody's happy!
I ordered it from [Kalahari](www.kalahari.com), which was the only online seller who sold the item as an ebook (I have absolutely no desire to kill trees for any reason). I obviously recommend _against_ ever shopping there.
After fulfilling the order, I ended up to this screen:

=IMG_CLEAR=order.png=The order screen=

And that's where the odyssey began. I clicked on "Download", only to receive a strange file called `URLLink.acsm`.
The contents of this file:

=CODE_START=
<fulfillmentToken fulfillmentType="buy" xmlns="http://ns.adobe.com/adept">
  <distributor>urn:uuid:e49a98b0-ff90-4eaf-b8c5-71238284dfdd</distributor>
  <operatorURL>http://acs4.ebookshipping.com:8080/fulfillment</operatorURL>
  <expiration>2012-05-17T13:00:40+01:00</expiration>
  <transaction>GARDEPUB-XXXXXXXXXXXXXXX</transaction>
  <resourceItemInfo>
    <resource>urn:uuid:96f513ae-63c3-4a37-b23c-33c5bf65860f</resource>
    <resourceItem>1</resourceItem>
    <metadata>
      <dc:title xmlns:dc="http://purl.org/dc/elements/1.1/">Yoga For Pregnancy And Birth: Teach Yourself</dc:title>
      <dc:creator xmlns:dc="http://purl.org/dc/elements/1.1/">Dinsmore-Tulli, Uma</dc:creator>
      <dc:format xmlns:dc="http://purl.org/dc/elements/1.1/">application/epub+zip</dc:format>
      <dc:publisher xmlns:dc="http://purl.org/dc/elements/1.1/">Hodder Education</dc:publisher>
      <dc:language xmlns:dc="http://purl.org/dc/elements/1.1/">EN</dc:language>
      <dc:identifier xmlns:dc="http://purl.org/dc/elements/1.1/">9781444129892</dc:identifier>
    </metadata>
    <src>http://acs4.ebookshipping.com:8080/media/978/144/412/3799DFE467716.epub</src>
    <downloadType>simple</downloadType>
    <licenseToken>
      <resource>urn:uuid:XXXXXXXXXXXXXXXXXXXXXXXXXX</resource>
      <permissions>
        <display/>
        <print>
          <count initial="316"/>
        </print>
      </permissions>
    </licenseToken>
  </resourceItemInfo>
  <hmac>XXXXXXXXXXXXXXXXXXXX</hmac>
</fulfillmentToken>
=CODE_END=

(Note that I deleted the parts that I think could possibly be used to say that you paid for the book.)
The contents of this file is "interesting". What on earth do I do with this, I wondered?


When I got to the [instructions to open the file](https://www.kalahari.com/checkout/help/ebooks.aspx), that's when I got really worried: 

=IMG_CLEAR=instructions.png=The instructions to read the book=

OK, so: first of all, I would need to register on Kahabari.com (well, that was done since I bought the book). Then register for an Adobe ID. Well, as much as I hated doing so, I registered. Yes, I became the proud owner of an Adobe ID! Then, I would have to "Download and install the kalahari.com eReader for Android from the Android Market". This is where I got _extremely_ worried. Pardon me? I am bound to use a _specific_ reader for this book? This became scary to say the least. But not as scary as what I saw when I opened [Kalahari's page in Android's market](https://play.google.com/store/apps/details?id=com.mihinternet.kreader&hl=en): only 44 people bothered commenting on the app. The latest update of the app was _September 2011_ (approaching 1 year). The comments are without a doubt negative to terrible.

Anyhow, Chiara was coming home shorty, and well, the things you do for love. I installed the terrible app, and followed the instructions: told the app my Adobe ID and my Kalahari ID. The book appeared --- as promised by the instructions!

I clicked on it, and...

"The book could not be fulfilled".
I called up the helpdesk at Kalahari.com (yes, I called South Africa) and explained the problem. They told me that they would have to send an email to the publisher (!) and would let me know by email "tomorrow or Monday" (!!!) what the problem was. The operator assumed that it was because I was in Australia and the book was originating from the UK (!).

That's when Chiara came home. No present for her.

# The investigation

My investigation on this was clumsy and uninformed. The main issue is that I know absolutely nothing about DRM, about device registrations, etc.

As it turns out, the main file that gets downloaded, `URLLink.acsm`, is the "token" that proves that I purchased the book. Or, that I have the rights to read it. Downloading `http://acs4.ebookshipping.com:8080/media/978/144/412/3799DFE467716.epub` is pointless: although it's a valid ePUB file (that is, a ZIP file with a changed extension), once you decompress it you notice that its contents are completely encrypted.
Out of curiosity, this is what you get when you go to `http://acs4.ebookshipping.com:8080`:

=IMG_CLEAR=tomcat.png=This is not the most professional thing I've ever seen=

It turns out that in order to open the acsm file, I need a wonderful piece of software called "Digital Editions". To have information about it, you need to go to its [info page](http://blogs.adobe.com/digitalpublishing/supported-devices). Here, you read:

> These eBooks can be acquired by the listed devices either via wireless connection provided by the device (if available) or via a USB connection from the device to a computer running Adobe Digital Editions, the desktop application for organizing and reading eBooks on Macs and Windows® enabled computers.

This is the page:

=IMG_CLEAR=adp.png=What a bad start=

Going to [Digital Edition's page](http://www.adobe.com/products/digitaleditions/) you discover that you cannot download it unless you run Windows or Mac. This is what you get (!):

=IMG_CLEAR=notfound.png=File not found?=

Can you believe that? I couldn't either. (I connected to it with Ubuntu 12.4). The plot thickens: if you find the piece of software online, you discover that it runs fine under Wine. However, I couldn't find the latest version (only an old version which didn't like the file I was feeding it). So, no luck.

Please note that I still wasn't able to even _download_ the file I bought.

# Keen to find a solution...

I was very, very keen to find a solution. I figured out that I could have used _any_ software compatible with the Adobe DRM system. For Android, I downloaded Aldiko, an ePub reader which is meant to be able to read Adobe's DRM: no luck. I couldn't login. I tried Bluefire: no luck. I tried a _few_ more: no luck. My Galaxy Tab 10.1 was now _full_ of ePub readers I will never use, and I still couldn't read the book I _bought_. Including the one that was given to me by the publisher I bought the book from.

I spent hours trying this. I inserted my password more times than I would ever want to type it in a lifetime. Still: no luck.

Then I found out that it might be a timezone problem on [this forum post](http://forums.adobe.com/thread/852407):

=IMG_CLEAR=denied.png=Somebody with the same problem=

Unfortunately, no matter how much I tried fiddling with the timezone, it didn't work.

# The solution? Crack the DRM. Full stop.

The solution was very simple: I used a Microsoft Windows machine (borrowed from a friend) to install Digital Editions. Using that, I managed to login and download my eBook (the one I purchased, remember?).

Then, I simply downloaded a [DRM removal program](http://www.dvdvideosoftware.org/epub-drm-removal.html), installed it, and cleaned my ePUB file (the one I bought, remember). Please note that there are free tools out there to do the same thing. Potentially, I could have looked harder for a newer version of Digital Editions online, to run using Wine, and then I could have cracked the ePUB files using free utilities available (the same ones this "freeware" were based on).

I emailed the cleaned file to myself, and gave the computer back to my friend.

I then copied it to my Android device. At this point, I had _quite a selection_ of pieces of software I could chose to read it. And guess what? It worked beautifully.

I can finally read my book. The one I bought, remember?

# DRM on books: insanity gone wrong

With competing standards, several vendors fighting to become "it", and a very messy situation in terms of copy protection, DRM needs to die. And it needs to die soon.

The fact that I had to go through so many loops to read _my_ book (the one I paid for, remember?) is just silly. This is not even a "buy a Windows machine" issue -- I was trying to use Android, and _still_ couldn't get anything to work. I even used several programs, and none of them would allow me to login.

If most of the current books are protected by DRM, in 5, 10 years (when these vendors are dead, disappeared, or whatever), nobody will be able to open these files any more. What about 20 years? 50? 100?

I don't even know if I broke the law. But I want to see a company coming after me for "breaking the law" -- I actually wasted the whole afternoon doing this. I had things to do -- important ones. And I spent it actually opening the package of the item I had _purchased_.

What I had to do was silly. I am definitely not alone. We, as consumers, cannot be slaves of corporations who design hideous mechanisms that only work half the time.

Enough is enough.

(Time to do some prenatal yoga with my wife)