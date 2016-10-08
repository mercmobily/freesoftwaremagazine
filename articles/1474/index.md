---
nid: '1474'
title: 'A reaction to ReactOS'
authors: 'David Sugar'
published: '2006-01-31 13:40:37'
license: verbatim_only
section: opinions
listed: 'true'

---
Among the many free software projects out there, I think ReactOS is particularly worth some discussion. This is an effort to create a complete, clean room re-implementation of the entire Microsoft Windows NT operating system. Here is why I think this project is important:

First, we do have lots of free software today that is either written for, or has been ported to, Microsoft Windows. For those who wish to write such software, or to create portable applications that they may wish to later migrate to other platforms, it is essential to be able to target a clean and generic reference implementation of the Microsoft framework, freed from secret and undocumented behaviors.

Microsoft offers no such thing today—besides the lack of proper interface documentation, many of their own development tools depend on and offer libraries which use undocumented or secret API calls that are then built into applications. This is well illustrated in the difficulty [Wine](http://www.winehq.com/) has with running applications, even those that were created purely within “standard” Microsoft development tools and not using odd behaviors or undocumented functions on their own.

We can think of ReactOS, then, as the “Microsoft Windows documentation project”. But, more importantly, for those who do wish to write portable applications, or those that do write free software for Microsoft Windows users, ReactOS will eventually give them an entirely free software solution to write and test their applications with, rather than having to depend on developing and testing under proprietary software.

Wine of course tries to offer a Microsoft Windows SDK on top of a Posix platform (such as GNU/Linux, xBSD, and I think it is being ported to MacOS/X). However, Wine cannot execute or be used to develop or use drivers or write low level free software for those familiar with Microsoft Windows. Wine also depends on translation, and so has the difficult problem that many of the underlying services and libraries it depends on were designed and behave very differently, and may well introduce new and different undocumented behaviors. This is part of why Wine still at most only supports well a specific subset of applications written for Microsoft Windows.

ReactOS offers the same underlying functions and behaviors. In fact, they are using Wine to support the upper level interfaces, so their efforts and Wine’s now do cooperatively overlap, for the benefit of both projects.

Finally, I imagine there are people out there who have software purchased for older releases of Microsoft Windows that no longer run on current versions. I have seen this phenomena with my neighbors children, where they have old educational games which will not run on the latest version of Microsoft Windows. The software certainly did not stop working, it is as functional as the day it was purchased. The platform it originally ran on is no longer available, deliberately removed from the marketplace, and the replacement will not run it.

What ReactOS has to offer in this situation is, oddly enough, greater compatibility. Even for those that write proprietary software, writing and testing it in the future using ReactOS will mean for them that they will be able to write and test software that works on the largest range of versions of Microsoft Windows as a result.

It will also mean that when or if Microsoft chooses to change or deliberately break interfaces to force software to migrate to their newest operating system release and also deliberately break their own development environments and platform sdk’s to force software built from them to require the same, while removing the older ones from the marketplace, these same companies will not be forced to follow this and have Microsoft dictate and control where their software will run or what market their software can be sold into. So ReactOS is important even to proprietary software developers today.

Some say ReactOS may slow GNU/Linux adoption, or development of pure GNU/Linux applications. This may be true, but I look at the question differently. Rather, I think it will further expand the total deployed base of free software as a whole. And this, I think, is a good thing.

