---
nid: '1893'
title: 'Securing NFS'
authors: 'Wouter Verhelst'
published: '2006-11-26 9:00:00'
tags: 'security,kerberos,howto,nfs'
license: verbatim_only
section: hacking
listed: 'true'

---
NFS is a network protocol with which many UNIX-administrators have a love/hate relationship. On the one hand, it’s the ideal protocol if you need to export a filesystem from a UNIX-like system. On the other, it has a bit of a reputation of being insecure. Since a rogue system can just tell an NFS server that “hey, I’m representing a user with UID 1000, please remove all the files in my home directory”, this reputation may not be totally undeserved.

Or is it?


<!--break-->


Well, yes and no. It’s true that, by default, NFS works in the above described way. There are ways to mitigate most security issues (for example, only allow trusted systems to connect to the server, and do not enable the root_squash option unless you really need it), but they’re all workarounds. But on the other hand, recent modifications to the NFS protocols have allowed GSSAPI—i.e., Kerberos—authentication to be used for NFS exports. Which is totally cool.

For this to be possible, obviously you need to set up a Kerberos realm. That’s not too hard; I [wrote](http://www.freesoftwaremagazine.com/blogs/kerberos_authenticating_on_the_network) about that very subject last week. Let’s recap: I explained that in any Kerberos authentication dialogue, there are three parties: the Kerberos-enabled server; the Kerberos-enabled client; and the Kerberos daemon itself—also known as Kerberos Distribution Center, or KDC. Each of these three parties must have a principal.


* The user’s principal is password-protected, and gets unlocked when the user logs on. After that, it’s stored in the user’s ticket cache, so that applications can use it. When a client application wants to authenticate itself against a server, it will ask the KDC for a ticket for the server’s principal, which will then also be stored in the ticket cache. User tickets are valid for only a limited time; 10 hours by default. After that, the user will have to re-enter his or her password to be able to use any kerberos-enabled services again.
* The server’s principal is protected by a random password that’s stored on the server’s hard disk in what is called a “keytab”. Since any malicious user or application can use this principal to pose as the server in question, it is obviously imperative that this keytab is well protected. Usually the keytab is stored as `/etc/krb5.keytab`, but most server applications allow you to vary the file name (useful in case you’re not running a server as root; `/etc/krb5.keytab` must only be readable to root).
* The KDC can obviously access its principal without a password; it only needs to read its database to get it.

So we can conclude that in general, and as I explained last week, to set up a server so that it uses Kerberos, you need to:


1. create a kerberos principal
1. store the principal so that the server can access it
1. set up the server to use Kerberos as authentication
1. set up the client to do the same

However, NFS is a bit of a special case here. Usually, NFS shares get mounted by initscripts at boot time, well before any user has had the chance to enter a password. As a result, you can not use their principal to authenticate to the NFS server, since we don’t have access to it yet. So how can we authenticate ourselves to the server at that time, to be allowed to mount _anything_ in the first place?

The answer is simple: we just create a server principal for the client, too. After all, server principals are no different than user principals; they only have a different name. It’s perfectly valid to authenticate to a server principal by use of another server principal—that is, unless you’ve configured a particular server not to accept that. Which is a good thing to do, except obviously for NFS.

So, we’ll create a server principal; but first, we’ll need to make sure that the server will find our KDC. This is very simply done with a configuration file; in my case, with GREP.BE as my realm, I have created a file `/etc/krb5.conf` with the following contents:


=CODE_START=

[libdefaults]
  default_realm = GREP.BE
  kdc_timesync = 1
  forwardable = true
  proxiable = true
[realms]
  GREP.BE = {
    kdc = kdc.grep.be
    kdc = kdc-1.grep.be
    admin_server = kdc.grep.be
  }
[login]
  krb4_convert = false
  krb4_get_tickets = false

=CODE_END=

Whoa, that’s quite a bit. Let’s go over it one by one, shall we?

The `[libdefaults]` section obviously sets a few defaults for my Kerberos setup: I want to use GREP.BE as my realm by default, I want forwardable and proxiable tickets (both allow a server to authenticate itself on my behalf; this is useful in certain situations). The `kdc_timesync` option will make a client adjust the timings in kerberos communications if it finds that its clock is off by too much; this can help if NTP doesn’t work (but you should still try to use it).

The `[realms]` section simply explains where to find your KDCs. The `admin_server` option specifies where your _master kdc_ is. It’s legal to have multiple KDCs, but you may have only one master KDC (setting up slave KDCs is outside the scope of this article).

The final section disables use of Kerberos V4. This is an older version of the protocol that has been proven to have security issues; you should not use it.

With that, we can just use kadmin to create the server principal. If we run kadmin as root, we’ll be able to do step 2 in one go:


=CODE_START=

nfs-server# kadmin
Authenticating as principal root/admin@GREP.BE with password.
Password for root/admin@GREP.BE:
kadmin: addprinc -randkey nfs/host.grep.be@GREP.BE
WARNING: no policy specified for nfs/techno.grep.be@GREP.BE; defaulting to no policy
Principal "nfs/techno.grep.be@GREP.BE" created.
kadmin: xst nfs/techno.grep.be@GREP.BE
Entry for principal nfs/techno.grep.be@GREP.BE with (...)
(...)
kadmin: quit

=CODE_END=

That was the principal. Notice how this time we created a principal based on a general scheme of < _service name_ > `/` < _hostname_ > `@REALM` for the name. It’s imperative that the hostname part of the ticket is what the client will find when it does a reverse name lookup on the IP address; otherwise the client won’t find the ticket. It is also imperative that you write `nfs` exactly as specified above; i.e., not in upper case.

As explained above, you now need to do the same thing on the client. Go ahead, create a principal there, and store it in its own keytab. I’ll wat.

Now that we’ve created the principals, it’s time to start configuring NFS exports to allow for Kerberos authentication. But before we take that step, let’s verify you have software which will actually understand such authentication. You need the NFS support utilities version 1.0.7 or above; and you need a fairly recent kernel to support it properly (in fact, Linux 2.6.17 had a few crucial bugs, so Linux 2.6.18 is what you really want). If you have those, you’re all set to enable kerberos authentication:


* On the server, edit /etc/exports, and add a share like this: `/export gss/krb5i(sync,subtree_check,rw)`
* On the client, edit /etc/fstab, and add a share like this: `server:/export /mnt/server nfs rw,sec=krb5i,nfsvers=3 0 0`

You must also make sure that the `rpc.gssd` utility is running on the client, and that the `rpc.svcgssd` utility does on the server. The `nfs-common` and `nfs-kernel-server` initscripts should do this automatically if you’ve edited the two files as above; but do verify that they’re doing so.

And that’s it. Now either reboot the client or manually mount the share with the same options, and you’re all set. When a user wants to write to a Kerberos NFS share, then the system will use this user’s principal to authenticate. And you, the system administrator, will be happy with the knowledge that it’s indeed that user, not some imposter, who’s writing a file. Isn’t that nice?

