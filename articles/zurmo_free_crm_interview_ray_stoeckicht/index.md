---
nid: '3824'
title: 'Zurmo, the free CRM: Interview with Ray Stoeckicht'
authors: 'Tony Mobily'
published: '2013-02-06 22:49:48'
tags: 'crm,sugarcrm'
license: verbatim_only
section: interviews
main_image: Ray_Florence_.jpg
listed: 'true'

---
I had the privilege to interview Ray Stoeckicht, the co-founder of an exciting new free software/open souce company creating [Zurmo](http://www.zurmo.com). Zurmo is a "social CRM": a program aimed at making CRM fun (if you know something about CRM, you will know that the word "fun" never seems to associate with CRM).

# Hi Ray. Please tell us something about yourself: what's your background?

Sure. I’m your semi-normal 32 year old guy that grew up in the era of dial-up and America Online. My first computer was a Commodore 128 and it was all about computer games early on. I later transitioned to a PC and started playing around with my dad’s AutoCAD 9.0. Since then, I have become an obsessive compulsive serial entrepreneur in the tech field. Open source CRM for the past 6 years. I co-own another CRM company, Intelestream, which focuses on developing and customizing open source CRM applications. We work mostly with SugarCRM and the different derivatives. We launched 3 CRM products since 2009, including Intelecrm, which is based on the SugarCRM Community Edition code base.

Two years ago, we decided to create our own CRM application on our own code base, which is where Zurmo came from. Before starting Intelestream, my partner and I started a telecommunications company that provided wireless Internet access to areas in the Chicagoland suburbs that did not have high speed internet. We sold the company in 2004.

# You entered a pretty crowded (and competitive) market. What made you decide to write a CRM?

Yes, the CRM market is quite saturated and it is overwhelming when you look at all the apps out there. My co-founder, Jason Green, and I have been working with CRM for many years and we felt there was a gap in the marketplace. Sure there are a ton of CRM’s, but ask any user if they like CRM and they will abruptly say “no way”. I’ve seen it hundreds upon hundreds of times and the reasons are always around the system being difficult to use, clunky, overwhelming, and time consuming.

Our intent was to challenge the way people approach CRM. Traditionally, it has failed users. CRM failure rates have remained consistently at 40-50% over the past ten years. Since we knew what people didn’t like, we had an idea of what would make things better and with Zurmo, we finally had our own code base to work with and include certain features like gamification and social CRM.  Already, we have seen an increase in user adoption, which is very encouraging. In the end we want to transition CRM from a dull system that sales/marketing people view as "the data entry thing" to an engaging, enchanting, and fun system that end users enjoy using.

# In your documentation, you cover a lot the unit tests. You seem to care a lot about code quality. Has that made a difference while developing Zurmo?

Yes, we are a bit fanatical about testing and it plays a very important role in development. Without tests it would be very difficult to develop an application of this complexity and be sure that everything works correctly. We have unit tests (with code coverage of about 85%), functional tests, and walkthrough tests (a mix between unit and functional tests, used to test if controller actions are executed correctly).

We developed our custom [continuous integration environment](http://build.zurmo.com), which covers unit tests, functional tests, code violation, checking for missing translation messages, performance, and more. Prior to creating our own CI, we explored using Jenkins and Hudson. Since Zurmo is written in PHP and our developers are well versed in PHP, we wanted to make sure the tools we were using were easy for everyone to utilize. In the beginning, our CI evolved naturally. We developed a few scripts and then a few more. Before we knew it, we were pretty far down the road and we did not want to expend the energy switching to something else when what we had fulfilled our requirements. It might have taken more effort to rewrite everything to work with Jenkins or Hudson. In the future, we may consider switching to a new CI server, but for the time being, everything is working very well.

Due to our zeal and obsession with Test Driven Development (TDD), it means a more stable application. There is no need to worry about upgrades causing any issues because all you need to do is run the tests to ensure everything is working. With the testing infrastructure in place, anyone can create and maintain a custom-built CRM system with the assurance that future updates are not going to break the installation.

# Tell us about your coding style. You say "No more spaghetti code". Are you managing to do that with a larger codebase?

We try to adhere to rigid coding standards. Anytime we get some spaghetti, we can refactor it to make it better. The ease of refactoring comes from our obsession with testing so that each time a change is made we can see if it caused any new bugs. We also keep things nicely organized as well.

# You seem to be using some good libraries: RedBeanPhP as the ORM, JQuery, etc. How did they influence your workflow, coding style, etc.?

We started with the Yii Framework because its components tie tightly together, it is very fast, clean, and has a strong community. Although Yii is a solid PHP framework and fit the best to our requirements, we still had to modify it heavily. Yii Active Record did not satisfy our database abstraction plan, so we decided to use the RedBeanPHP ORM system, which is a lightweight system.  RedbeanPHP can work in two modes: unfrozen, where the database structure is not fixed, and frozen where the database structure cannot be changed. During development, unfrozen mode should be used, and once the database development is done, the frozen model should be used. Frozen mode is much faster than unfrozen, so it should be used on production servers. With this approach, we just define the model's metadata and the table is created automatically. You can’t go wrong with jQuery and we have been very happy with all the libraries we have chosen thus far.

# Your roadmap http://zurmo.org/roadmap is very aggressive. Are you getting much help, through your [Get Involved page](http://zurmo.org/get-involved)? 

You are right, our roadmap is aggressive! We have 7 full-time developers and about another dozen or so active contributors. I wish we had more resources and could go faster, but sometimes we don’t always get our wishes. We have received some solid contribution from open source enthusiasts and other developers who are building an app on top of Zurmo. For example, a contributor created an [integration with Drupal](http://zurmo.org/forums/index.php?/topic/300-zurmo-to-drupal-module- using-the-zurmo-rest-api).

The Zurmo community is growing and we are getting more Forums members and attendees on our weekly Dev Sessions. As Zurmo gains more traction and exposure, we will get more people building plugins/add-ons/extensions.

# Let's talk about money! Most free enterprise products out there seem to be based on a model where there is a basic version released for free (under a free license), and a more advanced version to be licensed. What will you do?

Zurmo will always be open source and freely downloadable. In a few months, we will offer a commercial version that is licensed under a commercial license; however, the core feature set will remain in the open source version. The paid version will include hosting, support, upgrades, maintenance, and certain integrations. This approach is much different from other open source CRM applications where the free version is stripped of functionality and “teases” users in order to upgrade to the paid version. We will not play that game and feel that users should receive the same basic feature set that commercial customers do. Zurmo Inc. is the corporate entity that sits behind the open source project and manages the overall development cycle and release schedule.

# Having a paid version that includes hosting, support, upgrades, maintenance is a fantastic idea. However, you then write "certain integrations" -- don't you think that the risk is to end up with a product that "teases" customers? What kind of integrations would you charge for? And, more importantly, where would you draw the line?

Integration means integration support. We will have an "Apps Marketplace" where a user can add a plugin/extension/add-on to their Zurmo instance. I'm certain the community will build some integrations and we would be happy to include them in the Apps Marketplace too. For the commercial version, these integrations will be readily available out-of-box and supported. For the freely downloadable open source version, a user can still add the integrations, but they will be on their own. We are not trying to "tease" anyone, but rather control certain elements of support. With an integration, there are moving parts and when a user decides to connect to an external system, a measure of support is needed to ensure the integration works as versions of each application (Zurmo and the integrated app) change and new features are added.

We intend to integrate with marketing automation systems (Eloqua, Marketo, Pardot, Hubspot), ERP systems (SAP, MAS90), and BI tools (Pentaho). These are just examples and nothing has been decided yet. These are the types of systems our commercial customers will likely be using already and we want to make sure the CRM is seamlessly integrated. It is unlikely that a user on the freely downloadable open source version will be using these apps anyway so it will likely not matter that they will not have integration support on them.

# Let's talk metrics. How long do you spend programming? How may lines of code have you written? For every hours, how many minutes do you spend programming, testing, debugging, and writing unit tests?

I will admit that I’m not a developer, but I can program the most fabulous “Hello World” message that you will ever see… My co-founder and lead architect, Jason Green, is the brains behind Zurmo’s engineering. He is the most dedicated developer I have ever come in contact with and it is a true privilege to have him lead the development team. He spends about 8-12 hours per day coding (including weekends) and along with the rest of our team, there are hundreds of hours being poured into Zurmo each week. We have an international dev team and along with our global contributors, it is likely that someone is coding Zurmo 24 hours per day, 7 days a week. Right now, we have 1700+ unit tests running across eight server configurations.

Here are some other notable metrics:

* 300,000 Lines of Code
* 2,400 Unique Installs over past six (6) months
* 767 Community Members
* 340 Hosted Trials
* 85 Countries
* 16 Active Contributors
* 7 Full-time Developers

# On a more technological perspective, Zurmo seems to be a classic page-reload application with JQuery for Ajax. I love the work you did with customizing dashboards for example, where you can drag&drop elements. What's your view, on one-page Ajax-rich applications versus page-reload, Ajax-aided applications?

Zurmo uses Ajax extensively. While we aren’t a one-page application we find that the mix we are using works well for what we are trying to accomplish not only with the user experience, but the depth and breadth of customization and functionality we are developing for the future.

# What are your hopes, and what are your expectations with Zurmo?

Our objective is to build the best open source CRM application in the world. We are doing this by focusing on engineering, quality of the technical infrastructure, and creating innovative feature arcs that will motivate users to utilize the system. If we can disrupt the open source CRM space, we can take a shot at shaking up the broader CRM marketplace.