---
nid: '2805'
title: 'Destroy annoying bugs part 2: Plug me into Eclipse.'
authors: 'Alan Berg'
published: '2008-05-20 11:06:02'
tags: 'eclipse,findbugs,pmd,tftp,static-code-review'
license: verbatim_only
section: hacking
listed: 'true'

---
_Static code reviews_ aimed at eating bugs (!) are unbiased and neutral. If you spill coffee on their laps or are applying for the same job as them, the advice given back will remain the same. Static code reviews work via rules; some rules are accurate in their assessment and others are not so relevant--or even false. Before building a thorough infrastructure for large-scale deployment, it is well worth installing the tool's respective plugins. You can have a lot of fun kicking the tires of the rule sets for your own particular environment. Getting your fingers into the reality of the code is the first step in the path to Quality Assurance enlightenment. Note to self, _remember to ask boss for pay rise._

_Note: this is Part 2. Feel free to read [Part 1](http://www.freesoftwaremagazine.com/columns/destroy_annoying_bugs_part_1)!_

<!--break-->

=ZOOM=Did I also mention the satisfaction involved when splattering bugs?=

# Assumptions

The examples in this article have been run both on Ubuntu 7.10 and (sorry to say) Windows Vista. PMD and FindBugs are platform agnostic and require Java 1.5 to run. PMD reads the source code and works with most versions of Java. FindBugs uses BCEL to read the meta information from class files, and can therefore read any versions of compiled code. The relevant links are:

* [FindBugs](http://findbugs.sourceforge.net/);
* [PMD](http://pmd.sourceforge.net/);
* Test and Performance Tools Platform Project ([TFTP](http://www.eclipse.org/projects/project_summary.php?projectid=tptp));

# TFTP

One of the easiest places to start learning is through visual feedback from within the Eclipse IDE, The Test Performance Tools Platform (TFTP), a top-level eclipse project, has an inbuilt static code review functionality. At the time of writing TFTP includes 72 helpful definitions. For most Eclipse installations you will need to use the usual update mechanism: _Help→software updates_.

To analyse the code, right click on any piece of code in the Package explorer window, as described in figure 1, and select the _Analysis→Open Analysis_ dialog. The dialog is obvious. Select the project you want analyzed and the rule sets you wish to activate. Finally, press the _Analysis_ button.

_Figure 1,_ shows the main screen of the default Java perspective after analyzing a deliberately weak piece of code. If you click on the green flag on the left-hand side of the source code dialog, you will find an option (or options) to quick fix the selected issue.

=IMAGE=f1.jpg=Figure 1:  The TFTP framework in action=

Roll up, roll up, and watch the magic of static code analysis at work. Listing 1 is the original code. With untrained eyes and time constraints, you may well miss the fact that `name.equals()` will always throw a runtime exception and that `String` constants are hidden in the code rather than concentrated at the top of the class.

=CODE_START=
public class EvenCleverPeople {
	public static void main(String[] args) {
		String name=null;
		if (name.equals("Admin")){
			System.out.println("Hi special user");
		}
	}
}
=CODE_END=

_Listing 1:_ Code gone bad

Analyzing and quick fixing via the TFTP framework transforms the code to a stable (and maintainable) listing 2. I particularly like the `ADMIN.equals(name)` as `ADMIN` excellently describes the constant and never inconveniently throws a `nullpointer` exception: at worst it only returns a Boolean false.

=CODE_START=
public class EvenCleverPeople {
	private static final String ADMIN = "Admin";
	private static final String CONSTANT = "Hi special user"; //$NON-NLS-1$

	public static void main(String[] args) {
		String name=null;
		if (ADMIN.equals( name )){
			System.out.println(CONSTANT);
		}
	}
}
=CODE_END=


_Listing 2:_ More maintainable and less runtime prone code

If you are not sure of a rule, you should run the "quick fix" procedure: it's a brilliant way to learn; plus, the actions in most cases are sensible and help form good habits. (No, I do not have any bad habits!) At the time of writing 72 rules exist; this is a somewhat more limited subset than either PMD or FindBugs. 

# FindBugs

The quality of the rules are consistent between the three projects. However, if I had to vote I would consider that FindBugs generates fewer false positives than the rest. Better still, FindBugs finds a few of the more painful gotchas, especially at the high priority levels, and in particular for the correctness category. I strongly suspect that all the tools are strong and have real meaning within a well-balanced development ecosphere.

To install Findbugs please use the usual _Help→Software updates_ section; the site for updates is:

http://findbugs.cs.umd.edu/eclipse-candidate

To activate FindBugs, again right click on a project in the Package explorer dialog. A _Find bugs_ option will appear. Choose _FindBugs→FindBugs_. Within a very short period of time the code is analyzed and the issues are marked with an attractive bug-like icon. The bug is ready now to be hit with a large stone. I do like the squelchy noise very much: one less potential phone call. Right clicking on the icon and then selecting _Show Bug Descriptions_ brings up the definition of the issue, as shown in figure 2.

=ZOOM=The bug is ready now to be hit with a large stone. I do like the squelchy noise very much=

=IMAGE=f2.jpg=Figure 2: FindBugs making bad habits obvious=

# PMD

The PMD plugin is also installable via the _Help→Software_ updates option. The site you will need to add is:

http://pmd.sf.net/eclipse

PMD works exactly as expected: after installing it, right click on the package explorer on the relevant project of choice and then select _PMD→Check Code_ with PMD.  For our example code, a wide set of bug pattern potential issues are flagged. To generate an HTMLized report, as shown in figure 3, select _PMD→Generate Reports_.

=IMAGE=f3.jpg=Figure 3: HTML Reporting=

Another powerful extra included with the PMD installation is its ability to find code that has been copied from elsewhere in the project. Copied code (or "duplicated code"), especially for object orientated languages, is a sign of the need to refactor. Refactoring, for example, by pulling the copied code into a utility or parent class.

=ZOOM=Copied code, sorry duplicated code, especially for object orientated languages, is a generic sign of the need to refactor=

# Conclusion

In summary, each tool is a significant help in the fight for code quality. TFTP has the very handy quick fix option and FindBugs has a very accurate and wide ranging set of rules and workflow. PMD has a wide range of rules, report generation and the ability to spot code duplication. I see the combination of PMD, FindBugs and TFTP much stronger together than as individual Eclipse extensions.

In the next article I will briefly introduce you to the command line use of FindBugs, useful in large scale projects. Better still, I will also interview Professor Bill Pugh, one of the main driving forces behind FindBugs.

# Acknowledgments
I would like to thank my wife Hester vander Heijden for at least trying to rewrite some of my known issues, and the Eclipse, FindBugs and PMD teams for building such excellent products.
