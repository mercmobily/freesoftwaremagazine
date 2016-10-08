---
nid: '3232'
title: 'Keeping score in test-driven development with Python, PyLint, unittest, doctest, and PyRate'
authors: 'Terry Hancock'
published: '2009-11-10 3:04:50'
tags: 'python,development,software-testing,pyrate'
license: verbatim_only
section: hacking
listed: 'true'

---
<!--Keeping score in test-driven development with Python, PyLint, unittest, doctest, and PyRate-->

Programming is more fun when you keep score. The extreme programming (XP) development model popularized the idea of test-driven development (TDD) with professional programmers in mind. But TDD turns out to be even more useful for lone amateur programmers, because it provides much needed motivation in the form of more visible rewards for your work. This is true even when simple test runners are used, but I decided to make things a little snappier by including a couple of other types of measurement and generating a "scorecard" for the present state and progress of my Python software projects. Here's how it works, and a download link for my script, which I call "PyRate".

<!--break-->

Programming is one of the most extreme examples of delayed gratification -- you can work for months without having anything to show for it (or at least nothing that would convince your family that it was worth all that time and trouble). This can be really demoralizing, especially if you have any doubts about your abilities to begin with.

=ZOOM=Programming is one of the most extreme examples of delayed gratification=

Testing helps. You won't be able to convince many other people of your progress, but at least you will have an objective measure telling you how much closer to your goal you are every day you work on the project. Also, because automated testing catches bugs right when they happen, it's usually _much_ easier to track them down (because you know what you've changed since the previous test).

This helps _any_ programmer, but it's a big deal for the lone programmer, because you don't have a second set of human eyes to look over everything you've done and check it. At least having the computer check it for you makes a big difference.

# Types of testing

There are actually a lot of different kinds of testing. My old favorite method from the beginning of my career is a technique called "instrumenting". Basically, you stick in a bunch of "print" statements at strategic points to tell you what the state of various variables is. I suspect that if you've ever done programming at all, you've done this.

=ZOOM=There are actually a lot of different kinds of testing=

The big advantage of this method is that it is simple, and in most cases, the program runs in exactly the same environment it normally would, so you (usually!) don't risk the sort of bug that appears during use, but not during testing. Probably the biggest disadvantage is that you alter the code every time you insert or remove an instrumenting statement, so there's a small chance that you will accidentally delete or insert something else along with it, causing additional bugs.

There are special programs called "debuggers" that will essentially automate this process, stepping the program through its statements, and reporting the status on each step, or only at specified "breakpoints". I must confess I don't use these much, preferring to simply inject instrumenting code where I would have to set a breakpoint.

Once the program is finished (or at least runs), it's possible to do what are called "functional tests": this simply means that you use the program to do what its supposed to do, and see if it actually does it. These are great, and it is part of the free software advantage that users will often do at least some of this testing for you -- that's how you get bug reports.

However, functional tests are very coarse, and it can often be hard work to track down why a particular problem is happening. It's much better to break the program up into logical "units" and test each of these as separately as possible. This is called "unit testing", and it is this sort of testing that "test-driven development" usually refers to.

=ZOOM=It's much better to break the program up into logical "units" and test each of these as separately as possible=

You can theoretically do _ad hoc_ unit testing yourself, without any automation. This is basically what you are doing when you instrument the code or call it from the Python interactive interpreter (in which case, it's very similar to functional testing, except that you are testing the interface for a module from the interpreter instead of testing the whole application). However, this has some serious disadvantages:

* They are hard to repeat exactly. This makes it possible that you don't actually verify that a problem is fixed even though you think you have
* It's hard for other people to exactly repeat your tests
* It takes a lot of work, so you won't do the tests very often
* You are likely to forget the tests as well as exactly how the code is supposed to work in a matter of weeks

These greatly increase the chance of bugs creeping through unnoticed. They also greatly increase the chance that you simply won't notice when some external dependency changes, subtly breaking the way your module works. That all adds up to making bugs harder to find -- and you don't need that kind of pain.

So, instead, TDD counsels us to automate those unit tests and run them all the time -- preferably every time the program files are changed. Certainly you should run them once a day during the development process.

=ZOOM=The Python standard library provides two modules which can help with automated unit-testing: unittest and doctest=

The Python standard library provides two modules which can help with automated unit-testing: `unittest` (also called `PyUnit`) which gives a `JUnit`-style of testing, and `doctest` which provides a much more lightweight testing model based on strings which can be pasted directly from the interactive interpreter.

True TDD calls for writing the tests _before_ you write the code they test. This is one way to write a very concrete specification of what your program must do. Obviously these tests will fail, and then you write your code to make them pass -- theoretically that means you're done. Or, you can write tests as you go, which is closer to what I do most of the time. What you shouldn't do is put off testing until the program is "complete" -- that's usually asking for disaster.

# Keeping track of progress and quality

The tests above are "acceptance tests" -- either they pass or they fail, and if they pass, you're done. But there are other kinds of tests or "metrics" that you can compute or estimate for your code to keep track of your progress.

One is to simply make note of how close you think you are to finishing work on a given part of the program. Does it have all the features you plan to add (or plan to add in the next release)? If not, it's useful to have a way to make a note to yourself. I find it easy to express this as a "percentage" -- it's not in any way scientific or precise, but I can usually say "Yeah, that's about 40% complete" about a given piece of code.

=ZOOM=There are other kinds of tests or "metrics" that you can compute or estimate for your code to keep track of your progress=

Similarly, when you write tests for a module, you may not write them all at once, so it's useful to keep track of how much of the modules existing features are actually tested by your testing code. I also assign a subjective percentage value to that -- although this time the rubric is a little more definite: just count how many "features" I think there are that need testing and divide by how many I've already written tests for.

There are also some nice tools out there for computing metrics on your code automatically. I'll be using one called "PyLint" in this article. It has a collection of rules and conventions that it uses to analyze your code and try to find potential errors that the interpreter doesn't discover on its own as well as violations of recommended coding style standards. I will say right now that I don't agree with all of PyLint's default style choices -- but that's okay, because you can also reconfigure the program to meet your own style preferences (for example, if you like Java-style ".camelCase" methods, PyLint will grade you down -- it likes ".underscore_spaced" methods).

# Keeping score: PyRate

Taking all of these factors into account, I decided to make my own Python script to both run automated unit tests and metrics to evaluate my progress. It generates a "scorecard", like this one:

=CODE_START=
Coding & Testing Scorecard
2009-10-28 08:34:19.682646
           Unit  Tests   Done  Q/A  Lint  Description
           ----  -----   ----  ---  ----  -----------
    base_drawing   1/  1|████ |  ○★( 8.4) Basic SVG drawing and I/O     
         collect   2/  2|██   |  ◔✓( 5.1) Collect images referenced in an SVG
         drawing   1/  1|█████|  ◑ ( -- ) SVG drawing with aspects imported
          inx_ui   1/  1|██   |  ○✓( 5.4) Inkscape extension compatible CLI
  Legend:
    *        - Some tests are failing
    ‼        - There are bugs in the testing code
    

    |██   |  - Subjective completeness of coding. Question marks (?)
               indicated code that may have to be re-written or
               removed.

    ○◔◑◕●    - Subjective completeness of testing (of completed code)
               from "totally untested" (○) to "completely tested" (●)
               A blank ( ) means there is no code to test.
               
    ##.#     - Pylint evaluation of coding style out of 10 (run
               pylint on the module to learn why it gave this rating).
=CODE_END=

For each module or independent test, PyRate collects unit tests from three places:

* `doctest` examples in doc strings in the module,
* `doctest` documentation file examples named `test_*.txt` in the testing directory, and
* `unittest` test modules named `test_*.py` in the testing directory

It collects these into a `unittest` testing suite, runs them, and reports the results as "tests passed" out of "total tests run".

Completeness of coding and testing are marked by subjective values you can insert into the code. This is also where the brief descriptive text is placed. The advantage of having it here is that it is immediately available when you are updating the files or the testing code. The notes can appear in three places, in the following order of priority:

1. In the doctest file (i.e. `test/test_<modname>.txt`)
1. In the unittest module (i.e. `test/test_<modname>.py`)
1. In the module itself

Within the doctest file (which is a text file), the variable are set with valid Python code appearing after a python-style comment mark "`#`", like this:

=CODE_START=
# pyrate_percent_complete = 30
# pyrate_percent_tested = 20
# pyrate_description = "A description of the module"
=CODE_END=

Within the python source files, these same values are simply placed at the module level:

=CODE_START=
pyrate_percent_complete = 30
pyrate_percent_tested = 20
pyrate_description = "A description of the module"
=CODE_END=

Each is independently loaded, so it would be possible to put the completeness value in the module itself and the testing level in the test module (actually the `pyrate_description` value isn't checked for in the module itself -- instead the beginning of the module docstring is used if no description is provided in the testing code).

=ZOOM=I've so far found it preferable to keep these metadata notations in the testing modules=

However, I've so far found it preferable to keep these metadata notations in the testing modules (either `test_<modname>.py` or `test_<modname>.txt`), because I find that it is during the writing of tests that I am most aware of what their values should be. This also avoids having stray values in your working module's name space.

The format of the scorecard is somewhat configurable. I created a very simple XML configuration file to store the text elements used (You could also modify the code through subclassing or just hack it directly, of course).

# Want to try it out?

I have just finished setting up a project site for [PyRate at Google Code](http://code.google.com/p/pyrate/). The download includes just two files: the script `pyrate.py` and the configuration file, `pyrate.xml`. I decided to call this version "0.9" just in case something seriously needs to be fixed to call it "1.0", but I'm using the code as-is already.

You will need to have already installed [PyLint](http://pypi.python.org/pypi/pylint/0.18.1), and your Python needs to be version 2.5 or later.

Installation is minimal -- you just place these files in the module source directory of your project. It is assumed that there will be a directory named "test" with a collection of `test_<modname>.py` and/or `test_<modname>.txt` files containing `unittest` and `doctest` tests respectively.

As of this version 0.9, there is no support for scanning _nested_ source trees (all the tested modules need to be in one directory), although this won't be a problem for your testing modules (it will cause PyRate to miss the doctests inside the modules, though).

The configuration file allows you to alter the installation paths, and also to provide a list of modules _not_ to scan (it can be desirable to block the `__init__` module as well as `pyrate` itself).

Once installed, you can run the program from the command line, or set it up to run in an IDE (I have been running it from Eclipse).

# So far, so good

I haven't really been using this version of the program myself for that long, but I'm pretty happy with the results. I ran an earlier (much kludgier) version of the script which helped a lot, though, and I think this will be even better.

It's much more fun to code when you can see how much progress you are making in both quantity and quality, and that's the idea behind PyRate.

