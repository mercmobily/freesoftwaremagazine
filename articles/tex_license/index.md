---
nid: '1197'
title: 'The LaTeX Project Public License'
authors: 'Gianluca Pignalberi'
published: '2005-08-30 11:02:02'
issue: issue_07
license: cc-by-nc-nd
section: opinions
listed: 'true'

---
In a world where people wish to protect their work in any way, there are plenty of licenses **[5]** that protect the rights of their work, while still allowing it to be shared.

One of these licenses is the _LaTeX Project Public License_ (LPPL) **[3]**, mainly used to distribute and protect TeX-related works, but suitable, with small modifications, for works not related to TeX. This license only covers distribution and modifications of a work, while its execution is not restricted. No requirements are made concerning any offers of support for the work, as stated in the clause 1 of the LPPL.

In this article I will analyse the LPPL version 1.3a, the latest available at **[3]**. Don’t forget that since March, 2004 this license is considered free under the terms of _Debian Free Software guidelines_ **[1]**.


# Definitions

This license defines a set of terms, useful for recognising and clustering the components of the work you are going to distribute.


=ZOOM=The _LaTeX Project Public License_ (LPPL), mainly used to distribute and protect TeX-related works, is suitable, with small modifications, for works not related to TeX=

According to this license, a _work_ is any (original) work distributed under the license, while a _derived work_ is any work deriving from (original) work by a _modification_. For instance, a translation of a work, or an original file associated with the work, is considered a modification.

A _distribution_ is a copy of the work available from a person to another by any means, included file transfer protocols. A _compiled work_ is a version of the work processed into a form directly usable on a computer system. Distributing a part of the work is considered to be a modification.

This license, due to the particular facilities that it provides, needs to recognise two more actors (based on the UML meaning of actor): the _current maintainer_ and the _base interpreter_.

The former is a person, or a group of people, nominated as such within the work. The lack of this name indicates that the current maintainer is the copyright holder.

The latter (base interpreter) is a program or process needed to run or interpret a part or the whole of the work. While a base interpreter may depend on external components, these components are not considered part of the base interpreter. Unless explicitly specified when applying the license to the work, the only applicable base interpreter is a “LaTeX format”.


# Distribution and modification

A set of 12 clauses state the conditions to distributing and modifying a piece of work. While they seem restrictive, they are not. As shown, the LPPL defines, via the base interpreter, a “standard” tool (and, thus, a standard format) that ensures that a work, processed on different machines (where the machine is the combination of hardware, operating system, compilers and programs), outputs the same result.

Clause 2 allows the right to distribute a complete and unmodified copy of the work. Clause 3 allows the same right, but applied to the compiled work. Clause 4 allows the current maintainer to modify the work, to distribute the derived work and the compiled work generated from the derived one; such a work, distributed by the current maintainer, is to be considered an updated version of the work.

So, up to now, it seems that only the author of the work, or its maintainer, has the right to modify the work; the rest of the world cannot modify. But there’s more to it than that.

The subsequent clauses 5, 6 and 7 say that a person who is not the current maintainer can modify a work, obtaining a derived version, and compile it, but he or she has to conform to some conditions.


=ZOOM=Clauses 5, 6 and 7 say that a person who is not the current maintainer can modify a work, obtaining a derived work, and compile it, but he or she has to conform to some conditions=

These conditions are: the modified components of the work have to clearly identify themselves when used with the base interpreter; such components have to contain a summary detailing the nature of the changes, or a reference to another file, distributed as part of the derived work, that contains the same information. The last condition is to distribute either a complete (and, obviously, unmodified) copy of the work or information on how to obtain it, together with the derived work.

There are also clauses 8–12, that give conditions and guarantees to change the license; to modify a work according to the current, updated, work; to aggregate the work with some other works. But I won’t go into these in this article.


# LPPL is free

In 1995, the LaTeX3 Project Team wrote a document **[4]** to clarify how to meet the above conditions, and why to apply this kind of conditions instead of a GNU GPL **[2]**. Some years later, these conditions were collected as the LPPL.

In the document of the LaTeX3 Project Team **[4]** it is clearly stated that a user – not the maintainer – can modify everything, but the user has to change the name of the files that are changed. If these files are executables, a changed name implies a different command name to run them; moreover these executables have to identify themselves as being different from original programs (the compiled works).

For instance, suppose that the original executable is LaTeX, and an original package is SIunits.sty. Suppose that I modified the executable and the package to add some more features, and I’m not the maintainer. The new versions could be named mylatex (and so the source code it originated from) and mySIunits.sty, and they will write in the log files that their names are the new ones. Possibly, they will also write how to get the original and unmodified versions.

The reason that common users have to change the names of derived works are very simple, as read in the document of the LaTeX3 Project Team **[4]**:


>Our experience of maintaining LaTeX has shown us just how complex the interactions are between different parts of the system.


>We have therefore, with lots of help from the bug reports you send in, developed a large suite of test files, which we run to check the effects of every change we make. A non-negligible percentage of these test runs give unexpected results and hence show up some unexpected dependency in the system.

Talking about LaTeX, in this way the system will work in a standard way on all of the machines, and the related document description language will remain the same.


=ZOOM=Since version 1.3, the works released under this license have been considered free software=

While in the older versions of the LPPL these requests were clearer, or more direct, it seems that _programs_ (according to the old definition of _works_) distributed under the older licenses were not considered free software. Since version 1.3, the works released under this license have been considered free software.


# Conclusion

A lot of professional programmers aim at sharing their programs, files and file formats. A wide variety of free licenses are available to allow this aim. One of them is the LaTeX Project Public License. Since version 1.3 this license is considered free under the terms of Debian Free Software guidelines. If you are a free software developer, you can consider the possibility of applying this license to your works, even if it isn’t related to LaTeX.


# Bibliography

[1] [Debian social contract.](http://www.debian.org/social_contract), 2005.

[2] [Gnu general public license.](http://www.gnu.org/copyleft/gpl.html), 2005.

[3] [LaTeX Project Public License.](http://www.latex-project.org/lppl.html), 2005.

[4] LaTeX3 Project Team. Modifying LaTeX. Document `modguide.dvi` in the base LaTeX distribution, 1995.

[5] [List of software licenses.](http://en.wikipedia.org/wiki/List_of_software_licenses), 2005.


