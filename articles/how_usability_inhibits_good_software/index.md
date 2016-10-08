---
nid: '1987'
title: 'How usability inhibits good software'
authors: 'Jon Peck'
published: '2007-01-04 21:22:41'
tags: 'documentation,interfaces,usability'
license: verbatim_only
section: opinions
listed: 'true'

---
Have you ever founda new piece of software that sounds like it's the perfect match foryour needs, only to get bogged down by bad documentation or ahorrendous interface?  Many people will quickly discardprograms out of frustration caused by avoidable usabilityissues.  How can software developers avoid disenfranchisingpotential users?

Usability refers to how easy it isto use a product in order to achieve a goal.  Measured inefficiency and elegance, software usability is affected by a number offactors; two of the biggest hurdles are the interface and documentation.


## Interface

Agood interface is easily navigated and offers rapid access to keyfeatures.  If you hide an oft-used function under scores ofrecursive menus, you'll frustrate the end user.  Too often, asoftware package is discarded out of frustration because a corefunctionality just can't be figured out.

When facedwith new software, the most common complaint is that it's too complexand intimidating.  The primary cause of this reaction is justa bad interface.  FOSS is notoriously bad (but not alone) for having cluttered, difficult to use, and clunky interfaces.  While a free product may perform as well, ifnot better, than its commercial counterpart, people will naturallygravitate towards what they perceive as the easier to use package.

Somedevelopers get their priorities mixed up; functionality and usabilityshould outweigh design and aesthetics.  When you're using aprogram with a beautiful, dipped-in-plastic modern interface that'smissing or burying core mission-critical functions, that product isfundamentally flawed.  Remember, you can't polish a turd.

Apoor interface is often caused by creeping featurism, a phenomenon thatoccurs when precedence is given to new features and functions overusability.  A great example of this is [OpenOffice.org](http://www.openoffice.org/) Writer; tostay competitive, they've worked extremely hard to replicate featuresof other common word processors, and the user is presented with moreoptions and commands then they'll ever need or want, and it's easy toget lost in the menagerie of options and menus.  If you turnon all the the available toolbars in OpenOffice, you'll crowd your workarea to a minuscule portion of the screen, rendering it virtuallyunusable.  This is by no means unique to OpenOffice, nor isturning on all the toolbars normal practice, but it illustrates mypoint.


## Documentation

Lacklusterdocumentation also causes potential users to distance themselves froman otherwise functional product.  Good documentation doesn'tnecessarily mean a slick, professionally graphically designed manual;if the content is lacking, it doesn't matter how good itlooks.  Give the users what they need in a straight forward, easily navigated manner to minimize potential frustration and flight to other products.  Documentation can include other sources ofinformation, such as a Frequently Asked Question page and tooltips.  The quantity of the documentation isn't as important asthe quality and ease of use; if you can't find the information you need, then it's justas bad as not having any documentation at all.

A yearor two ago at the campus where I work, we were looking to adopt a newfree FTP client to replace the discontinued and buggy WS _FTP client onour desktop and lab images.  We researched many options andsettled on [FileZilla](http://filezilla.sourceforge.net/), a free software FTP client for Windows thatsupports FTP, SFTP, and FTP over SSL/TLS.  However, as we wereconfiguring a silent, auto-configured installer for deployment, westarted finding big, show-stopping holes in the customized installationdocumentation.  There were options and features that werementioned in the manual that didn't work correctly when used asdirected, and others that were missing completely.

Weresorted to reviewing the source code to find some obscure,undocumented settings.  If we hadn't liked FileZilla'sfeatures and ease of use, we wouldn't have taken the extra time andsteps looking for the solution.  It was fortunate thatFileZilla was free software and we had the ability to read the sourcecode; otherwise, we would have abandoned it completely for anotheralternative.  As time passed, the FileZilla documentation has improved, and we haven't had any other similar issues with that particular package.


## Conclusion

Whenevaluating a new piece of free software, especially in a group setting,keep usability in mind.  Otherwise, you'll end up frustratingthe users and leaving a bad overall impression of free software, andnobody wins.  Besides, annoyed users have the potential to disrupt the equilibrium of the solar system, and you certainly don't want that on your conscience, do you?

