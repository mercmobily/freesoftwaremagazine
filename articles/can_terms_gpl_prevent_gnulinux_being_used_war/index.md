---
nid: '3788'
title: 'Can the Terms of the GPL Prevent GNU/Linux being used for War?'
authors: 'Gary Richmond'
published: '2012-07-18 11:05:24'
tags: 'gnu/linux,gpl,drones,fsf'
license: other
section: end_users
main_image: Predator-cockpit_s.jpg
listed: 'true'

---
There's been a lot of noise on the internet recently about the fact that the Windows-based software being used in the remote control system of drones use by the American military has been hit by a virus and [this has caused the Department of Defense (DOD) to use GNU/Linux which is a more secure option](http://www.theregister.co.uk/2012/06/08/us_navy_linux_drones/). This has, predictably, caused raised eyebrows and demands by some that any military organisation should be prevented from using GNU/Linux in offensive weapons systems. The use of Drones in Afghanistan is a highly controversial issue but it is not the purpose of this article to debate the morality and ethics of deploying drones in an area of asymetrical conflict but rather to explore if it is actually possible to use the terms of the GPL to legally prevent the deployment of software or operating systems by any government's military.


# They ain't stupid


The first thing you have to say is that, despite what Groucho Marx said about the term "military intelligence" being a contradiction in terms, they are not stupid. As far as open source and the GPL are concerned they've done their homework. The American DOD use FOSS extensively. Here's a list of the software they use ([as cited by the Chief Information Officer of the US Department of Defense](http://dodcio.defense.gov/OpenSourceSoftwareFAQ.aspx#Q:_Under_what_conditions_can_GPL-licensed_software_be_mixed_with_proprietary.2Fclassified_software.3F)), one familiar to all readers of FSM:



* Apache
* Mozilla Firefox
* Mozilla Thunderbird, Evolution
* OpenOffice.org
* OpenSSH
* OpenSSL
* bind
* Postfix
* gcc -
* GNAT
* perl, Python, PHP
* Samba
* Mailman
* MySQL and PostgreSQL
* GIMP
* MediaWiki

More specifically, they use the following open source software for _specific_ military purposes:


* FalconView - PC-based mapping application
* Open Source Software for Imagery & Mapping (OSSIM) - geospatial image viewing (with classified plugins)
* OSSIM Mapping ARchieve System (OMAR) - video indexing
* BRL-CAD - solid modeling (Army)
* Optics - MASINT toolset (with classfied plugins)
* Delta3D - Game/Simulation engine for modeling and simulation



=ZOOM=Checkmate? Can you actually modify the GPL?=


Using open source software is one thing, understanding the legalities of its licensing is another thing but the DOD know that the GPL is legally enforceable. They also know that it is permissible to mix different software licenses too, so, if they are combining GNU/Linux-powered remote control systems for drones which are using commercial Windows software they know they are on sure legal ground. I'm also willing to bet that the the software running drone remote control systems is "original", in the sense that it does not modify existing software released under the GPL (which is by far the most popular license in the DOD). There are, therefore, no intrinsic legal problems, excepting the logistical ones involved in not sharing code, security patches, bug squashing and developments costs. 

More importantly, as an arm of a sovereign state, they have one unique piece in their armoury. They can declare their source code and any resulting software as classified and that seems to trump the terms of the GPL.That is especially true if the software is developed exclusively in-house. However, that exclusive in-house developed software will have been designed to run in userland on top of the Kernel which is licensed under the GPLv2. Additionally, any GPL'd software can be ported to run on Windows and Macs too. Checkmate? Can you actually modify the GPL?



# Dont' mess with Freedom #0


Well, modifying the GPL has been attempted, precisely to prevent software released under its license being used for military purposes. Back in 2006, the developers of [Global Processing Unit (GPU)](http://gpu.sourceforge.net/), a Gnutella client for clusters (with obvious military applications in areas like cryptography and nuclear simulations), inserted a clause in their GPL to prevent military use, sometimes referred to as the "pacifist clause". It's developers license patch declares that `_“the program and its derivative work will neither be modified or executed to harm any human being nor through inaction permit any human being to be harmed.”_ Remind you of anything? Perhaps, [Asimov's Three Laws of Robotics](https://en.wikipedia.org/wiki/Three_Laws_of_Robotics). A Three-Laws-safe GPL?



=ZOOM=GPU's developers admitted openly in the license preface that their patch contradicted Paragragh Six of the Open Source Definition=



The legal system in the USA has consistently upheld the GPL but what happens to its legal enforcement when it has been modified--as the Free Software Foundation (FSF) has declared that the GPL cannot be modified? GPU's developers admitted openly in the license preface that their patch contradicted [Paragragh Six of the Open Source Definition](http://www.opensource.org/docs/osd) which states explicitly:

 
*6 No Discrimination Against Fields of Endeavor*

_The license must not restrict anyone from making use of the program in a specific field of endeavor. For example, it may not restrict the program from being used in a business, or from being used for genetic research._

Besides, the patch nowhere uses the term military, so is there anything to stop them using GNU/Linux to peacefully model nuclear explosions? It should be pointed out, infairness, that the US Navy will also be using these drones to detect drug running in the Caribbean and I don't think anyone would object to that. Nor to the fact that GNU/Linux is also being used by the military in robots which could just as equally preclude the need to use humans in dangerous situations. Conversely, of course, you can argue that the  mitigation of risks to humans may encourage governments to wage war when the constraint of body bags is removed. There are few votes to be lost in Linux-powered robots coming home in coffins. 



# Don't shoot the messenger


Similar arguments have been used in the past to condemn the invention of printing. It was accused of helping to start the Protestant Reformation, when in reality it merely helped to spread it by way of democratizing information and making it cheaply and widely available. We don't condemn printing. We don't ban the internet because it can be used by terrorists and paedophiles. We don't ban automobiles because they are used in the commission of bank robberies. The problem is not with technologies. It's with us, human beings, and there's no quick techno fix in our current evolutionary dispensation.

The FSF's response to the patch was the same as it is and always has been: The GPL is a copyrighted work which does not permit making a derivative work by modifying and redistributing it. Not without permission that is. The [FSF FAQ is unequivocal](http://www.gnu.org/licenses/gpl-faq.html):


_You can use the GPL terms (possibly modified) in another license provided that you call your license by another name and do not include the GPL preamble, and provided you modify the instructions-for-use at the end enough to make it clearly different in wording and not mention GNU (though the actual procedure you describe may be similar)._

_If you want to use our preamble in a modified license, please write to <licensing@gnu.org> for permission. For this purpose we would want to check the actual license requirements to see if we approve of them._

_Although we will not raise legal objections to your making a modified license in this way, we hope you will think twice and not do it. Such a modified license is almost certainly incompatible with the GNU GPL, and that incompatibility blocks useful combinations of modules. The mere proliferation of different free software licenses is a burden in and of itself._



=ZOOM=Some people like to cast the conflict between open source and proprietary sofware as an essentially Manichean divergence between the disciples of Rousseau and Thomas Hobbes=


The truth is that the you can't have it both ways. You cannot demand freedoms for yourself that you will not extend to others. Freedom requires reciprocity. You cannot therefore attempt to curtail the activities of others by restricting the software they use. Some people like to cast the conflict between open source and proprietary sofware as an essentially Manichean divergence between the disciples of Rousseau (born free) and Thomas Hobbes (a war of all against all). Reality is rarely that clear cut. It's messy and ideologically unsatisfying. A GPL lacking invariant and inflexible first principles would be the plaything of every single issue fantic and interest group.  


The simple fact is that the GPL cannot be changed by individual fiat, whether it's Richard Stallman or Linus Torvalds. The kernel, under the GPL, is a vast distributed project and to effect a change across such a vast enterprise in a short time would be like trying to turn round the QE2 in two minutes. This issue cuts to the heart of the matter. Famously, GNU/Linux has four freedoms as stated by Stallman in the original GPL and the ability and right to use software for any purpose is freedom #0. _Any_ purpose. We give that freedom to _all_ to ensure it for ourselves. I can't sum it any better than to quote a brillaint and timeless piece of dialogue from [A Man for All Seasons](https://en.wikipedia.org/wiki/A_Man_for_All_Seasons_(1966_film)), one of my favourite films, based on the screenplay by Robert Bolt:

Alice More: Arrest him!  
More: Why, what has he done?  
Margaret More: He's bad!  
More: There is no law against that.  
Will Roper: There is! God's law!  
More: Then God can arrest him.  
 Alice: While you talk, he's gone!  
More: And go he should, if he was the Devil himself, until he broke the law!  
Roper: So now you'd give the Devil benefit of law!  
More: Yes. What would you do? Cut a great road through the law to get after the Devil?  
Roper: I'd cut down every law in England to do that!  
More: Oh? And when the last law was down, and the Devil turned 'round on you, where would you hide, Roper, the laws all being flat? This country's planted thick with laws from coast to coast– man's laws, not God's– and if you cut them down—and you're just the man to do it—do you really think you could stand upright in the winds that would blow then? Yes, I'd give the Devil benefit of law, for my own safety's sake. 
  