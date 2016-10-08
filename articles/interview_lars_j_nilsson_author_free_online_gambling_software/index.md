---
nid: '3776'
title: 'Interview with Lars J. Nilsson, author of free online gambling software'
authors: 'Tony Mobily'
published: '2012-06-08 6:21:14'
tags: 'gambling,interview,cubeia,firebase'
license: verbatim_only
section: interviews
main_image: main.jpg
listed: 'true'

---
Not long ago, after giving a speech about free software I was asked by an audience member whether the free software community had come up with free (as in freedom) gambling software. I answered "no", and... I was wrong. A bit of research told me that there us such a platform: that's [Cubeia](http://www.cubeia.com/)'s Firebase. Yes, it's fully free software/open source, the real deal. I couldn't resist: I asked its founder (and software engineer) for an interview. So, here we go!

**TM: Hello Lars. Can you please introduce yourself?**

My name is Lars J. Nilsson and I'm the Executive Vice President of Cubeia Ltd. I'm a autodidact programmer and lunch time philosopher who slipped away from a career as an opera singer into the equally confusing world of IT. In 2006 I ended up in Stockholm working at a poker network as a server developer, mostly dealing with memory, concurrency and performance issues. 

At that time, everyone in the gambling industry seemed to be building their own systems from scratch. If nothing else because they didn't have much choice: whereas other industries, say banking or e-commerce, could use existing software platforms such as the Java web application server, or simple the LAMP stack, there was nothing in place for building a multiplayer server. So if you wanted for example a poker system, you had to start building a socket server yourself. 

So when the poker network we worked on was merged into other networks and we where made redundant we set out to change that, and our main product Firebase was born. 

**TM: So, you basically release a free-software platform for online gaming?**

Yes. Firebase is a multiplayer server which offers a middle layer abstraction API for building [multiplayer games](http://www.bingosweets.com/). A common explanation we use is to compare it with a Java web application server, such as Apache Tomcat or JBoss AS: The application server gives you a layer of abstraction which frees you from having to deal with common concepts and abstractions when you write your application, and so do Firebase. The difference between the two is that a web application is fundamentally a one-on-one session between the server and a client, whereas Firebase adds the concept of a "table" where multiple player sessions gets connected transparently for the developer. 

Firebase also has build-in actions for things you are likely to do on a "table", like "join", "leave", "watch" etc. It has a built-in lobby which uses a subscription model with delta-changes. It provides transparent single threading, ie one process per action and table, without sacrificing performance. And much more. Basically, it allows you to start immediately writing your *game* as opposed to you *server*. 

**TM: When you say "platform", what do you mean exactly?**

Here's my own little vocabulary when I speak about Firebase: Firebase is a "platform" for developing games, and includes client side API's in various languages for the network communication. As such it is a "server" as a protocol and client side API's. So far so good. As a game developer using Firebase you write your server side game logic which is deployed in the Firebase server, and your client which uses the Firebase client API's to connect to the server. So a "game" in my vocabulary is what a game developer writes; the compound of server game logic and client code.

**TM: Let's talk about technologies. The server is Java-based. Why such a choice? Why not PHP/Ruby?**

We choose Java out of convenience: It's what we're experts in, and it's what many of the developers we knew where using. We bootstrapped Cubeia from scratch, without any external funding, and one of the reasons we could do that is that we knew exactly what Java frameworks we would use, what patterns to adopt and largely how we'd make it work - even before we started coding.  

**TM: Does that mean that I could successfully deploy Firebase and write my own games without actually knowing Java at all? Or do you still need it?**

You can write your clients in any laguage you want, as of now I know of clients in C, C++, Java, Objective C, Flash, C# and JavaScript. For some of these we have thin client API:s that handles connection, login and sending and receiving events, etc. But the protocol is well documented and there are members on our forums who have successfully ported the client API to other languages and platforms. 

To enable all the client languages we use a library called Styx, which we've released under the Apache License 2.0. It is a simple definition of a protocol in XML format which gets compiled into protocol objects in various languages. The protocol objects then can be serialized in either a native binary format, or as JSON for any WebSocket or CometD client. 

Server side we've added support for the Java VM script engine, so if you want to write your game logic in JavaScript or Ruby or Python etc, that's fine as well. So although the majority of our users use Java on the server side it is not a requirement. However, Firebase supports "tournaments" (globally coordinated game-play across multiple tables) and "services" (Firebase extension points) and these are not yet supported in languages other than Java. 

**TM: So, you could potentially write a game completely using Javascript -- both in the client _and_ in the server?**

Firebase uses an open protocol possible to use in any language you want. So yes, on the client side, you can certainly write your client in HTML5/Javascripy instead of Flash; and also on the server side, you can use Java or some of the script languages. So, Firebase gives you the freedom to pick your language client side _and_ server side.

**TM: What scripting languages do you support server-side, and how is that implemented? Did you have to export the whole API for each language? How do you interpret them?**

On the server it's governed by the Java VM script engine (JSR 223), it comes bundled with JavaScript enabled via an engine based on Rhino, but have plugins for quite an extensive list of languages. It also provides cross language hooks and Firebase will expose it's API via a number of objects available in the scripts runtime context. 

At the moment, any script is interpreted for each event (although the script engine may choose to cache any intermediate forms, or indeed compiled versions of the script). This can be changed, but since not many languages support concurrent programming it quickly gets dirty and we'd rather not try it until there's a clear customer driven demand for it. 

**TM: What's the most common platform games are written in at the moment?**

In the gambling sector much of the back end is written in Java mixed with a fair slew of C# or C++. Client side downloadable "thick" clients is the historic base, and they are bieng replaced by Flash, and increasingly by various technologies to enable devices. Quite a few companies seems to be targeting HTML5 now.

**TM: The platform is released under the Affero GPL license, which means that you cannot change things and put the program online without contributing back. Have people come out with their own games, and given them back to the community?**


We're still early into this little adventure as we didn't open source Firebase immediately, and we're only now picking up momentum. Some of our customers have been happy to contribute code and even if our community is small we are seeing stuff being built, so I'm looking forward to an increase there.

We are seeing a bit of resistance though. From our enterprise customers, who are all in the gambling sector so far, there's a distinct lack of knowledge about this whole "open source thing" and we tend to have to explain it a lot. In this manner the gambling industry is a bit immature, although of course many of the bigger companies have figured it out. 

It's no secret that we looked at MySQL's dual license model when we open sourced Firebase, and as such AGPL seemed like the proper choice.There have been some resistance from the online community as the AGPL is fairly strict, and many would have been more happy with the LPGL or the Apache License. I certainly understand that, and it is quite possible we will loosen it up a bit down the line, but for now I think AGPL is reasonable.

**TM: Have you had to deal with violations of the license?**

Nope. Not yet, and hopefully it's a fair bit away.

**TM: The community edition lately included encryption. What does that mean exactly? What are the actual differences between the free version and the paid ones?**

Encryption was a feature we stumbled a bit with. Originally Firebase did not have support for WebSocket or CometD and thus had to rely on TCP sockets, and hence SSL. But of course Flash doesn't suport SSL over sockets, so we ended up building a "native" Firebase encryption which is basically a poor mans SSL: symmetric session key negotiation over an asymmetric key pair. We included this only in the enterprise version for a while. But then we realised it was stupid: even if you're writing an open source game you will want to secure any authentication, not to mention actions which may possibly determine monetary transactions. So we moved it over to the open source version as well. 

Of course, if you're writing WebSocket or CometD clients you can use your standard Web certificate to enable HTTPS communication. And likewise for any client language with native SSL support. 

We have three licenses for Firebase. The "community edition" is released under AGPL and is a single server instance. The "standard edition" is equivalent with the community edition but replaces AGPL with a proprietary license and is intended a low step-in for community- or indie developers. And finally the "enterprise edition" which is only available under a proprietary license and adds full transparent clustering: high availability, transparent fail-over, and all the bells and whistles thereof. 

Having said that, if someone would come to me with a cool open source project that for some reason required transparent clustering, I'd likely answer: hell yeah! We love the fact that people all over the world is using Firebase and if our license schemes would strangle someone then we're doing it wrong. 

**TM: When you read about online gambling platforms, the main thing that seems to come up a lot is "dealing with a _lot_ of clients at the same time". A lot of industries out there would look at you with envy... is that a sign of this market being just huge, and with huge potentials? If somebody installs Cubeia and does everything right, developing great games, are they likely to get tons of connections and users?**

Some of the focus on scalability is the fact that in gambling each event is potentially a monetary action and it's hard to discriminate when you build your system. In that sense it is more like banking than, say, social gaming. For example, some of the new NoSQL systems use an "eventually consistent" model, but that wouldn't work in gambling as a fail-over followed by a dirty read would be bad if there's a few hundred thousand chips in the pot. In real life this is obviously an edge case scenario, but I think it helps to explain why there's an emphasis on scalability. 

Another thing to consider when we talk huge systems is tournaments: Firebase has built in tournament support that can span entire clusters. Which means you can run your giant free for all tournaments with only a small hassle. And this is rarely the case in the social arena. 

So how high does Firebase go? he scalability numbers look good, but I can't answer that question coherently: we haven't had the hardware, the time nor the business need to drive it up the stars. We'd loadtested up to 40,000 poker players on a small and cheap cluster of pizza box machines, and hey: that's enough for me. 

And obviously you need a great game to get a great number of players.

**TM: What games do you provide "out of the box" with Firebase?**

That one was easy: Not a single one. Firebase is a server to deploy your games on, it's for you as a developer to take and run away with to create your own awesome games. But we are filling up with examples and even complete games as fast as we can: we recently open sourced our own poker implementation, there's a Kalaha implementation in the wild, and our Wiki contains the usual quick starts and the almost mandatory TicTacToe implementation. 

If a bit of shameless self-promotion is allowed, I'd say that our "Quickstart Extreme (Not for the faint hearted)" which can be found on our Wiki is brilliant: any developer with some basic Java- and Apache Maven knowledge gets a full-blown server with a skeleton project and a working Flash client up and running in literally a few minutes. After that: just start hacking!

**TM: So, what's coming up in the future?**

Having just finished Firebase 1.8 which added HTML5 support in the form of JSON packaging of the Firebase protocol and WebSocket and CometD transport, we've had a little breather and 1.9 is not set in stone yet. One thing that is likely to go in is hot deploy: to enable developers to patch a running Firebase instance without restarts. The architecture have been prepared for this from day one, so it will be good to finally get it in. 

And then? Well, pre- and post processors for any actions would be cool. So would annotation support for our various archive formats. Or pehaps a more generic form of lobby subscription? Fully featured Eclipse and NetBeans plugins would be awesome as well. Support for the Spring framework is long over-due (although we do support dependency injection via Guice). Distributed Firebase services across a cluster would be useful. Direct support for Java web service annotations on Firebase services. And the list goes ever on and on. 

But before we get there we'll make sure 1.8 is stable, and support our forums and current customers. 