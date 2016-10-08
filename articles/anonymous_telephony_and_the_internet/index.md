---
nid: '1598'
title: 'Anonymous telephony and the internet'
authors: 'David Sugar'
published: '2006-06-13 9:04:44'
tags: 'telephony,voip,gnu-bayonne'
license: verbatim_only
section: end_users
listed: 'true'

---
I had an interesting conversation with Daniel Olivera from [Ututo](http://www.ututo.org) last week, although he perhaps didn’t perceive it as that. Mostly it involved trying to get some video feeds working from here and Italy on the radio ututo server in Argentina. But from that process I have come to think about how worthwhile it would be to have fully open and anonymous telephone servers.

Most people who develop and use VoIP do so in ways that really just emulate 19th and 20th century provider centered telephony concepts, and carry them over to telephony over local networks and the public internet. In theory, we should all be running around today with universal public SIP: URIs that we can use to call each other, just like we have public email addresses, but in practice VoIP is still tethered and tied to service providers, and this is in part enforced by some misapplied aspects of the SIP standard itself.

For example, to enable people to call a generic SIP: URI, I would have to register it somewhere. That is simple enough. We have DNS name servers that resolve names to IP addresses for the internet as a whole, and we have SIP registrars, which resolve URIs to dynamically located SIP endpoints, so that they can be anywhere and people can still find them by the common URI. So far, so good.

To call a SIP device this way, you typically go through a proxy with a public ip address which then uses the registrar information to redirect or proxy forward the call. Of course, when you try with most SIP servers, you are asked for proxy authentication credentials; hence, you have to have an account to call someone else. This of course defeats the purpose of being able to be generically reach someone by their SIP URI, since you must now also be registered with the same server (or service provider) to call someone else. This to me seems very terrible.

In point of fact, the SIP server, like a web server, can accept an anonymous inbound caller. It can take the call as is anonymously, or it can return a 401 or 407 error, requesting an authentication header from the calling party. However, this means that if you allow someone to call in anonymously, you cannot also have users that are registered, because there is nothing in the initial transaction to tell the server which callers are going to prove to be registered users and which are not in the initial transaction, and so you cannot mix users who have registered their locations with anonymous callers trying to reach them.

Of course this problem wouldn’t exist if when a user calls through the server he presents what he thinks are his credentials first, and only those who are anonymous or have no registration/proxy information for the destination server just do not present any authentication. The server can then decide if it will accept anonymous callers as well, or only those it can authenticate, and will know which are requesting anonymous access and which are requesting authenticated access. While the SIP standard can actually be made to work this way, no clients support this. They do anonymous unauthenticated requests first, and only when that returns an authorization required, they then return an auth header or drop off. Changing all the existing clients to behave differently seems out of the question.

I had actually worked out a methodology to enable anonymous callers with [GNU Bayonne](http://wiki.gnutelephony.org) which was part of last week’s release, without breaking any SIP standards. This involved treating the host part of the dialed sip destination URI as something like a named virtual host in a web server, and therefore allowing some domains to access the proxy anonymously, and other domains to do so authorized. When callers come in through an anonymous URI, such callers are truly anonymous, and can only call someone that is registered to the server. I also like the idea of making it possible to receive calls without requiring someone to disclose who they are and without forcing them to register with my server to do so.

That solution did not, however, allow anonymous callers to also register themselves to receive calls. What Daniel has made me think about is why it is important to empower people to anonymously create registrations and enable themselves to also receive calls, rather than just making it possible for people to receive calls through public SIP URIs. Hence, I believe it would also be useful to have a public SIP resource which requires no authentication at all even for registrar functions, that is which enables truly anonymous calling services, much like, for example, how IRC is an open service available from many places today.

