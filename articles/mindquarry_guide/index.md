---
nid: '2435'
title: 'Practical guide to Mindquarry'
authors: 'Dmitri Popov'
published: '2008-06-10 7:27:22'
tags: 'collaboration,mindquarry'
issue: issue_22
license: gfdl
section: end_users
listed: 'true'

---
If you are looking for a powerful yet easy to use collaboration solution, you might want to take a closer look at [http://www.mindquarry.com](Mindquarry). Groupware tools are a dime a dozen these days, but there are a few features that make Mindquarry stand out from the crowd.

<!--break-->

* Instead of reinventing the wheel, Mindquarry relies on proven and mature technologies such as Subversion, wiki, and more.
* Seamless integration between the user's desktop and web interface. The Mindquarry Desktop Client provides an extremely easy way to keep documents in sync, hiding all the intricacies of Subversion. The client supports multiple profiles, which allow the user to work with several Mindquarry servers.
* Tight integration between different Mindquarry modules. For example, the user can link wiki pages to documents, tasks, and users.
* Thanks to the intuitive interface and well thought-out feature set, Mindquarry has a very gentle learning curve. This makes it easier for users to get to grips with Minquarry as well as significantly reduce training costs for companies.
* The Activity Timeline is a killer feature from the end-user perspective. Keeping track of document versions is a serious challenge even for experienced users. The Activity Timeline uses the timeline metaphor to tackle this challenge and makes the process of finding and retrieving any previous version rather straightforward.

Mindquarry consists of two components: a server and a client. The former provides all the functionality while the latter acts as a bridge between the user's desktop and the server. The client's main purpose is to keep documents in sync. Minquarry includes four modules: Teams, Wikis, Files, and Tasks.

# Using the Teams module

The Teams module is designed to manage users and teams. As an example, let's create a team called Writers, then create the Author, Editor, and Proofreader users, and add them to the team. There are three things you need to do as soon as you log in to the Mindquarry server. You have to change the default administrator password and account info, add users, and create at least one team. To change the administrator account details and password, click on the _Edit your user profile_ button in the upper-right corner of the window. This opens the _Change User Profile_ windows, where you can change the default data.

Populating Mindquarry with users is equally easy. Click on the _Team_ tab, and press the _New User_ button. Fill out the required fields, and press the _Create User_ button. Next step is to create a team, which is also an easy thing to do. Basically, teams allow you to group users, and it's up to you what criteria to use when grouping users into teams. For example, you can group users either by project or by function. To create a team, press the _New Team_ button, enter the required information, and press the _New Team_ button. Once the team has been created, you have to add users to it. Press the _Members_ button, add the users you want to the group, and press _Save_.

# Installing and using the Mindquarry Desktop Client

The Mindquarry Client is a utility that acts as a bridge between your desktop and the Mindquarry server. The client does two important things: it keeps documents on your computer in sync with the Mindquarry server, and it allows you to keep tabs on tasks.

There are two ways to install the Mindquarry Desktop Client on your computer. When you log in to the Mindquarry server, there is the _Desktop Client_ link. Click on it, and the latest version of the client will be automatically downloaded, installed, and launched on your machine. Alternatively, you can download the latest release of the Mindquarry Desktop Client from Mindquarry's website, and run it manually. To do this, unpack the downloaded .tar.gz file in your home directory, rename the resulting folder to mindquarry-desktop-client, and launch it from the terminal using the following command:

=CODE_START=
java -jar mindquarry-desktop-client/mindquarry-desktop-client.jar
=CODE_END=

Once the Mindquarry Desktop Client is up and running, you have to configure a server profile containing information about your Mindquarry server that the client needs in order to connect to it. To do this, right-click on the client's icon in the Panel, choose Options, and navigate to Common Settings→Server Profiles. Press the _Add Profile_ button, give the new profile a name, and press OK. Use the credentials of an existing Mindquarry user to fill out the Your Login ID and Password fields, and enter the server URL in the URL of the Mindquarry Server field. Finally, you have to specify a path to a folder that will contain your workspaces. A workspace is the equivalent of a team in the Mindquarry server. For example, if you have the Writers team on the server, the specified folder on your computer will have a directory with the same name containing all the team's documents. Every time you add or modify a document in the Writers workspace, the client automatically syncs the changes with the respective team on the server. Press OK to save the setting and close the dialog window. Now perform a sync operation: Right-click on the client icon in the Panel and choose Synchronize. If everything works properly, the folder you've specified in the server profile will be populated with the workspaces.

<!--pagebreak-->

While the client sits most of the time in the background and keeps files and documents in sync, it also allows you to manage tasks. Click on the client's icon in the Panel, and you will see all the existing tasks in the pop-up window. To add a new task press the New Task button. This opens the Edit Task dialog window, where you can specify the task's details, such as name, status, priority, and due date. Press OK to close the window and save the task.

# Working with documents in the Files module

The Files module is probably the most important part of the Mindquarry collaboration suite. However, the Files module is not a conventional document repository. In fact, its primary function is not even to store documents. The Files module does two important things: it ensures that the documents stay in sync across multiple desktops, it keeps track of all changes made to every shared document.

The Files module is based on Subversion (http://subversion.tigris.org/), a powerful and mature version control system used by many open source software developers. Subversion allows developers and users to track any changes made to a file in a so-called repository, a directory that is "watched" by Subversion. The File module in Mindquarry hides all the inner workings of Subversion and makes it extremely easy to use. You don't even need to know how the system works, but understanding the basics can help you to avoid problems and troubleshoot issues if they occur. So let's take a look at what makes Mindquarry's Files module tick.

Once you've created a team (for example Writers) and added users to it, each user must install the Mindquarry Desktop Client to link her desktop with the Mindquarry server. When the user runs the client for the first time, it creates a workspace with the team's name (in this case Writers). Now if the user puts, say, an OpenOffice.org Writer document in that folder, the document will be propagated to other team users' desktops. Whenever any of the team users modify the document, the changes are automatically propagated during the syncing operation. More importantly, each time the users perform a sync, the Mindquarry server makes a copy of the modified document. This means that all changes made to the documents are recorded, and the users can always retrieve a previous version of the document.

Most of the time, you don't have to think about behind-the-scenes stuff. Simply use the Mindquarry Desktop Client to run a synchronization operation each time you add or modify a document in the workspace, and you'll be fine. There is just one important thing you have to keep in mind, though. When you are syncing modified documents, the client prompts you to enter a message. It's a good idea to use this feature to describe the changes you made to the document. This makes it significantly easier to locate the version of the document you need.

Using the File modules features

While the Mindquarry Desktop Client makes it extremely easy to keep documents and files in sync, the File module of the Mindquarry server offers a few clever features that can help you to stay abreast of the changes and manage document versions.

The Activity Timeline is a unique and nifty tool that presents all document changes as a timeline. Every time you sync a modified document, Mindquarry places a mark on the timeline. Click on the mark, and you will see a brief description of changes (this is why it's a good idea to add a description during syncing). If you click on the _Show files_ link, the file list above the _Activity Timeline_ will display the file versions from the given date. This way you can view the previous versions of a document and roll back to an earlier edition of a file, if necessary.

Another way to keep track of changes is to use the Recent Changes section, which provides a list of changes grouped by users. This can come in handy when you want to see changes to a document or file done by a particular user. Clicking on a version of the document displays it on the Activity Timeline.

Using an RSS feed in the Files module, you can keep track of changes in real time without even logging in to the Mindquarry server. Simply subscribe to the feed using your favorite RSS reader, and you can stay abreast of all document-related activities.

# Wiki module

When you create a team, Mindquarry conveniently creates a wiki for it. While the Mindquarry's Wiki module follows these basic rules, it adds a few clever twists of its own. First of all, only team members can add and edit wiki pages. All the editing is done in the graphical mode, which means that you don't have to fiddle with markup. Instead, all the formatting functions are available through the buttons on the main toolbar. In other words, you work with a wiki page in Mindquarry as with a document in a conventional word processor. If you prefer to work in the "raw code" mode, you can switch to it by pressing on the HTML Source button. Unlike a conventional wiki, the Wiki module in Mindquarry uses standard HTML, which has two major advantages: you don't have to learn yet another set of markup rules, and you can easily import HTML pages into the wiki. Better yet, many word processors such as OpenOffice.org Writer allows you to save text documents in the HTML format ready to be imported into the wiki.

<!--pagebreak-->

Each wiki in the Wiki module contains the default start page, which acts as a starting point. To edit it, press the Edit button. This opens the page in the editing mode. The main toolbar contains the buttons that allow you to quickly apply formatting to the selected text. Most of these buttons are self-explanatory, but the Insert link button feature deserves a closer look since it offers a rather novel approach to the whole linking concept. When you select a text fragment and press the Insert link button, the system displays a dialog window containing different linking options. The Web tab, for example, allows you to quickly add a link to different domains (.com, .org, and .net), or to a Wikipedia article. To see how this works in practice, type and select the word "monkey", press the _Insert link_ button, switch to the Web tab, and choose the Wikipedia option. This automatically inserts a link to the Wikipedia article on monkeys. In a similar manner, you can add links to documents, tasks, other wiki pages as well as teams and users. The clever part is that Mindquarry uses the selected text to find and display the related resources. For example, when you select the word "chapter", the system finds and displays all documents, wiki pages, and tasks containing the word (for example, "Chapter1.odt", "Research notes for Chapter III", "Finish Chapter IV"). Of course, you don't have to link to any of the existing resources: instead, you can choose to create an empty wiki page. To do this, click on the Wiki tab in the linking dialog window, and choose the Create a new wiki page option. You can also create a new wiki page by simply pressing the _New Page_ button in the main window.

Similar to the Files module, the Wiki part features the Activity Timeline, which maps all the versions of the currently viewed wiki page. You can use the timeline to go back and view the previous versions of the page. To do this, click on the dot on the timeline representing an earlier version of the page, and click on the Show Wiki page in the pop-up window.

The Recent Changes section provides a list of all modified pages, and you can subscribe to the wiki's RSS feed to keep track of changes in the Wiki module. Finally, you can generate a PDF version of any wiki page by clicking on the PDF icon.

Using the Search field you can search the existing wiki pages. The search feature supports query operators, including AND, OR, NOT. Note that these operators must be in uppercase. If you don't specify any operators, the system uses the default AND operator, which searches for all words specified in the search query. You can use parentheses to group query terms and quotation marks to search for exact phrases.

# The Tasks module

Although Mindquarry doesn't offer a dedicated calendar, it features a rather impressive Tasks module. For starters, the module is heavily AJAXified, which makes it more like a desktop application than a web-based task manager. More importantly, however, it provides an ingenious way to manage the tasks. In a traditional task manager, when you create a new task, you have to fill out a number of mandatory and optional fields. In Mindquarry, you can choose what fields to use on the fly. When you create a new task, you have an option to insert additional fields or remove the existing ones by pressing the appropriate Fields buttons. For example, if you want to add a detailed description of the task, press the Description field button, and the Description field is added to the task form (including a WYSIWYG tool bar for rich formatting). If you need to assign the task to a particular user, you can just press the People button and select the user you want from the drop-down list. To remove a field from the task form, press the appropriate button. By adding and removing fields from the task form, you can customize each task, so that it contains only relevant information.

The Tasks module includes yet another useful feature. If you have hundreds of tasks in your system, keeping track of them can be a bit of a challenge. To solve this problem, the Tasks module allows you to create a filter that displays only tasks that meet the specified rules. Better yet, you can save the filter for later use. For example, you can create a filter that displays only low-priority tasks assigned to you and save it as "Things I have to do some time". Since you can add as many rules as you need, you can create rather advanced filters. But that's not all. The Tasks module provides RSS feeds, so you track the tasks using your favorite RSS reader. You can export the tasks into a PDF file.

The Tasks module also generates a calendar file you can subscribe to using any iCal-compatible calendar application. For example, you can use Mozilla Sunbird (a standalone calendar tool) or Lightning (a calendar extension for the Thunderbird email client), and you can subscribe to your team's tasks by setting up a new network calendar. To do this, choose File→New Calendar, and select the _On the Network_ option. In the Tasks module in Mindquarry, right-click on the Calendar icon in the Alternative versions section, and copy the calendar link (in Firefox, choose the Copy Link Location command). Return to the Sunbird (or Lightning) calendar, press the Next button, select the iCalendar (ICS) option, and enter the copied calendar link into the Location field. Press Next, give your calendar a name, and press OK. You should then see the list of tasks in the Tasks pane of the Sunbird/lightning calendar.

# Mindquarry's future

Due to the lack of funds, Mindquarry's developers had to end their commercial offerings and put Mindquarry development on a backburner. However, they did release a beta version of Mindquarry 1.2, which offers a new Talk module. The developers plan to move all the code and documentation to SourceForge, so other developers can get involved in the project. Let's hope they do, because Mindquarry is too good to be abandoned.