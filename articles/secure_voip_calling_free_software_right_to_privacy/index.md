---
nid: '1830'
title: 'Secure VoIP calling, free software, and the right to privacy'
authors: 'David Sugar'
published: '2006-10-24 23:55:08'
tags: 'free-software,vista,secure-voip,privacy,telephony'
license: verbatim_only
section: opinions
main_image: hide.jpg
listed: 'true'

---
All free nations in the world today recognize certain basic principles, such as freedom of speech, freedom of thought, and the freedom of privacy.  These values that we all share were articulated by and fought for by people such as Voltaire, Jefferson, and Bolivar.  This common heritage of freedom is today under attack by those who wish to turn the clock back on human progress.  We all know that a government that lives in such fear of its own citizens that it must spy on them and claims the authority to do so en-mass and unchallengeable is not a legitimate government of the people it claims to serve.

There is an interesting story about George Washington during the American Revolutionary War.  At one point some of Washington's officers were plotting rebellion against him, and he accidentally received a dispatch that was meant for one of the conspirators.  Having opened it, and read it, he realized what had happened, and then asked the courier to please apologize because the letter was not meant for him.  He choose to act as best he could in a manner as if he had not read the letter.  For Washington understood that even at a time of war, there are certain ideals that must never be sacrificed, otherwise even if victory was achieved, it is not worth the price of a nation nobody would wish to live in.

With these thoughts, we chose, on the first Monday of this October, to release a stack for secure VOIP calling, as free software developed through GNU Telephony, a loose organization of developers who specialize in free software for telecommunications.  We accomplished this by creating a free software stack that implements Phil Zimmerman's ZRTP, as well as the Secure RTP spec.  This is now part of the GNU RTP Stack, ccrtp.  We chose to make this available for immediate use in the most compelling way, by having available at the same time, a complete secure softphone client anyone can also download and use and which implements the secure calling features in an easy to use manner.  This client was the Twinkle Softphone client, developed by Michel De Boer, and modified with his help to meet this goal in time with our initial release.

Secure calling VOIP using ZRTP operates much like ssh in concept. Professional VoIP phone services used for businesses are some of the most secure available. The keys for communication are generated locally, rather than using an external certificate authority, hence preventing weak or poisoned certificates which SRTP potentially allows.  Fingerprint session signatures are shown and cached much like the ssh host fingerprints, so that one can determine if there is a man in the middle decrypting at one end and encrypting to another.

What we have developed does not interfere with lawful police investigations, since the end point can still be compromised with physical access, presumably executed as part of a lawful and judicially supervised court order.  But it does prevent arbitrary and mass spying on what people say, which must come to an end before all other freedoms are lost.  With additional technologies including tls secured SIP and anonymizing connection proxies, it is possible to also reduce associative information signal that intelligence so desperately wishes to mine, and that is a goal of later phases of this project.

Since it is free software, anyone can download and use it.  Since it is offered as a library, it can be used to produce applications, like Twinkle, that can perform secure communications by design, rather than as an afterthought.  This technology is here to stay. There are enough people who have set it up now around the world, including some I personally showed. The source is available and mirrored worldwide.  Binaries have been build and now distributed in Debian. Much of that was all done very rapidly and early on at the start of the month, the rest while I was in Maturin speaking at the IVth International Free Knowledge Conference, which I will write about next week, to deliberately make sure it was immediately usable and widely disseminated.

This technology we are bringing to free VOIP software was of course first proposed, in a proprietary form, and as an external proxy known as zfone, by Phil Zimmerman.  Much of the work in developing secure calling in the GNU RTP Stack was done by people like Werner Dittman and Federico Pouzols, and with lots of Michel De Boer from Twinkle.  Whether you are a head of state wishing to communicate in private, a union organizer within a company, or simply talking to your family and friends, you have a basic right and expectation of privacy.  We intend to do everything in our power to help further that goal.

Further information can be found at [GNU Telephony](http://www.gnutelephony.org)
