---
nid: '3741'
title: 'Debian/Ubuntu: Making a Package Repository on Your LAN'
authors: 'Terry Hancock'
published: '2012-03-30 7:20:32'
tags: 'debian,ubuntu,deb,packages,repository'
license: cc-by-sa
section: hacking
main_image: debian_lan_repo.png
listed: 'true'

---
<!-- Debian/Ubuntu: Making a Package Repository on Your LAN -->

This is one of those things that doesn't get explained much, because it's almost too simple to document: it's often useful to keep a few Debian package files (`.deb` files, used in Debian, Ubuntu, and Linux distributions derived from them) available for installation, either on your local host or on other computers on the same local-area network (LAN). You can make these available as an extra "repository" for your APT system, so that APT-based package tools (`apt-get`, Aptitude, Synaptic, etc) can access them. This makes managing these special packages just like your other packages, which can solve a lot of problems.

<!--break-->

There's a number of oddball .deb files I need to keep track of on my local computer network. For example, if you want to watch commercial DVDs on your computer, you'll have to face the dirty little secret that the correct, un-crippled `libdvdcss2` is not available in many public repositories, because it is technically illegal to host it in the USA (this is absurd, but that's a story for another day). Then there are development packages that I've downloaded, especially particular versions that happen to work on my system in which a particular bug is fixed (but before it got broken again in a later version). Occasionally, I've even had experimental packages I created from source packages.

In the past, I used to just maintain a folder with these deb files in it, and manage them with `dpkg`. This sort of works, but because APT doesn't know about them, it sometimes does stupid things -- like remove packages that depend on these packages instead of installing the required dependency. With a great deal of attention, you can usually work these things out manually -- an experience known colloquially as "deb-hell" for good reason.

I used to do this partly because the tutorials I could find on creating a Debian repository were all focused on maintaining a giant full mirror of the Debian distribution, which is a major undertaking. That's a much more complicated task, and it would indeed be overkill for my problem.

Later, though, I found out that there is a much simpler solution that will work if you just have a few packages to maintain. This is a much better way, and it's very simple to set up.

=TEXTBOX_START=Using root=
There are a lot of people nowadays who will do anything to avoid logging in as `root`, and some distributions are set up by default to make it very hard. Obviously, you don't want to do any general work while logged in as `root`, but I find using `sudo` over and over again to be silly. I just use `su` to switch to root and then exit when I'm done:

=CODE_START=
$ su
Password:
#
  [... do some stuff as root ...]
# exit
$
=CODE_END=

If you want, though, you can do all the root things from your regular account by prefixing things with `sudo`. But I find this easier, and don't see any reason to be superstitious about it.
=TEXTBOX_END=

# Install a Local Apache Webserver

This is actually really easy, and it has all kinds of uses. A lot of packages are designed to be deployed as web applications -- but there's no reason you can't run the server on the same computer you're on. It also comes in handy if you have several computers on a LAN that might need the same services. I use the same trick to run a local copy of Mediawiki, for example.

You might worry about security, but on a typical home LAN like ours where we connect through a firewall appliance device, it's really not easy for outsiders to get onto your local computers -- the firewall just blocks _all_ HTTP connection requests, so the local computers are essentially invisible to the outside world anyway. Where security gets tricky is when you need to block _some_ contact but not others. But for many users, simple blanket limitations like this work just fine.

Installation of an Apache webserver is a cinch in Debian:

=CODE_START=
# apt-get install apache2
=CODE_END=

By default, Debian's Apache package will set up a website under `/var/www` on your system. For our purposes, that's fine, so there's no reason to do anything more. You can easily test it by pointing your favorite browser at `http://localhost`. You should see the default post-installation web page which is actually stored in `/var/www/index.html`:

=IMG=default_apache_page.png=The default page for Debian's Apache installation. You can make this more interesting if you like by editing /var/www/index.html=

For the purposes of the repository, there's no technical need to change this, but you can easily do so by editing the HTML file. One nice use of a local page like this is to create a nice "leaping off" point for your local LAN, with links you and your family use a lot -- including links to other local web services you set up (which only have meaning on your LAN, of course).

# Create a Debian Package Repository Directory

So now we just need to make some packages available from the local webserver. I chose to create a directory `/var/www/debs` for this. Under it, you should create "architecture" directories, one for each architecture you need to support. If you're using just one computer (or type of computer), then you'll only need one -- typically "`i386`" for 32-bit systems or "`amd64`" for 64 bit. If you are using some other architecture, I'll assume you probably already know about this.

Now just copy the "`.deb`" package files for a given architecture into the appropriate directories. If you now point your favorite web browser at `http://localhost/debs/amd64` (for example) you'll see a listing of the packages for 64 bit systems.

# Create a Packages.gz file

Now we need to create a catalog file for APT to use. This is done with a utility called "`dpkg-scanpackages`". Here's the commands I use to update the AMD64 packages on my LAN:

=CODE_START=
# cd /var/www/debs/
# dpkg-scanpackages amd64 | gzip -9c > amd64/Packages.gz
=CODE_END=

If you are not in the correct directory, confusion will result (I found this out the hard way recently), so make sure you move to the `debs` directory (or whatever you called your repository). The program catalogs the packages to the `STDOUT` stream, which I pipe to gzip to compress and write to the `Packages.gz` file in the architecture directory. That's where we'll tell APT to look to find the data it needs.

=TEXTBOX_START=A closer look at what dpkg-scanpackages does=
You don't really _need_ to know this, but if you're curious, this is what's actually in the `Packages.gz` file.

When you call `dpkg-scanpackages` on a directory, it searches for package files, extracts some metadata from each and writes it out to the STDOUT stream, like this:

=CODE_START=
Package: qpsnr
Version: 0.2.1
Architecture: amd64
Essential: no
Maintainer: Emanuele Oriani
Installed-Size: 744
Depends: libavformat52, libswscale0
Filename: amd64/qpsnr_0.2.1_amd64.deb
Size: 245778
MD5sum: b5f37fcdc0e63510abb19c3c1c702fa2
SHA1: e3e13cbe6194b45129b1f0f77294ef3d1fec483a
SHA256: ea565d7749ee82f07da2ac2baaf6e2bd8818d0981e3b2e9d2ceb8ce228702750
Section: video
Priority: optional
Description: qpsnr - A multi threaded PSNR/SSIM calculator
             This software is a PSNR/SSIM calculator, useful
             to compute these statistics between same videos
             encoded with different codecs, to obtain an objective
             measures about the quality of encoders.
             It is released under the GPL v3.
             Home page: http://qpsnr.youlink.org/
=CODE_END=
Of course, that's very similar to what you get using `apt-cache show`. The `Packages.gz` file is just a compressed text file with lots of these data records.
=TEXTBOX_END=

# Make the repository known to APT

Now the only thing left to do is to let APT know about your repository. You do this by updating your `/etc/apt/sources.list` file. You'll need an entry like this one: 

=CODE_START=
deb http://localhost/debs/ amd64/
=CODE_END=

I used the actual hostname of my system instead of `localhost` -- this way the code is the same for all of the computers on my LAN, but `localhost` will do just fine if you are running just one computer.

Now, update APT:

=CODE_START=
# apt-get update
=CODE_END=

Now, if you like, you can search for a package you've just installed, just to make sure everything worked, e.g.:

=CODE_START=
# apt-cache search qpsnr
qpsnr - qpsnr - A multi threaded PSNR/SSIM calculator
=CODE_END=

And now I'm off to figure out how to use `qpsnr` to test the video codecs and encoders I've been using with "Sita Sings the Blues". So... "That's All!"

