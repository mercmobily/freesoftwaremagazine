---
nid: '1181'
title: Letters
authors: 'Tony Mobily'
published: '2005-07-17 11:01:31'
issue: issue_06
license: verbatim_only
section: opinions
listed: 'true'

---

# Inaccuracies in “Promoting free software on non-free platforms”

Dear FSM,



Chris J. Karr’s article, “Promoting free software on non-free platforms” makes several mistakes which I feel deserve a response. I am one of those who believe that free software is fundamentally about human freedom, so the question of whether or not to port free software to non-free platforms depends only on whether doing so would promote human freedom or not.

Chris claims that “[i]deological developers are generally against [porting to non-free platforms] for philosophical reasons.” Nothing could be further from the truth. Free software began it’s existence on non-free platforms, and the GNU project, itself, makes a CD of Windows ported free software available on its [web site]( http://www.gnu.org/order/windows.html). Free software anywhere is a good thing when it’s use promotes freedom, and I know of few software freedom advocates who think otherwise.

The article makes a blanket claim that “ideological developers” benefit whenever free software is used on proprietary systems. This is not true. It is possible to use free software to work against freedom, by writing free enhancements to proprietary software that will then not be available on free platforms. This has the effect of adding value to proprietary systems at the expense of free ones, and thus works against freedom. It is consistent with the freedoms provided by free software that Chris’s “pragmatic developers” have the right and ability to do this, but it should not for one minute be suggested that it in any way benefits free software.



_Jeffrey Elkner_



**Chris Karr responds:**

I’m confused where you draw the line between free software on closed platforms being good and free extensions to closed software being bad. I suspect that the line is dictated by the goal of “promoting human freedom”. However, what exactly do you mean by promoting human freedom? (It’s a bit of a broad term.) I can see how Firefox on Windows gives web surfers more options and more choices on that platform. Does that promote human freedom? If I wrote an open-source driver for a proprietary operating system, hardware users would have more device choices and options. Am I promoting freedom by doing that?

I get the impression from your third paragraph that you think software development is a zero-sum game. (I strongly disagree.) If Windows is improved, does Linux and MacOS X suffer because of it? If someone contributes an extension to a proprietary database (that is available in the free software world, since we’re talking about porting free software), does that extension decrease the value of free solutions with that capability or extension? Today (April 29), I’ll be picking up my copy of MacOS X Tiger. It features many free software improvements to a proprietary system. Are my installations of Linux and Windows worth less from this day on?

Finally, in my piece, I break the free software developers into two camps to illustrate the point that I’m trying to make. I’m certain that there are many developers who are (in reality) poorly painted by my use of a large brush. However, I doubt that brush is larger than “promoting human freedoms”. If an individual is willing and able to contribute free code or extensions to proprietary systems, does dissuading him from doing so serve the cause of promoting freedom?

One way that I look at this is that it is not unlike a progressive group (to arbitrarily pick an example) telling people wanting to share their thoughts about conservative topics not to do so, because they should be talking about progressive things. Given that the content (of the code and the thoughts) is open and shared and there is nothing stopping others from using that content to supplement their goals, who are we to demand otherwise? The alternative is that the person doesn’t share their code and everyone but the coder and proprietary vendor are poorer for it.


# Read security and encryption

Hi,



In your article you state that keeping sensitive documents on an encrypted partition is secure. I think this might not be true.

I assume that these documents are edited/viewed from time to time in some application on you laptop. This implies that the information is decrypted.

It’s not unthinkable that this application stores a working copy in a temporary place on you hard drive and probably a backup somewhere too. So then, we have potential files with sensitive data stored in potentially non-encrypted partition(s).

Even if the application deletes all those files, after you close a document, recoverable data is still intact on the disk.

There are utilities to securely delete files, and clean empty space but this will not always work (for example these utilities are useless on a reiserFS file system).

Now let us assume that you remedy this situation by having all these sensitive locations mounted as some kind of ramdisk(s) so it never gets written to disk.

This takes us to security problem number two, swap space. I’m positive that at least one in-memory copy of the decrypted information exists when you open a document.

Even if the kernel doesn’t decide to swap while you have the document open, the document could still be unencrypted in some cache after the application is closed.

Try running strings on your swap file/partition.

Just saying that all is good because the storage partition is encrypted is dangerous.



_/John_

_John Nilsson_



**John Locke responds:**

Hi, 



You certainly make some good points. My only defense is that I’m writing for a less technical audience, and that my point was just making people aware of tools to improve security that are at their fingertips!

To further improve security on a Linux system, you can encrypt your swap partitions, and also any temporary directories used by an application. This may or may not be necessary, depending on the software you’re using, and the value of your data—the more measures you take, the less convenient it is to implement.



Cheers,

John


# The next revolution

Tony,



I’m sitting here reading your editorial in the June 2005 issue and you are asking the question about the next revolution. You may be correct about the neural interface etc. However, I believe you are discounting the most likely area for revolution.

The most likely area for revolution is economics. Simply put, the internet is undermining many industries. Need I mention, the music and film industries? The availability of near-zero cost distribution cuts out the middle men, ie the RIAA and MPAA. The only costs associated with distributing a film/song are server costs. Every year these costs decrease. The end result of this is undermining many of the middle men in Hollywood. In turn the artists would be left standing thanks to the fan base and the ability to produce and distribute.

The internet also cuts out many business middle men. Since now a consumer can buy a product directly from the manufacturer, either off their website or via drop ship, its only a matter of time before the intermediate mark-up shrinks. It will shrink because the intermediate costs cover the time spent in transaction will reduce and any efforts to keep the prices equal could be deemed price fixing.

Also, consider this. If we go by the simplified rules of supply and demand, higher the supply the lower the cost, higher the demand the higher the cost, if our supply is infinite—such as digital files are because they can be copied without any associated costs—our cost should be infinitely low, i.e. free.

Ultimately, I believe our economy is in for a surprise. The end result would be a much less emphasis on capitalism. Not to the extent of communism, but to what I would call limited capitalism. I can picture my son/daughter coming home in 25-30 years from the grocery store where they stopped to buy a gallon of milk and getting on the computer to check the site of their favorite director to see when their next movie will be seeded in bittorrent or similar. Really it boils down to whether the product has a limited supply, i.e. not digital. If it is digital, it will be available for free. The director would be supported by donations. I like to compare it to a street performer with nearly an infinite audience. If you’re good, you can make good money.

Well that’s most of what I got. Please discount any incoherent ideas/sentences as it’s nearly 1 am. I have to write when I’m inspired however.



_~Scott Shawcroft_


# Printed version no more



Tony,



I’ve just received your email about Free Software Magazine going electronic only.

Please keep me as a subscriber to the digital version of Free Software Magazine.

The last issue I read cover to cover in one sitting and was so glad that I was a subscriber. The magazine has some great content and is always interesting. The first PDF got me interested, the print got me addicted, and now I don’t care how I receive the mag as long as it’s there. Thanks for a great read.



Thanks!

_Ryan Hobson_



**Tony Mobily responds:**

Thanks a lot Ryan—we really appreciate your encouraging letter!







