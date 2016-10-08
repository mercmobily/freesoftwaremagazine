---
nid: '3684'
title: 'FOSDEM 2012, Hardware Security and Cryptography, Call for Papers'
authors: 'Tony Mobily'
published: '2012-01-14 4:49:27'
license: verbatim_only
section: announcements
main_image: main.jpg
listed: 'true'

---
[FOSDEM 2012](https://fosdem.org/2012/)  will take place in Brussels, the heart of EU. 

This is a call for talks and presentations that will take place in the Security devroom at FOSDEM 2012. Do you develop software that can do HTTPS queries? Can it use keys and certificates on a smart card? Does your service use RSA keys for signing? Can it work with hardware keys? Are you interested in protecting your private keys like Three Letter Organizations or do you want to roll your own proper PKI with a smaller than five or six digit budget? How can we make cryptographic hardware Just Work with any application that uses crypto? The devroom is the place to share experiences and learn.

<!--break-->

In 2012, as almost all EU countries have either ongoing rollouts of national eID cards or are planning it, many people will find yet another smartcard in their wallet. Cards that don't contain virtual credit but private keys and certificates that can be used for many purposes in the online world. FOSS has an important role in the overall eID infrastructure, either on the server side inside Apache's mod_ssl, on the client computer inside Firefox as OpenSC PKCS#11 module or hidden in the infrastructure, issuing the certificates from an EJBCA server, which is administered over SSH.

Security in the online world matters and one of the most common tools for it is cryptography and PKI. The chain is as strong as its weakest link and for PKI, the security of private keys matters. The integrated and widespread nature of PKI implementation makes it difficult to get it perfect, but one must not stop trying.

Security / hardware crytpo devroom will take place on Saturday, 04.02.2012. The workshop should take place on Sunday, 05.02.2012, and should include demonstration and hacking sessions. The expected audience will range from crypto library developers to desktop GUI creators, from hardware driver makers to business software providers. Two main themes are cross-application (hardware) interoperability and user awareness/education, but if you have anything interesting to share that deals with security or cryptography, don't be bounded by the main topic. Don't be limited with a traditional "presentation and questions" format, hands-on workshop format is also welcome.

HOWTO:

* Subscribe to [security-devroom@lists.fosdem.org](https://lists.fosdem.org/mailman/listinfo/security-devroom)

* Send a short talk description, its duration, your bio/affiliation and contact information to the list and/or add it directly to the [OpenSC wiki](https://www.opensc-project.org/opensc/wiki/FOSDEM2012)

  * There are 5 up to 1 hour slots (with 10 minutes for Q&A and 5 minutes for organizational time included, so 45 minutes max for a talk)

  * You don't have to fill the entire slot, 30 minute slots with ~20+5+5 minutes format are also OK

  * FOSDEM is for FOSS developers, keep this in mind when planning your talk.

* The deadline for submissions is 20.01.2012 23:00 UTC

* The final schedule for the day will be fixed no later than 25.01.2012

* If there will be more submissions than there are time slots, then:

  * you may be asked to jam your presentation into a shorter (20 minutes) format

  * the final list will be fixed by subscribers of security-devroom@lists.fosdem.org list 

Please forward this announcement to any relevant FOSS project mailing lists you're subscribed to.
