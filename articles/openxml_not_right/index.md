---
nid: '2076'
title: 'Interoperability, choice and Open XML – spot the odd one out'
authors: 'Edward Macnaghten'
published: '2007-02-16 2:25:27'
tags: 'microsoft,odf,open-standards,ooxml'
license: verbatim_only
section: opinions
listed: 'true'

---
Microsoft have published an open letter entitled "Interoperability,Choice and Open XML"[1].  I often like to think that I am neversurprised by the exaggerations, obfuscations and general untruths thatcome out of Microsoft: this letter shows their capacity of doing justthat.


<!--break-->


Those coming into the [ODF](http://en.wikipedia.org/wiki/OpenDocument) and [OOXML](http://en.wikipedia.org/wiki/OOXML) document standarddiscussions afresh and being introduced to the issues by reading thisletter will be perplexed to say the least.

The letter's contents are extraordinary.  It essentially says Microsoftis all for interoperability and a lot of "hype - smoke andmirrors..." exists regarding this in the world.  They believe Open XMLis a wonderful thing, it is so wonderful it is now an ECMA standard; ODF– the OpenDocument format – on the other hand is simply a format solelybased on the OpenOffice.org program and that IBM are being a meanie andorchestrating a situation that prevents Open XML becoming an ISOstandard.  I feel I have a duty to correct a few"misconceptions" concerning this letter.  In fact Ipersonally believe them to be lies, however it is a possibility thatthe MS executives – Tom Robertson and Jean Paoli – are simplymisinformed, so I will give them the benefit of the doubt here.

The letter opens by banding about the word"interoperability".  In their first paragraph they listtheir "interoperability"credentials as they see them and mention that as a key reason they"supported Open XML becoming an international standard".  Thatis all well and good, but in the ECMA's "Office Open XMLOverview" linked to in Microsoft's letter, under section 2, the"Purposes for the standard", the following is written:


>OpenXML was designed from the start to be capable of faithfullyrepresenting the pre-existing corpus of word-processing documents,presentations, and spreadsheets that are encoded in binary formatsdefined by Microsoft Corporation.

Later in the same section they give examples of how this new"standard" could be used:


* Generate documents automatically from business data
* Extract business data from documents and feed those data intobusiness applications
* Perform restricted tasks that operate on a small subset of adocument, yet preserve editability
* Provide accessibility for user populations with specialized needs,such as the blind
* Run on a variety of hardware, including mobile devices

Then move on to discussing long term preservation as the most"profound issue".

What they seem to have omitted from that overview is the capacity ofcompeting software vendors to create office applications to view andmanipulate the documents.  Any format design whose purpose is to be"faithfully representing...binary formats defined by MicrosoftCorporation" would make it near impossible for other office suites tointer-operate with them without duplicating how MS Office functions.This is not the purpose of a standard.

In contrast, the OASIS document, "Open by Design", describes thepurpose of ODF as:


>The OpenDocument Format was designed to be vendor neutral andimplementation agnostic. It was designed to be used by as manyapplications as possible. In order to simplify transformations and tomaximize interoperability, the format reuses established standards suchas XHTML, SVG, XSL, SMIL, XLink, XForms, MathML, and Dublin Core.

The question I would ask Mes. Robertson and Paoli at this point is"If I were looking for a format to standardize on, why would I wantto go for one designed to work well with one product over another whichcould easily be adopted by many?" On the other hand, don't botherto answer: I think I know which way they would advise me to go and Idoubt it would have been with my best interests at heart.

Later in the letter Mes. Robertson and Paoli like to correlate between"XML" and "Standard Formats".  Although both ODFand OOXML are based on XML, that fact alone is not enough to qualifythem as a suitable standard. Saying "A format based on XML issuitable asa standard" is like saying "A book written in the EnglishLanguage is suitable to be a best seller".  There needs to be a lotmore.

The Microsoft letter, at one point, says:


>Customers, particularly government customers, have told us they wouldprefer that Open XML become an open standard. Members of the broadercommunity have said they would like broad rights to use, without cost,any Microsoft patents necessary to implement all or part of the format.

Not working for Microsoft I cannot verify that sentence, but if it istrue Microsoft ignored their customers for a long time.  Microsoftonly became interested in opening up and standardizing their Office2007formats after some quite ridiculous shenanigans by Microsoft regardingthe IT Division at the Commonwealth of Massachusetts.  There the ITDivision recommended ODF (and PDF) as a means to store long termdocuments, and Microsoft then behaved like a fish basking about thebottom of the boat trying to get their (then closed) Office 2007 formatsadopted as well.  Personal insults and unfounded accusations flew fromthe pro Microsoft corner.  Finally the Office 2007 formats were"opened", but the reason for this appeared to me to be derivedfrom a "least unwanted" philosophy from them.  I stillstrongly believe the goal for them is to continue to maintaintheir stranglehold on the document formats.  A detailed historicalaccount of events can be seen at [GrokLaw](http://www.groklaw.net/staticpages/index.php?page=20051216153153504#2005chronology).

Ironically, a long time ago (in the 80s and 90s), Microsoft won the smallbusiness desktop computer industry from under IBM's nose.  This was dueto smart moves by Bill Gates and the rest of the Microsoft team andstupid ones by IBM.  It ended up that Microsoft managed to corner thedesktop market and IBM were nowhere to be seen.  A joke was going aroundat the time that the letters "I.B.M." stood for "I BlameMicrosoft!".  OK – not that funny a joke now, and was completelyunfounded, but those were simpler times.

Now that scenario has come to life again except the initials seems tohave been reversed – "MBI" or "Microsoft BlamesIBM"!  The letter accuses IBM of orchestrating a campaign toderail Microsoft's attempt at making their Office 2007 formats an ISOstandard.  I suppose we can expect more of the same sort ofmudslinging in the near future.  When sane and logical arguments runout and are disproved it is often that adetermined, self-motivated, protagonist will resort to insults and blame.

Lets cover some real reasons behind Microsoft's troubles at the moment.

One of the reasons that 20 countries submitted comments andcontradictions was that the 6000 page OOXML specifications had manycontradictions and items warranting negative comments.  The standarddoes not build on pre-existing ones such as MathML, XSL, SVG and others(ODF does).  It includes tags such as "lineWrapLikeWord6" and"useWord2002TableStyleRules"; in the specification thedescription of these is "...that applications shall emulatethe behavior of a previously existing word processing application(Microsoft Word 6.0)..." and a similar instruction for the othertag for Word 2002.  This means that someone wanting to implement thiswould need to reverse-engineer a closed product made by Microsoft, butis no longer sold or supported by Microsoft, and can only be legallyobtained from the corporate second-hand market.  The logic of puttingthese in a standard is obviously lost on many – including me.

If the recommendation from Microsoft is not to implement these, then whyis it even in the standard?  What has it to do with interoperability?  Itake those questions back, please do not answer.  I know that it hasnothing to do with interoperability.

Another reason for the contradictions and comments was a grass-rootsone.  Microsoft's business practices have been found to be illegal, inboth the USA and Europe, and people are now wise to them.  Microsofthave tried to pull too much wool over too many eyes, and people arebeginning to work out why they are crying - because of sheep-hair.Normally the general public do not get involved in standards, those whowork with them trust the government bodies to do the work then adopt thestandards when published.  With OOXML that has not been the case.The OOXML standard is so proprietary that it is obvious it is a meansto maintain vendor lock-in using document formats while pretending notto.  People want competition, they want real interoperabilityacross vendors, not just a pretense of one within the approved products ofone vendor.  When Microsoft tried to steam-roller their so calledstandard formats through the standard's process people took a relativelyunprecedented step of complaining to the standard's body.  It was notjust IBM – it was large, diverse, sections of the IT community.  In the UK (mycountry) I am proud to say that the national standards body (BSI)listened and took appropriate action, as other bodies did in nineteenother countries.

In the letter it was claimed that Microsoft was following the requestsof its customers.  That is very noble and good if true (I have mysevere doubts based on the Massachusetts incident described above).  Ialso know that IBM continually work for their customers, and they aredoing so here too.  It is interesting to note that if the allegedrequests of Microsoft's customers are obliged Microsoft ends upmaintaining it's monopoly, whereas if IBM's are then a level playingfield is incurred for all.

The idiocy of all this is that it is totally unnecessary.  ODF is avendor neutral file format, not a competitor to Microsoft.  Microsoftwere welcome to be involved with the standard from a very early stage.They chose not to.  They are invited to be so now.  They are choosingnot to.  Microsoft, like anyone else, is perfectly welcome to includethe format in the "Save" and "Load" options of theirfile menu for no IP costs.  They choose not to, and it is not as thoughthey do not have the resources to achieve that.

They claim that their version of the standard is required to examinelegacy Microsoft documents.  I have yet to meet someone who was not aMicrosoft advocate buy that.  OpenOffice.org (to name but one, there areothers) can read legacy Microsoft .doc, .xls and .ppt files and savethem as ODF; the vast majority of the time it does so perfectly, andthe rest of the time it does so well enough.  It is certainly as good asthe same operation performed between one version of Microsoft Office andanother.  Microsoft are in no way being locked out of the ODF family,they simply do not want to play with anyone else's ball.  They want tokeep control of who plays with what, and adopting an existing ISOstandard will deny them that.

It is not surprising that Microsoft are having their attempt atdominating the international document standard process thwarted at themoment, and I have some more bad news for them...

One of the reasons I have not been keeping this blog filled with as manyregular entries as I should have is that I have been hard at work withODF advocate groups ensuring a sane Standard Document Format is adopted.That is ODF.  I have examined both ODF and OOXML technically and it isblatantly obvious that ODF is the one to choose for interoperability andlong-term storage, and OOXML is a means of maintaining the Microsoftadvantage at the cost of real interoperability and competition.  I havebeen campaigning hard to promote ODF and to prevent OOXML frompolluting the standards landscape.

To finish with a letter of my own:


 |
-|
Dear Tom and Jean,. Regarding your accusation that IBM is derailing Microsoft's OOXMLadoption strategy.. I was involved in a campaign for that to be delayed.  IBM did notapproach me for help, but I was one of the thousands of people to askIBM to help us.  Don't blame IBM.  Blame me.  Blame my colleagues.Blame the community.  We are wise to Microsoft now, get used to it.. Yours ever,. Edward Macnaghten.  | 

=TABLE_CAPTION=Open Letter to Mes. Robertson and Paoli at MicrosoftCorporation=


# references

[1] [Microsoft's open letter](http://www.microsoft.com/interop/letters/choice.mspx)

