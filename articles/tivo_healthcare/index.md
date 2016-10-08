---
nid: '2004'
title: 'Tivo Healthcare'
authors: 'Fred Trotter'
published: '2007-01-11 13:13:52'
tags: 'gplv3,medical-software,tivoization,doctors-notes,ehr'
license: verbatim_only
section: opinions
listed: 'true'

---
Tivoization is a real threat to users freedom, but only when you consider the appropriate context. It’s not just a question of controlling hardware, more importantly its about controlling data. This issue becomes clearer when you consider health software instead of television software


# Tivo Healthcare

The next version of the GNU General Public License (version 3) is being hotly debated in the free software community. At the center of the debate are the new clauses regarding Digital Rights Management. My focus as an activist and programmer is on medical software, and this presents a useful perspective on the GPL version three debate.

I will not make the fundamental arguments for free software here. That has [already](http://www.gnu.org/philosophy/why-free.html) [been](http://www.gnu.org/philosophy/shouldbefree.html) [done](http://www.gnu.org/philosophy/selling.html) and well, by the [Richard Stallman](http://www.stallman.org/) (RMS), [Eben Moglen](http://emoglen.law.columbia.edu/blog) and others at the [Free Software Foundation](http://www.fsf.org/) (FSF). I will not even fully discuss the issue of the GPL in medical software since I do so very clearly over at [GPLMedicine.org](http://www.gplmedicine.org).

However, my readers may come from a healthcare background rather than a software background, so for this limited discussion I will review the spirit behind the [four freedoms](http://en.wikipedia.org/wiki/The_Free_Software_Definition). For the uninitiated, the four freedoms are central to the definition of “free software”. Free in this context does not refer to price, rather it refers to freedom from inappropriate control. Free software activists, like myself, hold that software licenses should not take away the freedom to:


* run the program, for any purpose (freedom 0)
* study how the program works, and adapt it to your needs (freedom 1)
* redistribute copies so you can help your neighbor (freedom 2)
* improve the program, and release your improvements to the public, so that the whole community benefits (freedom 3)

The free software movement started when Stallman [could not get a printer to do what he needed it to](http://www.oreilly.com/openbook/freedom/ch01.html), because the software drivers where proprietary. Stallman realized that to control his own life, he needed to control the printer, and to control the printer he needed to have control of the software. But, he did not have control over the software because of the license for that software. In fact, the makers of the printer where trying to use a software license to control Stallman. I spend my time as an activist and programmer working with the kind of software that might help a doctor track a patients cholesterol, instead of the software that runs printers. This focus sometimes gives me helpful insights on popular FOSS debates.

Critics of the free software movement include Linus Torvalds, who has [said](http://www.mail-archive.com/gnu-misc-discuss@gnu.org/msg02764.html):


>“I think that ‘freedom’ is fine, but we’re not exactly talking about slavery here. Trying to make it look like we’re the Abraham Lincoln of our generation just makes us look stupid and stuck up. I’d much rather talk about ‘fairness’ and about issues like just being a much better process for generating better code, and having fun while doing so.”

Linus’ point must be granted. Few moral issues compare with the issue of one human being owning another. Still, software licensing is a moral issue, just not as grave. The morality of software licensing can be a significant issue, (though still not comparable to slavery) or it can be a minor issue. In this respect it is like honesty. Dishonesty ranges from lying under oath to little white lies. Similarly, the impact of software freedom is sometimes trivial and sometimes important. The arguments that some in the “open source” community make, regarding how little difference “software freedom” makes, only work because they straw-man the context for the discussion. Linus is both right and wrong. He is right that, in the cases that he considers, the moral impact of DRM (discussed more later) is trivial. He is also right that this is about “fairness”. However, he is wrong in that he does not consider circumstances where the use of DRM becomes unfair.

Much of the [debate about the next version of GPLv3](http://lxer.com/module/newswire/view/73273/index.html) centers around a process of [tivoization](http://en.wikipedia.org/wiki/Tivoization), which is when a hardware manufacture uses cryptography to prevent the use of modified software on a hardware device. This technology is called Digital Rights Management (DRM). Tivo used DRM with Linux for a video device that they sell. Tivo gave copies of the Linux source code that they used away, as the current version of the GPL requires them to. However, if you use a modified version of that source code on a Tivo device, the machine would detect that the binaries had been changed and the hardware would refuse to run. Stallman and other free software advocates argue that this process, called Tivoization is against the spirit of the free software.

“Who cares?”, you might ask. Tivo is a glorified Xbox, aimed at home entertainment. What difference does it really make if some other organization has control of your movies? Most of the companies that are interested in DRM are media companies. The wish to use DRM to restrict how consumers can copy their movies, music and other content. The media companies have a legitimate interest in not having their copyright illegally reproduced. If we imagine a DRM system that merely protects these legitimate interests what’s the problem?


=ZOOM=The foggy issue of Tivoization becomes a lot clearer when you consider something like a Health-Tivo=

Well, consider what would happen if my software and the operating system underneath it were Tivoized. I help write an GPL Electronic Health Record (EHR). Under the current version of the GPL, someone could make an appliance from my software and GNU/Linux and prevent people from modifying and controlling healthcare data stored in the Electronic Health Record that ran on this device. What the Tivoization traps is the data, which for Tivo means movies and television shows recorded digitally. But what happens when the data that is trapped is infinitely more valuable? When we discuss DRM, we should be thinking of an EHR that has been Tivoized, (perhaps a health-Tivo) rather than a television recording device.

But why would anyone use a “health-Tivo” and knowingly place health related data into a system where it potentially could become trapped? This already happens, and your physician is probably doing this with your health data right now. Proprietary licenses prevent people from accessing critical healthcare information every day. I have documented at least two cases of this. The first example is [Medical Manager](http://docs.mirrormed.org/index.php/Medical_Manager_History), which at one time was the most common medical practice management application in the United States. Medical Manager has been largely abandoned leaving thousands of practices across the country without support and with data trapped in broken systems. The second example, is [the story of Doctor Notes](http://www.gplmedicine.org/articles_8/). Doctors Notes locked doctors out of their medical records, when the doctors refused to pay extra money. When a patients allergy list is lost because a doctor had to abandon all of the data in his Doctors Notes system, all of a sudden what might have seemed to be academic debate seem much more relevant.

When Linus talks about how to deal with DRM he talks about how people should [vote with their feet](http://lkml.org/lkml/2006/2/2/59) and avoid systems that have restrictive DRM. What about the case where you doctor makes what he sees as a practical and diligent decision to use a proprietary system? He does not have a deep understanding of software freedom issues or how DRM impacts them so he purchases a system which is cheap and effective, but also incidentally locks up your medical data. It is possible that you as a patient could undertake to educate your doctor on the importance of software freedom, and I have resources available on [GPLMedicine.org](http://www/gplmedicine.org) to help you do just that.

I do my best to communicate to as many clinicians as possible that they should be very concerned by this issue, and they should never choose a proprietary EHR product. However, I want to show that Tivoization can be a life or death issue, and that under the terms of the current version of the GPL, Doctors Notes can use my EHR project [MirrorMed](http://www.mirrormed.org/) (shameless plug) to create an EHR Tivo. As a result I will be upgrading the new version of the GPL for my software when it is finalized. Once the GPL denies these kinds of DRM restrictions, I will not need to spend an hour explaining the dangers of Digital Rights Management to a busy physician. I can simply continue to push my primary argument, that the moral license for medical software is the GNU General Public License.

[Trotter](http://www.fredtrotter.com)

