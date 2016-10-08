---
nid: '1957'
title: 'Tivoisation explained - implementation and harms'
authors: 'Ciaran O’Riordan'
published: '2006-12-19 11:31:05'
tags: 'gplv3,tivoisation,tivoization'
license: verbatim_only
section: opinions
listed: 'true'

---
  To think about what free software licences should do about  tivoisation, we have to understand what problems we're trying to  prevent, and how it works - so that we can ensure that it doesn't  work.


# How tivoisation works

  Tivoisation is a technique that manufacturers use to produce a  computer, to sell to you, whose software they can update but you  can't.

  There are three elements involved in tivoisation:


1.     The manufacturer puts a chip in the computer which checks any    software before it is run and which will only allow authorised    software to be run.  
1.     The chip can recognise authorised software by, for example,    comparing a checksum (like a fingerprint) to a list of authorised    checksums, or by checking for an encrypted signature.  
1.     The manfucturer withholds the information which you would need in    order to make software authorised.  

  By doing this, the manufacturer can still publish new versions of  the software in the future.  They just have to embed the encrypted  signature in their new version, or send a remote command which would  add the checksum of the new version to the list of authorised  checksums.

  However, if you try to use a modified version of the software, or  try to run some third-party software, the computer will refuse to  function fully, or will simply not run the software at all.


# Controlling your own computer

  The name "tivoisation" comes from a computer called the  Tivo which  comes with the above restrictions (at least from Series2 models  onwards).  The [Tivo  contains spyware](http://www.nytimes.com/2006/07/26/technology/26adco.html?ex=1311566400&en=143cb4893c1c45a9&ei=5090&partner=rssuserland&emc=rss)  and [blocks the  copying](http://www.eff.org/deeplinks/archives/003979.php) of information even when you are legally allowed to copy  that information.

  The operating system installed on each Tivo  is [GNU+Linux](http://www.gnu.org/gnu/the-gnu-project.html), so  if you buy a Tivo, you have access to the human modifiable source  code and permission to modify it.  But, if you try to use a modified  kernel, the computer will not start.  (As described  in [this  article](http://www.gratisoft.us/tivo/bigdisk.html), midway in the 3rd paragraph.)  So tivoisation prevents  you from being able to use software that doesn't contain spyware or  wrongly imposed restrictions.


# Sustaining the free software movement

  The second reason why free software licences should prohibit  tivoisation is that tivoisation burns the environment in which free  software flourishes.

  Normally, when our software spreads, we gain more developers  (individuals plus companies) as some of the users will know how to  program, and they will make small or large changes.  Also, many of  the people who make changes will publish their improvements so that  everyone, including the non-programmers, can benefit from the  general ability of the community to modify the software.  By making  computers non-programmable, tivoisation makes free software users  non-programmers.

  So with tivoisation, the ability of the community to choose the  direction the software develops in is inhibited, and the link  between the spread of our software and the growth of our developer  community is cut.  If a million people bought Tivos, there would be  an extra million GNU+Linux users in the World, and we would gain  zero developers.

  This is unfortunate to any degree, but it can also become  particularly problematic if it becomes widespread.

  If we accept this behaviour from hardware manufacturers, we will get  more of it because hardware manufacturers have no reason to turn  down the opportunity to have more power over their customers.  If  tivoised computers become the norm and the era of programmable  computers fades into history, free software development and users's  control of their computers will be in trouble.


# What do we have to think about

  While GPLv3 is being drafted, we have to think about how many  different ways tivoisation can be done and whether or not there are  ways that it can be done, or the same problems can be caused, that  the current language could be improved to block.

  Of the three components of tivoisation mentioned above, item #3 is  the problematic one.  If manufacturers implement elements #1 and #2,  but told each customer the (possibly unique) encrypted signature, or  how to add new checksums to the list of authorised checksums, then  there would be no problem.  The computer would only run authorised  software, but you could decide what is authorised.

  Indeed, allowing elements #1 and #2 is important because they can be  used for security purposes.  I could configure my computer to only  run signed software, and then I could sign all the software on my  computer.  Then, if a virus ever modified the software on my  computer or added a new program, it wouldn't run.  Or as a network  administrator, I might also use this for multiple machines within  one organisation.  So elements #1 and #2 must not be inhibited by  any method of blocking element #3.


# What discussion draft 2 of GPLv3 says

  So, discussion draft 2 of GPLv3 blocks item #3 by saying that when  you are required to distribute a program's source code, you must  include:


>  ...any encryption or authorization keys necessary to install and/or  execute modified versions from source code in the recommended or  principal context of use.... 

  This only applies to people distributing hardware plus software  where the hardware is configured as in step #1 above.  If you are  just distributing software, then the number of keys that are  necessary to install and/or execute the software is zero.  So this  language only applies to a small number of hardware manufacturers,  probably less than ten.

  That sentence I've quoted is from the definitions of "Corresponding  Source" in discussion draft 2 of GPLv3.  Richard Stallman has said  that in discussion draft 3, this will probably be moved out of that  definition and into the section on distributing binaries.

  Your comments on this issue are sought at  the [gplv3.fsf.org  comments portal](http://gplv3.fsf.org/comments/gplv3-draft-2.html).

  For more information about GPLv3,  see [FSFE's GPLv3  project](http://www.fsfeurope.org/projects/gplv3/).

  (I had help in writing this from the people on  the [fsfe-uk](http://lists.gnu.org/archive/html/fsfe-uk/2006-12/index.html)  and [fsfe-ie](http://mail.fsfeurope.org/pipermail/fsfe-ie/2006-December/thread.html)  mailing lists.  Those links point to the archive of the relevant  discussions showing the people and their comments.  Thanks.)

