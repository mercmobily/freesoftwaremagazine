---
nid: '2877'
title: 'Updating Debian keys for the uninterested'
authors: 'Ciaran O’Riordan'
published: '2008-05-20 10:48:18'
license: verbatim_only
section: opinions
listed: 'true'

---
Despite having an aversion to configuring and maintaining security and crypto software, I accepted that I had to update my system in response to the recent big Debian security problem. If I can do it, you can do it. Below are my notes, but keep in mind that my security rank is somewhere between ignorant and uninterested.

<!--break-->

#Debian's advice

For Debian's advice about about updating your system, see these three pages:

[Debian's "Key Rollover" page](http://www.debian.org/security/key-rollover/) - as far as I can tell, "key rollover" is their term for updating your keys. It's a pity they don't use plain language or explain this.

[http://wiki.debian.org/SSLkeys](http://wiki.debian.org/SSLkeys) - a Debian wiki page with info on how to do "key rollover" on various pieces of software.

[Debian's initial security advisory: DSA-1571-1 openssl](http://www.us.debian.org/security/2008/dsa-1571).

Some good news is that GnuPG and GnuTLS are _not_ affected. By coincidence, [GnuTLS fixed some other security problems yesterday](http://lists.gnu.org/archive/html/info-gnu/2008-05/msg00010.html), so upgrading your GnuTLS in the near future would be a good idea, but there's no need to regenerate any keys.

#What I did

To fix the OpenSSL problem, you have to do two things. First you have to upgrade the package "libssl0.9.8". Then you have to check your system for weak keys and regenerate them if there are any.

##Package upgrading

About updating the "libssl0.9.8", remember to mention that package explicitly. I originally just upgraded "ssh" and "openssl", thinking that the necessary packages would be automatically updated because they're dependencies, but they're not. So, explicitly update "libssl0.9.8". It's probably a good idea anyway to update "ssh", "openssl", "openssh-client", and "openssh-server". So that's five packages to upgrade, but the most important is "libssl0.9.8".

##Finding and regenerating weak keys

Next is to scan for weak keys. You do this by downloading the "[dowkd.pl.gz](http://security.debian.org/project/extra/dowkd/dowkd.pl.gz)".

Optionally, if you want to confirm that the dowkd.pl.gz that you're downloading is really the official Debian scanning tool, you can do this with GnuPG's "--verify" command. For this, you will need [dowkd.pl.gz.asc](http://security.debian.org/project/extra/dowkd/dowkd.pl.gz.asc) (the signature of the scanning tool). This is described in more detail in [a section of the above linked Debian wiki page](http://wiki.debian.org/SSLkeys#head-45e521140d6b8f2a0f96a115a5fc616c4f1baf0b). That .asc file is the signature for dowkd.pl.gz (not for dowkd.pl), so remember to do the verification before you unzip dowkd.pl.gz.

Next you run "perl dowkd.pl help" at the command line. From there, you choose your options. For me, since I'm the only user on my computer that uses ssh, I ran "perl dowkd.pl user ciaran". I was told I had two weak keys. I manually deleted the four files (public and private key for each of the two weak keys):

* ~/.ssh/id_rsa
* ~/.ssh/id_rsa.pub
* ~/.ssh/id_dsa
* ~/.ssh/id_rsa.pub

And then I generated a new RSA key with "ssh-keygen" and a new DSA key with "ssh-keygen -t dsa".

I then ran "perl dowkd.pl user ciaran" again to verify that my new keys were not weak, and it told me I had zero weak keys. Success.

Lastly, I had to update my public key on some remote hosts. For example on [sv.gnu.org](http://sv.gnu.org/), CVS write access requires a DSA key. So I went to my profile, deleted my old key and then submitted my new DSA key.

#Conclusion

That was all. I hope these notes encourage some others who similarly hate security to actually fix their systems. I hope it saves some people a bit of time or frustration. And I hope I didn't give too much bad advice that would make real security people cringe :-)

(Email me on ciaran at fsfe.org if there is anything cringeworthy)

