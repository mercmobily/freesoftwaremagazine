---
nid: '1777'
title: 'Views on the GPLv3 hoo-har'
authors: 'Edward Macnaghten'
published: '2006-09-29 16:18:11'
tags: 'linux,fsf,drm,gplv3,tivo,licenses'
license: verbatim_only
section: opinions
listed: 'true'

---
There has been a lot of hoo-hah recently regarding the pros and cons of certain aspects of the drafts of [Version 3 of the GNU General Public License](http://gplv3.fsf.org/gpl-draft-2006-07-27.html) from the Free Software Foundation. The originator of the Linux kernel, Linus Torvalds himself, is playing a role here. Unfortunately, each side has taken to the ploy of misrepresenting the other’s points. Arguments are getting heated to such an extent that you need to wear an asbestos suit just to look at the issues. However, on examination, not only do I find that both sides have valid issues but I also believe an obvious solution exists that will make most, if not all, satisfied and the world a less flame-ridden obstacle course.


<!--break-->


First, the problem. The [GPL](http://www.gnu.org/licenses/gpl.html) (versions 1 and 2) was designed to guarantee four freedoms of copyleft for the work and its derivatives. These are:


* Freedom 0: The freedom to run the program, for any purpose
* Freedom 1: The freedom to study how the program works, and adapt it to your needs, access to the source code is a precondition for this
* Freedom 2: The freedom to redistribute copies so you can help your neighbor
* Freedom 3: The freedom to improve the program, and release your improvements to the public, so that the whole community benefits

Access to the source code is a precondition for the above, especially freedoms 1 and 3.

These are further described [here](http://www.gnu.org/philosophy/free-sw.html). The GPL as it stood guaranteed these reasonably well for a decade, or just over. But then came the “evil” [Digital Rights Management](http://en.wikipedia.org/wiki/Digital_Rights_Management) (DRM for short) technology, and [TiVo](http://www.tivo.com) in particular.

I must say that I am not going into the morals of copy-protecting movies, TV and music here, or even closed proprietary software. My interests only concern the treatment and guarantees of free software, and what is best for all regarding that. I am most certainly not interested in advocating or believe in assisting piracy.

TiVo use free software licensed under the GPL for their DVRs, and they comply to the terms of the current GPL (v2) by providing source code from a [page](http://www.tivo.com/linux/linux.asp) on their web site. However, users of the TiVo product are denied, in part, freedom number 3 above because although there is nothing stopping a user from changing the program they would not be able to run the new version on their machine because it contains DRM technology and the executable needs to be digitally signed with a private key by TiVo itself. Also, each TiVo machine uses a separate public/private key pair so in reality freedom number 2 above could be claimed to be denied.

For those unfamiliar with the mechanics of how public and private keys work, I will digress into an overview as to how they work. For those who are clever or who are already experts in the field please either skip this and the next two paragraphs or ignore the massive over-generalizations and simplifications I have included. Public key cryptography relies on an algorithm that uses two keys, which I will call “Key A” and “Key B” due to a lack of imagination. These are known as a “Key Pair”. If a piece of information is encrypted using “Key A”, then “Key B” is needed to decrypt it, and if “Key B” was originally used then “Key A” is required. The clever bit is that if a message was encrypted with “Key A”, then someone who does not know what “Key B” is cannot read it, even if they know what “Key A” is. The same applies to “Key B”, you need to know what “Key A” is to decrypt those messages, knowledge of “Key B” is irrelevant for that.

The way TiVo DRM works is that when the “Key Pair” is generated TiVo keeps “Key A” itself secret as the “private key”, and burns “Key B” into the processor on the DVR. When it runs an executable it takes a “Hash Sum”, like [MD5](http://en.wikipedia.org/wiki/Md5) or [SHA](http://en.wikipedia.org/wiki/SHA), of the executable. It then finds an encrypted value, known as a “digital signature”, it has in a master file on the DVR for that executable and decrypts it using the public key burnt on the processor. If these two values (the hash sum and the decrypted digital signature) are not the same it does not run the program but gives what many would consider a rude message.

In order for the encrypted value to get onto the master file, the “Hash Sum” of the executable needs to be encrypted with the “Private Key”, which only TiVo knows, so only they can perform that operation. Therefore, TiVo can choose what can and cannot be run on your machine.

That is the end of the explanation. Back to the entry...

The Free Software Foundation are not happy about this. The whole point of their licenses is that the user decides what can and cannot be done with software on their machine, not the vendor. Their solution is to create a new version of the GPL, version 3, that will prevent TiVo and those like them from prohibiting the freedoms the GPL was designed to ensure. While they are at it, they are also putting in other clauses in an attempt to prevent patents, as well as anything else they can think of, from doing the dirty.

To many people’s surprise objections rose from some free software programmers, most notably Linus Torvalds and some other kernel developers. There then followed some very emotive exchanges and great snarling and gnashing of teeth which has increased the temperature of many a forum. I, a self proclaimed hero of the Blogosphere, will now attempt to dive in and uncover the root of all this hullabaloo.

First to dispel a myth, the kernel developers to my knowledge have not objected to “Section 3” of the new GPL draft, nor any of the specific DRM or Patent sections, but to a paragraph in “Section 1”, the definition of the source code that needs to be made available. Namely, this paragraph....


>The Corresponding Source also includes any encryption or authorization keys necessary to install and/or execute modified versions from source code in the recommended or principal context of use, such that they can implement all the same functionality in the same range of circumstances. (For instance, if the work is a DVD player and can play certain DVDs, it must be possible for modified versions to play those DVDs. If the work communicates with an online service, it must be possible for modified versions to communicate with the same online service in the same way such that the service cannot distinguish.) A key need not be included in cases where use of the work normally implies the user already has the key and can read and copy it, as in privacy applications where users generate their own keys. However, the fact that a key is generated based on the object code of the work or is present in hardware that limits its use does not alter the requirement to include it in the Corresponding Source.

Inclusion of that would mean that any kernel licensed under GPLv3 cannot be used where DRM is required for a secure environment. Please remember that not all DRM is evil; medical computers are often cited as examples of where it is a positive. However, the argument is that use of DRM should not really fall inside a software license. Further, as long as the software is accessible and readable by the user, as well as modifiable to be able to be run on machines without DRM or where the private key is known, then what business is it of the software licensee? Answers on a flame please to the comments section below...

Also, I think it is worth including that the current draft of the GPLv3 will not protect against performance of these shenanigans on my free software projects, nor do I believe it ever can. I write some free software, and looking at the download figures there are some who it appears actually find it useful. I primarily distribute source code to a POSIX (I think) standard and leave it up to the end-user to compile.

Imagine, say, a fictitious organization called TrustMe Inc.—a DRM-oriented, good-for-nothing, profiteering and unethical company—comes along who would like to include a particular version of my program in their list of “allowable” executables. What they can do is give, nay, let’s say sell, a digital signature for that version of my program giving me none of the profits. They can even get a “friend” of theirs, or someone not connected to them, to pre-compile that version of my program and to distribute it (source and all) under the GPL.

The scenario we have here is that users of TrustMe Incorporated’s equipment can obtain my free program from the “wild”, but in order for them to use it, they need to pay TrustMe Inc a fee for the digital signature. TrustMe Inc has not infringed on the GPL as they have not distributed any software, the “friend” has not as they are doing nothing to restrict use of the program, and he is not necessary anyway, yet the user has been denied freedoms of the copyleft, and TrustMe Inc. has profited by controlling work I, as the author, specifically want to be free.

For this restriction to work for TrustMe Inc. would need to restrict the kernel that is run to one approved by them (like TiVo does), and it may seem like releasing the Linux kernel under GPLv3 will take care of this. However, there are other POSIX kernels out there that are not released using GPL restrictions, such as the BSDs or even OpenSolaris. At a push TrustMe Inc. could even purchase one of the closed proprietary ones.

A keen observer will note that TrustMe Inc. can only control executables that run on it’s own equipment. A solution is for the end user to simply not purchase it. However, the model of this suggests that TrustMe Inc. could subsidize the initial purchase cost of the equipment using revenue they are obtaining for the use of it. The lower capital cost would attract the more non-caring purchases at a cost of the market share to the hardware vendors using a more free model. Look at the games consoles market.

Please note: “TrustMe Inc.” is an imaginary company I have just dreamed up for the purposes of this entry, if there happens to be a real company by that name my example here bears absolutely no relation to it whatsoever.

The solution to the above? I cannot see one in the short term. I believe education and awareness is a key here. People don’t like you charging for things that should be free, and it is a matter of telling people that GPL software IS free. That would, I hope, deter people from restricting free software.

The solution to the flame war? That is easier. There is no problem including the aforementioned paragraph in Section 1 of the GPLv3, but be aware I have just shown this is easily circumventable. Also don’t expect kernel developers to be too keen on adopting it, what you are doing is devaluing the kernel by restricting the type of hardware that it can be run on for no benefit whatsoever. All we need do is make room for a license with and without that paragraph. Also, on a practical note, it would be near impossible to change the license radically for the Linux kernel, too many copyright holders are involved.

It comes down to right vs. right. It’s right for the Free Software Foundation to try and guarantee the copyleft freedoms of GPLed software, and it’s also right for the kernel developers to wish for no restrictions on the hardware that kernel should run. Practicalities dictate the best way forward. The kernel should remain GPLv2, or a version of GPLv3 without the offending paragraph, and applications can adopt the GPLv3 with the paragraph to make the “TrustMe” scenario described above more difficult to adopt.

Whew—it’s hot. Where’s the ice?....

