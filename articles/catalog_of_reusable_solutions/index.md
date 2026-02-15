---
nid: '2766'
title: 'Chapter 7: A catalog of reusable solutions'
authors: 'John Calcote'
published: '2008-03-10 20:35:46'
license: verbatim_only
listed: 'true'
book: autotools_a_guide_to_autoconf_automake_libtool
book_weight: '6'
layout: book
---
This chapter started out as a catalog of reusable solutions--canned macros, if you will. But as I finished chapter after chapter preceeding this one, it became clear to me that I really needed to broaden my definition of a "canned solution". Instead of just cataloging interesting macros here (which has been done before anyway), this chapter lists several unrelated, but important tips for creating great projects in general. Some of these are related to the GNU Autotools, but others are merely good programming practice with respect to open source and free software projects.
<!--break-->

# Never expose `config.h` in a public interface

At times, I've come across poorly designed library interfaces where a project's `config.h` file is required by the project's public header files. This presents a real problem when more than one such library is required by a consumer. Which `config.h` file should be included? Both are named the same, and chances are good that both provide similar--even identically named--definitions.

When you carefully consider the original purpose of `config.h`, then you can see that it makes little sense to expose it in a library's public interface (by including it in any of the library's public header files). Its purpose is to provide platform-specific definitions to a particular build of the library. On the other hand, the public interface of a portable library is, by definition, platform-independent.

Interface design is a fairly general topic in computer science. This item focuses a bit more specifically on designing great Application Programmer Interfaces (API's) for GNU Autotools library projects. Specifically, how to avoid including `config.h` in your public interfaces.

But this item provides some more or less generic advice, as well. When designing a library for consumption by other projects, you have a great responsibility to not polute your consumers' symbol spaces with useless garbage from your header files. I once worked on a project that consumed a library interface from another team. This team provided both a Win32 and a Unix version of their library, with the header file being "portable" between the two platforms. Unfortunately, they didn't understand the definition of a clean interface. At some point in their public header files, they had a bit of code that looked like this:

=CODE_START=
#ifdef _WIN32
# include <windows.h>
#else
# typedef void * HANDLE
#endif
=CODE_END=

Ouch! Did they really need to include `windows.h`--just for the definition of `HANDLE`? Not only should they not have done this, but in fact, they probably should have used a different name for the handle object in their public interface. Why? Because `HANDLE` is too generic, and could easily conflict with a dozen other library interfaces. Why not use `XYZ_HANDLE`, or something a little more specific to the `XYZ` library? 

In C++ this concept is even simpler to implement with the use of namespaces. Anyone who properly understands the rationale behind C++ namespaces will have no problem understanding the value of this advice.

To properly design a library, first design the public interface such that it exposes as little of the internals of your library implementation as is reasonable. Now, _you'll_ have to determine the definition of reasonable, but it will most probably involve a compromise between abstraction and performance.

When designing an API, start with the functionality you wish to expose from your library. Design functions that will maximize ease of use for your consumers. If you find yourself trying to decide between a simpler implementation and a simpler user experience, always err on the side of ease of use for your consumers. They'll thank you by actually _using_ your library. Of course, if the interface is already defined by a software standard, then much of your work is done for you, but often this is not the case and you will have to make these decisions.

Next, try to abstract away internal details. Everyone knows that the C language doesn't make it very easy to do this. You often need to pass structure references in public API's which contain internal details of your implementation that consumers have no business seeing. Ironically, C++ is just as bad in this area. C++ classes define public interfaces and private implementation details in the same class definition. 

In C, a common solution for this problem is to define a public alias for a private structure in terms of a `void` pointer. Many developers don't care for this approach because it reduces type safety in the interface. Such losses of type safety occur often in C programming. It's the nature of the language. The loss of type safety is significantly offset by the increase in interface abstraction. Here's an example of this technique:

### Private C source file

=CODE_START=
#include <abc_pub.h>

#if HAVE_CONFIG_H
# include <config.h>
#endif

typedef struct {
   /* private details */
} abc_impl;

int abc_func(abc * p)
{
   abc_impl * ip = (abc_impl *)p;
   /* use 'p' through 'ip' */
}
=CODE_END=

### Public C header file - `abc_pub.h`

=CODE_START=
typedef void abc;
int abc_func(abc * p);
=CODE_END=

Notice how the abstraction so conveniently alleviates the need to include a bunch of really private definitions in the library's public interface.

In C++, this can be done using a few different techniques, including virtual interfaces, and the PIMPL (Private IMPLementation) pattern. 

In the PIMPL pattern, implementation details are hidden behind a pointer to a private implementation class stored as private data within the public interface class. Here's an example of the PIMPL pattern:

### Private C++ source file

=CODE_START=
#include <abc_pub.h>

#if HAVE_CONFIG_H
# include <config.h>
#endif

class abc_impl {
   /* private details */
};

int abc::func(void)
{
   /* use 'pimpl' pointer */
}
=CODE_END=

### Public C++ header file - `abc_pub.h`

=CODE_START=
class abc_impl;
class abc {
  abc_impl * pimpl;
public:
  int func(void);
};
=CODE_END=

The C++ language allows the use of a forward declaration for any types used only through references or pointers, but never dereferenced in the public interface. Thus, the definition of the implementation class need not be exposed in the public interface, because the compiler is quite happy to compile the public interface files without the definition of the private implementation class.

The performance trade-off here generally involves the dynamic allocation of an instance of the private implementation class, and then accessing class data indirectly through this pointer, rather than directly in the public structure. Again, however, notice how all internal details are now conveniently hidden, and thus not required by the public interface.

Another approach when using C++ is to define a public "interface" class, most (if not all) of whose methods are declared _pure virtual_. The interface is then implemented internally by the library. To access an object of this class, consumers call a public _factory_ function, whose job it is to return a pointer to the implementation class in terms of the interface definition:

### Private C++ source file

=CODE_START=
#include <abc_pub.h>

#if HAVE_CONFIG_H
# include <config.h>
#endif

class abc_impl : public abc {
   /* implementation of virtual methods */
};
=CODE_END=

### Public C++ header file - `abc_pub.h`

=CODE_START=
#define interface class

interface abc {
public:
  virtual int func(void) = 0;
};

abc * abc_instantiate(/* abc_impl ctor params */);
=CODE_END=

To show the policy in practice here, I've used the C++ preprocessor to define a new keyword, _interface_. By definition, interface is synonymous with class, so they may be used interchangably. The idea here is that an interface doesn't expose any implementation details to the consumer. The public library function _abc_instantiate_ returns a pointer to a new object of type abc_impl, except in terms of _abc_. Thus, nothing internal need be shown to the caller in the public header file.

You may think the interface class method is more efficient than the PIMPL method, but the fact is most compilers implement virtual function calls as tables of function pointers referred to by a hidden "vptr" address within the implementation class, so you still end up calling all of your public methods indirectly through a pointer. Which of these techniques you choose to use to help you hide your implementation details is more a matter of taste than performance.

When I design a library, I start by designing a minimal but complete functional interface, with as much of my internal implementation abstracted away as is reasonable. I try to use only standard library basic types, if possible, in my function prototypes, and then include only the C or C++ standard header files required by the use of those types and definitions. This technique is the fastest way I've found to creating a highly portable and maintainable interface.

If you still can't see the value in the advice offered by this item, then let me give you one more scenario to ponder. Consider what happens when a Linux distro packager decides to create a 'devel' package for your library - that is, a package containing static libraries and header files, designed to be installed into the `/user/lib` and `/usr/include` directories on a target system. Every header file required by your library must be installed into the `/user/include` directory. If your library's public interface requires the inclusion of your `config.h` file, then by extension, your `config.h` must be installed into the `/usr/include` directory. Now consider what happens when multiple such libraries need to be installed.

I've seen message threads on the Autotools mailing list defending the need to do this sort of thing, and providing techniques for naming `config.h` in a package-specific manner. These techniques often involve some form of post-processing of this file to rename the macros it contains such that they don't conflict with other packages' installed `config.h` macros. While this can be done, and while there are a few good reasons for doing so (usually involving a legacy code base that can't be modified much), these situations should be considered the exception, not the rule.

# Implementing recursive extension targets

When you add a new top-level target to your build system, you have to either tie it into an existing Automake target, or add your own make code to the target to recurse into the sub-directory structure provided by Automake in your build system. 

The SUBDIRS variable can be used to recurse all sub-directories of the current directory, passing the build command into the makefiles in these directories. This works great for targets that must be built based on configuration options, because after configuration the `SUBDIRS` variable contains only those directories configured to be built.

If you need to execute your new recursive target in all sub-directories, regardless of any conditional configuration, which might exclude one or more sub-directories specified in the `SUBDIRS` variable, then use the `DISTDIRS` variable instead. This variable is derived by Automake from all conditional and non-conditional additions to the `SUBDIRS` variable.

There are various ways to recurse, including some really simple one-liners provided by GNU Make specific syntax. but the most portable way is to use the technique that Automake itself uses: 

=CODE_START=
recursive-target:
  $preorder_commands
  for dir in $(SUBDIRS); do \
    (cd $$dir && $(MAKE) $(AM_MAKEFLAGS) $@) || exit 1; \
  done
  $postorder_commands

.PHONY: recursive-target
=CODE_END=

The `$preorder_commands` macro can be used to do things that must be done before recursing to lower-level directories. The `$postorder_commands` macro can likewise be used to do additional things once you return from the lower-level directories. At some point in the hierarchy, you'll need to actually do something useful besides calling down to lower levels. Use these two macros to encode the actual functionality of this technique. 

For example, assuming you want to build some generated documentation, you might have a special target called `doxygen`. Even if you happen to be okay with building your documentation in the top-level directory, there may be cases where you need to distribute the generation of your documentation to various directories within your project hierarchy. You might use the following code in each `Makefile.am` file in your project:

=CODE_START=
# uncomment if doxyfile exists in this directory
# postorder_commands = $(DOXYGEN) $(DOXYFLAGS) doxyfile

doxygen:
  $preorder_commands
  for dir in $(SUBDIRS); do \
    (cd $$dir && $(MAKE) $(AM_MAKEFLAGS) $@) || exit 1; \
  done
  $postorder_commands

.PHONY: doxygen
=CODE_END=

For directories where `doxyfile` doesn't exist, you may comment out (or better yet, simply omit) the `postorder_commands` macro definition. The `doxygen` target will be harmlessly propagated to the next lower level in the build tree.

This code ensures that the build terminates when a lower-level makefile fails on the recursive target, propagating the shell error code (1) back up to each parent until the top-level shell is reached. This is important, or the build may continue at some levels until a different error is encountered.

Also note that I don't use the somewhat less portable `-C` make command line option to change directories before running the sub-make operation.

Allow me to emphasize here that if you choose to implement a completely recursive global target in this manner, then you must include this code snippet in every single Makefile.am file in your project, even if it has nothing to do with the generation of documentation. If you don't, then make will fail on that makefile because no such target exists within that makefile. The commands may do nothing, but the target must exist.

If you want to do something simpler, such as pass the target down to a single sub-directory beneath the top-level directory--say, a `doc` directory just below the top--then life is simpler:

### Top-level `Makefile.am`

=CODE_START=
doxygen:
  (cd doc && $(MAKE) $(AM_MAKEFLAGS) $@) || exit 1

.PHONY: doxygen
=CODE_END=

### `doc` directory `Makefile.am`

=CODE_START=
doxygen:
  $(DOXYGEN) $(DOXYFLAGS) doxyfile

.PHONY: doxygen
=CODE_END=

_NOTE: The variables, `DOXYGEN` and `DOXYFLAGS` are assumed to exist by virtue of some macro or shell code executed within the configure script._

# Using a repository revision number

Arguments to the Autoconf `AC_INIT` macro must be static text. That is, they can't be shell variables, and Autoconf will flag attempts to use shell variables in these arguments as errors. This is all well and good until you want to calculate any portion of your package's version number during the configuration process. 

I once tried to use a shell variable in the `VERSION` argument so that I could substitute my Subversion revision number into the `VERSION` argument when configure was executed. I spent a couple of days trying to figure out how to trick Autoconf into letting me use a shell variable as a sort of "revision" field in my package's version number. Eventually, I discovered the following trick, which I implemented in my `configure.ac` script, and in my top-level `Makefile.am` file:

### `configure.ac`

=CODE_START=
SVNREV=`svnversion $srcdir | sed 's/:.*//'`
which svnversion > /dev/null; \
if [ $? -ne 0 ] || [ "x$SVNREV" = "xexported" ]
  then SVNREV=`cat $srcdir/SVNREV`
  else echo -n $SVNREV>$srcdir/SVNREV
fi
AC_SUBST(SVNREV)
=CODE_END=

First, the shell variable `SVNREV` is set to the output of the `svnversion` command, as executed on the project top-level source directory. The output is piped through the `sed` utility to remove all text following an embedded COLON (:) character. This gives us a raw Subversion revision number--that is, _if_ the code is executed in a true Subversion work area, which isn't always the case. 

When a user executes this `configure` script from a distribution tarball, Subversion may not even be installed on her workstation. Even if it is, the top-level project directory comes from the tarball, not a Subversion repository. To handle these situations, the next line checks to see if either Subversion is not installed, or if the output from the first line was the word, "exported", which is the result of executing the `svnversion` utility on a non-work-area directory.

If either of these cases is true, then the `SVNREV` variable is populated from the contents of a file called `SVNREV`. This file actually ships with a distribution tarball containing this configuration code. This is true because if the `svnversion` command works properly, generating a true Subversion repository revision number, then that value is immediately written to the `SVNREV` file by the `else` clause of this `if` statement.

Finally, `AC_SUBST` is used to cause Autoconf to substitute the `SVNREV` variable so that it becomes available to the makefile as a `make` variable (all `AC_SUBST` variables are converted to `make` variables by Automake).

In the top-level `Makefile.am` file, I then ensure that the `SVNREV` file becomes part of the distribution tarball by adding it to the `EXTRA_DIST` list. This means that when a distribution tarball is created and published by the maintainer, it contains an `SVNREV` file that contains the source tree revision number to be used when generating a tarball from this source code. It's accurate because the tarball was actually generated from a this revision of the SVN repository.

Generally, it's not particularly important that a tarball be able to generate a proper tarball, but an Automake-generated tarball can do so without this code, so it should be able to do so _with_ this code.

### Top-level `Makefile.am`

=CODE_START=
EXTRA_DIST = SVNREV
distdir = $(PACKAGE)-$(VERSION).$(SVNREV)
=CODE_END=

The `distdir` make variable controls the name of the distribution directory and the tarball file name generated by Automake. Setting this variable in the top-level `Makefile.am` file affects the generation of the distribution tarball, because the top-level `Makefile.am` is where this functionality is located.

If you have a particular need for the `distdir` variable to be formatted correctly in any other `Makefile.am` file in your project, you should set this variable in that file as well. For most purposes, setting it in the top-level `Makefile.am` file should be sufficient.

# Ensure your distribution packages are "clean"

Have you ever downloaded and unpacked an open source package, and tried to run `configure; make` only to have it fail half way through one of these steps? As you dug into the problem, you perhaps discovered that there were missing files in the tarball. How sad to have this happen on an Autotools project, when the Autotools make it so easy to ensure that this simply doesn't happen.

Ensure that your distribution tarballs are always clean and complete by running the `distcheck` target on a newly created tarball. Don't be satisified with what you _believe_ about your package. Allow Automake to run the distribution unit tests, so to speak. I call these tests "unit tests" because they provide the same testing functionality for a distribution package that regular unit tests provide for your code. 

You'd never make a code change and ship a package without running your unit tests, would you? (If so, then you can safely skip this section.) So don't ship your tarballs without running the build system unit tests either - run `make distcheck` on your project _before_ posting your new tarballs.

# Cross-compilation

# Emulating autoconf replacement techniques

# Using the ac-archive project


...MORE TO COME...