---
nid: '1545'
title: 'Free software technology review - May'
authors: 'Martin Brown'
published: '2006-05-29 0:00:00'
issue: ''
license: cc-by-nc-nd
section: announcements
listed: 'true'

---
It is hard not to consider the effect that has been had on the way we share information since the widespread adoption of the internet. There are many solutions for publishing and providing data, including some that I have covered before in this series of hosting service free software.

The issue with many of the solutions already covered is that they present two different extremes of the control of the information that is provided. For example, with a blog solution such as WordPress, the content on the blog is closely and tightly controlled according to the registered users who are allowed to post blog entries, and as we’ve seen, you can even control the comments to your blog posts.

The phpBB bulletin board system is the opposite—it gives users and web site visitors the ability to discuss and contribute information and data through a series of messages, conferences and topics. Although you can put controls in place, the typical environment and operational mode is to allow for complete freedom of expression.

A Wiki—of which [MediaWiki](http://www.mediawiki.org/wiki/MediaWiki) is one of the most widely used and best known—provides a simple, web-based environment that enables users to collaborate and provide and share information. Wiki’s are not about discussions, and they are not about regular articles or posts, like a blog.

=TEXTBOX_START=Book Competition!=
This week we are giving away a copy of[User Mode Linux](http://www.freesoftwaremagazine.com/articles/book_review_user_mode_linux) by Jeff Dike.

All you need to do to enter is check out the [latest book competition announcement](http://www.freesoftwaremagazine.com/blog/1) on our blogs page.

GOOD LUCK!

_Thanks go to _[Prentice Hall](http://www.phptr.com/)_ for providing this fantastic prize._


=TEXTBOX_END=
Instead, the wiki is concerned with storing, categorizing and sharing information in a way that allows any registered user to update, edit and enhance the information. The best example of this is Wikipedia, an online and completely publicly contributed encyclopedia. MediaWiki, the name for the underlying software used by Wikipedia, was originally developed for the Wikipedia project.

MediaWiki uses PHP for the web scripting engine, MySQL for the data storage and can be used with both Apache and IIS servers, although the former is preferred (and obviously works with the free software nature of the rest of the required products, including MediaWiki itself).

The core of MediaWiki (and any wiki system) is the ability for individuals to edit the pages. Pages themselves are considered to be single entries within the database—for example, Wikipedia includes a page called “Wiki”, which is about Wiki’s in general. The page title is important, as it becomes a quick and simple method for accessing pages in your wiki database. Pages can be further organized and arranged according to namespaces (that group pages logically) and keywords and nested classification structures, and that information can be used to provide a table of contents and navigable directory of information in your wiki.

Pages within the database can also be linked to each other—unsurprisingly a key feature of a system designed to store and reference information.

The editing and creation of pages of information is obviously entirely web based, and although the potential exists for that to limit the editing and display facilities, the reality is that MediaWiki supports a form of quasi-HTML markup that makes it easy, within the confines of a web page and a web form, to edit and create individual pages.

For example, basic text can be marked up using a restricted range of HTML (full HTML is supported as an option), supporting functionality like bold and italic text. In addition, references to other pages or sections within the wiki can be highlighted using wiki-specific markup in the text source. The construct `[[page title]]` for example inserts a link to a Wiki page with the specified page title.

Similar constructs exist to insert page contents into the current page—enabling you to combine many similar pieces of information into a single page. A good example here would be the definitions of a group of terms—say, computer components, CPU, motherboard etc. These could all be available separately on their own pages, but could then be combined into a single page called “Computer Components”. These links are automatic—the page is rendered on the fly from the source data with the formatting added.

The formatting of individual pages and the display of the site is handled by XHTML and CSS rendering techniques, which means that you can easily customize the display of the information in the wiki database to match your own website look and feel.

Finally, information displayed is further augmented through support for file uploads. MediaWiki, as the name suggests, was designed with a rich system of media support incorporated into the application. You can upload PDF documents, images, and other components and, if supported by the browser, display these elements inline with each page.

Further markup and display functionality is available within pages through a series of extensions that provide functionality like time charts, auto-numbering and mathematical formulas. This is further rounded out at a page level with table of contents generation, automatic numbering of article headings and the ability to include database metadata in the displayed page.

The metadata is important—not only does it help to describe the page content, it also forms a part of the editing process, as you can enable history and version tracking. This works in combination with the user registration system and the overall page editing and creation process to track the changes made to a particular page.

MediaWiki can be configured to control access and editing functionality across a range of pages, users, namespaces and other elements. You can opt to have a completely open system, or a completely closed system, and you can prevent or allow editing, updates, uploads and other functionality accordingly.

All of this functionality is provided out of the box. Installation of MediaWiki is surprisingly straightforward, requiring only a few minor steps after the installation of the MediaWiki files to set up your database, wiki host and basic user and administrator options. Within the realms of a hosting service, these steps are so straightforward that you can often install a wiki on to your website with a single click.

The ability to edit information in a global environment is what makes wikis and MediaWiki in particular such a good solution for data management, without requiring a sophisticated or heavily customized application. Your pages can contain whatever you want and be laid out and organized according to the information they contain, rather than the database that stores them.

As a user of a wiki (albeit not MediaWiki) as a solution for a company intranet, where information from HR, to department level data and even task, project, and client information is stored, I can heartily recommend it as a solution.

By giving the power back to the user and controller of that information, rather than the developer or company that manages the data, you improve the chances that the information will be shared, rather than hidden and controlled by individual groups.

As a service provided through a hosting service, how you use it is up to you. Different organizations and individuals use the wiki functionality in different ways. Many companies use MediaWiki as an extension of their website offering to build a community for their products. For example, Gentoo use MediaWiki as a method of disseminating information, tips, guides and FAQ data to their customers and users, while enabling users to update and extend that information. By eliminating the need to build or support a complicated website environment, these companies are able to build and support a repository of information with a very low development time, simply because the information exists.

Others use MediaWiki as the core of their website, providing, for example, travel related information, encyclopedias (Wikipedia is not the only one) and even archives of stories and free articles.

MediaWiki provides a very simple and straightforward method for building a database of textual information. The advantage of MediaWiki over some other solutions is the extensive user support, version history, and the support for additional files to be embedded and incorporated into the wiki database.

