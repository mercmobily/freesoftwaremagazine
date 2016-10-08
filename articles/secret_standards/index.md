---
nid: '1499'
title: 'Secret standards'
authors: 'Terry Hancock'
published: '2005-11-04 15:53:07'
license: verbatim_only
section: opinions
listed: 'true'

---
Is it an oxymoron, or just moronic?

In the free-wheeling world of free software, we are accustomed to _free_ standards, published _freely_, defined by _freely_ distributable (if not necessarily freely-modifiable) standards documents. So the idea that an industry group should get together behind closed doors, come up with a data interchange standard and then _bury_ it by copyrighting the specification for that standard, making it available only from a single source, and charging outrageously high prices for the right to read it seems utterly mad to us!

I mean, if there’s any category of information that must be free in order to operate, a standards specification has got to be it, _right?_

Nevertheless, many other industries don’t seem to share this view. In the manufacturing industry in particular, the restriction of a standard to “manufacturing companies” doesn’t seem like a restriction at all, and so they are oblivious to the difficulties imposed by creating standards which are so expensive that the only people who can afford them are companies who intend to sink even more capital into the investment of building according to those standards.

For example, although you may not be at all surprised to know that electric motors have a set of letter-coded “standard frame sizes” (similar to what people in the computer industry call “form factor”—basically the bolt patterns, maximum extents, etc), you might be very surprised to find that there is nowhere where you can download a set of drawings of what those standard frame sizes are. The specification of that standard is proprietary, and you must pay a fairly substantial price to get a copy of the spec.

Naturally, there are justifications for this practice:


* Standardization processes take the time of engineers and executives, who must be remunerated for their efforts. Charging for copies of the standard is a way to pay for this, doesn’t interfere with “serious” users of the standard, and maintaining a monopoly source is merely a way to ensure that these fees are paid.
* Maintaining a monopoly source on the standard is the only way to ensure that the standard does not get modified, and assures that accountability remains with the standards organization.
* Maintaining a closed standards organization keeps the organization reasonably small, ensures that “serious stakeholders” are in on the standards design, and companies participating in that process deserve to be compensated by having exclusive access to the documents—it’s like any other investment in intellectual property that a company might make.

And when the manufacturing industry started to come over into the world of software and data-communications standards, they carried the same attitudes with them. So I found when I tried to investigate the standards for Computer Aided Design (CAD) interchange.

For example, the “Standard for the Exchange of Product model data” ([STEP](http://en.wikipedia.org/wiki/ISO_10303)), also known as ISO-10303, is maintained by the International Standards Organization, just like, say, Unicode (or rather [UCS/ISO-10646](http://en.wikipedia.org/wiki/Universal_Character_Set)) is.

Unlike, Unicode, however, STEP is pretty hard to find specification documents for. For example, you will have a very hard time extracting any meaningful information from the [SC4](http://www.tc184-sc4.org/) site which appears to be the official source of these documents. Even though, the ISO’s “COPYRIGHT PROTECTION”[sic] says that there is an “exemption” for the "Express listings" of the STEP “application protocols”. I challenge you to find these listings, I really could use a link right now.

**EDIT: I received a response about this from members of the ISO committee responsible for STEP. It seems that in fact the listings _are_ available for download from this site. It’s a bit tricky for me to give you links to everything, but the documents of particular interest to me were/are:**

[STEP   Parts   0-99](http://www.tc184-sc4.org/SC4_Open/SC4_Work_Products_Documents/STEP_(10303)/1-99/documentation.cfm)

[STEP Parts 100-199](http://www.tc184-sc4.org/SC4_Open/SC4_Work_Products_Documents/STEP_(10303)/100-199/documentation.cfm)

[STEP Parts 200-299](http://www.tc184-sc4.org/SC4_Open/SC4_Work_Products_Documents/STEP_(10303)/200-299/documentation.cfm)

**Click "Expand ALL Folders" and then string search for "EXPRESS Schema".**

I should say that although STEP itself is apparently largely proprietary, there are efforts to extract a free standard from it, such as the NIST’s [Step Modularization](http://stepmod.sourceforge.net/) project, which is now hosted on Sourceforge. It’s not terribly active, from what I can see, but what they do have is a means of translating STEP specifications from those “Express listings” ([Express/ISO-10303-11](http://en.wikipedia.org/wiki/ISO_10303-11) is an object-database schema definition language—basically a competitor to XML from what I can gather) to an XML representation.  Certainly this is a good first step if we ever want to see a truly _free_ data exchange system for CAD.

But it’s very clear that we are swimming against the current in the manufacturing and computer aided design industry. If that didn’t convince you, consider that “OpenDWG” and “JTOpen” are both _proprietary, closed-source_ software packages to read “de facto” “standards” (AutoCAD’s native DWG format, and “JT” format, respectively). Despite names that border on fraudulent representations of open source. Oh yeah, and then there’s “OpenCascade” which is less non-free, but still not free-licensed (it has a “talkback” clause, which means it’s GPL-incompatible, and non-free by at least two of the leading judges of the freedom of software licenses, namely Debian and the Free Software Foundation), it’s supposed to read STEP files.

I hope you can appreciate that I am a little frustrated with this situation.

None of the arguments for proprietary standards are particularly original. They’ve been made about software and/or software standards. They’re also apparently all bunk, given that the free software world works quite fine without them, and given that the rate of innovation in the free software world far-outstrips any innovation in the industrial manufacturing economy.

Now, of course, someone will object that the manufacturing economy has all sorts of other forms of friction that slow down innovation (after all, they have to cut metal, right?), so that’s an unfair comparison.

Fine. So let’s restrict it to the proprietary software industry which tries to follow these same hide-bound rules. _Point made?_

If we ever want these kind of attitudes to change though, so that innovation in other sectors of the economy can ever reach a sufficient level that we can avoid technological collapse and a subsequent global dark age, then we need to start communicating about the reasons why this old way of doing things is just dumb, and why the new paradigm of free licensed information makes a whole lot more sense.

Because that’s what free-licensing and the freedom of information is: it’s a whole new economic paradigm. It changes the way you look at an awful lot of things, and it’s hard to communicate that new world view to people who just don’t see it yet. Or who only see it in a tiny corner of their world, like “free-licensed open source software”.

Briefly, I do want to outline some arguments against the three points for proprietary standards mentioned above. I’m sure there are many others, and perhaps better ones, but I do want to follow my own advice here...

**Paying for standardization efforts:** surely it’s not more complicated than the standards that run the internet, or Linux kernel modules, or Linux itself, all developed without such funding models.

**Protecting against unauthorized changes:** this is trivial. The W3C does this. The FSF does this. Even RFCs have this. All you have to do is state the requirement and declare an authoritative source. There is substantial market pressure not to corrupt standards, so it’s generally a non-issue anyway. Certainly, there are people who will catch you out at it (yes, Microsoft keeps trying to redefine HTML and Javascript and Java—but even they, with their monopolistic marketplace position aren’t able to do so very successfully). You may be interested to notice that the Gnu Public License, which itself a kind of standard for distributing free software is not covered by a free-license, but is rather distributed verbatim. You can write a new license that uses the same ideas, but you can’t call it “The Gnu Public License” (otherwise, it would be trivial for a recipient to alter the license, to, say, remove the copyleft restrictions).

**The restriction to “serious stakeholders”:** this is basically a monopoly trade practice, so I hope it’s pretty clear why this is a bad idea. Actually, the real point is that progress can and is made by individual contributors, so the idea of “keeping out the riff raff” is just stupid. Basically, you’re just trying to shut out the people who invalidate the first point (i.e. people who have sensible motivation to spend time on developing the standard). The only reason why people get away with this is lethargy—the industry is already restricted by the economic forces that control who can use the manufacturing equipment and other investment barriers to entry, so this little one hardly seems to matter.  But it does matter, especially in industries where the other barriers are slowly coming down due to technological progress.

