---
nid: '1779'
title: 'Using Metalinks'
authors: 'Anthony L. Bryan'
published: '2006-03-07 6:30:00'
tags: 'metalink,download-manager,mirror,aria2,wxdownload-fast'
issue: issue_16
license: gfdl
section: end_users
listed: 'true'

---
Downloads can be much faster, more efficient, and simplified by using [Metalinks](http://www.metalinker.org/), a new system which automates segmented downloading and checksum verification.


# What is Metalink?

[Metalink](http://www.metalinker.org/) is an XML format for downloads that lists mirrors, Peer-to-peer (P2P) links, and checksums. Metalink was designed to make typically advanced downloading features easier for everyone to use. Previously, gathering mirrors and manually adding them to download managers was time consuming and frustrating. Having access to more mirrors increases reliability, and speed, as multiple mirrors can be downloaded from at once. Using P2P lessens bandwidth costs for distributors such as OpenOffice.org and mirrors. Unfortunately, P2P can not be used in all situations because it is sometimes blocked (by offices, universities, and ISPs), so it is helpful to have regular mirrors to fall back on in these cases.

I have a cable internet connection with a max download speed of 800k a second. Most of my download speeds are around 200k/sec though. Why? One server is feeding many people, and that’s all it can serve up. But, it's still pretty fast, and fine for most downloads. There's not much difference with waiting 1 minute or 4 minutes. If you want to get something bigger though, you start to notice the difference. Instead of taking 14 minutes to download an ISO, it can take 2 hours or longer. You don't really know how fast or reliable a server is until you start downloading from it.

Using a download manager, you can download a segment of each file from multiple servers at the same time. The segments are then added together when they have all finished. This lets you fully use your maximum download speed. (Download managers have other features like pausing and resuming downloads which are also helpful).

Take a look at this page (figure 1). Similar to many download pages, it lists a bunch of mirrors:


=IMAGE=archmirrors.jpg=Figure 1: Arch Linux mirror list=

This lists the mirrors in general. A Metalink will point to a specific file(s) on all the mirrors. It can list priority and location of the mirrors, so it's easy to download from many of them at once, along with P2P like BitTorrent, ed2k, and magnet links.

Metalinks can be found at [http://www.metalinker.org](http://www.metalinker.org/) and [http://metalink.packages.ro/](http://metalink.packages.ro/) as well as directly from [OpenOffice.org](http://distribution.openoffice.org/p2p/magnet.html), Arch Linux, PC-BSD, DesktopBSD, blag linux, StartCom Linux, Ubuntu Christian Edition, Berry Linux, redWall Firewall, and others.


# Metalink Clients


# What is wxDownload Fast?

[wxDownload Fast](http://dfast.sourceforge.net/) is a multi-platform open source download manager (GUI), similar to other download managers and Metalink clients: GetRight on Windows and Speed Download on Mac OS X. wxDownload Fast is available on Windows and Linux. Like most download managers, it supports resuming and segmented downloading.


=IMAGE=wxdf_resize.jpg=Figure 2: wxDownload Fast GUI Metalink client=


# Installing and running wxDownload Fast

wxDownload Fast can be compiled from source. Binaries are available for Windows, Debian, and Ubuntu. wxDownload Fast can be integrated with Firefox via [FlashGot](http://www.flashgot.net/).


# Using wxDownload Fast: an example

If you use wxDownload Fast with FlashGot, you can just click on a Metalink. Otherwise, you will have to copy the link, click New in wxDownload Fast, and then click OK to start downloading. wxDownload Fast will automatically process the Metalink and start downloading from the mirrors. Once the download has finished, it will verify the checksum automatically. You can let wxDownload Fast handle all of your downloads, not just Metalinks, so it’s pretty useful.


<!--pagebreak-->



# What is aria2?

[aria2](http://aria2.sourceforge.net/) is an open source command line download utility with resuming and segmented downloading capabilities. It is similar to `curl` and `wget`, but not as general purpose. It also supports BitTorrent and uses low amounts of system resources. It’s great for downloading regular files, as well as Metalinks and torrents.


=IMAGE=aria2.jpg=Figure 3: aria2 command line Metalink client=


# Installing and running aria2

aria2 can be compiled from source. Binaries are available for a variety of platforms. It is available from the official Debian repository. For Ubuntu, you can download a package from [http://www.raphink.net/ubuntu/](http://www.raphink.net/ubuntu/) or add`deb http://raphink.net/ubuntu/ubuntu edgy main` or `deb http://raphink.net/ubuntu/ubuntu dapper main` to your `sources.list`, depending on whether you are running Ubuntu 6.06 or 6.10.


# Using aria2: an example

aria2 usage is very simple. At the command line, you type:

`aria2c http://www.exampleURL.com/file.metalink`


# More advanced uses of aria2

Metalink also allows files to be designated for a certain language or Operating System (OS). Some download pages are a bit confusing for users. You have to select OS, language, and mirror location. Metalink eliminates the need to manually select OS, language, or location as these settings can be saved by the download application and reused for every download.  Or in the case of aria2, the correct settings can be selected with command line options such as:

`aria2c URL --metalink-language=LANGUAGE`

Where LANGUAGE is en-US, de, it, fr, etc.

`aria2c URL --metalink-os=OS`

Where OS is Windows-x86, Linux-x86, Solaris-x86, MacOSX-PPC, etc.

Take this Firefox 2.0 download page (figure 4) for example:


=IMAGE=ff.jpg=Figure 4: Firefox download page=

It lists 41 languages and 3 OS choices for each, for a total of 118 download links (5 are missing). All of these could be condensed into ONE Metalink and also contain all the mirrors as well.

Here's how it works: One link, one click downloads for everyone. For instance, a Metalink for Firefox can list every OS and language combination and their mirror locations and checksums. Someone in Brazil that speaks French and uses Linux can click on the link and get the French Linux version from the local Brazilian mirrors. Someone in Japan that speaks English on Mac OS X can click that same link and get the English OS X version from the local Japanese mirrors. Once the download finishes, the checksum is automatically verified, without user interaction.


# Conclusions

As you can see, Metalink simplifies as many things about the download process as possible. From gathering mirrors, verifying checksums, to making download pages less cluttered and confusing, Metalink automates as much as possible. Look into downloading with Metalinks for a faster and simpler download experience.

