---
nid: '1912'
title: 'GPLv3 embedded in devices'
authors: 'Ciaran O’Riordan'
published: '2006-11-29 5:16:45'
tags: gplv3
license: verbatim_only
section: opinions
listed: 'true'

---
  At last week's GPLv3 conference, the topic of embedded GPLv3  software came up a few times.  Below is something of a summary of  those discussions.  [Georg Greve](http://fsfe.org/en/fellows/greve)  blogged [about  the conference](http://fsfe.org/en/fellows/greve/freedom_bits/back_from_gplv3_conference_in_tokyo_japan), so I'll avoid repeating what he covered.  Suffice to say, it was an event the organisers can be proud of, and  Tokyo is a lovely and interesting place.

  I think the issue of GPLv3 in embedded software falls into two  categories: warranties, and regulated hardware.

  The warranties issue is quite simple.  If a hardware vendor wants to  say that installing modified software voids the warranty, that's ok  with GPLv3.  GPLv3 says that if the software is modified, it must be  able to interact with the same online services.  Warranties are not  an online service, so the warranty can be changed or voided when  modified software is installed and that won't violate GPLv3.

  The more complex issue is with regulated devices such as mobile  phones, wireless cards, voting machines, and medical devices.  If a  company decides to produce mobile phones, how can they use GPLv3'd  software if they are required to prevent customers from transmitting  or receiving signals outside of the permitted ranges?

  With GPLv2, they could have built the phone to stop functioning if  it detects that the software has been modified.  This is what has  become known as  "[tivoisation](http://en.wikipedia.org/wiki/Tivoisation)".  This solves their regulatory problem, but it means that the GPL has  not done its job of ensuring the recipient has the freedom to modify  the software.

  It may seem that these two goals are fundamentally incompatible, but  they are not.  A solution is that the phone manufacturer can put the  part of the software which sets the signal transmission/reception  into unmodifiable memory (ROM - read-only memory), and the remaining  majority of the software can go in modifiable memory.  Thus, the  phone will not be used to break regulations, and the recipient has  the freedom to modify most of the software, with the exception of  the small part which it would have been illegal to modify anyway.

  This is not immune to abuse.  Phone manufacturers could put all of  the software in unmodifiable memory.  If they do this, we are no  worse off, and no better off, than we are today.  However, it seems  more likely that they will opt to split the software between  modifiable and unmodifiable, because that way bugs can be fixed, and  software updates can enable new services, etc.

  So the deal is, if they want to retain the ability to modify the  software, they have to let you modify it too.  The second example of  wifi cards is the exact same.

  The third example is medical devices.  This issue is quite similar,  just with different hardware sizes.  People have asked how certified  medical devices could ever be allowed to have modifiable software.

  Maybe it's interesting to note that I haven't heard of a medical  devices manufacturer raise this issue.  Maybe they know that this  isn't an issue.  GPLv3 just prevents tivoisation.  Do we have any  evidence that current medical devices use tivoisation?

  But that's a side point.  To answer the question directly, again the  device manufacturer can use unmodifiable memory.  Memory can be made  unmodifiable by putting it into a ROM chip, but for medical devices,  there is also the possibility of putting a lock on the box, and/or  put the box in an area not accessible to non-certified people.  I  suspect that this is already the case and that even doctors and  hospital IT departments do not have access to the firmware of X-ray  machines etc.

  And then the fourth example is voting machines.  For this, the two  key issues are when does distribution occur, and the difference  between publication and supplying to the recipient.

  If a government develops software for use on electronic voting  machines, and if it produces a thousand voting machines and sends  them to each region of the country, will the government have to give  the source code, passwords and/or encryption keys to the staff at  the voting centre?  According to GPLv3, these things have to be made  available to anyone you distribute the software to, but, according  to copyright law, AFAIK, no distribution has occurred.  This is just  the government using the software on multiple machines.  The  government has not distributed copies of the software to the voting  centres.

  The second case is where a company develops the software and  supplies it to the government.  Here, distribution does occur  between those two parties.  However, the company only has to make  the passwords and encryption keys available to the government.  If  the company has a second customer, it can set up the hardware to use  different passwords or encryption keys.  The government could even  make a contract with the company saying that the company cannot give  the passwords or encryption keys necessary for the government's  system to anyone else.  Or further, the company can give the  government (or any recipient) the ability to change what password or  encryption keys are necessary.  So even when distribution occurs,  the use of DRM for security purposes is not restricted.

  If there's a case I didn't cover, please email me:  ciaran-at-fsfe-dot-org.  And if you have a comment on the licence,  please submit it to  the [gplv3.fsf.org comment  system](http://gplv3.fsf.org/comments/).

  From the Tokyo event,  here's [my  explanation in other words](http://fsfeurope.org/projects/gplv3/tokyo-ciaran-transcript#q1).

  There's also  a [transcript  of Richard Stallman's talk](http://fsfeurope.org/projects/gplv3/tokyo-rms-transcript) from last week's event.

