---
nid: '3039'
title: 'OpenSocial overview: how opensocial works, and how to integrate it with your CMS'
authors: 'Terry Hancock'
published: '2008-11-05 7:48:40'
tags: 'cms,google,javascript,open-social,shindig'
license: verbatim_only
section: opinions
listed: 'true'

---
So, you've heard about Google's free software release of its Gadgets server, and the new "Open Social API". And gosh, wouldn't it be nice if you could provide this technology to your users with your favorite free software Content Management System (CMS)? Since the documentation that comes bundled with Google's release will probably give you simultaneous whiplash and vertigo (with a large side of frustration), here's a breakdown of the problem so you'll know what you're up against, how to go about solving the problem, and plenty of free software resources to help you get there.

<!--break-->

# What you are expected to know

I'm going to assume that you are familiar (hopefully experienced) with programming in _some_ programming language; that you know the basics of HTTP; and that you are familiar enough with your favorite Content Management System (CMS) to be able to create extensions for it (this is a tutorial for developers, not end users).

I am _not_ going to assume you are using any _particular_ programming language or CMS. There are plenty of other platforms out there, and I'm not about to research them all. So the important thing, is simply that _you know your own CMS_: you will need to be able to provide HTTP and RPC callbacks to match the given specifications.

As Open Social and Google Gadgets (on which Open Social is based) are very Javascript-heavy technologies, you will also need a working knowledge of Javascript, although we're going to try to keep the Javascript at arm's length as much as possible, since it's the CMS back-end that we're going to focus on here. Nevertheless, you will need to understand some basics about how Javascript is deployed, what it can and can't do, and possibly how to make small modifications to an existing Javascript library to suit your needs.

=TEXTBOX_START=About Google Gadgets and Open Social=

Not sure what "Open Social" or "Google Gadgets" are?

In very brief terms, Gadgets are clientside Javascript applets that can run inside of a specially designed container. In principle, the user can select a collection of gadgets and let them run independently from each other, just like applets on your operating system desktop.

Open Social adds to this mix a unified database query interface designed for "social networking" applications—that is to say, applications that keep track of "friends" or "fans" or "contacts" or other representations of relationships between people and also store various kinds of contact and personal information.

For more general information about the technologies, see:

[Open Social](http://code.google.com/apis/opensocial/)

[Google Gadgets](http://code.google.com/apis/gadgets/)
=TEXTBOX_END=


# Fitting your CMS into the Open Social picture

We are _not_ going to discuss how to make an Open Social application, but you need to know who the client is if you're going to build a server.

An Open Social application is essentially a Javascript program that runs in a "container" which provides the "Open Social Javascript API" via two Javascript namespaces: "opensocial" and "gadgets".

=IMAGE=open_social-where_code_runs.jpg=An "Open Social Application" runs inside of an "Open Social Container", which provides the "Open Social Javascript API" as well as pass-through support (via standard Javascript libraries) to the "ReSTful protocol API" and "RPC protocol API" that are used by the container to communicate with the "Open Social Container Server"=

The "container" is an embedded Javascript interpreter. It may be a webpage in a web browser (in which case the API is provided by Javascript modules loaded by the page) or it may be a stand-alone desktop application (like Google Desktop), in which case the API namespaces may be built into the interpreter.

The important point is that the Open Social application doesn't care about this: it just needs to find the "opensocial" and "gadgets" namespaces, and call standard functions and methods within them. It is this insulation from the environment, of course, that makes Open Social applications highly portable.

Google's "Gadgets" are a kind of standardized applet. They are specified by an XML file which provides everything needed to build the applet—something Google's documentation calls "rendering". A gadget server needs to provide this "rendering" code to turn gadgets into executable Javascript code (and also HTML templates), and then to run them.

This might be a good point to mention that you are _not_ going to create a "gadgets server", though you will need to use one.

For that matter, you are not even going to implement the "Open Social Javascript API". That is something that runs on the client side. You may, however, want to deploy such a library inside of a webpage served from your CMS.

In principle, this Javascript library could work any way the designer wants it to. It could access only information on the local client, for example. Or it could have a fixed database that you can't alter.

But in order to be useful, it's going to have to look up information over the internet. It will do this by making use of web API calls, conforming to either of two possible Google-defined protocols: the "Open Social ReSTful Protocol" and the "Open Social RPC Protocol" (technically, calls made over the internet are "protocols", but the word "API" is also used for them here and in Google's documentation—they are the same thing).

Because Javascript in web browsers can only make calls back to the _originating_ server, it will generally be the case that all of the data look ups will simply "call home" to get information from one of these API protocols running on the server. The server, of course, has no such limitations, and it can make calls to other servers to collect whatever information the client has asked for.

It is mainly these two web protocols that you will have to create in order to make your CMS into an "Open Social Container".

Why _two_ APIs? Well, that's got to be design by committee, in my opinion. Basically, they didn't want to restrict the application developer, so Google decided that containers must provide both. To make matters just a little more fun, messages transferred via either protocol must be available in three standard data formats: "JSON", "XML", and "AtomPub".

Also, of course, in order to be useful, you will have to map your internal object model onto a schema that makes sense to Open Social. It's probable that you aren't far off now (the principle object in Open Social is "people" which probably maps to your "users" or "members" objects), but some adaptation is inevitable. Because there are essentially _six_ flavors of callback ("ReSTful" and "RPC" for each of "JSON", "XML", and "AtomPub"), you will clearly want to structure your program as an internal object model, with pluggable managers to provide these six different "views" of the same objects.

Hopefully, this brief introduction will reduce the vertigo. Now we'll get down to specifics.


# Steps to create your Open Social container environment

I'll break the problem down into the following six steps:

1) Implement an object model that produces the correct schema for People, Activities, etc, as implied by the Open Social data model

2) Implement a Restful API (conforming to the spec), to access this information

3) Repeat for the RPC model

4) Install Shindig to provide a Gadgets server

5) Serve the Shindig Javascript libraries from your CMS

6) Implement a page generated by the server with gadgets chosen by the user already rendered into it, as well as the Javascript libraries they need to run. Technically, this _page_ will be the actual "Open Social Container"


# STEP 1: Create the schema and an object model to support it

The Open Social API doesn't define an actual schema or object model that you must use. However, without one, it's hard to make sense of the concept. So I will propose a design that should make it easy to implement the API you need. You will need to adapt your CMS to provide access to the same information, so this will hopefully help you, even if you don't follow the model to the letter.

=IMAGE=open_social-ER_diagram_1.jpg=Figure 1: Entity-Relationship diagram of the Person entity. This is a breakdown of the possible contents of a Person record. Note that despite a large number of possible fields, only two are actually required=

The most important entity in the schema is the "Person". Open Social is (unsurprisingly, I hope) all about people: their needs, interests, and activities. It can extend to their professional lives, personal lives, or even their sex lives, depending on the purpose of your site. Only two "fields" are absolutely required: "id" and "displayName", although there wouldn't be much purpose in using Open Social if that's all you want (this is the niche for the simpler [Open ID](http://openid.net/developers) spec).

After this, there are 21 optional (but recommended) fields, and another 38 more specialized "other" optional fields. Some of these fields can be plural. For those, the field will need to return a data structure which allows the individual elements to be read. For the singular fields, just the single element will need to be returned.

Most of the elements are just string data, but a few are themselves data entities, as illustrated in figure 1.

Full names can simply be strings provided by the "formatted" field of the "name" element, and I encourage you to do just this, unless your database already contains _self-marked_ name elements.

Because of cultural biases, it's easy to underestimate the difficulty of parsing people's names. Many Americans are surprised to find that "Sasha" is a boy's name or that Takahashi Rumiko's family name is "Takahashi". Even lexing the words into individual names is hard as illustrated by names like "De Broglie" or "Van Rossum". So don't attempt to break names down automatically, or you'll most likely just annoy your users.

A similar situation applies to addresses, and Open Social provides a "formatted" field for both entities.

=IMAGE=open_social-ER_diagram_2.jpg=Figure 2: Person along with the other Open Social entities=

Figure 2 shows the attributes of the other entities you will need to keep track of. A group is simply a tag associated with a collection of person entities, and AppData is essentially a "cookie" system: applications can store name-associated data and retrieve it through this mechanism. Messages are optional, but if you support them, they can be used to represent private messages, posts, or emails.

The most nebulous entity here is probably "Activity". It may be more instructive to think of some examples, such as: a photograph or song uploaded by the user or an article written by the user.

# STEP 2: The ReSTful API

"ReST" stands for [Representational State Transfer](http://en.wikipedia.org/wiki/Representational_State_Transfer), a fairly vague and expansive term which refers to the "stateless" way in which you are accustomed to "simple" HTML web sites working: each request contains all the information needed to communicate to the server, which then returns a response based solely on that and information in a database on the server. There is no concept of "logging in" and "logging out", nor information retained between one request and the next. Authentication is repeated (albeit automatically) on every request.

This system is somewhat inefficient in its use of bandwidth, but is _extremely_ robust, and is credited by many as one of the main design successes of the World Wide Web.

Although it is not strictly limited to such an approach, a ReSTful API can be usefully thought of as a set of URLs which respond with various kinds of information when the clients sends an HTTP GET to the URL, and this is indeed how the Open Social ReSTful API is intended to work.

=IMAGE=open_social-services.jpg=The open social service types, as used in the Open Social ReSTful API=

The Open Social ReSTful API consists of a set of "services" provided by specific URLs. Each one is expected to be capable of responding to requests with data in all of three different representations: JSON, Atom Pub XML, and a custom Open Social XML (a parameter in each HTTP request determines which needs to be provided). These formats are completely redundant. Three are provided in order to make the API easier to use for applications with different requirements.

Despite its Javascript origins, JSON ("Javascript Object Notation") is easily the most universally supported of the three, with a wide range of implementations in a wide range of programming language, as can be found on the [JSON web page](http://json.org). You will most likely simply pick the best available library for your preferred programming language (or the one your CMS is written in).

The Atom Publication format ("Atom Pub") is not quite as widely supported, but similar implementation information is available from the [Atom Wiki](http://www.intertwingly.net/wiki/pie/FrontPage), and you will most likely find what you need there. Alternatively, you could adapt a generic XML library, as Atom Pub is an XML format.

Finally, you will probably have no choice but to use a generic XML library to read the custom Open Social XML format. An XSD schema for the format is provided as part of the [ReSTful API specification](http://www.opensocial.org/Technical-Resources/opensocial-spec-v081/restful-protocol), along with the rest of the details you will need to actually implement the interface.

=IMAGE=open_social-request.jpg=The request sent by the container to the container server contains query information and the format that the server needs to use to represent the data=

=TEXTBOX_START=ReSTful Protocol Specification=
Your plan for the code for this section is the:

[ReSTful Protocol Specification](http://www.opensocial.org/Technical-Resources/opensocial-spec-v081/restful-protocol)

This document includes the details for the Representational State Transfer (ReST) based protocol for accessing Open Social information, including the entity, attributes, and relations that were used in the previous section. It also includes the XSD for the custom Open Social XML format, which is one of the options you must support for container queries to your server.

You will also need to refer to the following sources:

[OAuth Specification](http://oauth.net/core/1.0/)

This defines the authentication method used by Open Social HTTP protocols.

[JSON Developer Page](http://json.org)

This provides developer resources (libraries) for support of the Javascript Object Notation (JSON) format in a wide variety of programming languages.

[Atom Pub Developer Page](http://www.atomenabled.org/developers/) and [Atom Pub Specification](http://www.atomenabled.org/developers/protocol/atom-protocol-spec.php)

This provides similar developer resources for the Atom Pub format.
=TEXTBOX_END=

# STEP 3: The RPC API

Now while the ReSTful interface has many advantages, particularly in the areas of robustness, cache-friendliness, and simplicity, it is still very inefficient for highly-interactive applications, and a more natural paradigm is the [Remote Procedure Call](http://en.wikipedia.org/wiki/Remote_procedure_call) or RPC. This interface "pretends" to operate just like a function call in a program, and there are various ways in which it can optimize the transfer of information, by batching queries and preserving state between calls.

=IMAGE=open_social-api.jpg=The Open Social API actually consists of four different interfaces, as illustrated here: the internal Javascript interface provided by the container itself, the two Open Social container-server interfaces, and the Gadgets interface. Note that the word "protocol" is sometimes used instead of "API" for the "across the wire" interfaces, but the words are used synonymously=

This is the interface that is most preferred by developers for new Open Social applications, and it is also interesting in that it is the interface used _exclusively_ by the Shindig Open Social Javascript libraries. This means that, technically, you could cheat and implement _only_ the RPC API for many purposes, although your implementation would not officially comply with the Open Social Specification.

=TEXTBOX_START=Open Social RPC API Specification=

The [Open Social RPC API Specification](http://www.opensocial.org/Technical-Resources/opensocial-spec-v081/rpc-protocol) will be your guide to creating the RPC interface. Much of the process is the same as for the ReSTful API, and you will have to generate responses using the same data formats.

=TEXTBOX_END=

# STEP 4: The Gadget Server

Open Social is based on Google's older "Gadgets" technology, which may require a little explanation, especially for developers used to the "server side compositing" approach of most major content management systems.

Gadgets is a Javascript technology, based on the idea of "client side compositing", which means that what you deliver from your site is essentially a Javascript application, and it is _that_ in-page Javascript application that actually collects the information and renders the webpage.

=IMAGE=open_social-components.jpg=Use Shindig to provide the Gadget server, while providing the container server APIs from your CMS=

You have probably heard of this in the context of "AJAX" development, and of course, AJAX is based on client side compositing.

Gadgets are somewhat odd hybrid beasts, consisting as they do of XML code, with embedded snippets of Javascript and HTML templates as well as metadata. They cannot, of course, run directly on the users' browsers. So, they first have to be "rendered" into useable "HTML blobs" (pieces of HTML and/or Javascript which can be embedded in a larger page). This is what a "Gadget server" must do.

Developing a Gadgets server is a complex task which lies a bit outside the scope of this article, although it might well be a worthwhile task to implement one in your language of choice.

### Shindig

Fortunately, the Apache [Shindig](http://incubator.apache.org/shindig/) project provides the Gadget Server code in your choice of Java or PHP languages (the project welcomes additional language implementations).

=IMAGE=open_social-shindig_source_tree.jpg=The Shindig source tree includes Java and PHP implementations of the Gadgets server, plus the Javascript modules needed by the container and sample code to demonstrate using them=

Your best bet for integrating with a CMS is probably to simply install Shindig to provide the Gadget server on the same computer that your CMS is running on. The alternative would be to implement a Gadget server yourself, but there's very little reason to do that, since Gadgets are such a highly standardized service.

=TEXTBOX_START=Shindig=
You will need to download and use the [Shindig](http://incubator.apache.org/shindig/) package, both to install the software and to study the available examples and source code.

At the time of this writing, there is no actual file release for Shindig, so you will need to use Subversion to check out a copy from the live code repository.

The [Google Gadgets API Specification](http://code.google.com/apis/gadgets/docs/spec.html) defines the Gadget server protocol that Shindig implements. You could of course, opt to develop your own Gadget server.
=TEXTBOX_END=

# STEP 5: The Open Social Javascript Library

Whatever choice you make about the Gadget server, you will almost certainly want to use the Javascript `opensocial` and `gadgets` libraries provided by the Shindig project. These are, of course, free software, and they are designed to work through the Open Social RPC library, using the JSON data format (again, this might provide a short cut, if you are willing to sacrifice complete compliance for applications which stick to the Javascript API for server interaction).

=TEXTBOX_START=Open Social Javascript API=
Although you will probably be using Shindig's implementation, you may want to look at the [Open Social Javascript API Specification](http://code.google.com/apis/opensocial/docs/0.8/spec.html) for better understanding.
=TEXTBOX_END=

# STEP 6: Deploying the Javascript container and application code

This is probably the trickiest, albeit most interesting step. How exactly will your CMS users make use of Open Social gadgets on your site? You'll need to answer this question before you can make it happen, but then again, that's what motivated you in the first place, right?

=IMAGE=open_social-deployment.jpg=Your CMS will need to deploy the container application as a web page=

Although there are other possibilities, you will most likely be using Open Social to implement browser pages which can contain user-defined, user-installable "Gadgets"—third-party programs which the user can use with their data on your website. You will need to deploy a user "container/application" web page containing the Javascript libraries and the user's installed gadgets. 

Shindig includes a number of simple sample container implementations which illustrate how the container page can work. You will most likely want to implement some means of storing and deploying a user's gadgets to be rendered in the container page, using the methods that integrate best with the design of your CMS.

# Opening Open Social

The internet has always been a social phenomenon. New protocols like Open Social are steps forward in giving greater fluidity to that social aspect of the internet and enabling productive contact networks to bring people closer together.

=IMAGE=open_social-hands_on_usa.by.laffy4k.jpg=Open social provides a new enabling technology to facilitate the great human conversation that is the internet (Photo credit: Chris Metcalf / CC-By 2.0)=

This is exactly the sort of software that really _must_ be free software in order to fully work: it's hard to imagine any proprietary solution being effective across so many boundaries and for some many groups of people. The specs are still a bit raw and the software a bit shaky, but it's worth the effort to keep the internet society a free society

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com/community_posts/how_make_open_social_container_server_existing_cms)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=

