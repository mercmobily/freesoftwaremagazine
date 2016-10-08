---
nid: '1774'
title: 'The perfect network server'
authors: 'Ryan Cartwright'
published: '2007-04-18 16:30:00'
tags: 'debian,servers,sme,networks'
issue: issue_17
license: cc-by-nc-sa
section: hacking
main_image: hide.jpg
listed: 'true'

---
So  you need a server? Not a web server of course, you rent someone else’s for that. No, you need a file server, print server, intranet, mail server and more. Can free software provide the answer? Of course it can.

Well what kind of answer did you expect from Free Software Magazine?


# Growing pains

Many office networks grow in an almost organic way. They start life as a single PC, then a second is added and before you know it there are five or ten. Sometimes these are standalone but more often they will be peer-to-peer networked. Eventually this becomes cumbersome and some kind of server solution is desirable. At this point the fledgling IT budget becomes hungrier. Proprietary servers are expensive to buy and licence. Free software has for some time offered a choice of alternatives in this field and this article aims to discuss those options and explain how you might deploy a free software LAN server, which will allow you to start small but which can grow with you with minimal extra outlay. So, if you are looking to deploy a server but are baulking at the expense and hardware needs of Microsoft Exchange, read on. Figure 1 shows a typical network layout for your server, for the purposes of this article I am talking about five to ten client PCs behind a single ADSL line.


=ZOOM=If you are looking to deploy a server but are baulking at the expense and hardware needs of Microsoft Exchange, read on=


=IMAGE=figure1.jpg=Figure 1: typical network layout for our target system=


# Hardware choices

First, I’ll look at the hardware choice. Server hardware for this kind of project will not be particularly special. Bear in mind that it won’t be running a GUI, so you won’t need that 128MB 3D graphics card. Sound is also irrelevant beyond a system beep, so no sub-woofers are required either. CPU, RAM and hard disk will be crucial as will removable storage if you are implementing an on-site backup solution.

Exactly how fast or how big this all needs to be will vary. However, as a guide, I have recently installed two such servers. One serves five people in a small office and is a Pentium II 700/256 MB RAM/40GB IDE HDD. The other serves about 50 people and runs a lot of services. It is a Pentium 4 3GHz/1 GB RAM/2x160GB SCSI RAID array. The first has a USB DVD writer and the second an AIT-2 tape drive. The first was an old desktop PC which was no longer required and the second was custom-built and rack-mounted. Of course, neither have a (permanent) monitor, keyboard or mouse attached.

It’s unlikely you’ll have any hardware issues specific to running free software. Especially considering the advances made by GNU/Linux distributions and the BSD options. If anything, I would be careful of older network cards and devices mounted on motherboards as some of these can use peculiar chipsets. If you do have an issue then you can buy fairly cheap GNU/Linux compatible alternatives on-line.


# Designed to serve

What might such a server be expected to—er—serve? Here is a suggestion: files (Samba); printers (CUPS); Dynamic Host Configuration Protocol (DHCP); mail (Exim/Procmail/Qmail/Sendmail) and intranet (Apache) internal websites.

The names in parentheses indicate typical free software packages you could use to provide such services. The resources section at the end of this article has links to most of their websites. The mail and intranet services could be provided elsewhere but there may well be situations where a standard ADSL account is used for connectivity and this includes a single catch-all email account. A server like this would give staff individual mail addresses. Similarly, a website may be available, but in a single office environment a local server would provide a more manageable and controllable intranet.


# Free software options

Whilst there will be many ways to skin this particular cat, I shall look into two of the most popular ways of deploying a free software LAN server.


1. Build it yourself from a typical distribution
1. Download and install a customised made-for-purpose distribution

So how do you decide? My advice is to work out how much time, budget and skills you have available and go from there. If you have no time at all I would stop now. Installing a server will require some time (even—or especially—a proprietary one). If you have a couple of weeks, know how to use a command line and fancy a challenge then go for the first option. If you have a week and don’t know what a command line is then go with the second option.


=ZOOM=Work out how much time you have available. If you have no time—stop now=

I’ll be looking at one example of each. Of course, your preferences may differ from mine but that’s the beauty of free software—choice. Another one is scalability. Both these options will, given adequate hardware, scale to support much larger setups.


# DIY servers

Building your own server from a standard distribution will involve more work, particularly in maintaining packages, installing updates, etc., but it will be your server. It will run the software you choose and will be as unique as you want it to be. You are unlikely to get a support contract for it but at this level you are unlikely to need one. This is the “fun” option. That’s in the same way that building your own house can be fun. I’m looking at a Debian GNU/Linux-based server.


## Base install

You can download an install CD from the [Debian website](http://www.debian.org). I usually go for the [NetInst CD](http://www.debian.org/CD/netinst). The Debian installer (at time of writing) has a familiar curses-based interface with fairly self-explanatory options (see figure 2). Follow the instructions and then reboot when requested.


=IMAGE=figure2.jpg=Figure 2: the Debian installer showing package collections=


<!--pagebreak-->



## Packages

Once your base system is installed you can install the specific packages you need. The installer has package collections aimed at particular tasks. Figure 2 shows this screen and, as an example, the web server collection will install `apache2` and the file server collection will install `Samba`. Obviously you won’t be needing the Desktop Environment collection. This is a server and contrary to what certain software companies believe, running a GUI is a waste of resources. Any packages not included at this stage, such as `dhcp`, can be installed using `apt-get` at the command line. I installed the current stable distribution. You can of course install the testing distribution if you prefer. I would advise against using something like Debian’s unstable distribution on a mission centric server like this.


=ZOOM=Contrary to what certain software companies believe, running a GUI is a waste of resources for a server=

_Note that you may have particular preferences for some services, Procmail instead of Exim, for example. Debian usually has packages for these but supplies certain ones by default. This is not the place for a debate on why they have made those choices. Feel free to join the [Debian mailing lists](http://www.debian.org/support#mail_lists) if you want to enter that debate. ;o)._

If selected, the installer helps you configure the mail server as shown in figure 3. It does a good job of helping you setup the basics with well laid out options.


=IMAGE=figure3.jpg=Figure 3: Choosing packages is made easy by collections=

There’s no GUI so configuration is with a console based text editor. Debian packages have config files under `/etc` in fairly obviously named files. What I don’t have room for here is detailed instructions for the exact setup for each package, so I’ll just layout the options I used for each package where it usually differs from the default installation.

Samba, installed as part of the file server collection, essentially mimics a Windows server with regard to providing shared directories and printers. The Windows clients (and generally their users) remain largely oblivious to the fact that the shared directories are not on a Windows server. Each user’s home directory and any CUPS printers are shared by default. In addition to these, I usually add a [public] share (mapped to `/home/public`) which is browse-able and has no user restrictions. You can setup default and specific permission masks for shares.

Apache is setup with a single site. The ADSL router/firewall is set to block inbound access to port 80 thus only the clients can access the web server. If you want a public facing website you might be better to host it across something more stable than a domestic ADSL line.


## Maintenance

Keeping your server up-to-date is vital if you are to keep on top of security issues and package bugs. Debian provides a simple method for this via `apt`. It will update installed packages, and the operating system itself, on-the-fly and need a reboot only if you update the kernel or modules. This means that you should never need to reinstall your system and updating an application does not require server downtime. You can, of course, setup a cron job to update your system overnight but perhaps a safer strategy is to use the `-d` option for `apt` which will download the required updates ready for you to install them at your convenience.


=ZOOM=You should never need reinstall your system and updating a package does not require server downtime=


# Let someone else do the hard bit

Sometimes you don’t have the time for a DIY server and this is where a custom distribution comes in. [SME Server](http://smeserver.org) is based on the popular enterprise level [Cent OS](http://www.centos.org). The idea of a custom-made distribution is to provide everything you need on a single CD. The downside of this is that you have little choice in the packages used. Deviating from the standard install is possible but, of course, it makes it more difficult when it comes to upgrading later. Updating a custom distro will often require booting from a new CD. This requires server downtime and thus is best done outside of working hours.


## Installation

The SME Server installer is another curses-based affair and walks you very easily through each step. Rebooting, as requested, then leads you to package installation and server setup. By the end you are left with a working server ready for you to setup the details, like users and shares. The whole process took around half an hour. Figure 4 shows one of the later options where you choose whether your server is a server only or a gateway as well and whether to enable the firewall.


=IMAGE=figure4.jpg=Figure 4: The SME Server installer. Look familiar?=


## Configuration

Of the two options I’ve discussed, SME Server wins hands down for ease of configuration. It comes with an administration console, which can be accessed via a local web interface, a curses-based console at the server, or via ssh. Figure 5 shows a typical web-based screen. Pretty much everything can be configured from within here, which makes this a perfect choice if you are less comfortable on the command line. That said, you are limited to the configuration choices decided by the SME Server maintainers.


<!--pagebreak-->



=IMAGE=figure5.jpg=Figure 5: The SME Server web interface=

Mail transport is handled by qmail. Fetchmail is also provided and it is easy to setup a maildrop from a single ISP account. The web interface provides a webmail client as well. SME Server uses the concept of i-bays which double as both folder shares and directories within the intranet. This makes it very easy for staff to make files available to each other via SMB or the intranet. Setting up a website is trivial using the administration console.


=ZOOM=SME Server wins hands down for ease of configuration=


## Security

SSH access is available within SME Server although enabling remote access to the administration console also enables root logins. This particular hole can be closed but not through administration console so unless you _are_ handy with the command line I would suggest you leave admin logins disabled. If you do make the required changes, then be prepared to keep a note/backup of them because when you upgrade they could well be overwritten.


# Backups

For any machine a backup is vital. This is more so for a server where the data is not only more extensive but has more stakeholders in it. Most insurance and business continuity plans require backups be removed from the premises. On-line backup solutions exist which meet this but for a small server like this I would suggest it’s more cost-effective to use removable media such as tape or optical discs.

SME Server provides backup facilities to both tape (using flexbackup) and to a desktop client. There is a 2GB maximum limit on backup to desktop and if you are backing up to tape make sure you are using one of the supported tape drives. Flexbackup is also a Debian package so you can install it on the DIY server if you want. There are other solutions, like Amanda. SMEServer does not support optical devices so instead of using the built-in backup solution be prepared to write your own. Personally, I have a set of scripts using tar which I recycle from server to server.


# Conclusion

Whether you choose a custom distribution or a do-it-yourself option, a server based on free software has tremendous advantages. Firstly, you can have complete control over each package used and how it is setup. Secondly, the server will grow with you but without additional licence hassles. And thirdly, the level of uptime for free software servers is, in my experience, a lot higher than proprietary alternatives.

Servers do not have the same needs (e.g. a GUI, music or video applications) as desktop machines and thus the traditional arguments for not using free software are, in my view, nullified. With greater control, arguably better security and no licence worries, using a free software server could end up being a better use of your time, resources and money.


# Resources


* Debian GNU/Linux— [main website](http://www.debian.org) — [NetInst CD download](http://www.debian.org/CD/netinst/)
* SME Server— [main website](http://www.smeserver.org) — [community support](http://contribs.org)
* [Samba](http://www.samba.org)
* [Exim](http://www.exim.org)
* [QMail](http://www.qmail.org)
* [Fetchmail](http://fetchmail.berlios.de/)
* [Cups](http://www.cups.org)
* [Apache](http://www.apache.org)

