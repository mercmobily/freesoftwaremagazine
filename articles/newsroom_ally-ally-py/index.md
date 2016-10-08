---
nid: '3817'
title: 'The newsroom’s ally: Ally-Py'
authors: 'Daniel James'
published: '2012-11-08 2:20:31'
tags: 'python,cloud,sql,media,enterprise'
license: verbatim_only
section: interviews
main_image: gabriel_nistor.png
listed: 'true'

---
*Software architect Gabriel Nistor talks to Trevor Parsons about Ally-Py, the new Free Software framework designed to get the most from web APIs.*

Sourcefabric’s [Superdesk](http://www.sourcefabric.org/en/superdesk/) enables news organisations to manage all of their newsroom activities, including planning, ingest, writing, publication and archiving. It is written in Python and released under GNU GPLv3. At the heart of Superdesk is the Ally-Py rapid development framework, built from the ground up to help media enterprises exploit the world of REST APIs.

The first component of Superdesk to be released and the second production deployment of Ally-Py is GEN Live Desk, a live blogging tool with support for ingest from multiple web services. Journalists can now use APIs from their favourite sources, like Twitter, YouTube, and Flickr, directly in their editorial workflow. Live Desk was launched at the Global Editors Network's News World Summit in May 2012, and was used by journalists across the United States to provide live coverage of the Presidential elections in November 2012.

Service-oriented architecture may be taken for granted these days, and it’s no secret that web developers have built huge communities around PHP and Python. Gabriel Nistor started to develop Ally-Py in 2011 when it became clear that there was no suitable open source PHP or Python framework for the applications that Sourcefabric wanted to create. News organisations now demand seamless integration with multiple web services running on open source platforms such as the Apache Software Foundation’s Hadoop and Solr. Ally-Py can be used to hook into any API, not just REST. It has been designed so that enterprises will be able to switch to the next big thing in APIs without having to change the business logic of the applications they have built.

Nistor lives in Romania’s tech capital, Cluj-Napoca, where an increasing number of European and American software companies are basing their development teams. Trevor Parsons caught up with Nistor in October 2012 and asked him to explain Ally-Py, and why it makes sense for web application developers facing demands for both tighter integration and new features in less time.   

TP: *What's your industry background, previously to working for Sourcefabric?*

GN: I’ve been working for various US-based companies, mainly on banking software, communications, and writing applications for handling data. I even wrote a video communication application, long before Skype existed. As a technical team lead in research and development, most of my projects were prototypes, but there were some that went to production. The biggest one was a framework for handling voice automation for the 5-1-1 travel information service in the US. So if you phone up to find out about road conditions, you are probably going to be hearing Romanian software speaking! That's voiceXML - we created a super-cool framework. The competition took a year to complete the project that we completed in six months. And that was a huge success because we were involved from every stage, from design and architecture all the way to deployment. I stayed almost three years on that project, with a big team, before I joined Sourcefabric.

That voice automation project was as enterprise as you can get. The core was the same - a common core, like you have with Superdesk - but then you needed to have specific implementations for each US state. One state worked with an external provider for certain data or sensors, while another state didn't need road conditions but did want bus schedules, so there was a lot of flexibility required. But still with the ability to do it in very little time.

TP: *That project was written in Java?*

GN: Yeah, that was Java. Actually, I did start using Python during that job, because we had all these nasty rules to deal with, like for instance if someone requested certain road segments. As the segments would have a condition on certain kilometres of the road, but other conditions on another stretch, that created the need for a lot of condition programming, which in Java is crazy to program. So we used Python to program those parts. The message that you actually hear when you call the service, was constructed in Python.

When I told the team that we cannot do this in Java because it's not the right language, everybody was fighting with me saying "Why do you want to introduce a new language? It will take so much time to learn!" I just told them, "Let me do it, you will see". And after a week, their reaction was "This is really cool! The work I was able to do in a month before, I can do in a week now." So in my opinion every development language has advantages and disadvantages.

TP: *What are the disadvantages of using Python?*

GN: Java has the advantage of a larger stock of libraries. In Java you can integrate with almost anything, from media processing to servers, databases, whatever. Whereas with Python, if I want to do media processing, I need to rely on external tools, which brings more dependencies. Even now, in order to use an indexing server, we use Java, because in Python you don't have anything developed like that. That's the main disadvantage. But, besides the dependencies, we can actually integrate pretty easily, because in Java there is an interpreter for Python called Jython, and you can actually write Python with Java together. It's kind of slow, but it's still a useful tool if you want to integrate your software.

TP: *How did you start writing Ally-Py?*

GN: The starting point was a year or so ago, after I joined Sourcefabric. I tried working with PHP for some time, but pushed this idea of designing a new framework that we could use. Java would have been a good choice for what we were trying to do, but it wasn't popular with Sourcefabric’s web developers. The next best thing was Python, only Python had some big gaps related to enterprise development.

We did a port of Spring ideologies but using pure Python, not XML. So we have a so-called dependency injection container that only uses Python, which was the start of the Ally-Py framework. This dependency injection feature handles the assembly of all the components and plugins. It's what enables you to have an architecture with components and plugins and be able to integrate them very easily and apply any kind of changes. This is a must for enterprise development, because if you have clients, and clients want customisations, you want to be able to do that very easily without changing the core code. So that was our first challenge. There was some time invested in this tool, which in my opinion, due to the fact that we made it in pure Python code, is much more powerful than the Spring version in Java. Then came the job of actually delivering REST services.

REST is all about delivering data, rather than presentation. The next challenge was to pick a tool in order to have this data delivered. There were some tools out there for rendering on the Web, but their focus was mostly HTML and XML. That wasn't so bad, but we needed something much more flexible; we want JSON, for example. We could use ZeroMQ, for faster communication between applications. We haven't implemented in that direction just yet, but we still have the opportunity to do that.

In order to have this functionality we looked over the frameworks, but what we wanted was not even available in Java. There were only some examples of how things might be done. And so we decided to write a framework from scratch in Python. Now we have these two major components of Ally-Py. One is the dependency injection container, which allows for the plugin ability, and the second is the container which actually renders the REST services.

TP: *So how did your enterprise Java background influence Ally-Py?*

GN: Everyone accuses me of trying to do Python as Java! But that's not quite true. It's just that there are these enterprise design patterns which are heavily used not only in Java, but also in .NET and other enterprise-level languages. If you don't use these design patterns you will encounter big problems later on down the line. So that's why I'm using similar ideas, but behind those ideas it's Python all the way; Pythonic thinking.

TP: *What are these enterprise patterns?*

GN: For example, in a school situation you might have one component that handles students and another that handles the classes. Whenever you are using these two components you only see what they are actually delivering you. It's like having an API, an interface for each one of the components. The ideology is something like this: you have a model, in our case it will be a student model and a class model, which contain data. The student model just contains data, like firstname, lastname, but it doesn't perform services. So you'll have a student service, where you'll have GetAllStudents, for example, and InsertStudent, and this is also an interface-like class. That means that you can do any kind of implementation behind that, using a database or filesystem or whatever. Everything is separated.

If you have class, for instance, same model and service, at this point these two models aren't linked, but say after a year we decide that we want to create a link between them, to identify which student belongs to which class. So at that point you just create a new model StudentClass, where you link the actual student and the class, saying that this student with identifier name belongs to this class with a different identifier. The student class will have a student identifier, class identifier and maybe additional data like grades or something. You now have the ability to perform this service; you will have this StudentClass service that delivers the same StudentClass models, and this service can actually use the other two services without ever knowing how the students and the classes are obtained. The students might be from a database, but classes from a configuration file, for instance.

Whatever you decide, you can actually change the implementation of these classes. You might need to integrate with an external service that provides students; you can easily do that. You have your own service, then an external service, and you now have another service that combines those two. But you'll use the student interface as if there was no change in it, from the point of view of your other components. So it allows for this isolation, which is very important. And to manage this isolation we have the dependency injection.

Ally-Py renders the REST Web calls and performs all this decoding, encoding, transforming from text mode into objects which are used to invoke a certain service call and then performs the rendering back as a response in a web format. The container understands what you are doing with your model and services. Because in the API you provide different descriptions saying that, for instance, I have a service call that expects a user ID and returns a user object. The container knows that the method having this kind of signature will actually be associated with the URL something like:

`resources/user/id`

and will know that this delivers you the user object for this user ID. It has this mechanism of understanding what the code is all about. This is the main advantage: you only write these services - the APIs and implementation - but you never write code that actually renders your user object into Web form like XML or JSON or whatever. So that saves a lot of work because you're only doing one layer, the service layer.

The architecture behind this can have a lot more complex communication than just REST. REST is a cool thing for communication and if you have your web application using it, it's awesome. But there are some points where you need to make compromises. That's why I didn't want Ally-Py to go fully RESTful. A simple example might be when you're trying to fetch a list of users. You end up having to do a lot of requests. That's because in REST ideology whenever you fetch a list, you're presented only with the references to the users contained in that list. So in order to fetch the actual users, in the list you need to go and call each one of those URLs in the provided links. It might be a lot of requests that need to be made on the server. So we made some compromises to help that. We also made things like notifications for changes. In Live Desk we just needed the posts that were actually changed, not to fetch the entire post list. So we made things that were able to encapsulate this behaviour.

TP: *Ally-Py was written to meet the requirements of Sourcefabric’s Superdesk newsroom suite. Is it applicable elsewhere?*

GN: Yes, Ally-Py is a framework like Django, but more oriented towards the enterprise. Django is very cool, but it doesn't have Ally-Py’s plugin features. With Ally-Py, you can have someone working on a certain plugin, test it, and if it's not working you can focus all your efforts on that part. Without this isolation, a developer working in a particular section of the code might change something that affects the entire application. So this is a huge advantage. The plugin ability also means that you can also have multiple forms of behaviour. You can have users from an LDAP source, users from a database, users from Yahoo if you want.

TP: *Can components of an Ally-Py application be distributed across multiple hosts?*

GN: Yes, we have plugin distribution; you can make some plugins work on one machine, and the other plugins on another machine. It's not like having the same application on two machines. For instance you can keep reporting and auditing of all the data on one box, let's say user management on a different box, and the media archive on a third box, but they all work together.

We can have internal authorisation services and caching services but they can also be external, so we can place a gateway in front of the REST server. For the Live Desk main page you can place an Nginx server to cache your requests for a second, which will be enough, and scale to tens of thousands of users easily.

Now we are thinking of integrating with Java, to make use of tools like Solr, the search platform from the Apache Lucene project. Later on, with content databases like Hadoop. My colleagues tell me that I always say something is easy, when someone asks if we can do this or that. I mean that the architecture of the application makes for flexible integration, so you don't have to make loopholes around it to implement a certain behaviour.

TP: *How does Ally-Py handle databases?*

GN: Unlike Django, for instance, our system doesn’t have its own ORM [object relational mapper]. We just have the container and the REST framework. So we use SQLAlchemy, which is very widely deployed, by Mozilla, Yelp! and Reddit among many others.

SQLAlchemy accounts for almost 90 per cent of the code in the plugins that we have written so far. You don't need to actually understand our framework in order to use it. There are just simple rules, like learning to write proper APIs. The rest, like writing metadata for table maps, and then implementation, is SQLAlchemy. That's why I think Ally-Py has a good chance of being widely adopted, because if you know SQLAlchemy then you're good to go.

We can also integrate with Django for using a database. But in my opinion SQLAlchemy is much cooler and also more enterprise-level. I think that the SQLAlchemy community will enjoy what we created. We are providing a platform for REST and also containment, via the dependency injection stuff.

TP: *The implementations at the moment are Print Desk and Live Desk, yes?*

GN: Everything is Superdesk, and then we have the parts within it. For instance we can have Live Desk and Print Desk in the same application. Overall that will be Superdesk, which can cover anything from newsroom software to radio software like Airtime. The main advantage is that if your organisation starts off being newsroom-based, but at some point wants to expand into a new venture, you just install the plugin for that, but your user management and so on will remain the same. You can pool content using the same media archive, for instance your radio station can look over the articles that your newsroom wrote before they are published.

TP: *Has this framework been used in a production environment yet?*

GN: The first organisation to use Ally-Py in a production environment was TagesWoche, a newspaper in Basel, Switzerland. TagesWoche launched with Sourcefabric’s open source content management system Newscoop in October 2011, and they needed to integrate Newscoop with their existing Adobe InDesign-based print production process. So we used Ally-Py to write Print Desk. This allows them to manage their workflows, keeps track of their content, and export data from InDesign to Newscoop. They are using it heavily now.

Print Desk will be migrated to the current version of Ally-Py. We’ll use this opportunity to redesign various elements. Currently Print Desk is using the same filesystem as the journalists, so if a journalist changes the name of a file that can affect the application. In the redesigned system, all interaction with content will be done through the Print Desk interface.

TP: *If someone’s interested in getting to know Ally-Py, where should they start?*

GN: I’d encourage people to have a look at the existing implementations, and especially the work we’re doing on Live Desk and Superdesk. Developers can go ahead and test Ally-Py for themselves. The [Sourcefabric wiki](https://wiki.sourcefabric.org/display/NR/Superdesk+Home) has instructions for [installation and getting started](https://wiki.sourcefabric.org/display/NR/Ally-Py+Installation), and there is also extensive Sphinx-generated [technical documentation](http://edge.sourcefabric.org/livedesk/api-doc/).