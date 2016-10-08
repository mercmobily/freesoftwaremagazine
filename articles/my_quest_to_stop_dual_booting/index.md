---
nid: '2128'
title: 'My quest to stop dual-booting'
authors: 'Chris Mostek'
published: '2007-03-15 2:47:59'
tags: 'ubuntu,virtual-machine,dual-boot'
license: verbatim_only
section: opinions
listed: 'true'

---
I'm still on my quest to stop dual-booting between [Edubuntu](http://www.edubuntu.org/)and Windows XP.  The hope is to solely boot into Edubuntu since I've switched the majority of our personal computing over already.  The last pockets of resistance were the MS Money and Hallmark's Greeting Card programs.  I could address MS Money with GnuCash, a QIF import and a little time  (see prior blog [Trial Balances and Tribulations](http://www.freesoftwaremagazine.com/blogs/export_from_ms_money)).  That left the Hallmark program.  I turned to [Wine](http://www.winehq.com/) and [VirtualBox](http://www.virtualbox.org/)to see if either option would get me to a single boot.

It's sounds silly to get hung up over a little greeting card program, but hear out my logic.  First, there is a time penalty when you take children into a greeting card store.  I just want to get a card and get out.  An almost impossible task.  Second, I'm usually late enough getting a card without throwing in a store trip.  My typical scenario is:  Oh bleeeep, we're going out for our anniversary tonight.

My first attempt was running the Hallmark software under Wine.  The Wine website has a applications database to check compatibility.  Turns out, neither Hallmark or MS Money 2006 (thinking I could avoid the QIF import process) are supported in Wine.  Which I found out after jumping in and attempting to install both programs.  Check the database first!

So, I tried the virtualization software route for my next attempt and downloaded VirtualBox 1.3.6 for both Edubuntu 6.10 and Windows XP.  There are some excellent directions for installing into a Ubuntu system at [Ubuntu Geek](http://www.ubuntugeek.com/create-and-manage-virtual-machines-using-virtualbox.html) and [Softpedia](http://news.softpedia.com/news/Ubuntu-Windows-and-VirtualBox-equals-Power-in-Your-Hands-48173.shtml), so I won't go into any installation details.  Just two quick installation points.

First, during the Linux installation, the prompt at the end of the license does not indicate how to proceed forward.  Do I type yes, no, ok, Y, what?  Just tell me!  Hitting the right arrow brought up the yes / no choices.  A minor point, but at 1:30am it's easy to waste five minutes figuring out what's next.

The second point is VirtualBox does not create a Start menu option or a desktop icon after a Window's installation.  So you will have to create your own.

The PDF of the User’s Manual is available to download from same web page as you download the program.  Nice touch there.  Good detail in manual for setting up a virtual machine and installing your OS, especially Chapter 3.  Overall, my initial impression was easy to install, configure and run.

But did VirtualBox get me to my ultimate goal?

Under Edubuntu, I was unable to install Windows XP.  But the primary issue was using Sony’s Recovery disks to install Windows and not having an original Windows XP disk instead.  The Sony disks did not recognize the virtual machine as a valid Sony laptop and stopped the installation process.

Under Windows XP, I successfully created a virtual machine and installed Edubuntu 6.10 from the ISO image stored on an external USB drive.  The usual Edubuntu applications ran without issue and no problems accessing the Internet.  Overall, nothing different from when I first installed Edubuntu onto my laptop.

I could theoretically boot into Windows XP and then use VirtualBox to run Edubuntu.  However, since I’m almost fully switched over to Edubuntu, I'm concerned about splitting the system resources between Windows and  Edubuntu under VirtualBox.  Not sure if that's a practical concern, so I'll try running the Edubuntu in VirtualBox for a few weeks and see how it works long term.

So, given the constraint of the recovery disk, I didn’t achieve my ideal goal of solely booting into Edubuntu and running Windows when needed.  However, I can probably achieve a similar result by reversing the equation.  Either way, I can see myself having lots of fun exploring other OS’s under VirtualBox.

