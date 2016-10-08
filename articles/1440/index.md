---
nid: '1440'
title: 'Interview with Kay Ramme of the OpenOffice.org UNO project'
authors: 'Maria Winslow'
published: '2005-12-10 21:30:28'
license: verbatim_only
section: interviews
listed: 'true'

---
Universal Network Objects (UNO) is an interface-based component model that is part of [OpenOffice.org](http://openoffice.org). UNO allows for interoperability among different programming languages, object models, processes, and machine architectures. UNO works over local networks or the internet.

Kay Ramme is the UDK project owner and Sun Senior Technical Architect for OOo and StarOffice. I recently asked Kay to tell us about new efforts to modularize the OpenOffice.org office suite and to make its component model available as an independent entity.

**MW: Kay, I understand that this initiative is based on the Universal Network Objects (UNO). Can you begin by describing UNO?**

KR: UNO is a component model in the classic sense. It can be compared to MS COM/D-COM or CORBA, or Mozilla’s XPCom. A component model supports the separation of implementation entities into different “components”. These components are typically designed to be easily reusable, eventually leading to an architecture with ideally no redundant implementations. This may be compared to Lego, where you also have a set of basic building blocks, which you put together to create bigger blocks, and so on.

Compared to other component models, UNO has advantages in different aspects, which make it unique in its functionality and flexibility. Just to name some things, UNO is cross platform (all OOo platforms, e.g. Windows, Linux (various), Solaris), language agnostic (it has bindings for various languages (various C++, Java, Python)), fully multi threaded, is remote transparent, without any overhead in case of co-location, supports exception handling.

**MW: What was the thinking behind the decision to factor it out?**

KR: It was mainly because of customers requesting it. Every once in a while, I would say once a month or so, I receive requests from people asking if they can use UNO solely, without the need to install the full OOo office suite. Until the URE had been factored out, I always had to answer that UNO certainly can be used without OOo, but the only way to install it, was with OOo, it wasn’t available as a separate package.

**MW: Is it true that an anonymous donor is sponsoring this effort?**

KR: Yes, this is indeed true. One day I got an email from a company, again asking for using UNO standalone. As always, I answered that it was certainly usable without OOo, but unfortunately not independently installable. This company had already done a competitive analysis, finding UNO to be the only component model fulfilling all their requirements, while still providing a good enough performance. So, they asked if there was somebody who could help them factoring UNO out and could also ensure, that the changes would be contributed back to OOo in an OOo compliant fashion. Independently of being a Sun employee, I knew, that this work could be best performed by me or one of my Sun colleagues, as nearly all OOo and UNO knowledge is concentrated here in Hamburg, Germany.

**MW: What are your plans for UNO over the next few months?**

KR: We’ll have a new threading framework. The UNO Threading Framework will ease the development of UNO components significantly. Actually, most developers will be freed of the burden to implement in a thread safe manner. Details are still somewhat in flux, but, roughly speaking, you will be able to declare your component to be either `THREAD_SAFE` or `THREAD_UNSAFE` or `THREAD_AFFINE`. For most components `THREAD_UNSAFE` should be the right choice.

The Threading Framework is also planned to be applied to OOo itself, to clean up thread related issues, finally leading to a thread safe API, while probably making OOo slightly faster and providing a solid foundation to introduce new threads were reasonable and necessary.

Versioning and signing of UNO components will allow the upgrade/downgrade of components, while ensuring the component's authenticity.

IDE support for UNO is going to ease UNO component development tremendously, for example by providing component wizards, installation helpers etc. This allows us to address a much bigger share of the developer community.

And finally, we’re making changes to the process lifecycle. Currently, a (UNO) process lives as long as the main or first thread. This is not ideal, especially when exporting objects out of this process to other processes. With a more refined process life cycle, we plan to keep processes alive as long as there are threads running. For example only letting a process die, after the last exported object has been released.

**MW: Thanks for speaking with us about UNO!**

