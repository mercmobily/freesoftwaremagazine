---
nid: '1915'
title: 'Kerberos, final bits'
authors: 'Wouter Verhelst'
published: '2006-12-03 9:00:00'
tags: 'security,kerberos,authentication,howto'
license: verbatim_only
section: hacking
listed: 'true'

---
[Two weeks ago](/blogs/kerberos_authenticating_on_the_network), I explained how to set up a Kerberos realm; and [last week](/blogs/securing_nfs), I went on to describe how to actually do something useful with it by doing Kerberized NFS. But there’s so much more interesting stuff that can be done with Kerberos, and it would be a shame to ignore those.


# GSSAPI, SASL, and negotiation

Before I can go ahead and detail everything Kerberos, it’s important for you to understand a few things. A server that requires authentication cannot just blindly assume that any client it will talk to will be able to do Kerberos authentication. Similarly, a client cannot assume that any server will understand its Kerberos babble, even if it thinks the server has a principal. As a result, there must be some level of _negotiation_ between the server and the client. If both understand and want to talk Kerberos, then there can be Kerberos authentication. If they don’t, well, then there can’t be any Kerberos authentication.

However, this is outside the scope of the Kerberos protocol, which only deals with handing out tickets. How the client and the server negotiate usage of Kerberos, and how Kerberos tickets will then get communicated from the client to the server and vice versa, is up to them. Once the KDC, or Kerberos Distribution Center, has decided that a given node can have an authentication ticket, it considers its job done.

Obviously every protocol that supports Kerberos authentication has some sort of standard for negotiating the use of Kerberos. Negotiation can be done with a protocol-specific negotiation mechanism, such as with HTTP or IMAP, or it can be done by using SASL, the Simple Authentication and Security Layer, as is done for LDAP.

Additionally, once negotiation is done and client and server agreed on using Kerberos authentication, the client needs to receive a ticket from the KDC and present that to the server. To do so, Kerberos v4 defined how a ticket should be encoded and wrapped inside another protocol as part of the standard; for Kerberos v5, this method has been generalized into the GSSAPI, which can not only distribute Kerberos tickets, but also authentication tokens for other authentication mechanisms, such as SPKM-3 ("Simple Public-Key Mechanism"). In GSSAPI, the careful reader will recognize the "gss" part of the `gss/krb5` security method you need to enter in `/etc/exports` for NFS to use Kerberos, as detailed last week.


# Getting our hands dirty

With that knowledge, you can go ahead and set up Kerberos as part of several protocols. The first protocol to look at is SSH. Even though it’s possible to use SSH keys if you want to avoid having to enter a passphrase every time you log in, this will get a bit messy once you arrive at a level where you’ve got more than a handful of machines to take care of.

Recalling from last time, these are the steps needed to be taken when enabling Kerberos in a communication:


1. Create the service principal, and store it in the `keytab`
1. Configure the server so that it allows for Kerberos authentication
1. Configure the client so that it does the same.


## PAM and SSH

Kerberos generalizes everything that will get you a shell into one service principal. So whether you use PAM, Kerberized Telnet, or Kerberized SSH for authentication, the service principal is always `host/<fqdn>@REALM`. For `rock.grep.be` in the `GREP.BE` realm, this will become `host/rock.grep.be@GREP.BE`. Creating a service principal and storing it in the keytab is done with `kadmin`, as detailed in last week’s article. PAM is a bit of a special case here; rather than using a kerberos ticket to authenticate you, you enter a password and it _requests_ a ticket. If you don’t use PAM, you need to use `kinit` and `kdestroy` to manage your tickets.

In `OpenSSH`, enabling Kerberos authentication is done by adding `GSSAPIAuthentication yes` and `KerberosAuthentication yes` to `/etc/ssh/sshd_config`. For PAM, there is the `pam_krb5.so` module. It’s usually best to avoid Kerberos authentication when trying to log on as root; otherwise you will not be able to log on to your system _at all_ once the network goes down; you won’t even be able to fix it anymore. So, to enable the module, add the following lines to the relevant PAM configuration files (in `/etc/pam.d` ):


=CODE_START=

account  sufficient pam_krb5.so ignore_root
auth     sufficient pam_krb5.so ignore_root
password required   pam_krb5.so ignore_root
session  optional   pam_krb5.so ignore_root

=CODE_END=

Yes, that’s `sufficient` for `account` and `auth`, `required` for `password`, and `optional` for `session`. Be sure to stack them in front of anything else, i.e., near the top of the file.

For the `OpenSSH` client side, you add `GSSAPIAuthentication yes` to the `Host *` stanza of either `/etc/ssh/ssh_config`, or `~/.ssh/config`. It is also possible to limit this to hosts in a particular domain by using something like `Host *.grep.be`, but then you have to use `ssh rock.grep.be` rather than `ssh rock`, which is rather cumbersome.

PAM, which has no client side, obviously doesn’t need to be configured on the client side.


## HTTP


=ZOOM=If your server does not run as root, then you must not store the key in the system-wide default keytab=

The service principal for HTTP is `HTTP/<host>@REALM`; for the same machine `rock.grep.be`, this is `HTTP/rock.grep.be@GREP.BE`.

If, like me, you don’t run your webserver as root, then you _must not_ store the key in `/etc/krb5.keytab`, which is `kadmin` ’s builtin default. Instead, you must then create a different file. I use `/etc/apache2/keytab`:


=CODE_START=

kadmin: xst -k /etc/apache2/keytab HTTP/rock.grep.be@GREP.BE
kadmin: exit
# chown www-data:www-data /etc/apache2/keytab

=CODE_END=

Apache doesn’t have builtin support for Kerberos authentication. However, with use of the module `mod_auth_kerb`, available from its [sourceforge website](http://modauthkerb.sourceforge.net), one can make it support Kerberos. Compile it, load it, and add the following to a `Directory` configuration block that you want to have Kerberos authentication for:


=CODE_START=

AuthType Kerberos
KrbMethodNegotiate On
KrbMethodK5Passwd Off
Require valid-user
Krb5Keytab /etc/apache2/keytab

=CODE_END=

With that, you tell Apache to use the Kerberos module for authentication (line 1); to allow for authentication by way of Kerberos tickets (line 2); to **not** allow for fallback to clear-text Basic Authentication (a sensible choice unless you are using SSL; line 3); to require that a user is logged on before anything is shown (line 4); and that the keytab file is where we just created it (line 5). Now don’t forget to restart your Apache server, and the server side is all done.

As for the client side, that’s fairly easy. If you use a gecko-based browser such as Firefox, browse to `about:config` and set the value `network.negotiate-auth.trusted-uris` to a subset of your hostname (I use `grep.be` ). If you use Konqueror, you don’t even need to do that—as long as Konqueror was built with kerberos support enabled, it will work out of the box.


## IMAP

I guess the pattern is getting pretty predictable by now. The host principal for IMAP is `imap/<host>@REALM`.

There are quite a number of IMAP servers out there for UNIX-like operating systems; a fairly good one, which I can recommend in general even if you don’t want Kerberos, is [Dovecot](http://www.dovecot.org/). To enable Kerberos authentication, you just need to add `gssapi` to the option for supported authentication mechanisms. The exact name of that configuration option depends on the version of dovecot you’re using; in the default configuration file of `dovecot`’s latest version, this is the configuration option `mechanisms` inside the `auth default` stanza.

For the client side, all you need to do is use a client that actually supports `GSSAPI` authentication. Evolution is one such client; just go to your account preferences and set the authentication mechanism to `GSSAPI`.


# Wrapping up

Once the realm has been set up, configuring a client and a server to understand Kerberos between the two of them isn’t very hard; in fact, usually the hardest part is figuring out the right spelling for the service principal. With the few examples given above, I’m sure you can figure out some more for yourselves. And apart from HTTP, IMAP, and SSH, there are not only public-standard protocols such as LDAP and SMTP, but also specific-purpose protocols such as the protocol used between PostgreSQL clients and servers, that support Kerberos. A whole wealth of options!

