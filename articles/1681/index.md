---
nid: '1681'
title: 'The GNU "Lesser" General Public License gets some love'
authors: 'David Sugar'
published: '2006-07-18 14:28:16'
tags: 'gnu,gplv3,gpl,lgpl,licenses'
license: verbatim_only
section: opinions
listed: 'true'

---
With the introduction of the GNU GPLv3, the GNU Lesser General Public License (L-GPL) has seen much less attention.  This has changed with the recent GPLv3 conference in Barcelona, and I think it has changed for the better.

Historically, the GNU L-GPL has been drawn from language similar to, but not identical with, the GNU GPL.  It is a license that can be reverted to the GNU GPL, and given the subtle differences, it may be best thought of as a disjunctive license.  Often it has been used for C coded libraries, and so has often been mistakenly called the "Library" GPL.  This is an error and confuses the original purpose of the GNU Lesser GPL.

Generally, the GNU Lesser GPL is meant for cases where one wishes to insure freedom in the existing work, but not control what happens in a derived or "aggregate work", one assumes made by others.  This is a strategy one may choose if one is concerned with the "popularity", or use, of a package, and is an ethically valid license for a free software author to consider so long as it does not do so in a way that compromises freedom in the process.

The system libraries of the GNU project (glibc) is under the L-GPL because it serves the function and implements interfaces that already exists in proprietary system libraries.  Hence, having glibc discourages the emergence or need for a proprietary libc on GNU/Linux, and so promotes freedom on the platform.  This is particularly relevant since the GNU GPL does allow one to aggregate with proprietary code when linking with so called "system libraries", and hence assures the GNU platform remains built entirely with free software.

Other use cases where the GNU L-GPL may be suited include those where an existing free software library or plugin duplicates existing functionality already found in proprietary software.  Hence, it may promote greater use of a free software library or plugin where the GNU GPL on it's own may not, and is doing so in a way that does not compromise freedom.  Some may also feel that it is more compatible with their vision of freedom because it imposes no limitations on those creating aggregate works.  One place I think the GNU L-GPL is completely unsuitable is for an original free software library where no proprietary equivalent exists, as the latter simply encourages existing proprietary software to be designed around such a library without promoting new software to be written as free software.

The GNU L-GPL has a number of important limitations, however.  Perhaps the most glaring is that it was written from a time when pure static linking (and runtime dynamic linking) were the principle ways that applications and libraries were aggregated.  Modern object oriented languages do not operate this way, as they may use headers which include inline code for member functions, and templates, that are compiled, rather than purely linked, to create an aggregate work.  This has caused both confusion and a proliferation of special case free software licenses.

Some people who have worked on class frameworks on more modern languages have chosen other free software licenses explicitly because of this limitation, including the OpenH323 project, which choose to use the Mozilla MPL.  Some of these alternate free software licenses are not compatible with the GNU GPL, and so cause other problems.  Others have chosen to add privileges to the existing GNU GPL to create effects similar to what the GNU L-GPL does, but with language more specific to modern programming practices.  The best example of this is found in the GNU "Runtime" GPL license, which is used for the standard C++ library that is distributed as part of the GNU Compiler Collection (GCC).  That even core GNU packages have to include multiple exception licenses speaks volumes about the effect of this limitation in the current GNU L-GPL.

The GPLv3 has been written in ways that makes it possible to standardize the practice of adding special exceptions and privileges.  Going forward, having standardized language to recreate the L-GPL out of GPLv3 will mean that the core license will remain consistent rather than disjunctive, and I hope that the GPLv3 privileges template they come up with includes language appropriate to modern programming languages.  In effect, it seems something like the R-GPL of libstdc++ will become the model for the new "L-GPL" once GPLv3 is ratified, and this I think is a good thing.

