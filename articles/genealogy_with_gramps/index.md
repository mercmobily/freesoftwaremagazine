---
nid: '1588'
title: 'Roots access'
authors: 'Ryan Cartwright'
published: '2006-12-22 6:30:00'
issue: issue_15
license: cc-by-nc-sa
section: hacking
listed: 'true'

---
Genealogy is a burgeoning hobby and to help the home genealogist, a whole range of software is available. Much of it is commercial but here I’ll look at one of the most popular free software options—GRAMPS. Charting your family history needn’t mean compromising on licensing.


# Finding your roots

Genealogy, the study of one’s ancestry, is a growing industry. Fuelled by on-line resources like Ancestry.com [3] and television programs like the BBC’s “Who do you think you are”, thousands of people are to be found scouring web sites, visiting graveyards in remote locations and ordering obscure birth certificates all in the name of tracing their roots.


=ZOOM=Genealogy is highly addictive...you can easily find yourself staring bleary-eyed at the computer at 3am=

If you have ever considered tracing your ancestry, there are a few things to note: it takes time, it can create huge amounts of data and it’s highly addictive. Once you start you can easily find yourself staring bleary-eyed at the computer at three in the morning trying to figure out if the person you’ve just found is the same one you are related to. I should also say that it can be highly rewarding—especially when you amaze your relatives with the details of their family history.


## From data to trees

Managing all that information suggests a database and while it is possible to create your own, there exists an array of software which can ease the task of turning the data you have gathered into a family tree. Much of this is commercial although it is generally at a reasonable cost. Of course, for those who prefer their software to be free there are several applications available [4] and of these GRAMPS is arguably the most popular. GRAMPS stands for Genealogical Research and Analysis Management Programming System. A name which makes me wonder if the acronym or the full name came first.

Before I plunge into the details of installing and using GRAMPS, take a look at some of the functionality that it provides, as available from the sidebar as shown in figure 1.


=IMAGE=figure1.jpg=Figure 1: The standard GRAMPS interface showing a pedigree=


* **People**: The bedrock of all Genealogy software. In GRAMPS you can store people’s names (birth, marriage and others), multiple addresses (with dates) and events (e.g. marriage, emigration).
* **Families**: People are automatically grouped by last name, you can also link them by relationship to each other. Thus allowing you to produce family tree style reports.
* **Pedigrees**: A visual, interactive layout of a family tree.
* **Sources**: During research the genealogist will gather information from many sources. GRAMPS allows you to record these sources so that you can find which have proved the most useful over time and waste less time by starting future searches there.
* **Places**: It’s likely that you’ll be entering similar locations several times within the database. GRAMPS allows these locations to be stored as records in their own right, allowing you to track popular areas.
* **Media**: You can store various typed of media file against records, including photographs, scans of documentation, videos, audio—pretty much any file.
* **Reports**: There’s a plethora of report formats and styles available.


# Taking your first steps

As with most free software, there are many ways to install GRAMPS ranging from roll-your-own (download and build from sources)—to the more sedate distribution specific packages. As far as I know packages exist for most of the major GNU/Linux distributions. GRAMPS is available for both GNU/Linux and FreeBSD but I’ll review from the GNU/Linux perspective here and in particular Debian and Ubuntu. That’s because—quite honestly—it’s what I use myself. I also use KDE although this is of little importance here as GRAMPS uses both the GTK and GNOME libraries and presents a GNOME interface regardless of your desktop preference. For this reason if you use KDE you may need to install some GTK and GNOME library packages as well although any good package manager, such as Synaptic, will assist with these dependencies.


=ZOOM=GRAMPS presents a GNOME interface regardless of your desktop preference=

If you are a command-line person then `apt-get install gramps` will do the trick. For the GUI people among us, I’ll concentrate on Synaptic. Simply search for `gramps`, mark it by checking the box beside it’s name and click on Apply. See Marco Marongiu’s [piece on Synaptic](http://www.freesoftwaremagazine.com/articles/synaptic_intro) in [Issue 11](http://www.freesoftwaremagazine.com/issues/issue_011) for more detailed information on using it. If you are using Ubuntu, ensure you have the “universe” repository included in Repositories (under the Settings menu). Don’t forget to click Reload (or `apt-get update`) before you search though. In both Debian and Ubuntu GRAMPS is in the GNOME section of packages.

If you are using Debian stable (at the time of writing this is 3.1r2/Sarge) then you will find your version of GRAMPS is 1.0.11-1. This article is referencing the more recent 2.0.11-1 found in the testing (Etch) and unstable (Sid) Debian distributions.

Finally, if you are stuck with a proprietary operating system but still want to try GRAMPS, then why not try the Linux Genealogy Desktop CD [2]. This is a live CD based on Ubuntu and will run without installing anything on your hard disk, although you can do so from the CD if you wish.


## Using GRAMPS

When you first start GRAMPS you are greeted by a database dialog window where you can choose between opening a recent database, browsing for an existing one (which has dropped off the recent files list) or creating a new one. Once you open a database or create a new one, you are brought to the main GRAMPS interface with the ubiquitous “tip of the day” pop-up.


<!--pagebreak-->


Across the top is the toolbar with some fairly obvious buttons and above that a menu bar. These perform operations pretty much as expected. For example, clicking the “Add” button when in the family or people screens will add a new person, displaying the person editing window as shown in figure 2.


# It’s about who you know

Let’s look at adding people to a database using the person editing screen in figure 2. Under the “General” tab you are given places for given (fore) names, family (last) names, a family prefix which may be something like “de” or “van”, a suffix, which could be something like “Jr.” or “III”, gender and dates and places of birth and death. Dates can be recorded in one of a number of formats but you are expected to be consistent and stick to the one you have set in the options dialog.

Often the name you have for a person may not be their birth name—this is especially the case with married women gathered from a census. In these cases you can indicate what type of name this is, e.g. married, birth or also know as. Names can also be recorded with greater detail including the source used to find them. This is useful when looking up census information as the same person can often be using different names or nicknames in consecutive censuses. You can also indicate whether the information is to be considered complete and/or held as private—which allows you later to exclude it from exports.


=IMAGE=figure2.jpg=Figure 2: People are the bedrock of genealogical databases, even if the images don’t quite match the names=

The other tabs are fairly self-explanatory and operate on similar lines to each other. You can record attributes like national origin, caste and such as well addresses and events, each of which includes references to its source. The gallery is a list of media associated with this person. In the case of figure 2 the photo of Einstein is linked against this person. When the gallery has content, GRAMPS will display the first item from it on the “General” tab. The order of the gallery can be simply changed by dragging and dropping and any media added here will be automatically logged in the main media section.


## Families

GRAMPS automatically groups people by family name, making them easier to find but, of course, not always accurate in terms of their relationship. A John Smith on your mother’s side may not be related at all to a Mary Smith on your father’s. The family editing window aids with linking people by more than name. Figure 3 shows a typical example of this and it’s a simple job to link partners, children and parents for the current person. These related people can be selected from the database or added directly from this window. Adding a new partner to the current person will trigger a marriage event entry as well. In cases of multiple partners, selecting a partner will display only the children from that relationship, both of which are nice touches.


=IMAGE=figure3.jpg=Figure 3: Managing relationships between people=


## Using pedigrees

Of course at some point you will want to see, in a visual form, how all these people relate to each other. This is particularly the case when you find common family forenames in use across generations. For this purpose GRAMPS provides the pedigree view. A typical pedigree view is shown in figure 1.


=ZOOM=A nice feature of GRAMPS is that double clicking an entry in one view will open an editing window related to that record=

The pedigree is a horizontal family tree flowchart style layout. GRAMPS will display as many generations as it can fit on the screen—in my case this is five. If further generations are available at either end of the current view, a small button is displayed next to the relevant person. Clicking this will move the view in that direction. If there is more than one ancestor or descendant available, a list is provided from which you can select a person. Those which continue the tree—that is they have children or parents listed—are emboldened in the selection list. Thus if, in figure 1, Veronica Louise Smith has children, they would be listed when you click the dot to the left of her name. Any of those which themselves had children would be shown in bold. A nice feature of GRAMPS is that double clicking an entry in one view, say a person in a pedigree, will open an editing window related to that record. This enables you to move around without resorting to continuous back-tracking.


# Getting information out of GRAMPS

There will be times when, during your research, you come across another genealogist who has gathered quite a bit of information which you would find useful. Alternatively, you may find you have information they want. Although it is wise to never blindly accept another genealogists data as completely accurate, GRAMPS provides import and export facilities for several genealogical data formats including the ubiquitous GEDCOM file. Import and export “wizards” are provided to guide you through the process and make it very simple to perform.


=ZOOM=GRAMPS provides import and export facilities for several genealogical data formats=


## Reporting

Any application with a database at its heart must have reporting features. GRAMPS includes a vast range of easy to use, pre-defined report types with significant customisation options. Reports can be produced on a single record in graphical and textual forms. The former being charts and graphs and the latter being textual information compiled from the database. For example a text ancestor report may contain this:


>“John William Smith. John William was born on 24-05-1924. John William is the child of John Henry Smith and Jane Brown. He married Susan Jane Lewis on 15-07-1949”

Only the names and dates are entered by the user, the rest is composed by GRAMPS.


<!--pagebreak-->


Some examples of the graphical reports available are shown in figure 4. Each of these was produced in seconds with a few clicks of the mouse. Those reports were created in Open Document Text (ODT) format but reports can be produced in a variety of document formats including Scalable Vector Graphics (SVG) and HTML.


=ZOOM=GRAMPS includes a vast range of easy to use, pre-defined customisable reports=


=IMAGE=figure4.jpg=Figure 4: Just some of the wide range of graphical report styles available in GRAMPS=


# Database maintenance

As your data grows and changes the database can become a bit disjointed and reports can therefore appear to give inconsistent results. Fortunately GRAMPS has a number of database maintenance tools that assist in straightening this out. This means it’s a simple job to check and repair the database, looking for things like children with a link to a parent record that no longer exists. You can also have GRAMPS verify the data itself, checking things like dates of birth and death for unrealistic lifespans. Of course, checking for duplicate people is also available. As said at the beginning of this article, genealogical research can result in a lot of data and these maintenance tools prove invaluable at highlighting parts which need your attention.


# Conclusion

Often, when reviewing free software, the temptation is to compare the application with a commercial alternative. It’s as if the free software application is valued by how well it could replace or replicate the commercial program. I’m going to resist that temptation here. GRAMPS is a good piece of software and deserves better than to be judged by some of its, in my opinion lesser, commercial rivals. The interface is clean, simple and easy to use and my only complaint, and I stress this is a personal preference, is that it forces me to use the GNOME interface which, at times, I find a little clumsy. The editing and reporting functions are excellent and it is very easy to quickly build up a good record of the research you have made without getting lost in a quagmire of names and dates. Clearly a lot of thought, time and effort has gone into GRAMPS and while genealogy is time consuming, addictive and data intensive, GRAMPS goes a long way toward smoothing the ride.


# Bibliography

 **GRAMPS resources**

 [1] [http://www.gramps-project.org](http://www.gramps-project.org)—GRAMPS homepage.

 [2] [Linux Genealogy Desktop CD](http://gramps-project.org/index.php?module=pagemaster&PAGE_user_op=view_page&PAGE_id=19) (from the GRAMPS website)—an Ubuntu based Live CD which has GRAMPS, GeneWeb and Lifelines installed. Allows user of a non-free operating system to run GRAMPS without installing.

 **Websites**

 [3] [http://www.ancestry.com](http://www.ancestry.com)—a popular and well stocked genealogical website, includes searchable census and birth, death marriage records.

 [http://www.gro.gov.uk](http://www.gro.gov.uk)—General Register Office for UK Government. From here you can purchase copies of birth, death and marriage certificates on-line.

 [http://www.genesreunited.com](http://www.genesreunited.com)—a genealogists networking site. Run by FriendsReunited and along similar lines.

 [4] **Other free software genealogy programs**

 [GeneWeb](http://cristal.inria.fr/~ddr/GeneWeb/en/index.html)—web based, available for a range of operating systems.

 [LifeLines](http://lifelines.sourceforge.net/)—NCurses (console) based genealogical database.


