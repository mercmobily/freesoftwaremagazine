---
nid: '3319'
title: 'New-line search & replace in OpenOffice.org Writer -- the lazy way'
authors: 'Daniel Escasa'
published: '2010-04-12 12:12:39'
tags: 'openoffice.org,writer,new-line,search-and-replace,lazy'
license: verbatim_only
section: end_users
listed: 'true'

---
I've been editing the [Philippine Star Trek fans' section](http://newworlds.ph/user/359/posts) of the New Worlds Alliance site for a few months now, and the contributors have been submitting their articles embedded in the email message. I actually prefer that to an attached file, because I can read the article right away, without having to open another application. When I'm ready to edit, I ask GMail to create a Google document out of it. Trouble is, the resulting file has hard new-line characters after every line, and a double new-line between paragraphs. I **could** cursor to the end of each line, delete it, and type in a space, but my inner sloth told me there had to be a better way.
<!--break-->
I remembered this when I read [Optimise OpenOffice.org](http://www.linuxuser.co.uk/tutorials/optimise-openoffice-org/) by Sukrit Dhandania in Linux User & Developer. An anonymous user left a comment claiming that he had opened 10 tickets regarding basic new-line search-and-replace.

> i have opened 10 tickets with open office so far since it was star office and it cannot do basic new line search and replace. 10 times my ticket was closed in 10 years telling me its not important feature that needs attention.

Then I remembered OpenOffice.org Writer's Regular expressions option in the search dialog:

=IMAGE=Search-replace.jpg=OpenOffice.org Writer's search-and-replace =

Now **that** looked promising.

To help you see regular expressions at work, I created the Google document below from a GMail message:

=IMAGE=Originaltext.jpg=Original text as imported from Google Docs =

More precisely, I copied the text from Google Docs, then pasted it into a new OOo Writer document. If I had simply downloaded the file then opened it in Writer, it would've retained its Google Docs formatting, and I preferred to use my own, based on my style sheet. But that's me -- you can always just download the file and edit it directly.

First thing to do is look for the double occurrences of the line feed (or new line, or spaces, if you prefer) that separate paragraphs, then change those to a sequence of characters that couldn't possibly appear in the text. For this particular document, I chose "NewParagraphPlaceHolder":

=IMAGE=SearchDoubleLineFeed.jpg=Search for double occurrences of LF=

The regular expression for a line feed is \n. I did this first instead of the single line breaks between lines within a paragraph. I´ll explain this after the next step. In the meantime, here's what the document will look like:

=IMAGE=ParagraphHolder.jpg=Document after replacing double LFs with a placeholder=

Next, search for the single occurrence of the line feed, and replace with a space:

=IMAGE=ReplaceSingleLineFeed.jpg=That's a space in the "Replace with" box=

If I had done this step before the search-and-replace on the double line feed, the entire document would run into one large paragraph. Try this yourself if you're not convinced. Incidentally, that's a space in the "Replace with" box. Here's a screen shot of the document after that search-and-replace:

=IMAGE=Textflows.jpg=Doc still runs into one large paragraph but with dummy LFs=

Now I've let Writer's word wrap take care of putting in line feeds. Finally, I replace the end-of-paragraph character with the real end-of-paragraph, a line feed:

=IMAGE=RealParaBreak.jpg=Replace the placeholder with a real LF=

And my document's happy:

=IMAGE=AllFixed.jpg=After replacing the placeholder with a real LF=

Incidentally, you may notice that my single \n still created two line feeds between paragraphs. That's because of my default style sheet, which automagically inserts an extra line after a paragraph.

=ZOOM=Even DOS-based word processors had keyboard macros. Surely, a 21st century software application can accommodate the lazy? =

And I take this laziness one step further. I do this often enough that all those keystrokes -- especially the "NewParagraphPlaceHolder" string -- get to be a drag. Even DOS-based word processors had keyboard macros. Surely, a 21st century software application can accommodate the lazy? Sure enough:

=IMAGE=OOWriterMacro.jpg=OO Writer's macro facility =

Before you go and record the macro, however, two things:

1. Do you prefer to have Regular expressions switched on by default? If so, you're good to go.
1. Otherwise, **before** you start recording the macro, switch Regular expresions off. Once you start recording, when you do the first Search-and-replace, enable Regular expressions. Finally, just before you stop recording, disable Regular expressions.

=IMAGE=OOWriterRecordMacro.jpg=OO Writer's recording your keystrokes =

So, you're now recording the macro. Just do the Search-and-replace steps above, then stop recording when you're done. You'll then get the dialog box below:

=IMAGE=SaveMacro.jpg=Save your macro =

The default Macro name is Main1 -- I've changed that to CleanupText, so I remember what it does. Another good name would be Text2Wrap or something similar.

=IMAGE=MacroSelector.jpg=Running the macro =

Finally, from the Tools menu, bring up the Macros dialog box, and select Run, then navigate to the CleanupText macro, and you're rewarded for all that hard work.

Wait, hard work??