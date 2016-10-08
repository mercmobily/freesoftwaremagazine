---
nid: '3815'
title: 'Using kdesvn on a multimedia project'
authors: 'Terry Hancock'
published: '2013-03-09 9:43:03'
tags: 'kdesvn,subversion,svn,film,movies,lunatics'
license: cc-by-sa
section: reviews
main_image: kdesvn_review.jpg
listed: 'true'

---
This has been a very busy year for our "Lunatics" project (a free-film/free-culture animated web series about the first settlers on the Moon). As with many software projects, we keep our assets in a version-control system -- specifically "Subversion". In principle, Subversion does everything we need. The command line interface, however, does not make the right things easy for us (it's far too obsessed with parsing text files, which are incidental to our project, and it balks when given binary data files (which are essential). To keep a handle on the file tree, we need something a little smarter, and I've recently adopted "kdesvn" to do that job. This seems to solve the biggest annoyances.

<!--break-->

The "source code" for our [Lunatics](http://lunatics.tv) project consists mostly of rather "opaque" binary files: images, 3D models, sound recordings, and so on (these are all documented "open" formats, but they're not ordinary text files and they require special software to read and modify them). There are a few text files in the tree, but they are mostly incidental -- documentation, lists of credits, and so on. There is very little of what you would recognize as "code". 

So, the obsession that programmer-oriented tools like Subversion have with parsing, dissecting, comparing, and displaying _text_ is of little use to us, and the tendency to balk when presented with binary files is just annoying. The command line client often refuses to process binary files, and then, if you force it (with `--force`), it produces enormous listings of useless information, which buries the information I actually need.

Fortunately, there are a number of GUI clients for Subversion that make this kind of information much more accessible. Since I use KDE, `[kdesvn](http://kdesvn.alwins-world.de/)` looks like it will work pretty well for us.

Here's some areas where I find this really shines relative to trying to get by with just the command line client:

* Treats binary files as easily as text
* Makes a quick revision and author history for each file easy
* Shows at a glance whether files are in version control or not
* Allows me to move new files into version control with a few mouse clicks
* Allows drag-and-drop moves

There may be advantages to the CLI approach, but for what I need, this is _much_ easier!

I have not done a comparison of different GUI clients for Subversion, so this isn't necessarily an endorsement for `kdesvn` over other GUI clients. I think most of them provide these types of service -- so you should probably use the one that integrates best with your desktop. For Nautilus or Thunar users (under Gnome or XFCE), it looks like  [RabbitVCS](http://rabbitvcs.org/) might be a good option, for example.

=IMG=kdesvn_sc1.png=Screencap of kdesvn in use on the "Lunatics" file tree. Here, I'm trying to clean up some messy and inconsistent file-naming. The color codes help: the red indicates a file that has been changed, the grey indicates files that are not yet in the Subversion repository (I haven't added them yet)=
