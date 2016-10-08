---
nid: '2073'
title: 'Desktop diagramming with Dia and Kivio'
authors: 'Alan Berg'
published: '2007-06-01 6:30:00'
tags: 'graphics,kivio,dia,diagramming'
issue: issue_17
license: cc-by-nc-sa
section: end_users
listed: 'true'

---
Don't let the simplicity of use fool you. Both Kivio and Dia, two free software diagramming tools, are very efficient at what they do. If you need to design a complex flow chart or create a no-fuss UML diagram then you could do a lot worse than to choose either of these packages.  The tools have 90% of the expected functionality with only 10% of the hassle and fuss that more complex and unnecessarily feature rich proprietary diagramming tools deliver. The learning curve is small and the end result is potentially professional.

GNOME and KDE are the predominant desktop environments for GNU/Linux.  Both environments sport their own office suites; these two office suites try hard to contend with the mastery of OpenOffice; it is important to note OpenOffice does not have a diagramming tool such as Microsoft Visio. You may argue with some degree of success that Impress or Draw from OpenOffice may mimic the functionality, but Impress or Draw's emphasis is on presentation and vector based drawing respectively and not on diagramming using precreated symbols.

In this article, I will briefly mention how to install KOffice's Kivio and GNOME Office's Dia application and quickly tour the products.  I personally believe that both tools perform their specified function well and are amazingly easy to learn—the basics are absorbed within five minutes. In the end, because of their fundamental equality, personal bias may pull you to choose either one of these applications.


# Installation

I have chosen Ubuntu 6.10 as the OS for this demo, which is the newest version of Ubuntu at the time of writing.

Don't be fooled by the fact that the applications are part of KOffice or GNOME Office: both will run happily under either of the two desktop environments.

Before we start you might want to install the Adept package manager, which the KDE environment may be missing: to install this utility simply execute the following from the command line:


=CODE_START=

sudo apt-get install adept libqt-perl

=CODE_END=

You should now be able to launch Adept via `K menu/System/Adept Manager Manage Packages`

To install Kivio (version 1.5.2) launch Adept and fill in the system admin password that you use with sudo; via the search box at the top of the Adept window, search for "kivio". You should now be seeing a view similar to figure 1. The packages Kivio and Kivio-data should be set to the status of "install requested" and then click on the green tick icon at the top of the dialogue. You now have a working version of Kivio executable from both GNOME and KDE.


=IMAGE=f1.jpg=Figure 1: Adept at work=

What I refer to as the "GNOME office" is not really an office suite but rather a collection of tools, which includes the well-known and respected AbiWord, Dia and a few other assorted applications.

To install Dia version 0.95 via the GUI from within GNOME, launch Synaptic Package Manager via `Applications/Add Remove`; you will need to fill in your admin password when prompted. Select Graphics/Dia Diagram Editor as shown in figure 2, then click on OK.


=IMAGE=f2.jpg=Figure 2: Installing Dia in Synaptic=

To install from KDE you are able to search for "dia" in Adept and install. 


# Dia basics

Once Dia has started, you will find yourselves with two separated windows as shown in figure 3.

The main left hand window is the drawing plane and the right is the diagram editor. If the left window is missing or you have removed it by mistake, simply go to the Diagram editor and select `File/new`.

To select different symbols click on the sheet name. In figure 3 the name is "Network", but normally you start with the "Basic" flow charting sheets: select other sheets and choose the one you consider relevant.  Back in the diagram editor drag and drop the symbols across onto the drawing pane.

Underneath the symbols sit icons that allow the creation of lines of various thicknesses, colours and structures. Above the symbols lie special icons for importing images or connecting objects with different shapes; 'T' stands for text and obviously allows for the annotation of your diagram.

With this basic functionality, you will be able to create reasonable diagrams within minutes. The failure of some applications is their developer's desire to include every function imaginable which results in overly complex menu structures that have a significant and inappropriate learning curve. Dia follows the highly effective UNIX spirit of staying focused and doing its specified function well.

To save a file select `File/Save` from the drawing plane itself.  You may also export the current project to many different formats including `TIFF`, `JPEG` and `SVG`. The ability to save to SVG is a form of future proofing as SVG is an XML format that stands a significant chance of becoming the graphics standard for web browsing. XML is just text and is, therefore, much easier to manipulate on the fly than a binary such as JPEG.

Dia activates two other dialogues by pressing F8 or F9 respectively, or by visiting the file menu option of the diagram editor. F8 activates the diagram tree which represents all the symbols within your drawing as objects; right clicking on an object in the tree allows for easy access to the property dialogue where you can change properties such as colour and line type: this efficiency makes rapid and consistent editing possible.

Pressing F9 activates a sheet and object dialogue that allows you to add and move objects (such as computers or flags for example) across different sheets. For example, you may move a computer symbol from the sheet "Cisco—Computer" to "Networks" if desired. You may also import SVG like graphics as objects, but more on this later.

The drawing plane itself also has a number of menu options. "Diagram" allows you to separate a drawing into layers so that you can manipulate objects on one layer without affecting another. The "Objects" menu option enables you to send objects backwards and forwards so as to be behind or in front of other objects, with the ability to set transparency for background objects. This feature allows for sophisticated and pleasing diagrams.

In summary, Dia is easy to learn and definitely not overly complicated, yet it still manages to deliver the functionality required to produce detailed diagrams that are pleasing to the eye.


<!--pagebreak-->



=IMAGE=f3.jpg=Figure 3: Dia at start up=


# Kivio basics

Thankfully, Kivio is just as simple and straightforward to use as Dia although it has its own slightly different personality. On starting Kivio via the menu option `Office/Kivio` the standard KOffice startup occurs. Select and double-click "Basic flowcharting": Kivio should now run with a dialog similar to that in figure 4. In the center of the screen you should see the drawing plane and on the left hand side of the screen the basic flow charting stencil with all its related symbols (objects). To create your first simple diagram, drag and drop the object to the middle of the page , select the object and resize it and then double click the new object to add text.


=IMAGE=f4.jpg=Figure 4: Kivio in action=

To add another stencil select the top menu `Tools/Add stencil set` and then select the extra set that you wish to add, or click on the relevant icon underneath the main menu. If you're not sure which icon does what, place your mouse pointer over each icon and wait a few seconds until a tool tip appears explaining the current icons purpose.

The view menu allows you to add a grid to the drawing plane and gives you the option of splitting the pane into two drawing areas—a nice feature especially in the age of 21 inch TFTs.

The right side pane allows you to gain a quick overview of the whole page even when you are zoomed in on a particular area in the left pane; the layers tab allows for adding and removing of layers while the object tab shows an overview of all objects in the page; the bottom half of the right hand tab displays the size properties of the currently selected object. Note, Dia has a slightly larger set of properties that you can manipulate. A second tab here allows you to protect more of the object from change which is handy when you want to perform bulk actions with the exception of a few objects.

For a more detailed basic tutorial, visit the "Help" menu and choose "Kivio handbook".


# File formats and round trips

Microsoft Visio has a proprietary `.vsd` file format that potentially has licensing dangers associated with it; therefore, both Dia and Kivio do not and should not import or export this format. This is unlucky for the end user within a diverse organisation and a good example of why, whenever possible, you should only accept tools that can output directly to open standards.

The wish to enable documents from one application to work effectively with another has come to the fore ultimately because of the previously stated frustration of end users: the effects of incompatibility. This swelling of frustration was, in a large part, due to closed file formats. Therefore, two questions about the possibility of making "round trips" with the documents produced in these applications emerge. The first: can stencils be imported and exported between both applications; the second: can we create a diagram in one to later be manipulated in the other.

Let's try "round tripping" the diagrams first. There is no direct import or export function between the native file formats, Dia however, has many more import options than Kivio: Kivio can only import its own native format at present, though it would not surprise me if the hard working developers had eliminated this issue by the time you have read this article. Exporting is rich in both applications and mostly involves various graphical formats.

Exporting from Kivio to Dia turned out to be more difficult than expected as there was no direct import option in Dia for files created in Kivio. Dia  does, however, allow you to directly add images as objects via `CTRL + i`, so by exporting the file from Kivio as an image you should be able to achieve the desired end result.

Exporting directly from Dia to Kivio appears to be impossible due to the limited import facilities of Kivio.

All modern word processors can use the graphical exports features of both tools, however, it is clear that Dia has more import options and therefore is more likely to function seamlessly within a diverse software environment. Further, the issues with compatibility will probably force you, or your ICT department, to choose one of the other products as your diagramming tool. I hope and expect this barrier to adoption will fall as we move into the open document era.

Stencil imports are another nice-to-have feature. One handy Sourceforge project for Kivio is xfig2sml.  `xfig-stencils-0.1.tar.bz2`, a resource in their download section which contains 900 stencil objects. The archive dates back to 2001 and imports directly via `File/Install stencil set`. Kivio successfully displays the top-level directory structure, but sadly not the underlying objects. This is an issue with Kivio not being able to display a deeply nested directory structure accurately - you can eliminate this problem by flattening the archive out. As a result it is easier for a beginner to buy stencils or a stencil making application from the company "theKompany".

Kivio can also recognise Dia objects and the Ubuntu package has the Dia stencils already included.

Dia has its own `.shape` format for storing symbols that is a version of SVG with some extra information for icons and connections.  You may load this XML based file via `Diagram Editor/File/Sheets and objects`.


# Conclusion

In conclusion,  the ability to import/export stencils is possible; realistically to use this function efficiently requires mid-level knowledge and a significant amount of experimentation.


# The future of the common desktop

The free software market is a tough place where there are many products competing to be the best in their given field. There are more than a few excellent Windows managers—GNOME and KDE being the best known and with the most momentum behind them. Unfortunately, because of this competitiveness, there is a natural degree of repetition of their development efforts.

The removal of technical barriers such as the ability to import and export files between similar applications and improvements in some of the subtler details of the applications, i.e. compatibility between stencil sets, may play a significant role in the further acceptance of the GNU/Linux Desktop. I, therefore, welcome the initiative of Portland - a joint OSDL/Freedesktop.org effort. The first results of this project can be seen in the tools XdgUtils that help with common installation tasks between the desktops.  Further, I welcome the ever nearer and brighter future of the Open Document Format and the SVG and XML formats in general that have already opened the way to consistent interoperability between similar applications.


# Acknowledgements

I recognize that it is easier to be a critic than to build a tool that many use with pleasure: well done to the KOffice and GNOME office developers whose efforts allowed me to write this article.


# Bibliography

[Dia](http://www.gnome.org/projects/dia/)—http://www.gnome.org/projects/dia/

[GNOMEoffice](http://www.gnome.org/gnome-office/)—http://www.gnome.org/gnome-office/

[KOffice](http://www.koffice.org/)—http://www.koffice.org/

[KDE-Files](http://kde-files.org/)—http://kde-files.org/

[Portlandproject](http://portland.freedesktop.org/wiki/)—http://portland.freedesktop.org/wiki/

[theKompany](http://www.thekompany.com/products/kivio/faq.php3)—http://www.thekompany.com/products/kivio/faq.php3

[Xfig2sml projecthomepage](http://sourceforge.net/projects/xfig2sml/)—http://sourceforge.net/projects/xfig2sml/


