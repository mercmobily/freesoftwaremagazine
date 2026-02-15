---
nid: '2757'
title: 'Chapter 4: Automatically writing makefiles with Automake'
authors: 'John Calcote'
published: '2008-06-25 1:50:59'
license: verbatim_only
listed: 'true'
book: autotools_a_guide_to_autoconf_automake_libtool
book_weight: '3'
layout: book
---
Most of the general complaints I've ever seen aimed at the Autotools are ultimately associated with Automake, in the final analysis. The reason for this is simple: Automake provides the highest level of abstraction over the build system. This high level of abstraction is both apparent, and actual. And yet a solid understanding of the inner workings of Automake can provide you with the one of the most satisfying auto-generated build system experiences, because you can feel comfortable using the features of Automake to their maximum potential, and extending it where your projects require.
<!--break-->

This chapter has [downloads](/files/nodes/2757/downloads.tgz)!

Shortly after Autoconf was well on its way to success in the GNU world, David MacKenzie began work on a new tool--a tool for automatically generating makefiles for a GNU project. MacKenzie's work on Automake lasted about a year during 1994, ending around November of that year. A year later, during November of 1995, Tom Tromey (of RedHat and Cygnus fame) took over development of the Automake project. Tromey really had very much a defining role in Automake. In fact, although MacKenzie wrote the initial version of Automake in Bourne shell script, Tromey completely rewrote the tool in Perl over the following year. Tromey continued to maintain and enhance Automake during the next 5 years.

_NOTE: Do not confuse the requirements of Automake on the project maintainer with the requirements of a generated build system on the end user. Perl is required by Automake, not by the generated build system._

Around February of 2000, Alexandre Duret-Lutz began to take a more active role in the development of the Automake project, and by the end of that year, had pretty much taken over project maintenance. Duret-Lutz's role as project lead lasted until about mid-2007. Since then, the project has been maintained by Eric Blake of the Free Software Foundation (FSF), with strong leadership (and most of the repository check-in's, for that matter) from automake mailing list contemporaries such as Ralf Wildenhues and Akim Demaille. _(I owe many heartfelt thanks to Ralf for kindly answering so many seemingly trivial questions while I worked on this book.)_

Sometime early during development of the GNU Coding Standards (GCS), it became clear to MacKenzie that much of a GNU project makefile was fairly boilerplate in nature. This is because the GCS guidelines are fairly specific about how and where a project's products should be built, tested, and installed. These conditions have allowed Automake syntax to be concise--in fact, it's terse, almost to a fault. One Automake statement represents a _lot_ of functionality. The nice thing, however, is that once you understand it, you can get a fairly complete, complex and functionally correct build system up and running in short order--I mean on the order of minutes, not hours or days.

# Getting down to business

Let's face it, writing a makefile is hard. Oh, the initial writing is fairly simple, but getting it right is often very difficult--the devil, as they say, is in the details. Like any high-level programming language, make syntax is often conducive to formulaic composition. That's just a fancy way of saying that once you've solved a "make problem", you're inclined to memorize the solution and apply the same formula the next time that problem crops up--which happens quite often when writing build systems. 

So what advantages does Automake give us over our hand-coded Makefile.in templates, anyway? Well, that's pretty easy to answer with a short example. Consider the following changes to the files in our project directory structure (these commands are executed from jupiter's top-level directory):

=CODE_START=
$ rm autogen.sh Makefile.in src/Makefile.in
$ echo "SUBDIRS = src" > Makefile.am
$ echo "bin_PROGRAMS = jupiter
> jupiter_SOURCES = main.c" > src/Makefile.am
$ touch NEWS README AUTHORS ChangeLog
$ vi configure.ac
...
AC_INIT([Jupiter], 1.0, [bugs@jupiter.org])
AM_INIT_AUTOMAKE
AC_CONFIG_SRCDIR([src/main.c])
...
$ autoreconf -i
$
=CODE_END=

The "`rm`" command deletes our hand-coded Makefile.in templates and the autogen.sh script we wrote to ensure that all the support scripts and files were copied into the root of our project directory. We won't be needing this script anymore because we're upgrading jupiter to Automake proper. 

For the sake of brevity in the text, I used `echo` statements to write the new Makefile.am files, but you may, of course, use an editor if you wish. _NOTE: There is a hard carriage-return after "`bin_PROGRAMS = jupiter`" in the third line. The shell will continue to accept input after the carriage return until the quotation is closed on the following line._

The `touch` command is used to create new empty versions of the `NEWS`, `README`, `AUTHORS` and `ChangeLog` files in the project root directory. These files are required by the GCS for all GNU projects. While they're _not_ required for non-GNU programs, they've become something of an institution in the FOSS world--you'd do well to have these files, properly formatted, in your project, as users have come to expect them. The GCS document covers the format and contents of these files. Section 6 covers the `NEWS` and `ChangeLog` files, and Section 7 covers the `README` and `INSTALL` files. The `AUTHORS` file is a list of people (names and optional email addresses) to whom attribution should be given.

## Enabling Automake in `configure.ac`

Finally, I've added a single line to the configure.ac file, `AM_INIT_AUTOMAKE` between the `AC_INIT` and `AC_CONFIG_SRCDIR` statements. Besides the normal requirements of an Autoconf input file, this is the _only_ line that's required to enable Automake in a project that's already configured with Autoconf. The AM_INIT_AUTOMAKE macro accepts an optional argument--a white-space separated list of option tags, which can be passed into this macro to modify the general behavior of Automake. The following is a comprehensive list of options for Automake version 1.10:

* `gnits`
* `gnu`
* `foreign`
* `cygnus`
* `ansi2knr`
* `path/ansi2knr`
* `check-news`
* `dejagnu`
* `dist-bzip2`
* `dist-lzma`
* `dist-shar`
* `dist-zip`
* `dist-tarZ`
* `filename-length-max=99`
* `no-define`
* `no-dependencies`
* `no-dist`
* `no-dist-gzip`
* `no-exeext`
* `no-installinfo`
* `no-installman`
* `nostdinc`
* `no-texinfo.tex`
* `readme-alpha`
* `std-options`
* `subdir-objects`
* `tar-v7`
* `tar-ustar`
* `tar-pax`
* `<version>`
* `-W<category>`
* `--warnings=<category>`

I won't spend a lot of time on the option tag list at this point. For a detailed description of each option, check out Chapter 17 of the GNU Automake manual. I will, however, point out a few of the most useful options. 

The `check-news` option will cause "make dist" to fail if the current version doesn't show up in the first few lines of the `NEWS` file. The `dist-*` tags can be used to change the default distribution package type. Now, these are handy because often developers want to distribute tar.bz2 files, rather than tar.gz files. By default, "make dist" builds a tar.gz file. You can override this by using "make dist-bzip2", but this is more painful than it needs to be for projects that like to use bzip2 by default. The `readme-alpha` option can be used to temporarily alter the behavior of the build and distribution process during alpha releases of a project. First, a file named `README-alpha`, found in the project root directory, will be distributed automatically while using this option. This option will also alter the expected versioning scheme of the project. 

The `<version>` option is actually a placeholder for a numeric version number. This value represents the lowest version number of Automake that is acceptable for this project. For instance, if `1.10` is passed as a tag, then Automake will fail if it's version is less than 1.10. The `-W<category>` and `--warnings=<category>` options indicate that the project would like to use Automake with various warning categories enabled. 

## What we get from Automake

The last line of the example executes the `autoreconf -i` command, which, as I've already discussed in prior chapters, regenerates all Autotools-generated files according to the configure.ac file. This time, with the inclusion of the `AM_INIT_AUTOMAKE` statement, the `-i` option properly tells Automake to add any missing files. The `-i` option need only be used once in a newly checked out work area. Once the missing utility files have been added, the `-i` option may be dropped.

These few commands create for us an Automake-based build system containing everything that we wrote into our original Makefile.in templates, _except that this one is more correct and functionally complete._ A quick glance at the resulting generated Makefile.in template shows us that, from just a couple of input lines, Automake has done a significant amount of work for you. The resulting top-level Makefile.in template (remember, the configure script turns these templates into Makefiles), is nearly 18K in size. The original files were only a few hundred bytes long.

A generated Automake build system supports the following important `make` targets--and this list is _not_ comprehensive:

* `all`
* `distdir`
* `install`
* `install-strip`
* `install-data`
* `install-exec`
* `uninstall`
* `install-dvi`
* `install-html`
* `install-info`
* `install-ps`
* `install-pdf`
* `installdirs`
* `check`
* `installcheck`
* `mostlyclean`
* `clean`
* `distclean`
* `maintainer-clean`
* `dvi`
* `pdf`
* `ps`
* `info`
* `html`
* `tags`
* `ctags`
* `dist`
* `dist-bzip2`
* `dist-gzip`
* `dist-lzma`
* `dist-shar`
* `dist-zip`
* `dist-tarZ`
* `uninstall`

As you can see, this goes a bit beyond what was provided in your hand-coded Makefile.in templates. And Automake writes all of this functionality automatically, correctly and quickly for each project that you instrument in the manner outlined above.

# So, what's in a Makefile.am file?

You'll no doubt recall from Chapter 3 that Autoconf accepts shell script, sprinkled with M4 macros, and generates the same shell script with those macros fully expanded into additional shell script. Likewise, Automake accepts as input a makefile, sprinkled with Automake commands. As with Autoconf, the significance of this statement is that Automake input files are nothing more or less than makefiles with additional syntax.

One very significant difference between Autoconf and Automake is that Autoconf generates _no_ output text except for the existing shell script in the input file, plus any additional shell script resulting from the expansion of embedded M4 macros. Automake, on the other hand, assumes that all makefiles should contain a minimal infrastructure designed to support the GCS, in addition to any targets and variables that you specify. 

To illustrate this point, I'll create a `temp` directory in the root of the jupiter project, and add an _empty_ Makefile.am file to that directory. Then I'll add this new Makefile.am to my project, like this:

=CODE_START=
$ mkdir temp
$ touch temp/Makefile.am
$ echo "SUBDIRS = src temp" > Makefile.am
$ vi configure.ac
...
AC_CONFIG_FILES([Makefile
                 src/Makefile
                 temp/Makefile])
...
$ autoreconf
$ ./configure
...
$ ls -1sh temp
total 20K
 12K Makefile
   0 Makefile.am
8.0K Makefile.in
$
=CODE_END=

Thus we can see that Automake considers a certain amount of support code to be indispensable in every makefile. Even with an empty Makefile.am file, you end up with about 12K of code in the resulting Makefile, which is generated by configure (config.status) from an 8K Makefile.in template. Incidentally, it's fairly instructive to examine the contents of this Makefile.in template to see the Autoconf substitution variables that are passed in, as well as the framework code that Automake generates.

Since the make utility uses a fairly rigid set of rules for processing makefiles, Automake takes some minor "literary license" with your additional make code. Specifically, two basic rules are followed by Automake when generating Makefile.in templates from Makefile.am files that contain additional non-Automake-specific syntax (rules, variables, etc):

1. Make _variables_ that you define in your Makefile.am files are placed at the top of the resulting Makefile.in template, immediately following any Automake-generated variable definitions.
1. Make *rules* that you specify in your Makefile.am files are placed at the end of the resulting Makefile.in template, immediately following any Automake-generated rules.

Make doesn't care where rules are located relative to one another, because it reads all of the rules and stores them in an internal database before processing any of them. Variables are treated in a similar manner. To prove this to yourself, try referencing a variable in a makefile before its definition. Make binds values to variable references at the last possible moment, right before command lines containing these references are passed to the shell for execution.

Often, you won't need to specify anything besides a few Automake commands within a given Makefile.am, but there are frequent occasions when you will want to add your own make targets. This is because, while Automake does a lot for you, it can't anticipate _everything_ you might wish to do in your build system. It's in this "grey" area where most developers begin to complain about Automake. 

I'll spend the rest of this chapter examining the functionality provided by Automake. Later, I'll get into some tricks you can use to significantly enhance existing Automake functionality.

# Analyzing our new build system

I will now spend some time looking at what I put into those two simple Makefile.am files. I'll start with the top-level file, with its single line of Automake code:

### `Makefile.am`

=CODE_START=
SUBDIRS = src
=CODE_END=

It's pretty easy to divine the primary purpose of this line of text just by looking at the text itself. It appears to be indicating that I have a sub-directory in our project called `src`. In fact, this line tells Automake several things about our project:

1. There are one or more immediate sub-directories containing Makefile.am files to be processed, in addition to this file.
1. Directories in this space-delimited list are to be processed in the order specified.
1. Directories in this list are to be recursively processed for all primary make targets.
1. Directories in this list are to be treated as part of the project distribution.

`SUBDIRS` is not just a make variable: it's recognized by Automake to have special meaning, besides the intrinsic meaning associated with common make variables. As you continue to study Automake constructs, this theme will come up over and over again. Most Automake statements are, in fact, just make variables with special meaning to Automake.

Another point about the `SUBDIRS` variable is that it may be used in an arbitrarily complex directory structure, to process Makefile.am files within a project. You might say that `SUBDIRS` is the "glue" that links Makefile.am files together in a project's directory hierarchy.

One final point about `SUBDIRS` is that the current directory is _implicitly listed last_ in the `SUBDIRS` list, meaning that the current directory will be built _after_ all of the directories listed in the `SUBDIRS` variable. You may change this implied ordering if you wish, by using "." (meaning the current directory) anywhere in the list. This is important because it's sometimes necessary to build the current directory before one or more subdirectories.

Let's move down a level now into the `src` directory. The `src/Makefile.am` file contains slightly more code for you to examine; two lines rather than one:

### `src/Makefile.am`

=CODE_START=
bin_PROGRAMS = jupiter
jupiter_SOURCES = main.c
=CODE_END=

## Primaries

The first line, "`bin_PROGRAMS = jupiter`" lists the products generated by this Makefile.am file. Multiple files may be listed in this variable definition, separated by white space. The variable name itself is made up of two parts, the installation location, `bin`, and the product type, `PROGRAMS`. GNU Automake documentation calls the product type portion of these variables a "primary". The following is a list of valid primaries for version 1.10 of Automake:

* `PROGRAMS`
* `LIBRARIES`
* `LISP`
* `PYTHON`
* `JAVA`
* `SCRIPTS`
* `DATA`
* `HEADERS`
* `MANS`
* `TEXINFOS`

_NOTE: Libtool adds `LTLIBRARIES` to the primaries list supported by Automake. I'll examine this and other Automake extensions provided by Libtool in Chapter 5._

You could consider primaries to be "product classes", or types of products that might be generated by a build system. This being the case, it's pretty clear that not all product classes are handled by Automake. What differentiates one class of product from another? Basically differences in handling semantics during build and installation. `PROGRAMS`, for example are built using different compiler and linker commands than are `LIBRARIES`. Certainly `LISP`, `JAVA` and `PYTHON` products are handled differently--the build system uses entirely different tool chains to build these types of products. And `SCRIPTS`, `DATA` and `HEADERS` aren't generally even built (although they might be), but rather simply copied into appropriate installation directories. 

`PROGRAMS` also have different execution, and thus installation, semantics from `LISP`, `PYTHON` and `JAVA` programs. Products that fit into the `PROGRAMS` category are generally executable by themselves, while `LISP`, `JAVA` and `PYTHON` programs require virtual machines and interpreters.

What makes this set of primaries important? The fact that they cover 99 percent of the products created in official GNU projects. If your project generates a set of products that define their own product class, or use a product class not listed in this set of primaries, then you might do well to simply stick with Autoconf until support is added to Automake for your product class. Another option is to add support yourself to Autoconf for your product class, but doing so requires a deep knowledge of both the product class and the Automake Perl script. I believe it's fair to say, however, that this set of primaries covers a wide range of currently popular product classes.

## Prefixes

Supported installation locations are provided by the GCS document. This is the same list that I provided to you in Chapter 2. I'll relist them here for convenience:

* `bindir`
* `sbindir`
* `libexecdir`
* `datarootdir`
* `datadir`
* `sysconfdir`
* `sharedstatedir`
* `localstatedir`
* `includedir`
* `oldincludedir`
* `docdir`
* `infodir`
* `htmldir`
* `dvidir`
* `pdfdir`
* `psdir`
* `libdir`
* `lispdir`
* `localedir`
* `mandir`
* `manNdir`

You may have noticed that I left a few entries out of this version of the list. Essentially, all entries ending in `dir` are viable prefixes for Automake primaries. Besides these standard GCS installation locations, three other installation locations are defined by Automake to have enhanced meaning:

* `pkglibdir`
* `pkgincludedir`
* `pkgdatadir`

The `pkg` versions of the `libdir`, `includedir` and `datadir` prefixes are designed to install products into subdirectories of these installation locations that are named after the package. For example, for the jupiter project, the `pkglibdir` installation location would be found in `$(exec-prefix)/lib/jupiter`, rather than the usual `$(exec-prefix)/lib` directory.

If this list of installation locations isn't comprehensive enough, don't worry--Automake provides a mechanism for you to define your own installation directory prefixes. Any make variable you define in your Makefile.am file that ends in `dir` can be used as a valid primary prefix. To reuse the example found in the GNU Automake manual, let's say you wish to install a set of XML files into an `xml` directory within the system data directory. You might use this code to do so:

=CODE_START=
xmldir = $(datadir)/xml
xml_DATA = file1.xml file2.xml file3.xml ...
=CODE_END=

Note that the same naming conventions are used with custom installation locations as with the standard locations. Namely, that the variable ends with `dir`, but the `dir` portion of the variable name is left off when using it as a primary prefix.

There are also several prefixes with special meanings not related to installation locations:

* `check`
* `noinst`
* `EXTRA` 

The `check` prefix indicates products that are built only for testing purposes, and thus will not be installed at all. Products listed in primary variables that are prefixed with `check` aren't even built if the user never types `make check`.

The `noinst` prefix indicates that the listed products should be built, but not installed. For example, a static so-called "convenience" library might be built as an intermediate product, and used in other stages of the build process to build final products. Such libraries are not designed to be installed, so the prefix shouldn't be an installation location. The `noinst` prefix serves this purpose.

The `EXTRA` prefix is used to list programs that are conditionally built. This is a difficult concept to explain in a few paragraphs, but I'll give it a try. All product files must be listed statically (as opposed to being calculated at build-time) in order for Automake to generate a Makefile.in template that will work for any set of input commands. However, a project maintainer may elect to allow some products to be built conditionally, based on configuration options given to the configure script. If some products are listed in variables generated by the configure script, then these products should also be listed in a primary prefixed with "`EXTRA`", like this:

=CODE_START=
EXTRA_PROGRAMS = myoptionalprog
bin_PROGRAMS myprog $(optional_programs)
=CODE_END=

Here, it is assumed that the "`optional_programs`" variable is defined in the configure script, and listed in an `AC_SUBST` macro. This way, Automake can know in advance that "`myoptionalprog`" _may_ be built, and so generate rules to build it. Any program that may or may not be built, based on configuration options should be specified in `EXTRA_PROGRAMS`, so that Automake can generate a makefile that _could_ build it if requested to do so.

## "Super" prefixes

Some primaries allow a sort of "super" prefix to be prepended to a prefix/PRIMARY variable specification. Such modifiers may be used together on the same variable where it makes sense. Thus, these "super" prefixes modify the normal behaviour of a prefix/PRIMARY specification. The existing modifiers include:

* `dist`
* `nodist`
* `nobase`

The `dist` modifier indicates a set of files that should be distributed (that is, included in the distribution package when "make dist" is executed). The `dist` modifier is used with files that are normally not distributed, but may be used explicitly anywhere for clarity. For instance, assuming that some source files for a product should be distributed, and some should not (perhaps they're generated), the following rules might be used:

=CODE_START=
dist_jupiter_SOURCES = file1.c file2.c
nodist_jupiter_SOURCES = file3.c file4.c
=CODE_END=

While the `dist` prefix is redundant in this example, it is nonetheless useful to the casual reader.

The `nobase` modifier is used to suppress the removal of path information from installed header files that are obtained from subdirectories by a Makefile.am file. For instance, assume that installable jupiter project header files exist in a subdirectory of the `src` directory "`jupiter`":

=CODE_START=
nobase_dist_include_HEADERS = \
  jupiter/jupiter_interface.h
=CODE_END=

Normally, such a header file would be installed into the `/usr(/local)/include` directory as simply `jupiter_interface.h`. However, if the `nobase` modifier is used, then the extra path information would not be removed, so the final resting place of the installed header would instead be `/usr(/local)/include/jupiter/jupiter_interface.h`.

Notice also in this example that I combined the use of the `nobase` modifier with that of the `dist` modifier--just to show the concept.

## Product sources

The second line in `src/Makefile.am` is "`jupiter_SOURCES = main.c`". This variable lists the source files used to build the `jupiter` program. Like product variables made from prefixes and primaries, this type of variable is derived from two parts, the product name, `jupiter` in this case, and the dependent type. I call it the "dependent type" because this variable lists source files on which the product depends. Ultimately, Automake adds these files to make rule dependency lists.

The `EXTRA` prefix may also be used sometimes as a super prefix modifier. When used with a product SOURCES variable (eg., `jupiter_SOURCES`), `EXTRA` can be used to specify extra source files that may or may not be used, which are directly associated with the jupiter product:

=CODE_START=
EXTRA_jupiter_SOURCES = possibly.c
=CODE_END=

In this case, `possibly.c` may or may not be compiled--perhaps based on an AC_SUBST variable.

# Unit tests - supporting "`make check`"

I mentioned earlier that this Automake-generated build system provided the same functionality as our hand-coded build system. Well, I wasn't completely truthful when I said that. For the most part, that was an accurate statement, but what's still missing is our simple-minded `make check` functionality. The `check` target is indeed supported by our new Automake build system, but it's just not hooked up to any real functionality. Let's do that now.

You'll recall in Chapter 2 that you added code to the `src/Makefile` to run the jupiter program and check for the proper output string when the user entered "make check". You did this with a fairly simple addition to our `src/Makefile`:

=CODE_START=
...
check: all
        ./jupiter | grep "Hello from .*jupiter!"
        @echo "*** ALL TESTS PASSED ***"
...
=CODE_END=

As it turns out, Automake has some solid support for unit tests. Unfortunately, the documentation consists of Chapter 15 of the GNU Automake manual--a single page of text--half of which is focused on the obscure DejaGNU test suite syntax. Nevertheless, adding unit tests to a Makefile.am file is fairly trivial. To add a simple "grep test" back into the new Automake-generated build system, I've added a few more lines to the bottom of the `src/Makefile.am` file:

### `src/Makefile.am`

=CODE_START=
bin_PROGRAMS = jupiter
jupiter_SOURCES = main.c
jupiter_CPPFLAGS = -I$(top_srcdir)/common
jupiter_LDADD = ../common/libjupcommon.a

check_SCRIPTS = greptest.sh
TESTS = $(check_SCRIPTS)

greptest.sh:
        echo './jupiter | grep \
          "Hello from .*jupiter!"' > greptest.sh
        chmod +x greptest.sh

CLEANFILES = greptest.sh
=CODE_END=

The `check_SCRIPTS` line is clearly a prefixed primary. The `SCRIPT` primary indicates a "built" script, or a script that is somehow generated at build time. Since the prefix is "check", you know that scripts listed in this line will only be built when the user enters "make check" (or "make distcheck"). However, this is as far as Automake goes in supporting such built scripts with Automake-specific syntax. You must supply a make rule for building the script yourself. 

Furthermore, since you supplied the rule to generate the script, you must also supply a rule for cleaning the file. Automake provides an extension to the generated `clean` rule, wherein all files listed in a special `CLEANFILES` variable are added to the list of automatically cleaned files.

The `TESTS` line is the important one here, in that it indicates which targets are built and executed when a user enters "make check". Since the "`check_SCRIPTS`" variable contains a complete list of these targets, I simply reused its value here.

Generating scripts or data files in this manner is a very useful technique. I'll present some more interesting ways of doing this sort of thing in Chapter 8.

# Adding complexity with convenience libraries

Well, jupiter is fairly trivial, as free software projects go. In order to highlight some more of the key features of Automake, I'm going to have to expand jupiter into something a little bit more complex (if not functional).

I'll start by adding a convenience library, and having jupiter consume this library. Essentially, I'll move the code in main.c to a library source file, and then call the function in the library from jupiter's main routine. Start with the following commands, executed from the top-level project directory:

=CODE_START=
$ mkdir common
$ touch common/jupcommon.h
$ touch common/print.c
$ touch common/Makefile.am
=CODE_END=

Add the following text to the .h and .c files:

### `common/jupcommon.h`

=CODE_START=
int print_routine(char * name);
=CODE_END=

### `common/print.c`

=CODE_START=
#include <jupcommon.h>

#if HAVE_CONFIG_H
# include <config.h>
#endif

#include <stdio.h>
#include <stdlib.h>

#if HAVE_PTHREAD_H
# include <pthread.h>
#endif

static void * print_it(void * data)
{
   printf("Hello from %s!\n", (char *)data);
   return 0;
}

int print_routine(char * name)
{
#if ASYNC_EXEC
   pthread_t tid;
   pthread_create(&tid, 0, print_it, name);
   pthread_join(tid, 0);
#else
   print_it(name);
#endif
   return 0;
}
=CODE_END=

As promised, `print.c` is merely a copy of `main.c`, with a couple of small modifications. First, I renamed `main` to `print_routine`, and second, I added the inclusion of the jupcommon.h header file at the top. This header file (as you can see) merely provides `print_routine`'s prototype to the new `src/main.c`, where it's called from `main`. Modify `src/main.c` to look like this:

### `src/main.c`

=CODE_START=
#include <jupcommon.h>

int main(int argc, char * argv[])
{
   print_routine(argv[0]);
   return 0;
}
=CODE_END=

And now for the new `common/Makefile.am` file; add the following text to this file:

### `common/Makefile.am`

=CODE_START=
noinst_LIBRARIES = libjupcommon.a
libjupcommon_a_SOURCES = jupcommon.h print.c
=CODE_END=

Let's take a look at this file for a minute. You'll recall from our discussion of Automake primaries and prefixes that the first line indicates the products to be built and installed by this Makefile.am file. In this case, the `noinst` prefix indicates that this library should not be installed at all. This is because you're creating a "convenience" library, or a library designed solely to make using the source code in the common directory more convenient for two or more consumers. (Granted, you only have one consumer at this point--the jupiter program--but later on you'll add another consumer of this library, and then it will make more sense.)

The library we're creating will be called "libjupcommon.a"--this is a static library, also known as an "object archive". Object archives are merely packages containing one or more object (.o) files. They can't be executed, or loaded into a process address space, as can shared libraries. They can only be added to a linker command line. The linker is smart enough to realize that such archives are merely groups of object files. The linker extracts the object files it needs to complete the linkage process when building a program or shared library.

The second line represents the list of source files associated with this library. I chose to place both the header and the C source file in this list. I could have chosen to use a "`noinst_HEADERS`" line for the header file, but it was unnecessary because the "`libjupcommon_a_SOURCES`" list works just as well. The appropriate time to use "`noinst_HEADERS`" is when you have a directory that contains no source (.c) files--such as an internal include directory. Personally, I don't care for this style of project directory structure organization. I prefer to place private header files right along side of the source code they represent. As a result, I never seem to need "`noinst_HEADERS`" in my projects.

Notice the format of the "`libjupcommon_a_SOURCES`" variable. Automake transforms library and program names in the product list into derived variable names by converting all characters except for letters, numbers and at-signs (`@`) into underscore characters. Thus, a library named `libc++.a` generates a SOURCES variables called `libc___a_SOURCES` (there are three consecutive underscores in that variable name).

Clean up your top-level project directory, removing all files and directories except those that we've written by hand so far. Also remove all Makefile.in files in the top-level directory and in sub-directories. The top-level directory should look like this when you're done:

=CODE_START=
$ ls -1F
AUTHORS
ChangeLog
common/
configure.ac
COPYING
INSTALL
src/
Makefile.am
NEWS
README
=CODE_END=

Edit the `SUBDIRS` variable in the top-level Makefile.am file to include the new common directory that we just added:

### `Makefile.am`
=CODE_START=
SUBDIRS = common src
=CODE_END=

Now you have to add some additional information to the `src/Makefile.am` file so that the generated Makefile can find the new library and header file you created in the common directory. Add two more lines to the end of the existing file, in this manner:

### `src/Makefile.am`
=CODE_START=
bin_PROGRAMS = jupiter
jupiter_SOURCES = main.c
jupiter_CPPFLAGS = -I$(top_srcdir)/common
jupiter_LDADD = ../common/libjupcommon.a
=CODE_END=

Like the `jupiter_SOURCES` variable, these two new variables are obviously derived from the program name. The `jupiter_CPPFLAGS` variable is used to add product-specific C preprocessor flags to the compiler command line for all source files that are built for the jupiter program. The `jupiter_LDADD` variable is used to add libraries to the linker command line for the jupiter program.

These product-specific option variables are used to pass options to the compiler and linker command lines. The option variables currently supported by Automake for programs include:

* `program_CCASFLAGS`
* `program_CFLAGS`
* `program_CPPFLAGS`
* `program_CXXFLAGS`
* `program_FFLAGS`
* `program_GCJFLAGS`
* `program_LFLAGS`
* `program_OBJCFLAGS`
* `program_RFLAGS`
* `program_UPCFLAGS`
* `program_YFLAGS`

For static library products use `library_LIBADD`, instead of `program_LDADD`. The _LIBADD variable for libraries allows you to specify additional object files and static libraries that should be added to the static archive you're currently building. This can be handy for combining multiple convenience libraries. Consider the difference between these cases: The `library_LIBADD` variable is merely allowing you to specify already built objects--either libraries or actual object modules--to the library you're currently building. This can't be accomplished with the `library_SOURCES` variable, because `library_SOURCES` members are compiled, whereas `library_LIBADD` members are already built.

Additionally, the `program_LDADD` variable generally expects linker command line options such as `-lz` (to add the libz library to the linker's library specification for this program), while the `library_LIBADD` variable is formatted as a list of fully specified objects (eg., libabc.a file1.o). This rule isn't particularly strict however, as I'll explain shortly here. Quite frankly, it doesn't really matter, as long as the final command line composed by Automake from all of these variables makes sense to the linker.

## File-level option variables

Often you'll see unprefixed variables like `AM_CPPFLAGS` or `AM_LDFLAGS` used in a Makefile.am. This is the per-file form of these flags, rather than the per-product form. The per-file forms are used when the developer wants the same set of flags to be used for all products within a given Makefile.am file. 

Sometimes you need to set a group of preprocessor flags for all products in a Makefile.am file, but add additional flags for one particular target. When you use a per-product flag variable, you need to include the per-file variable explicitly, like this:

=CODE_START=
AM_CFLAGS = ... some flags ...
program_CFLAGS = ... more flags ... $(AM_CFLAGS)
=CODE_END=

User variables, such as `CFLAGS`, should never be modified by configuration scripts or makefiles. These are reserved for the end-user, and will be always be appended to the per-file or per-product versions of these variables.

Regarding the `jupiter_LDADD` variable, `../common/libjupcommon.a` merely adds an object to the linker command line, so that code in this library may become part of the final program. Note that this sort of syntax is really only necessary for libraries built as part of your own package. If you're linking your program with a library that's installed on the user's system, then the configure script should have found it, and automatically added an appropriate reference to the linker's command line.

In the `jupiter_CPPFLAGS` variable, the `-I$(top_srcdir)/common` directive tells the C preprocessor to add a search directory to its list of locations in which to look for header file references. Specifically, it indicates that header files referenced in C source files with angle brackets (`<` and `>`) should be searched for in this include search path. Header files referenced with double-quotes are not searched for, but merely expected to exist in the specified directory, relative to the directory containing the referencing source file.

Getting back to our example--edit the configure.ac file; add a reference to the AC_CONFIG_FILES macro for the new generated common/Makefile, in this manner:

### `configure.ac`

=CODE_START=
...
AC_CONFIG_FILES([Makefile
                 common/Makefile
                 src/Makefile])
...
=CODE_END=

Okay, now give your updated build system a try. Add the `-i` option to the `autoreconf` command so that it will install any additional missing files that might be required after our enhancements:

=CODE_START=
$ autoreconf -i
configure.ac:6: installing `./missing'
configure.ac:6: installing `./install-sh'
common/Makefile.am:1: library used but `RANLIB'
   is undefined. The usual way to define
   `RANLIB' is to add `AC_PROG_RANLIB' to 
   `configure.ac' and run `autoconf' again.
common/Makefile.am: installing `./depcomp'
src/Makefile.am:3: compiling `main.c' with
   per-target flags requires `AM_PROG_CC_C_O' in
   `configure.ac'
autoreconf: automake failed with exit status: 1
=CODE_END=

Well, it appears that you're still not done yet. Since you've added a new type of entity to our build system--static libraries--Automake (via autoreconf) tells you that you need to add a new macro to the configure.ac file. The AC_PROG_RANLIB macro is a standard program check macro, just like AC_PROG_YACC or AC_PROG_LEX. There's a lot of history behind the use of the ranlib utility on archive libraries. I won't get into whether it's still useful with respect to modern development tools. It seems however, that wherever you see it used in modern Makefiles, there's always a comment about running ranlib in order to "add karma" to the archive. You be the judge...

Additionally, you need to add the Automake macro, AM_PROG_CC_C_O, because this macro defines constructs in the resulting configure script that support the use of per-product flags, such as `jupiter_CPPFLAGS`. Add these two macros to your configure.ac script:

### `configure.ac`

=CODE_START=
...
# Checks for programs.
AC_PROG_CC
AC_PROG_INSTALL
AC_PROG_RANLIB
AM_PROG_CC_C_O
...
=CODE_END=

Alright, once more then, but this time I'm adding the `--force` option, as well as the `-i` option to the autoreconf command line to keep it quiet about adding files that already exist. (This seems like a pointless option to me, because the entire purpose of the `-i` option is to add _missing_ files, not to add _all_ files that are required, regardless of whether they already exist, or not, and then complain if they do exist.):

=CODE_START=
$ autoreconf -i --force
configure.ac:15: installing `./compile'
=CODE_END=

Blessed day! It works. And it really wasn't too bad, was it? Automake told you exactly what you needed to do.

(I always find it ironic when a piece of software tells you how to fix your input file--why didn't it just do what it knew you wanted it to do, if it understood your intent without the correct syntax?! Okay, I understand the "purist" point of view, but why not just do "the right thing", with a side-line comment about your ill-formatted input text? Eventually, you'd be annoyed enough to fix the problem anyway, wouldn't you? Of course you would!)

## A word about the utility scripts

It seems that Automake has added yet another missing file--the "compile" script is a wrapper around some older compilers that do not understand the use of both `-c` and `-o` on the command line to name the object file differently than the source file. When you use product-specific flags, Automake has to generate code that may compile source files multiple times with different flags for each file. Thus it has to name the files differently for each set of flags it uses. The requirement for the compile script actually comes from the inclusion of the AM_PROG_CC_C_O macro.

At this point, you have the following Autotools-added files in the root of our project directory structure:

* `compile`
* `depcomp`
* `install-sh`
* `missing`

These are all scripts that are executed by the configure script, and by the generated Makefiles at various points during the end-user build process. Thus, the end-user will need these files.You can only get these files from Autotools. Since the user shouldn't be required to have Autotools installed on the final target host, you need to make these files available to the user somehow.

These scripts are automatically added (by "make dist") to the distribution tarball. So, do you check them in to the repository, or not? The answer to this question is debatable, but generally I recommend against doing this. Anyone who will be creating a distribution tarball should also have the Autotools installed, and should be working from a repository work area. As a result, this maintainer will also be running `autoreconf -i (--force)` to ensure that she has the latest updated Autotools-provided utility scripts. Checking them in will only make it more probable that they become out of date as time goes by.

As mentioned in Chapter 2, this sentiment goes for the configure script as well. Some people argue that checking the utility and configure scripts into the project repository is beneficial, because it ensures that someone checking out a work area can build the project from the work area without having the Autotools installed. But is this really important? Shouldn't developers and maintainers be expected to have more advanced tools? My personal philosophy is that they should. Yours may differ. Occasionally, an end user will need to build a project from a work area, but this should be the exceptional case, not the typical case. If it is the typical case, then there are bigger problems with the project than can be solved in this discussion.

# What goes in a distribution?

In general, Automake determines automatically what should go into a distribution created with `make dist`. This is because Automake is vary aware of every single file in the build process, and what it's used for. Thus, it need not be told explicitly which files should be in the package, and which should be left behind.

An important concept to remember is that Automake wants to know statically about every source file used to build a product, and about every file that's installed. This means, of course, that all of these files must somehow be specified at some point in a Makefile.am primary variable. This bothers some developers--and with good reason. There are cases where dozens of installable files are generated by tools using long, apparently random and generally unimportant naming conventions. Listing such generated files statically in a primary variable is problematic, to say the least.

I'll cover techniques that can be used to work around such problem cases later in this book. At this point, however, I'd like to introduce the `EXTRA_DIST` variable for those cases where file system entities are not part of the Automake build process, but should be distributed with a distribution tarball. The `EXTRA_DIST` variable contains a space-delimited list of files and directories which should be added to the distribution package when "make dist" is executed. 

=CODE_START=
EXTRA_DIST = windows
=CODE_END=

This might be used to add, for example, a `windows` build directory to the distribution package. Such a directory would be otherwise ignored by Automake, and then your windows users would be upset when they unpacked your latest tarball. Note in this example that `windows` is a directory, not a file. Automake will automatically and recursively add every file in this directory to the distribution package.

# Summary

In this chapter, I've covered a fair number of details about how to instrument a project for Automake. The project I chose to instrument happened to already be instrumented for Autoconf, which is the most likely scenario, as you'll probably be adding Autoconf functionality to your bare projects first in most cases. 

What I've explicitly _not_ covered are situations where you need to extend Automake to handle your special cases, although I've hinted at this sort of thing from time to time. 

In the next chapter, I'll examine adding Libtool to the jupiter project, and then in Chapter 6, I'll Autotool-ize a real-world project, consisting of several hundred source files and a custom build system that takes the form of a GNU makefile designed to use native compilers on multiple platforms including Solaris, AIX, Linux, Mac OS and Windows, among others. I'll warn you up front thatI'll be remaining true to the original mission statement of this book in that we'll not be trying to get Autotools to build Microsoft Windows products.

### Source archive

Download the attached source archive for the original sources associated with this chapter.