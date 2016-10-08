---
nid: '2087'
title: 'Dual-booting Kubuntu and Windows'
authors: 'Andrew Min'
published: '2007-07-23 6:30:00'
tags: 'linux,windows,dual-boot,kubuntu,install'
issue: issue_18
license: cc-by
section: end_users
listed: 'true'

---
We have come to a cross-roads in the computer world today. Stick with the familiar Microsoft Windows, or try the stable, secure, but unfamiliar GNU/Linux-based operating systems that have recently started taking off. There are two big factors that stop most people from loading GNU/Linux onto their computer. The first is that they think they need to be a geek to install it. I admit that it is often hard to install something you’ve never had experience with. But with the right coaching, you can do it. Also, people think that you can’t run Windows if you have GNU/Linux (so they lose all their games and other important programs). However, it is actually possible to run Windows and GNU/Linux on the same computer. So what are you waiting for?


<!--break-->


Important note: this article will explain how to install Windows and Kubuntu on the same computer, starting from scratch. This is ideal if you don't have any data on your Windows machine, or if your data is fully backed up. This article does **not** cover how to install Kubuntu on an existing Windows machine preserving your Windows installation.


# Introduction

Recently, I was asked by a friend if I would install a GNU/Linux-based operating system onto his machine. I had told him about how good GNU/Linux was (virus-free, crash-free, and headache-free). Besides, his Windows install was completely messed up.  But he also wanted to be able to use his Windows-only games and programs. So I gave him the best of both worlds by backing up his important documents, formatting his hard drive, and then creating a Windows XP and GNU/Linux dual-boot. This sped up his Windows drive for when he absolutely needed to use a Windows-only program, and still allowed him to use GNU/Linux.  You may be asking, “How do _I_ do it?”. Believe it or not, it is actually very simple.


# Which GNU/Linux operating system you should use and why

The first step is to figure out which GNU/Linux-based operating system (also known as a distribution or distro for short) to use. After all, there are hundreds to choose from. But how do you choose?

You want a distribution that will install easily onto your computer, one that will install third-party programs easily, and one that looks good. There are quite a few that satisfy one or two of the items on our list, but the only one that I’ve found has all three is Kubuntu. Kubuntu is based off of the Ubuntu distribution, well known for installing easily to your computer’s hard drive. In fact, installing Kubuntu is easier than installing Windows. Since Kubuntu is also based off of the Debian distribution it installs 3rd party programs very easily (as it automatically takes care of dependencies). It also uses the K Desktop Environment, also known as KDE, which makes your computer look very elegant.


# Preparing for Kubuntu


## Requirements

The first thing you want to do is make sure your computer can run Kubuntu. Generally, if you can run Windows XP, you should be able to run Kubuntu. If you want numbers, you’ll need 256MB of RAM or more and a hard drive with a capacity of 20GB or more. To find out if you have enough RAM, right-click on My Computer, click Properties, and in the bottom right it should tell how much RAM you have (1024MB = 1GB). To find out how much space is on your hard drive, open My Computer, right click on the C: drive, and click Properties. It should show you the amount of free space. If you don't have enough RAM or if your hard drive isn’t big enough, any local computer store should be able to help you upgrade.


=ZOOM=You’ll need 256MB of RAM and a hard drive with a capacity of 20GB or more=

You will also need a Kubuntu CD or DVD. There are several options: you can have a copy [shipped to you for free](https://shipit.kubuntu.org/) (**not** recommended, as it takes six to ten weeks to ship), you can [order one to be shipped](http://www.ubuntu.com/getubuntu/purchase) (between $4 to $10), or you can just download it for free. For the last option, go to the [download page](http://www.kubuntu.org/download.php), click the continent closest to you, then the country, and then click a location near you. Then, right-click on “CD Image for desktop and laptop PCs”, and click Save Link As or Save Target As. You may want to consider getting a download manager to speed things up ([DownThemAll](http://downthemall.net/) is my favorite). After downloading the ISO CD image, burn it to a CD.  If you don’t know how to, use the free (as in speech) [InfraRecorder](http://infrarecorder.sourceforge.net/).  When you download it, open it and hit `Actions→Burn Image`.  Select the ISO image you downloaded, and start the burn.  You can also refer to the InfraRecorder manual, which comes with the program.


## Backing up

**Please keep in mind that this article is about installing Windows and Ubuntu on an empty, newly formatted machine. This means that you will lose all of your Windows data. If you don't want to lose your data, you will need to back up your Windows drive.**

There are other ways to install Kubuntu on an existing Windows machine in which you don’t have to format your drive, but starting from scratch is the easiest option (and will clean up Windows too).

If you do have valuable data on your Windows machine, you will need to backup what you want to keep. You have a few options for where to backup to: a bunch of CDs, a bunch of DVDs, an external hard drive, or an online host. Backup **all** the data that you want to keep (documents, pictures, movies etc). Also, backup your drivers. For this use the free (as in beer) [DriverMax](http://www.innovative-sol.com/drivermax/). Most importantly, write down your product key for Windows XP. If you can’t find it, use the [Magical Jelly Bean Key Finder](http://www.magicaljellybean.com/keyfinder.shtml) - again, Magical Jelly Bean is free as in cost, rather than freedom (unlike GNU/Linux and most of the software that comes with it). You may want to write down product keys (also known as registration keys) for other software you have bought. Remember to backup your data and the installation packages of your programs!

There is one other thing you must do before you install Windows and Kubuntu, and that is to change the boot priority so that the CD is above the hard drive in boot order. What this does is simply make it so that the computer will run off of the CD (so you can install Windows and Kubuntu) instead of off of the hard drive. Consult your manual on changing the boot priority. If you can’t find out how, call your computer’s manufacturer or do a search online for “booting from a cd with INSERT COMPUTER NAME HERE”.  Replace the INSERT COMPUTER NAME HERE with your machine's name, like “Dell Dimension 4700”.


# Installing Windows

First, you need to get the Windows installer ready. Find the Windows XP CD you got when you first got your PC (or when you upgraded it from Windows 2000 or 98). Insert it in your PC. You should see a Windows XP prompt. Hit the _Enter_ key.

OK, you are now ready to install Windows. The first thing you will see is an End User License Agreement (EULA). Hit the _F8_ key. Next, you’ll see a screen listing all your partitions (as shown in figure 1).


=IMAGE=figure_1.jpg=Figure 1: Partitions list=

Now, delete the `C:` partition. Highlight it (if necessary) using the up and down arrow keys on your keyboard, then hit the _D_ key. You will be prompted to delete partition `C:`. If you can’t handle pressure, scream at the top of your lungs and hit _Esc_ key. But if you are brave, and want to install Windows and Kubuntu, hit the _L_ key. Now you’ll see the screen that was in figure 1, with a major difference: it shows `Unpartitioned Space` instead of `C:`. Highlight the `Unpartitioned Space`, and then hit the _Enter_ key (figure 2).


=IMAGE=figure_2.jpg=Figure 2: Formatting=


<!--pagebreak-->


Now, wait patiently as XP formats the hard drive. When it is done, it will reboot (or it will prompt you to reboot). As soon as it turns back on, remove the CD. Now guess what? The brains at Microsoft force you to put the CD _back in_! Put it in, let XP install (don’t go away though, in the middle you will be asked to set time zones and other “useful” things), reboot, take out the CD as soon as the computer turns on, and complete Windows XP setup (pretty straightforward, if you are unsure what to put as your account/user name, just put your name). When you are done, you should see a blank Windows XP desktop. However, **don’t transfer your files or install any programs yet**.


# Installing Kubuntu

Insert your Kubuntu CD into the CD drive. Next, reboot the computer. When the Kubuntu menu comes up, choose the first option (Start or Install Kubuntu). The desktop should come up (as shown in figure 4).


=IMAGE=figure_3.jpg=Figure 3: Loading the Kubuntu desktop=

Double click on the _Install_ icon on the desktop (if two Install windows come up, close one). The installer has six easy steps, which I will walk you through.

The first step is to select a language. When you are done, click the _Continue_ button.

Second, select your city, and then click _Continue_.

Third, find out your keyboard layout (most likely U.S. English in the States). Select it, and then _Continue_.

At the fourth screen, tell Kubuntu to automatically resize the partitions (and pull the scroll bar to 50%).


=ZOOM=Tell Kubuntu to automatically resize the partitions=

If you can’t do this, then try selecting _Use largest continuous space_. Now, continue to the fifth screen.

Type in your name, your login (to simplify things, you could put this as the same as the Windows user name), your password, and the name of the computer.  Then go to the sixth and final step.

Make sure all the information is correct, and then hit _Install_. When it is done, click the _Restart Now_ button at the prompt. Wait for Kubuntu to shut down, then remove the CD when it tells you to (Kubuntu may freeze up on shutdown. If it does, hold down on the physical power button on your computer for a couple of seconds until it starts to power down again). Put the Kubuntu CD away. Then, hit the _Enter_ key to restart your computer. Everything is now done. When you first restart, you’ll be greeted with a menu with four options in which to boot into. Choose the `Ubuntu` option (probably `Ubuntu kernel 2.6.20-15-generic`) to get you into Kubuntu (the last option, the `Windows XP` option, will get you into Windows). Log in with your username and password. Now, **don’t do anything**. Restart again (`K Menu→Log Out`) just to make sure Kubuntu configured itself correctly. Now, you’re done.  You can transfer all your files and folders to either the Windows partition, the Kubuntu partition, or both (note that Kubuntu can read and write to the Windows partition, but Windows can't even see the Kubuntu partition.  So, it may be a good idea to put your files on the Windows side so both Kubuntu and Windows can access them).


# Getting used to Kubuntu

The default file manager (like Windows Explorer but better) in Kubuntu is called Konqueror. It can open PDFs, multimedia files, web pages, and much more. Most of your files are stored in the directory `~/` (which redirects to `/home/[USERNAMEHERE]`). The external media (flash drives, CDs, the Windows partition, etc.) are located in the `/media/` folder. The desktop folder is located at `~/Desktop/`.

For creating office documents, use OpenOffice.org (`K Menu→Office→OpenOffice.org Word Processor`). It has database, presentation, spreadsheet, and word processing applications bundled with it. And it is compatible with Microsoft Office. For music, use Amarok (`K Menu→Multimedia→Amarok`) or Noatun (`K Menu→Multimedia→Noatun`). And for web browsing, you can use Konqueror (not only is it a file manager, it is also a fully featured internet browser).


# Where to get help for Kubuntu

A great spot for help is the [Kubuntu Forums](http://kubuntuforums.net/). I use it every time I have a problem. A useful thing to do is to take a screenshot of the problem (using KSnapshot under `K Menu→Graphics`), upload it to a photo hosting site, then link to it in the forum post. Another good forum is [LinuxQuestions.org](http://www.linuxquestions.org/). It is bigger, so you’ll get more people helping you. There’s also some [documentation](http://kubuntu.org/documentation.php) from the official Kubuntu site. You can chat with others for help at via IRC at `#kubuntu` on irc.freenode.net using Konversation (`K Menu→Internet→Konversation`, see figure 4). Psychocats has [some good beginner guides](http://www.psychocats.net/ubuntu/), though most of the screenshots are from Ubuntu not Kubuntu. Lastly, you can always Google the question.


=IMAGE=figure_4.jpg=Figure 4: Using Konversation to connect to the #kubuntu channel at irc.freenode.net.=


=ZOOM=A great spot for help is the Kubuntu Forums=

Want to install more programs? Clicking on `Add and Remove` in the K Menu will show all the software you have installed, and show some you can get. There’s a handy guide to [installing stuff in Ubuntu](http://monkeyblog.org/ubuntu/installing/) over at the Monkey Blog, and it works for Kubuntu users too.


# Conclusion

Congratulations! You now have a Kubuntu and Windows system up and running. Now, help others do the same thing. Print this article and show your friends. Install Kubuntu for them. Do a video tutorial of installing Kubuntu and put it on [YouTube](http://youtube.com/) (or put it on [Revver](http://revver.com/) and make some dough while you’re at it). Blog (or write for [Free Software Magazine](http://www.freesoftwaremagazine.com/)) about your experience. Become a GNU/Linux evangelist. Help others in forums.


>In most countries selling harmful things like drugs is punishable. Then how come people can sell Microsoft software and go unpunished?—Hasse Skrifvars 

