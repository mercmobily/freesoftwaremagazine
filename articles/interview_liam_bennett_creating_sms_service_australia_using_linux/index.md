---
nid: '3094'
title: 'Interview with Liam Bennett: creating a SMS service in Australia using GNU/Linux'
authors: 'Tony Mobily'
published: '2009-01-25 5:10:46'
tags: gnu/linux-as-a-key-to-open-business-doors
license: verbatim_only
section: interviews
listed: 'true'

---
I am always interested when a company uses GNU/Linux to create really, really useful services. When that company is in your own town, and I get to spend time with the person who created it and made it successful, I get even more excited! Liam Bennett manages eConfirm Inc, [an Australian company that offers business SMS text messaging services](http://www.econfirm.com.au/), based on GNU/Linux. Here's what Liam has to say about his experience with GNU/Linux and free software in general.

**TM: Thank you for answering my questions, Liam. You are a boot-strapping a company using GNU/Linux. Can you tell me what you do, in simple words?**

<!--break-->

We provide a two way SMS system for business and corporate users. This service has been built using LAMP technologies (GNU/Linux, Apache, MySql, PHP) which we initially looked at for prototyping only but proved to be so solid we kept using it for our production system.

The service is used for a variety of tasks such as a field staff communications, automating appointment reminders, automating health / safety checks and system monitoring.

**TM: When did you decide to use GNU/Linux rather than Windows? Was it right from the start?**

We moved into the GNU/Linux world when we signed up with our first Web Hosting company. They had the standard Apache/MySql setup, and I guess we jumped onto it initially as a prototype staging platform because it was free. Since then we have built our experience with it up and realise how powerful this platform can be in a production environment... and it’s essentially still free!

**TM: You mention on your site that you use LAMP. What other pieces of free software do you use?**

We also use a variety of free widgets on our website. A few to mention are an AutoSuggest widget by BrandSpankingNew, JonDesign's SmoothGallery for our training modules and a DHTM calendar by DynArchLIB to name some.

We also use free software for our source control (Tortoise SVN) and VOIP telephone system (ASTERIX). However, to save time and focus on our own software we have recently switched these to a hosted solution.

**TM: Did you end up using some non-free libraries?**

Yes we did, a library called Active Widgets is used to manage an active live updatable grid on our website.

**TM: Let's talk about the technical side of things. What does your program actually consist of?**

Structurally the system consists of a web application layer being backed by a hierarchy of PHP classes and a MySql database. We are slowly converting the web application layer into PHP classes and also plan on utilizing Drupal for the external markeiting website in the future.

**TM: Did you have any technical challenges, while writing the front end or the back end?**

We have continually learnt and improved on the products from day one. Our development team already has a pretty rich application development background, having each developed software for over ten years. The new challenges for them have been in learning the ins and outs of the LAMP platform and developing the applications in a cross browser environment.

One of the right choices we made from the start was to use a dynamic database structure in the MySql backend. This structure was learnt from previous experiences from one of the developers working with an enterprise level software product that was used by over 15,000 clients. Using this structure has allowed us to build new features into the system quickly and reliably, allowing us to rapidly respond and deploy new customer requirements.

To assist the sending and receiving of messages by the hundreds to thousands per minute we have utilized a PHP library called CURL. CURL provides a robust and safe method of sending and receiving data asynchronously from remote sites. Compared to our original methods of doing this CURL has sped up our send and receive processes 10s to 100s of times.

On the front end/application layer the major pain of our development is cross browser compatibility. Testing and deployment is slowed down for us due to the nuances between not only different browsers but different versions of the same browser. So we plan on utilizing drupal in the future and perhaps embedding our applications inside Drupal directly, or using some of the new Adobe technologies for browser application development.

**TM: Have you released any of your software under a free license? Or, are you planning to?***

In a word: no. We don't release our software. But, that's only the first half of the story... the second half gets better.

The software in our applications is all free to use – Web Messenger, Email to SMS and the SMS API. The only thing we charge for is sending SMS messages which we also give a handful of free credits for a new account. We also do extended trials offering many more free SMS messages on a per case basis.

Since we love to be challenged, we are always open to new customer requirements for added functionality. To date we have developed all new requirements free of charge since it gives us an opportunity to improve our product and learn more about the LAMP platform.

An example here is when we were contacted by Fleet Services to build an easy to configure interface into the NavMan system. We built new options into our system and utilised some configurations on the NavMan device, to make it send SMSs through our system when a vehicle crosses configured geographical barriers. This will prove useful for a delivery truck scenario where the delivery truck approaches a store: it can SMS ahead to the person in the loading dock that it is about to arrive.

With good software development resources at our disposal we plan on continue developing new requirements like this for free into the foreseeable future. So, it's not free software as such, but we are definitely making an effort. We are also all for reporting bugs and sending patches for the libraries we use.

**TM: Good luck with everything!**
