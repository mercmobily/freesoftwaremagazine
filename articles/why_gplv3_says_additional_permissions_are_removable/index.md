---
nid: '2146'
title: 'Why GPLv3 says additional permissions are removable'
authors: 'Ciaran O’Riordan'
published: '2007-03-19 17:11:06'
tags: gplv3
license: verbatim_only
section: opinions
listed: 'true'

---
  As with any copyright licence, software developers who use any  version of the GPL can also grant additional permissions to  recipients for code that they hold the copyright of.  That is, they  can say that you can distribute the software under the terms of the  GPL, and they can additionally say that, at your option, you can  also distribute the software in this way or that way.

  About such additional permissions, the following words are proposed  for [GPLv3](http://fsfeurope.org/projects/gplv3/), in discussion draft 2: "_When you convey a copy of  a covered work, you may at your option remove any additional  permissions from that copy, or from any part of it._" As I  see it, these words actually don't change the nature of such  additional permissions at all. This topic has come up a few times  when I've been discussing GPLv3 with people, so here's my  understanding of this issue.


<!--break-->



## Why this changes nothing substantial

  If person A writes some code and puts a notice on it saying  "_this software can be distributed under the terms of the  GPL, or, at your option, you can blah blah blah..._", and  person B gets a copy and writes some more code and person B puts a  notice on their code saying their code "_can be distributed  under the terms of the GPL_", then the only way to  distribute the combination of A's code plus B's code would be to  distribute it under the GPL.  The additional permission, which is  only on A's code, would not apply to B's code and would therefor not  be an option for distributing the combination as a whole.

  Thus, third-parties can always render additional permissions  inapplicable to their forked versions of a project.  This is true  for any version of the GPL.  The third party just has to modify the  software in some way and add their copyright notice to their  modifications.  GPLv3 doesn't change this.  The meaning of the  change proposed for GPLv3 is simply that you don't have to keep  those inapplicable legal notices in your project.  If you like, you  can delete them.

  The benefit is that it avoids the messy situation where some code in  a project previously had additional permissions, and now it's hard  to separate the old code from the new code.  Instead, if someone  wants to use the additional permission, they should get an old copy  from when the additional permission applied to the whole program,  and use that.  This doesn't change what code can be used with the  additional permission, it's ensures that people do it in the legally  clean way.


## If they're removable, is there a point?

  Some people have asked "_But if they can be removed, aren't  additional permissions meaningless?_"

  Whether some third-party removes them or not doesn't change that  they are available in the original version.

  If you publish your software with an additional permission, and I  start redistributing your software but with the additional  premission removed, then anyone who wants to make use of the  additional permission will simply ignore my version of it and get it  from you.


## Can't I require that others preserve my additional permissions?

  Some people also asked "_But what if I want my additional  permission to apply to all later versions of the program, including  other people's modified versions of my program?_"

  The problem there is that if you only allow people to add code to  your project when their code is under the GPL plus the same  additional permission that you're using, then, obviously, you are  prohibiting people from adding plain GPL'd code to your project or  combining your project and another project that is under the plain  GPL.

  If you do that, then you've made a new GPL-incompatible licence.  No  one can use your code in their GPL'd projects, and you can't use  anyone else's GPL'd code in your project.  Version 1 of the GPL was  written in 1989 to replace the various incompatible licences of the  GNU projects.  Version 2 also ensured that all GPL'd projects could  share code, and version 3 will too.


## Permissions and requirements

  Additional permissions should not be confused with additional  requirements.  Additional requirements are another topic altogether  and have almost nothing in common with additional permissions.  For  some explanation of additional requirements, see [How  GPLv3 Tackles Licence Proliferation](http://www.linuxdevices.com/articles/AT7188273245.html).

[Ciarán O'Riordan](http://ciaran.compsoc.com/),  - [Support free software: Join FSFE's    Fellowship](http://fsfe.org/join)

