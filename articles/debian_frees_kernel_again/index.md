---
nid: '3506'
title: 'Debian frees up the kernel again'
authors: 'Ryan Cartwright'
published: '2011-01-22 8:23:49'
tags: 'debian,non-free,kernel,blobs,firmware'
license: verbatim_only
section: opinions
listed: 'true'

---
Never let it be said that the Debian project does not listen. For some time there has been growing dissent about the presence of non-free binary blobs in the Debian GNU/Linux kernel. Identi.ca and other public arenas became almost hunting grounds for some of the more fanatical freedom advocates within the community. Recommendations for using gNewSense and other 100% free distributions became more prevalent as the concerns over the non-free Debian kernels grew. The Debian project has now [announced](http://www.debian.org/News/2010/20101215) that from the release of Squeeze (Debian 6.0) their GNU/Linux kernels will be available without the non-free blobs.

<!--break-->

# What are these blobs?

The blobs are firmware which is needed to run certain hardware on a GNU/Linux box. Without them those pieces of hardware just won't operate or at least won't operate properly when used in conjunction with a Debian GNU/Linux system. The problem is that some hardware manufacturers just don't trust us. They are so worried that we -- or maybe their competitors -- will ruin their pension funds that they just "can't" release the source to make their hardware do what they claim it does. Never mind that we might actually help (as we have with other more-free hardware). Never mind that to date no company has posted a loss as a direct result of freeing up their firmware. _Sigh_.

=ZOOM=Some hardware manufacturers just don't trust us (never mind that we might actually help as we have with other more-free hardware)=

Whilst this hardware is printers or cameras that's one thing, but when it comes down to graphics or audio chipsets it's another. All GNU/Linux distributions have to make a choice as to whether they include this non-free firmware by default or not. Build-it-yourself distributions will of course give the user most choice whilst some refuse to compromise on their free software ideals and exclude non-free blobs. At the other end of the scale are those that include any piece of software with the aim of making everything "just work". Debian fell somewhere between the last two despite the well-known free-software ideals of the project. The truth is that as soon as it came to light that these blobs were to be included in the stock kernels, the Debian project started working to remove them. In some cases free equivalents were created (by the community, not necessarily Debian) and in others the manufacturers bit the bullet (or saw the light depending on your viewpoint) and freed up the firmware. Hence there are now both free and non-free drivers for AMD graphics chips and more and more manufacturer-supplied firmware and drivers are free (or have a free version).

# Divide and conquer

Debian has traditionally not distributed non-free software as part of its default distribution but the project has long recognised that users should have the freedom to install it if they so desire. Thus they put non-free software into a separate repository unsurprisingly called non-free. There are some limits to this: non-free media codecs for example are not available from Debian's servers or mirrors thereof but if you are looking for a specific driver or non-free application, the non-free repository means you can get and install it without straying from the stock Debian package-management tools.

Whilst non-free applications and libraries can be added to a Debian box it's a little harder to add firmware into the kernel in the same way. Debian have thus announced that -- from the release of Squeeze -- they will be providing whole kernels that include non-free blobs in the non-free repository. So if you have a particular chipset that requires a non-free blob you can still use Debian. But if you have carefully chosen your hardware to be that which only uses free drivers ( such as [OpenPCs](http://open-pc.com) ) you can also now use Debian again and consistent with Debian's history

# Job done

One of the long-held criticisms of the Debian project is the length of time it takes for things to find their way into the project. This is an accusation that could be laid at their door on this occasion too but in the end I think it's more important to keep the stability of the project going. However it is very good news that Debian have now closed this long-outstanding issue and once again can be at the forefront of free-software choice.