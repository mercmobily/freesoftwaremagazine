---
nid: '1492'
title: 'Reports from PyCON 2006 (Python Conference)'
authors: 'Terry Hancock'
published: '2006-03-18 0:50:04'
license: verbatim_only
section: opinions
listed: 'true'

---
Recurring themes at this year’s PyCON2006 Python conference, in Dallas, Texas, included quality control techniques for Python (testing methods), and interoperable content management systems. Guido van Rossum presented some previews of features to be expected in Python 2.5 (to be released later this year), and Jim Fulton presented the “State of Zope”, with some musings on where to go from here with Zope 2 and Zope 3. Also starring at this conference was the S5 (“Simple Standards-based Slide Show System”), based on the Python docutils package—most of this year’s talks were presented with this package, and one of the talks presented the S5 package itself.

For me, one of the most exciting talks was a demonstration of rapid-application development (RAD) using Glade 2 and PyGTK. Michael Urban demonstrated this by creating a GUI for a simple image-browsing program in the 30 minutes alloted for the talk. Now, it’s true of course, that he had prepared this beforehand; and he also didn’t go through the problems involved in writing the code that interacts with the GUI (that was already written), but I still found it fairly impressive. Needless to say, I had to try it for myself.

For those who haven’t been introduced, “Glade” is a graphical graphical-interface editor. It allows you to drag-and-drop GUI elements like “radio buttons” or “scrolling windows” onto your design. This obviously is a lot faster than doing it by writing the code and checking it over and over again. I had played with a much earlier version of Glade and not been that impressed, but Glade 2.6 (which is what I have installed on my Debian system at home) is _nice_. Glade can generate GTK code in C or C++, but the usual mode nowadays is to use the (XML) glade files directly via “libglade”, which has bindings for many different languages. PyGTK, of course, is the Python binding for GTK, and includes gtk.glade, which provides the libglade support. I still haven’t gotten to that part of my project—I’ll probably have to report on that part later (the project I’m using this on deserves its own post).

Another big winner for me was the talk on testing using “doctest”. The “doctest” module in Python’s standard library is something I’ve come across a few times, but largely ignored. It allows you to build tests directly in your “docstrings”.

Python is a very “literate” programming language. Since its creator Guido van Rossum was very concerned with ease of use and ease of understanding of source code, he provided a number of useful tools for both documenting and “introspecting” your code. Docstrings serve both goals—when you create a python function, class, or module, you can define a string right at the beginning of it, like this:


=CODE_START=

def mysterious_function(x, y, z):
    """
    This is only a drill.

    In the event that this were a real function, I would
    probably have something useful to say about it here.
    This string is called a "docstring".
    """
    c, b, a =  x**2, y**3, z**4
    return (a,b,c)

=CODE_END=

Now docstrings, it turns out, are terribly useful. Not only do they function as comment blocks for each object they’re associated with, they actually remain attached to them as an attribute (“__doc__”), and can be accessed by introspection tools such as help() and pydoc. Furthermore, documentation generation tools like epydoc read the docstrings of objects to provide library API documentation. By carefully constructing docstrings according to the rules of your favorite documentation generator, you can create code that literally writes its own documentation. This kind of documentation is doubly-useful, because it’s very easy to keep in sync with your code. First of all, since the code _is_ the documentation source, you always know you’ve got the right documentation for the right code; and secondly, the documentation is right next to the code it documents, so you, the developer, can immediately see if your documentation is out of sync with your code. It’s not impossible to have incorrect docstrings, but it’s a lot easier to keep track of than if the documentation is mouldering away in some other file.

But I digress. Doctest extends the usefulness of docstrings by allowing you to do unit tests in them, like this:


=CODE_START=

def mysterious_function(x, y, z):
    """
    This is only a drill.

    In the event that this were a real function, I would
    probably have something useful to say about it here.
    This string is called a "docstring".

    One useful thing to say about mysterious_function is
    to demonstrate what it does. From the python command
    line, for example, you can do this:

    >>> spam = mysterious_function(1,2,3)
    >>> spam
    (81, 8, 1)
    """
    c, b, a =  x**2, y**3, z**4
    return (a,b,c)

=CODE_END=

The triple “>” is the prompt you get in Python’s interactive interpreter. So what you see here is exactly what you’d see if you tested this function out in the interpreter. In fact, I simply pasted that result in from the interpreter window.

But this little example is more than just an example—by using the doctest module, I can use it as a “unit test”. Doctest will actually run the example, and check the results against the ones I’ve shown in my example—if they don’t match, _voila_, the function fails the test.

That is _so_ much easier than setting tests up formally with pyunit.

And, the nice thing about stuff that’s “easy” is that it tends to get done, and the number one reason people don’t do unit tests is because they don’t want to spend the time on it. This is usually a false bargain, of course, because unit tests usually save you more time than they take to write—but they take time _now_ when you’re in the heat of creativity, whereas the cost occurs _later_. So, human nature being what it is, you don’t do them. But, not only are doctests a snap to do, they are kind of fun. Who doesn’t like playing around in the interpreter with what they’ve just finished writing? And that’s just one copy-and-paste away from a finished doctest!

I should probably define “unit test” at this point for those who are new to the term. It’s a term borrowed from other engineering disciplines. Components, after being made are often tested in isolation from the machine they will go into. This eliminates the “combinatorial explosion” of tracking down the problem when a test of a whole machine doesn’t work.

Consider a helicopter, for example. Let’s say you just machine all the parts and assemble it carefully according to the instructions. There are, say, 10,000 separate parts. Now you climb in, and take off. Ten minutes later it crashes (we’ll imagine you manage to escape unscathed). What went wrong? Your first problem is ruling out the 9,999 parts that didn’t fail. There are ways of doing that of course (e.g. you may be able to immediately tell that the problem occured in the rotor assembly—but you’ve still got maybe 100 parts to worry about).

To make this problem easier, you should simply plan to test each part as it comes off the assembly line (which is how real aerospace plants work, by the way). You test each “unit” before you try to assemble it into the finished machine. Hence, it’s called a “unit test”. Since you test each part separately, the tests can be simple and understandable. It’s still possible, of course, that there is a major design problem that causes parts, which work as expected, to interact in unexpected ways. But that’s much less likely. Most mistakes are simple.

This works even better in software engineering than it does in aerospace. By testing the outcome of simple tests on code to make sure it behaves as expected, you tend to catch bugs very early in the programming process. If the tests are completely automated (as unit tests are designed to be), then you do that test every time you alter anything in the program, and that means you’ll catch unintentional changes to code (in particular, it’s not uncommon that providing a new interface means rewriting a function or object to meet new requirements. In doing so, it’s also not uncommon that you break the old functionality that some other part of your program was relying on).

The talks I was most excited about attending at the conference were the ones given by Paul McGuire on his [pyparsing](http://pyparsing.sf.net>) module. Pyparsing is a tool that can roughly replace both regular expressions (but it’s much more readable) and lex+yacc (but it’s much easier, and written entirely in Python). For example, the following regular expression...


=CODE_START=

(spam, )+(sp|h)am, eggs, and spam

=CODE_END=

This will match a number of different expressions like “spam, ham, eggs, and spam” and the classic “spam, spam, spam, spam, and spam” among others.

You can write the same thing in pyparsing:


=CODE_START=

breakfast = ( OneOrMore(Literal("spam,")) + 
              ((Literal("sp")|Literal("h")) + Literal("am, eggs, and spam"))

=CODE_END=

This is a lot bulkier, but much more explicit. In fact, for things like parsing commands, it can be a _lot_ simpler to follow. It often handles whitespace for you (something that frequently trips people up with regular expressions), and it can do much more interesting things with grouping and callbacks that regular expressions aren’t capable of.

In fact, what pyparsing’s style closely resembles is “Extended Backus-Naur Grammar” notation, if you’ve ever seen that (and it’s likely that you have if you’ve done any programming—most programming languages, starting with _Algol 60_ use it to formally define their syntax).

One of McGuire’s talks simply presented an introduction to pyparsing, but the other used it to create a parser for a very simple interactive fiction engine. Which was really cool for me, since I had decided, only about a week-and-a-half before the conference to use pyparsing to rewrite the parser in the [Python Universe Builder](http://py-universe.sf.net). Well, I have to admit, I briefly held onto the fantasy that I would find the job completely done for me, and it wasn’t by a long shot, but McGuire’s demonstration showed that the approach I was taking was very likely to work well. I also got to talk to him briefly about some extensions I need to make to make PUB’s parser more "context aware" and not quite so dumb as we have come to expect IF parsers to be.

All in all, it was a terrific conference, and I hope to write some more about it later (a lot happened in a short time!).

