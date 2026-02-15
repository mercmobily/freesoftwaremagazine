---
nid: '3085'
title: 'Is it the End of the Road for Live CDs?'
authors: 'Gary Richmond'
published: '2009-01-23 4:04:13'
tags: 'cds,usb,netbooks,live,floppies'
license: verbatim_only
section: opinions
listed: 'true'

---
I was window shopping in a high street electronics store a few days ago. I was delighted to see a shelf display full of netbooks from vendors like Samsung, Acer, Dell, Advent and Asus (of course), to name a few. It looked like the Asus EeePC had launched an idea whose time had come and in the process possibly heralded the long withdrawing roar of the live CD. I now knew how General Adolf Galland felt during the Battle of Berlin when he recorded that when he saw Allied fighters escorting the bombers all the way to the target and back he knew the war was over. Like Mark Twain, predictions of the death of live CDs may be premature but here's why I think that device convergence and software development may, like those escorting fighters, mark the end of the line for live CDs.

# Electronic endless forms most beautiful


=ZOOM=survival of the fittest was not about two Cro Magnon men clubbing each other in a last man standing contest=

We are barely into 2009 but keen biologists will be aware that it is the 150th anniversary of the publication of Charles Darwin's _Origin of the Species_. Evolution is a complex subject but most lay people will doubtless associate Darwin (however simplified) with the phrase "survival of the fittest". Contrary to the scientifically illiterate social Darwinism of the Nazis and nineteenth-century Fabian Eugenics, survival of the fittest was not about two Cro Magnon men clubbing each other in a last man standing contest, but rather about life forms surviving when best adapted to their environment. Technology evolves too. Anyone who has followed the history of computers knows how they have evolved from huge machines occupying whole rooms and having less computing power than a calculator given away free with a breakfast cereal. Removable storage was in the form of large tape reels and later, when the first desktops started to appear, floppy disks. As storage needs expanded the first (rewritable) CD and then DVD disks started to appear. 

Compared to CDs and DVDs, megabyte for megabyte, floppies were poor value, and with USB-powered external hard drives heading towards to the Terabyte storage capacity the outcome was inevitable. Floppies, like the Dinosaurs, became the victims of a series of extinction events. Dell stopped putting floppy drives in their machines and Apple dropped floppy drives from the iMac in 1998 although, ironically, you still needed a boot floppy image to make the CD bootable. You will be hard pressed to find any computer stores actually stocking them. You can buy external models but frankly, why would you bother anymore? Well, you might if--you've guessed it--you are using Windows. I have come across cries of anguish as recently as the last quarter of 2007 from Windows users who were trying to install Windows XP and required SATA to be installed from a floppy! Older machines with floppy/CD/DVD drives will be thankful for them as the BIOS probably doesn't support booting from USB devices. However, backwards compatibility will become a non issue as the older computers migrate to the great electronic recycling centre in the sky.

# Klaus was the kiddie

=ZOOM=that little CD tray was a digital Narnia to GNU/Linux enthusiasts and geeks=

Most Windows users were using CDs and DVDs to store data or reinstall Windows (mind you, hardly necessary when you remember how enviably stable it is) but it was Klaus Knopper who made the next evolutionary leap forward when he popularized the GNU/Linux live CD with Knoppix (though the first live CD was [Yggdrasil](http://en.wikipedia.org/wiki/Yggdrasil_Linux)). It is a measure of its success and ubiquity that there can scarcely be a user of GNU/Linux this side of a boot floppy who hasn't either heard of live CDs or actually used them. We all owe Klaus a huge debt of thanks, but of course he was able to to achieve so much because of the evolutionary fork afforded to him by the free and open nature of the software he used (a fork of Debian). Knoppix precipitated hundreds of imitators and it is possible to get a live version of all the main distros and many of their smaller forks and customizations.

At the last count [FrozenTech listed no less than three hundred live CDs](http://www.livecdlist.com) classified according to twenty-six categories. The [feature range of live CDs is impressive](http://en.wikipedia.org/wiki/Live_CD) including the ability to run directly from RAM and save settings and files to a machine's hard drive (Knoppix and Puppy linux for example). That was progress but persistence meant that you were restricted to the machine(s) were that feature was stored.

Of course live CDs had other drawbacks: they were slower than hard drives, on laptops they drained batteries faster and they required an internal drive or an external drive which also drew power away from the battery via the USB connection. Vendors included them as standard--which was just as well, not just for playing multimedia but for those extremely rare occasions when users were forced to use a factory install image of Windows. (Yes, I'm being ironic.) But that little CD tray was a digital Narnia to GNU/Linux enthusiasts and geeks.

# All paths lead to netbooks

The next evolutionary development was [Virtualization](http://en.wikipedia.org/wiki/Virtualization). Initially, it was not exactly user friendly but with the appearance of [VMPlayer](http://www.vmware.com/products/player/) and [VirtualBox](http://www.virtualbox.org/) in userspace things suddenly became GUI easy. At a stroke the ability to test a distro (and a full distro, not just a live distro) meant that you didn't need a box of blank CDs or even a CD/DVD burner--unless you needed to make a "hard copy" for friends or for trying out on other machines.

Whilst all this was happening a revolution was also taking place in solid state disks (SSD). Initially, they were external and small in capacity and relatively costly. Today it is possible to buy a 16GB flash drive for the price of a 1GB version less than two years ago; 64GB drives are available now too. It is only a matter of time before they can be had for the current price of 16GB. Additionally, the imminent arrival of the [Ext4 file system](http://en.wikipedia.org/wiki/Ext4) may get round the absence of wear levelling technology on external flash devices by eliminating the need for fragmentation by utilizing concepts like extents, pre-allocation and delayed allocation all of which help to make drives more efficient and longer lasting.

Can you see where this is going? All evolutionary paths lead to netbooks.

=ZOOM=Can you see where this is going? All evolutionary paths lead to netbooks=

Netbooks represent a kind of evolutionary convergence of all these trends. These miniature marvels have many features but the defining one is surely the most obvious one. Size. When weight, size and cost are at a premium, fitting optical drives becomes problematical (especially if a conventional hard drive has been fitted in preference to SSDs, reducing space further). That means, to state the obvious, that installing other distros on these machines will require the purloining of an external optical drive. The final leap has now been made with the arrival of bootable USB sticks with persistence thanks to the tools bundled with Ubuntu 8.10 (Intrepid Ibex) and Fedora 9 and stand-alone applications like Unetbootin--all of which I touched on in [my last article on Ubuntu](/articles/ubuntu_8_10_upmc_asus_eeepc_dont_bother_just_install_full_distro/). Prior to these GUIs, getting a flash to run as a bootable device was not for complete novices or the faint of heart with a phobia about the command line, but if you were bold [Pendrivelinux](http://www.pendrivelinux.com/) was always there to hold your hand.

This technical dream ticket is wonderful and it could render the Live CD as obsolete as the floppy disk, but what about rescue CDs? No problem, a bootable flash drive can handle that too. Minimalist distros are frequently touted as the solution to old computers deemed "underpowered" by the standards of modern gas guzzlers. With the right one (like Damn Small Linux (DSL), SliTaz or Puppy Linux) a tortoise can be transformed into a hare. By the same token, in a happy confluence of circumstances, the bootable flash drive running these kinds of distros gets round the problem of absent optical drives, low memory and small processors and makes rescuing old machines an easily affordable no brainer. Portability and self-righteous recycling in one feel swoop. Result. 

For the average user I'm inclined to predict that the OS bootable flash drive will be more than sufficient while power users might keep a CD wallet in their pockets to exploit the marginal advantages of the shiny coasters (CDs don't use swap, use RAM more, and have boot options to run entirely in RAM allowing the disk to be ejected freeing up the optical drive for other stuff, though this last option is inapplicable for virtually all netbooks). Computer magazines will still cover mount them as the unit cost is negligible in contrast to the cost of bundling a flash drive.

# We hate to see you go but we think you ought to

=ZOOM=If it is not the end for live CDs , nor even the beginning of the end, perhaps then it is the end of the beginning=

Software developers, programmers and hardware vendors often collaborate in co-operative ventures but they also frequently work in isolation from one another developing their own products. Then there are the times, wholly unpredictable, when ideas and technologies emerge in parallel and people see the combinatorial possibilities. Netbooks plus flash drives plus persistence and effortlessly simple GUIs to make them bootable bring everything together in one seamless, portable experience. 

If it is not the end for live CDs , nor even the beginning of the end, perhaps then it is the end of the beginning. They braced themselves and did their duty, introducing a new generation of users to the genius of GNU/Linux and extracting impetuous users from bricked machines--especially me. When they eventually recede into the mists of fond memory we will remember them. Hail Klaus. Bless you.