---
nid: '1383'
title: 'phpBB: creating online communities'
authors: 'Martin Brown'
published: '2006-04-24 6:00:00'
issue: ''
license: cc-by-nc-nd
section: hacking
listed: 'true'

---
One of the focuses of modern websites is the creation of a community—giving users the feeling that they are part of a larger group of like minded individuals who can share information and experiences.

There are lots of potential ways in which this can be achieved, but one of the easiest is to provide a system that enables people to talk and share ideas. On the internet, the well-known (and still heavily used) forum for that process has been Usenet. Usenet, however, is global. And, although discussions are organized into different newsgroups, these are very general and there is no guarantee that they would be copied to your locally available news server.

A better solution then, which provides the same discussion and community facilities, would be a discussion system that could be used and integrated into your own domain and would form a key part of your own website, rather than being separate.

Many such systems are available, but one of the most popular is called [phpBB](http://www.phpbb.com/). As the name suggests, the software is written entirely in PHP and can use a number of hosting and database solutions, including free software solutions such as MySQL and Apache. Like these solutions, phpBB itself is released as a free software solution, made available under the GNU General Public Licenses (GPL).

=TEXTBOX_START=Book Competition!=
This week we are giving away a copy of [Wicked Cool Perl Scripts](http://www.freesoftwaremagazine.com/articles/book_review_wicked_perl) by Steve Oualline.

All you need to do to enter is check out the [latest book competition announcement](http://www.freesoftwaremagazine.com/blog/1) on our blogs page.

GOOD LUCK!

_Thanks go to _[No Starch Press](http://www.nostarch.com/)_ for providing this fantastic prize._


=TEXTBOX_END=

=IMAGE=phpbb.jpg=phpBB is a high powered, fully scalable, and highly customizable free software bulletin board package.=

The base of the functionality in phpBB is the creation of bulletin board topics. The topic structure is nested, enabling you to create, a series of categories and then within each category a number of individual forums that provide the structure for posting and exchanging messages.

Throughout, the phpBB system has been developed with security in mind. That protection runs through from the user security right down to the ability to block and ban different addresses from using your system to help prevent attacks and abuse.

Users can login and use either a secure cookie or URL based authentication system, making phpBB practical for users that are comfortable with cookies and those who prefer not to enable cookies on their browsers. Once logged in, users can be given a range of permissions based on familiar user and group management principles. Forum access can be controlled, enabling you to restrict reading and posting access to different users and groups. For example, you can enable an ’announce’ forum where only users with suitable permissions are able to post, while others are able to read. Forums can also be hidden entirely from users providing completely secure and private access to different groups.

User profiles allow users to customize their online personas within the forum system. Users can update their profile, add signatures, images, photos and other elements to develop their persona (or avatar) according to their needs. Users can also exchange private messages with each other directly through the system. The private email functionality gives secure message exchange without the need to set up a full-blown secure email solution; ideal for companies that want a secure online messaging environment for discussions. The system is not designed to replace email, of course, but it provides functionality that builds on existing functionality

Moderators, specially designated users, are able to further control individual forums by managing messages and topics, removing unwanted posts, topics and group removal and editing of messages.

For administrators, you have complete control over the entire experience for the user. You can control every aspect of the phpBB system, from the structure of categories and forums through to the available tools that users are able to use. The administration interface also supports the ability to control the user authorization process, word censoring, username restrictions and user, email and IP-based banning solutions. Although it’s an unfortunate side-effect of the forum environment that you get undesirable users who want to abuse the system, phpBB provides a very flexible way to reduce their ability to interrupt your forum service.

Message posting functionality for users includes the ability to post basic text, including programming code, quoting, image posting and URL embedding. The flexible posting support means that phpBB can be used for everything from basic text exchanges, through to photo discussion, programming and many other solutions.

Core posting and messaging facilities for the user are further enhanced by allowing users the ability to hand markup their code within posts. That extends the capability from basic text posts to a proxy-HTML environment called BBCode. BBCode supports specific HTML constructors so that you can set bold type, text colors and even quote text from original posts. The format and layout of the BBCode elements are simple and easy to use, and some interface templates provide an inline interface for marking up post content with a series of JavaScript driven toolbars.

In addition to the core features, the user interface and the backend application, which drives the application, are separate. This means that you’re able to select from a number of a freely available interfaces, or you can develop your own. The idea is similar to the theme system supported by other solutions such as WordPress, but has been specially designed with the issues of supporting the complex bulletin board and topic structure required by the application. The system makes full use of XHTML, HTML, CSS and other standards.

The phpBB system also supports a number of modules and extensions. Because phpBB is written in PHP, it makes it easy for users and administrators to extend the functionality. The result is a healthy module building community, and even a side community that develops software that helps you build extensions to the phpBB system.

The range of modules is impressive—there are over 600 different examples available, which range from simple add-ons to provide additional content features (like attachments and bookmarks), through to solutions that provide an email interface to the phpBB system.

For a free software project, phpBB is managed professionally throughout its development model. There’s a dedicated management team, development team, and specific teams for different areas of development, from support through to the extension module community.

With the combination of a huge range of functionality, control capabilities and a secure environment, phpBB can be used for everything from a hobby community through to an internal communication solution for an entire enterprise and still provide both the facilities you need.

