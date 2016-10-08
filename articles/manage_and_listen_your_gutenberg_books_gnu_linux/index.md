---
nid: '2958'
title: 'Gutenberg books with GNU/Linux - Part 1'
authors: 'Alan Berg'
published: '2009-02-18 12:38:08'
tags: 'java,books,gutenberg'
issue: issue_23
license: cc-by-nc-sa
section: opinions
listed: 'true'

---
I am a great fan of the [Gutenberg](http://gutenpalm.sourceforge.net/) project, a noteworthy and honorable effort to digitize copyright-free texts. This project has released into the public domain over 20,000 classic books.  

This article will explain how to integrate this huge body of material with the Ubuntu desktop. 

<!--break-->

The Gutenberg project releases books in a standard text format. Volunteers convert a subset of the text to HTML and PDFs and to a few other less ubiquitous formats besides. Other support sites such as [manybooks.net](http://manybooks.net/about/) give you even more choice of formats including compressed formats for palmtops, iPod and Java-based telephones. These sites are mostly free with the option to make a small donation.

The Gutenberg project has delivered to the world the base material for serious and progressive Edutainment. Started back in 1971 by Michael S. Hart, the project has blossomed with numerous [affiliated projects](http://www.gutenberg.org/wiki/Gutenberg:Partners%2C_Affiliates_and_Resources). The project's great success is measurable with a body of around 100,000 available texts--and rising.

=ZOOM=The Gutenberg project has delivered to the world the base material for serious and progressive Edutainment.=

Can software help bring to life plain text files? Alternatively, are we doomed to wander the world carrying sheets of paper and waiting for the next advance in smart reader technology and potential commercial vendor lock-in? 

I will discuss the installation and merits of the following packages:

* guternbrowser
* gmountiso
* [espeak](http://espeak.sourceforge.net/)
* recite
* serpentine

By the finish you will be able to browse e-text and/or hear the text spoken. I will also explain how to download and mount Gutenberg CDs (with collections of books).
 
# Installing the e-text browsing packages

With so many packages available in the GNU/Linux universe, it makes sense to search for a pre-compiled binary rather than installing from a downloaded tar file. I personally find it natural to run `apt` from the command line; for example typing:

=CODE_START=
sudo apt-cache search guten.
=CODE_END=

To my surprise, my search only returned two entries: PYGE[13] (an unrelated python based series of related file manipulation applications) and gutenbrowser. Gutenbrowser sounded promising, running: 

=CODE_START=
apt-cache show gutenbrowser
=CODE_END=
      
You can see that the package is an e-text reader supported by Ubuntu, falling under the general section universe/text. To install the software, input:

=CODE_START=
sudo apt-get install gutenbrowser
=CODE_END=

Test the newly-installed software by typing `gutenbrowser`. An e-reader will pop-up, as shown in figure 1

=IMAGE=f1.jpg=Figure 1: The gutenbrowser under fire.=

The gutenbrowser contains basic functionality to search and download text from a central repository, make bookmarks and display the text in any font size that you choose. After reading a few of the smaller books, I concluded that the browser was a solid application for the desktop.

To make a shortcut, right click your mouse on the desktop and select the "create launcher" option. A dialog will then appear asking for extra information for name, command, and comment. Simply fill in Gutenbrowser for the name, `gutenbrowser` for the command and an optional comment. 

To download an e-text and read it, you will first need to visit the menu item _Library → Gutenberg_. At this point, a dialog will appear with a list of authors and titles. Double clicking on a book title triggers the E-reader to download the book to the selected directory on your local drive. To import the downloaded file into the main menu select "file open local library" and import the text you have just downloaded. The e-reader will then display the title of the book with any other imported books titles available. Selecting the title and double clicking loads the book's text.

You should now be able to read imported books in Gutenberg text format. However, what if you are a road warrior and prefer to keep a large local library? Disk space is cheap: take advantage of ever improving economics, download an ISO image from a Gutenberg site, and mount the image locally, thus allowing you to read all the thousands of books contained in it.

# Local storage

After using the e-text reader for a couple of days I realized that downloading texts was inconsistent: everything worked most of the time, but sometimes downloading the books took a little time and occasionally the relevant file was missing. I therefore decided to download an ISO image the "Best Of  CD August 2003" as mentioned on the [Gutenberg website](http://www.gutenberg.org/etext/11220). I then tried to mount the image to my file system. The advantage of this approach is that I did not need to burn a CD/DVD and then copy the files over to my hard drive. Downloading the ISO is potentially helpful for schools that have limited internet access for their local network of machines. Please be a good net citizen: if you download an image choose the nearest mirror site instead of risking surge loading the main site. 

A compact Ubuntu-related helper to mount ISO images is Gmount-iso. To install it, just type from the command line:

=CODE_START=
sudo apt-get install gmountiso
=CODE_END=

=ZOOM=A compact Ubuntu related tool to mount ISO images is Gmount-iso=

On installation, a new menu option appears on the Gnome desktop under _Applications → System Tools → Gmount-iso_ (figure 2). To mount the image you will first need to create a directory. For this example, I made a temporary one under my home directory `/home/alan/temp/gunten`. To mount, simply locate the image file from Nautilus and then the mount point, in this case `/home/alan/temp/gunten` and finally click the button with the word "mount" on it. 

=IMAGE=f2.jpg=The main dialog from Gmount-iso=

Performing the same action from the command line every time means remembering the exact syntax of the mount command, which can be a hassle. However, for the sake of completeness the equivalent commands to the actions just mentioned is:

=CODE_START=
sudo mount -o loop -t iso9660 /home/alan/Desktop/PG2003-08.ISO /home/alan/temp/guten/
=CODE_END=

The Gutenbrowser e-reader is fast and reads the text files found under the /etext series of directories on the newly mounted ISO without any hesitation.

<!--pagebreak-->

To create a permanent mount you will need to edit the `/etc/fstab` file as root. However, before you do so please remember to backup the older version to a safe location. Assuming that you have moved your ISO image off the desktop and created the directory `/media/guten`, add at the end of `/etc/fstab` something like this:

=CODE_START=
# GutenBerg project.
/home/alan/temp/image/PG2003-08.ISO  /media/guten     iso9660   ro,loop,auto   0   0
=CODE_END=

Please keep in mind that the download sites suggest, if possible, that you should copy and distribute the CDs and DVDs, spreading the opportunity to read classic literature without affecting bandwidth.
 
# Audio Format (libre)
 
The e-reader lacks basic text to voice functionality. If you wish to incorporate this extra audio feature, then you should find another e-reader or try out a command line tool, or use the ever-improving accessibility features in Ubuntu. Festival, recite, [espeak](http://espeak.sourceforge.net/) and a few other well known packages contain the necessary tools. 

I was therefore pleasantly surprised to discover that when downloading these packages I had also automatically installed espeak. To test espeak’s ability to read from a text file, just type:

=CODE_START=
espeak -f location_of_file
=CODE_END=

To compare Recite with Espeak, I installed Recite and got both of them to say "hello world":

=CODE_START=
sudo apt-get install recite 
recite "Hello World"
espeak "Hello World"
=CODE_END=

Although I have seen some other excellent examples of automated singing on the Internet (the pain still haunts me), practically "speaking" a command line tool reading files is not exactly very tuneful when compared with the  human version. An example of a Gutenberg affiliate spin off project is librivox. Volunteers read text and capture it to MP3 and [OGG](http://www.vorbis.com/) format. The OGG format is patent-free and its codecs are released under the GPL license; therefore, it's my personal format of choice. The volunteers tend to capture chunks of audio divided into chapters or sections of any given book. At the beginning of each set piece is a small advert for the project. This can be somewhat intrusive if the sections are small.

My younger son enjoys going to sleep with the CD player turned on and playing classical music or stories. Sadly, his CD player is not modern enough to accept the MP3 or OGG format. Creating an audio CD under Ubuntu from a series of OGG files is straightforward. Simply place a blank recordable CD in your CD burner. A few seconds later, a pop up window will appear: one of the options will be to create an audio CD. Choose the _Add_ option and navigate through Nautilus file manager to the OGG files you wish to convert. Finally, hit "Write to Disc". If all goes well, five minutes later you will have a CD ready to go.

=IMAGE=f3.jpg=The Serpentine Audio CD Creator=

If you do not have Serpentine installed, then the following command will add it to your system:

=CODE_START=
sudo apt-get install serpentine
=CODE_END=

# Conclusion

I have explored a number of Debian packages that make reading Gutenberg texts a pleasure. In part two of this article I will explore Gutenberg-related Java-based applications, from speed reading to converting text to other handy formats. 

*_Until then happy reading._*

# Resources

1. Distributed proof readers home  - [http://www.pgdp.net/c/](http://www.pgdp.net/c/) 
1. Espeak - [http://espeak.sourceforge.net/](http://espeak.sourceforge.net/)
1. GutenBerg homepage - [http://www.gutenberg.org/wiki/Main_Page](http://www.gutenberg.org/wiki/Main_Page)
1. Gutenpalm project - [http://gutenpalm.sourceforge.net/](http://gutenpalm.sourceforge.net/)
1. ISO image - [http://www.gutenberg.org/etext/11220](http://www.gutenberg.org/etext/11220)
1. List of affiliates - [http://www.gutenberg.org/wiki/Gutenberg:Partners%2C_Affiliates_and_Resources](http://www.gutenberg.org/wiki/Gutenberg:Partners%2C_Affiliates_and_Resources)
1. Manybooks homepage - [http://manybooks.net/about/](http://manybooks.net/about/)
1. Ogg format - [http://www.vorbis.com/](http://www.vorbis.com/)
1. Plucker - [http://www.plkr.org/](http://www.plkr.org/)
1. PYGE homepage - [http://pyge.sourceforge.net/](http://pyge.sourceforge.net/)