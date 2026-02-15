---
nid: '2807'
title: 'Destroy annoying bugs part 4: the end is near'
authors: 'Alan Berg'
published: '2008-05-22 11:44:28'
tags: 'code-review,findbugs,pmd,tom-copeland'
license: verbatim_only
section: hacking
listed: 'true'

---
In this the last part of this four-part series I will zoom carefully into the ease of use of PMD. I totally enjoy PMD. The reason for this is the relative simplicity of writing your own bug pattern-capturing rules and using them under fire. More on that later. To round off we have included an in-depth interview with Tom Copeland, the author of [PMD Applied](http://pmdapplied.com/) and the newer [JavaCC ](http://generatingparserswithjavacc.com/). It is no coincidence that Tom is at the center of the PMD development thrust.

_Note: this is Part 4. Feel free to read [Part 3](/articles/destroy_annoying_bugs_part_3/)!_

<!--break-->

In the last three parts of this series I explored the basics of current free software, Java-biased static code reviews. I hope you had fun playing with source code in Eclipse including the TFTP, FindBugs and PMD enhanced functionality. I would advise doing so if you have not done so already: it is simply the best way to understand what the tools can and cannot find.

From my humble, yet somehow evil perspective (background laughter), the main conclusions were that each tool compliments and enhances the value of the others. To gain the most effective coverage and overall functionality requires a holistic and wide spectrum use of the three. Further, I hopefully showed the full potential of FindBugs for massive ad-hoc code reviews. Though Bill Pugh warns about the over use of the metrics, the estimated bug density is an approximate measure that at a gross level indicates if trouble lies ahead.

In this post, I will concentrate on [PDM](http://pmd.sourceforge.net/).

# Naming names

An aside, no one truly knows what PMD is an abbreviation of, some suggestions on the home site include:

* Pretty Much Done 
* Project Mess Detector 
* Project Monitoring Directives 
* Project Meets Deadline 
* Programming Mistake Detector 
* Pounds Mistakes Dead 
* PMD Meaning Discovery (recursion, hooray!) 
* Programs of Mass Destruction 
* Programming Meticulous code

If any wise and kindly crossword solver can come up with a reasonable, or better still, an unreasonable suggestion please add as a comment at the end of this article. From a selling perspective I particularly enjoyed the Project Meets Deadline suggestion. However, being bitten more than a couple of times by the vicious teeth of project milestone reality, my painfully acquired suggestion is Programmer Denies Mistakes. Deny everything I say. I personally defy the laws of gravity and electromagnetism.

# When is copying duplication?

Each tool has its own specific strengths. Take for example the quick fix in TFPT, or the strong analysis of paths within Findbugs... PMD's strength is the simplicity to make rules and the ability to find copied, hum, I mean, duplicate code.

Duplicate code smells bad, a bit like leaving a fish sandwich out on a hot day.  Over the course of time the sandwich (or duplicate code) stinks worse and worse. It is rather embarrassing sitting next to the smell, pretending that you have nothing to do with it.  People (_real_ people, not just chat icons!), pass by and look at you as if you needed rubber pants. Duplicate code easily falls out of synchronization. In the object-orientated Universe this is a reasonable sign that some vigorous refactoring is needed.

To activate the duplicate copy tool from the GUI, simply transverse to the bin directory of PMD and double click on the `cpdgui.sh`, under Ubuntu 7.10: a pop up appears and you need to agree to run it in a terminal. The tool, figure 5, is extremely simple to use: browse to the top-level source directory that you are interested in, and then select the processing language of choice, and run. You can then save the report in XML, CSV (comma or tab delimitated) format. The tab delimited format can be used to get the result imported into MySQL, which is important for bug-tracking tools.
 
=IMAGE=f5.jpg=Figure 5: Detecting code duplication with a swing(ers)=

# This is my house, I make the rules

The internals of PMD allow you to create rules based on custom Java classes, or via the use of a utility class that allows you to write your own Xpath rules against a generated Abstract Syntax tree. (I always wanted to say Abstract Syntax Tree, that makes me sound very knowledgeable!) Now, this may all sound very complex, but it is not complex at all once you've played about with another GUI tool: `bin/designer.sh`. Again to run from Ubuntu simply double click and accept the Run in terminal option.

Let me show you by example: suppose you hired in a group of consultancy monkeys from hell who have hard coded in a predictable way, a password with the well thought out name `PASSWORD`.  Scattered across your massive code base is a thin tainting of this pattern. Run designer; place the code in the Source code area. Then press the _GO_ button under the Xpath Query area. The Abstract Syntax tree is then viewable in the bottom left hand side.

=CODE_START=
public class RuleTest {
	static final String PASSWORD="secret";
	public static void main(String[] args) {
		System.out.println(PASSWORD);
	}
}
=CODE_END=

Listing 3: Let's not give that PASSWORD away.

Add the rule `//VariableDeclaratorId[@Image='PASSWORD']`

And pressing GO again finds the string PASSWORD.  The // simply states find anywhere in the tree the attribute(s) `IMAGE` is assigned to `PASSWORD`. Now, if you look carefully you do not see anywhere in the tree the name `IMAGE`, but you will do if you export the tree to XML. This is the interpreter's location for storing the value of `VariableDeclaratorId`. Again, all this sounds complex in words, but is straightforward in action. To export the rule to XML simply select the _Actions_ menu option at the top of the designer and activate the Create Rule XML wizard.

Tom Copeland has written the definitive book on this topic area [PMD Applied](http://pmdapplied.com/). If you wish to progress further, I would advise reading the free to download example chapter on building  Junit rules and if you like it buy this book.

=ZOOM=Tom Copeland has written the definitive book on this topic area PMDApplied=


=IMAGE=f6.jpg=Figure 6:  Designer, work less do more.=

Back to the coding. Of course, this simple rule is rather limited, the more you think about the situation, the more generic you will want the XPath statement to be: perhaps making case insensitive, looking for a range of words found in a dictionary, and so forth. At a certain point you will find that you have reached a boundary and, if motivated by the power of PMD as a framework, you should start to write Java classes to do the processing instead.

At this point I think it is appropriate to introduce you to Tom Copeland, who makes some very useful comments indeed.

# Interview with Tom Copeland

_**[AMB]** Hi Tom, can you tell us a little about yourself and your involvement with PMD?_

**[TC]** PMD started way back in 2002 when I was working on a DARPA contract. We were helping with the development and testing of a large Java project and wanted to find bad coding practices across the entire code base. At first we fiddled with a commercial tool, but cost and inflexibility drove us to look for alternatives. David Dixon-Peugh and I then wrote the first versions of PMD, the first PMD rules, and co-ordinated the release of PMD as a free software/open source project on SourceForge. Since then PMD has continued to gain rules and functionality and today it is still a very active project. The lead developers these days are Xavier Le Vourch, Ryan Gustafson, and Romain Pelisse.

_**[AMB]** Can you tell us about PMD's roadmap?_

**[TC]** PMD is due for some improvements in the area of type resolution. For example, if you have a code snippet like this:

=CODE_START=
String x = "hello";
=CODE_END=

PMD usually can't tell if that's a `java.lang.String` or a `com.mycompany.String`. Along the same lines, if you have a code snippet like this:

=CODE_START=
getFoo().toString()
=CODE_END=

PMD can't tell if `getFoo()` is returning a `String` object reference and thus can't detect that there's an unnecessary `toString()` method invocation. Ryan Gustafson has been working in this area lately and it looks like things will get better soon.

Aside from that, there's been some discussion of extending PMD to find problems in languages other than Java. This would be a lot of work but could widen the audience for PMD quite a bit.

_**[AMB]** If you were lost with a Java GPS system full of bugs and a laptop to debug, which four rules would you consider the most useful?_

**[TC]** Let's see. How about:

1) `SimplifyBooleanReturns`: suggests transforming code like this:

=CODE_START=
boolean isFive(int a) {
 if (a == 5) {
  return true;
 } else {
  return false;
 }
}
=CODE_END=

To this:

=CODE_START=
boolean isFive(int a) {
 return a == 5;
}
=CODE_END=

More concise, less bytecode, everybody wins!

2) `UnusedLocal`: Finds unused local variables.  Especially handy for those long methods where someone has declared a flurry of "Lists and Maps" at the top of the method--are those all still actually being used?

3) `StringToString`: Find places where the code does stuff like this:

=CODE_START=
String x = "hello";
String y = x.toString();
=CODE_END=

There's no need to call `toString()` on a `String` object reference since `Strings` are immutable--just use the original object.

4) `EmptyIfStatement`: Find code like this:

=CODE_START=
if (x > 2) {
 // doSomething();
}
=CODE_END=

The code inside the block has been commented out, so why not comment out the entire if statement and save a few CPU cycles?

_**[AMB]** What is the best way for motivated readers to help out with the PMD project?_

**[TC]** There are a bunch of open feature requests and bugs. Picking one of those and working through it and submitting a patch is a great way to get familiar with the PMD code base and to help out.

Alternatively, you could answers questions on the forums, or you could work on improving the PMD plugin for whatever IDE you use.

_**[AMB]** For a newbie static code review reviewer which two/three books would you recommend other than "PMD applied"?_

**[TC]** Martin Fowler's classic "Refactoring: Improving the Design of Existing Code" comes to mind immediately, as does Michael Feather's "Working Effectively with Legacy Code". Another more recent book in this area is "Continuous Integration: Improving Software Quality and Reducing Risk" by Paul Duvall, Andy Glover, and Steven Matyas. That last book got a Jolt award and has some specific suggestions around using PMD, so I like it :-)

=TEXTBOX_START=Aside=
Modesty warning: Tom has written two excellent books which can be found at the publishers site: "PMD applied" and "JavaCC". "JavaCC", the book, discusses generating lexical analyzers, parsers, and abstract syntax trees using this open-source parser generator. Obviously, if you want to make a generic PMD for more languages, then the tool needs to be able parse more languages, and why not in JavaCC. "PMD Applied" is the main reference to PMD outside the project's site.
=TEXTBOX_END=

_**[AMB]** I very much like the use of Xpath with designer, but I find complex Xpath rules difficult to write. Do you have any tips or tricks such as suggesting a good editor?_**

**[TC]** Writing XPath rules can be quite tricky indeed. I usually write them by keeping the designer open in one window and my IDE in the other and slowly building up a `JUnit` test suite for the rule I'm trying to write. As I figure out new wrinkles in the code I prototype the XPath in the designer and then migrate both the new XPath and the example code over to my test suite. Some kind of "export this code snippet to a unit test" functionality might be a nice addition to the designer :-)

For general XPath knowledge I've found the book "XPath and XPointer" by John Simpson to be quite helpful.  It's a bit old (published in 2002) but the examples are very useful. Of course, it can't include notes on custom XPath functions that PMD provides - like the "matches" function, to do regular expression checks. 

_**[AMB]** The difficulty for the use of any static code review tool is actually to understand the value and the meaning of the rule. If you were a newbie how would you attack your first set of issues?_

**[TC]** I'd start by limiting the rules that get run. Rather than running all the rules and getting a bunch of issues, just run the PMD "basic" and "unusedcode" rulesets. Those two rulesets tend to find problems that most people can agree on--after all, it's hard to make a case for keeping an unused variable or an empty loop. Once you've cleaned up those problems, take a look at the other rulesets and pick out ones that look useful--or better yet, write custom rules that are specific to your environment.

# The end is near

I am glad I have written this series: the two interviews with Bill Pugh and Tom Copeland have given me significant food for thought. As these tools become more accurate, I look forward to using their metrics to help discover the maturity of products. Understanding the value of particular rules and sets requires an understanding of the underlying language; books such as "Java Puzzlers" or "PMD Applied" are going to go on my birthday present list next to that single malt whiskey and invisibility shield.

Tom Copeland hinting at the application of JavaCC to make PMD more language agnostic is of obvious value to an extremely large audience, and I wonder if anyone reading this article is motivated in pushing this beneficial idea through.

=ZOOM=to make PMD more language agnostic is of obvious value to an extremely large audience=

Static code reviews are viable. You can get rid of quite a lot of near surface defects quickly. FindBugs is mature and has tools to keep track of the progress of bugs between reports. Other tools such as [QAlabs](http://qalab.sourceforge.net/) and [Xradar](http://xradar.sourceforge.net/) take advantage of this to plot histories and give decision makers the opportunity to discover when best in a lifecycle to buy into open source/free software. Another viable tool is [Sonar](http://sonar.hortis.ch/), which does the same for PMD and tracks hot spots in various projects. The reading of these maps inform an intelligent QA taskforce where to go into battle next.

I hope that you got that warm fuzzy feeling of viability. Sometimes it is really that simple. The technology will not be the thing that blocks your route to success; more likely community inertia based on the perception of time pressures.

=ZOOM=The technology will not be the thing that blocks your route to success, more likely community inertia based on the perception of time pressures.=

Building you own custom infrastructure requires some personal energy and _potentially a lot of management buy in_. However, getting information into a database and then constructing report generation is relatively straightforward and economic. For example the Sakai project, with a little help from the Central Computing Services at the University of Amsterdam, has written an application that generates reports twice a day for its trunk code base, figure 7. Better still the community is slowly and confidently working its way through the implications.

=IMAGE=f7.jpg=Figure 7: Reporting to QA the Sakai codebase=

The designer tool for PMD is a viable attack vector for generation of custom rules. If you want to give something back then perhaps this is the easiest place to practice. And while you are at it and have a budget, then spending money on the book "PMD applied" is definitely recommended.

Finally, there is a difference between using static code review for security purposes rather than to quickly push up quality and to harvest the low-lying fruits. In general, security implies tainting the inputs to make sure that access is not gained by malicious code to the database or other resources. Security is also about taking every potential bug seriously and upping the level of analysis to include more false positives, but also less false negatives. For greater detail on this subject area I would advise interested parties to read "Secure Programming with Static Analysis", the book mentioned in the resources section: is it detailed, well written and informative, and contains example demo software from FortisSoftware (which is one of the commercial companies that sponsors FindBugs).

>From the trenches the maturity and quality of relevant tools appears to be evolving in a fast and positive way. I expect much, and look forward to the fruits over the coming years of increasing accuracy and expanding rule sets.

# Acknowledgements

I would like to thank my wife Hester vander Heijden for putting up with my vast, well-known and mostly disliked bug patterns and the Eclipse, FindBugs and PMD teams for building such excellent and easy-to-use products.

# Resources

## Book Suggestions

* [Continuous Integration: Improving Software Quality and Reducing Risk](http://www.integratebutton.com/)
* [Effective Java](http://java.sun.com/docs/books/effective/)
* [JavaCC ](http://generatingparserswithjavacc.com/)
* [Java Programming Puzzlers](http://www.javapuzzlers.com/)
* [PMD Applied](http://pmdapplied.com/)
* [Refactoring: Improving the Design of Existing Code](http://martinfowler.com/books.html)
* [Secure Programming with Static Analysis](http://www.informit.com/store/product.aspx?isbn=0321424778)
* [Working Effectively with Legacy Code](http://www.informit.com/store/product.aspx?isbn=0131177052&aid=15d186bd-1678-45e9-8ad3-fe53713e811b)

## Links

1.  [Eclipse home page](http://www.eclipse.org/)
1.  [FindBugs home](http://findbugs.sourceforge.net/downloads.html)
1.  [FindBug Plugin update site](http://findbugs.cs.umd.edu/eclipse-candidate)
1.  [FortifySoftware](http://www.fortify.com/)
1.  [Maven](http://maven.apache.org/index.html)
1.  [Meaning of PMD](http://pmd.sourceforge.net/meaning.html)
1.  [PMD Home](http://pmd.sourceforge.net)
1.  [PMD Plugin update site](http://pmd.sf.net/eclipse)
1.  [QAlabs](http://qalab.sourceforge.net/)
1.  [Sonar](http://sonar.hortis.ch/)
1.  [TFTP in Eclipse](http://www.eclipse.org/projects/project_summary.php?projectid=tptp)
1.  [Xradar](http://xradar.sourceforge.net/)
