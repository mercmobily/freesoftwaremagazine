---
nid: '1881'
title: 'Authenticating on the network'
authors: 'Wouter Verhelst'
published: '2006-11-19 9:00:00'
tags: 'kerberos,authentication,howto'
license: verbatim_only
section: hacking
listed: 'true'

---
Usually, I get annoyed at having to authenticate myself to each and every service I set up; after all, my passwords are the same everywhere, since I make sure of that myself. On Windows, I wouldn’t have to do that; once I log in, Windows is able to communicate credentials to each and every service that asks for them. But something similar is impossible on GNU/Linux, right? Wrong.


# Single sign-on

In fact this communicating of credentials, known as “”"single sign-on"“”, has been possible on UNIX and UNIX-like operating systems longer than it has been possible on Windows. The authentication protocol that’s been in use for Windows ever since Windows 2000—Kerberos—was designed and first implemented for UNIX. In the 1980’s. By now, there are three UNIX-implementations of this protocol: the original MIT reference implementation, a second implementation called “”"Heimdal"“”, and the latest one from GNU called “”"Shishi"“”. With Kerberos, it’s possible to authenticate to SSH, HTTP, IMAP, LDAP, NFS, and a whole bunch of other servers—without unnecessarily entering your password.

So why doesn’t every GNU/Linux distribution out there support Kerberos or single sign-on out of the box? Well, that’s a good question. For one thing, they actually _do_ ; all the necessary support packages for at least one of the three implementations is available in all the major distributions; and more and more protocols get support for Kerberos authentication, even today. It’s just that Kerberos has a bit of a reputation of being quite hard to understand, and rather hard to implement or deploy. This reputation isn’t entirely undeserved; but as you’ll see, it’s not all _that_ hard, either.


# No sprouts for me, mommy!

The main problem with Kerberos is that it’s quite picky about the setup of your network and its systems; you have to get the time of all your systems right, or it will refuse to authenticate. Doing lookup of names on your network has to work; your reverse lookups (converting an IP address to the name with which you refer to it) must turn up a name that resolves to the same IP address you were looking up in the first place. But once you’ve got that right, it all works pretty good. And you’ll have a proper network in most other senses of that word, anyway. Isn’t that nice?


=ZOOM=Once you’ve set up your network so that Kerberos likes it, it’s a proper network in most senses of the word, anyway=

So how does it all work? It’s important to remember that in any Kerberos authentication dialogue, there are three parties: the Kerberos server, the client requesting a service, and the server requesting proof of identity. They all need to have credentials—principals, in Kerberos-terminology—stored in the Kerberos database. Enabling Kerberos authentication in any service usually boils down to four steps:


1. Creating a Kerberos principal
1. Storing the Kerberos principal on the server system so that it can access it
1. Modifying the server’s configuration so that it accepts Kerberos-based authentication
1. Configuring the client so that it tries Kerberos authentication

In most cases, that’s it. Usually you’ll be able to configure client-software on a system-wide basis; and in most (if not all) cases falling back to regular password-based authentication is possible, too. The hardest part in setting up Kerberos authentication is, usually, to set up the initial Kerberos realm on the Kerberos server. But that, you have to do only once. Let’s do that now, shall we?


# Getting your hands dirty

What follows is a pretty hands-on explanation of how to set up a Kerberos realm. We don’t explain everything; but if you want it all working _now_, the Kerberos distribution comes with pretty good documentation (see below). The example works on Debian; it should also work on other distributions, but you may have to change some of the details.

To make sure Kerberos likes your network, it’s a good idea to install `ntpd` which will fix the timing issues. As for the name resolving issues, try `ping localhost` ; if that returns things like


=CODE_START=
 64 bytes from host.example.com (127.0.0.1): icmp_seq=1... 

=CODE_END=

while running `hostname --fqdn` returns `host.example.com`, you’re all set. If not, fiddle with `/etc/hosts` until it does. You should also try to ping your hosts from different machines, and the result should be similar.

With that out of the way, you should now install the server-side Kerberos software on the machine that will serve as the Kerberos server. With that done, run `kdb5_util create -s`, which will ask you a few questions and then create your Kerberos realm. Next you should create an ACL file for the kdc, which will tell the latter who can create and/or manage Kerberos principals. An easy (and yet safe enough for most cases) ACL file would look like this:


=CODE_START=
 */admin * 

=CODE_END=

You will need to store that file as `/etc/krb5kdc/kadm5.acl`. Now it’s time to start the kdc ( `/usr/sbin/krb5kdc` ) and the admin server ( `/usr/sbin/kadmind` ). Next, run `/usr/sbin/kadmin.local` to create the initial principals:


=CODE_START=

# kadmin.local
> addprinc root/admin@REALM
[...]
> addprinc wouter@REALM
[...]
> quit
# 

=CODE_END=

Both will ask you to enter a password; it’ll be easiest for you to remember if you just use your own password for that. Obviously, you should also replace REALM by the realm name you’ve created.

By now, you have a fully operational Kerberos realm. You can play a bit with `kinit`, `klist` and `kdestroy` (read their manpages). Next will be to set up the different servers so that they support Kerberos authentication, followed by the clients; and to finish it all properly, we should also configure PAM to authenticate against the Kerberos server rather than `/etc/passwd`.

But that’s for another time.


# More information

If you want to find out more about Kerberos, you should go to [the Kerberos website](http://web.mit.edu/Kerberos/) at MIT. Additionally, the MIT Kerberos source ships with good documentation for the unpatient on how to set up Kerberos-enabled servers. Try running `info krb5-install` to get a taste of the goods.

