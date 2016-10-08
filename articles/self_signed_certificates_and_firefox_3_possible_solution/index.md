---
nid: '2956'
title: 'Self-signed certificates and Firefox 3 - a possible solution '
authors: 'Ryan Cartwright'
published: '2008-08-05 15:20:51'
tags: 'security,ssl,firefox3,websites'
license: verbatim_only
section: end_users
listed: 'true'

---
Some websites need to handle data securely and assure the end-user they are a) secure and b) who they say they are. The traditional way to achieve these is via Secure Socket Layer. Firefox 3 changed what happens when a self-signed SSL certificate is encountered. It's a change which has caused [some concern](http://www.cs.uml.edu/~ntuck/mozilla/) and much discussion.

Should we only trust certificates signed by third parties? Are there cases where using a self-signed certificate is valid? Should users be informed or warned and how strong should the language of that notification be? Is it possible a simple solution is already available but has been overlooked in all the flan-flinging? I think so.

<!--break-->

# What's the fuss about?

SSL is essentially an encryption methodology used to create a tunnel between the browser session and the server. Anybody listening can hear but not decrypt the traffic because they don't possess either of the relevant keys. The problem is when a user goes to a site -- set up by an unsavoury third party -- which pretends to be the secure site. The site and domain closely resemble the real one and the traffic is all being encrypted but it is all going to wrong place. At this point certification enters the fray. The theory is that on entering the site, the browser is presented with an SSL certificate. If that certificate has been signed and approved by an independent certification authority (CA) then the browser assumes all is well and proceeds. If it doesn't then the browser lets the user know.

Mozilla's change of policy revolves around this notification. Whereas it used to say "we're not sure about this but you can accept if you want" -- and most users blindly accepted it anyway, it now says "We can't guarantee this and that might be because the server is doing something nasty, please jump through this hoop to proceed anyway" at which most users will be justifiably concerned and not proceed. I've paraphrased there but the essence is correct.

# Where does self-signing come into it?

Self signed certificates are ones that are signed by the same server that hosts the site -- that is the people providing the certificate are also and at the same time saying "don't worry you can trust me". You can see why there is concern over not warning users about these kinds of certificates, but certificates signed by a CA cost quite a bit and to have one for a internal server which nevertheless needs to be secure could be seen as an expense most organisation do not want to go with. An example of this might be a webmail server which presents mail to disparate users over the internet but does not want the traffic to be in the public domain. A self-signed certificate is the most cost-effective option here, but making every new user perform a number of tasks just to accept the certificate is not something many IT managers would relish. I should note that CAs with zero or minimal cost certificates do exist but the browsers don't always know about them or contain their details; so, certificates signed by them are treated like self-signed certificates.

Aside from some valid reasons for using self-signed certificates, there are also those who just plain do not like the idea of passing trust through a third party, particularly one who is in the business of making money. I've seen genuine concerns over allowing one business (as opposed to an independent NGO for example) to effectively control whether customers of another business are told it is safe to use.

# The two sides

So one side of this discussion says that Mozilla should use all it's persuasion to warn users of the dangers of self-signed certificates and that without CAs there is no way to determine the authenticity of the certificate being provided by a website. The other side says Mozilla should not use such "scaremongering" language that through Mozilla adopting this policy "some sites are forced to pay for certificates that they otherwise wouldn’t have bought [and others]  are forced to go without encryption that they otherwise would have had" (see the blog I linked to earlier). You'll note that both sides focus on the fact that third parties are needed to sign the certificate. Perhaps we're looking at this the wrong way.

# Another way

Certificates do not need to authenticated against a third party as much as an independent source. This needs to be a source which cannot be changed quickly and the data upon which is held on and supplied by somebody other than the webserver and it's owners.

Within the [DNS records](http://en.wikipedia.org/wiki/List_of_DNS_record_types) for any domain there are a number of things listed. For example the MX record will tell you what servers are preferred for inbound mail for that domain. There is a record which to me seems designed for our purposes here, the [SSHFP](http://tools.ietf.org/html/rfc4255) record. This is designed to contain SSH key fingerprints. This is a quote from RFC4255 which defines this record type:

>Upon connection to an SSH server, the SSH client MAY look up the SSHFP resource record(s) for the host it is connecting to.  If the algorithm and fingerprint of the key received from the SSH server match the algorithm and fingerprint of one of the SSHFP resource record(s) returned from DNS, the client MAY accept the identity of the server.

What's more public DNS data is stored on central servers and not provided by the webserver,  indeed if the DNS data is faked then the user is not going to the correct server for that domain and perhaps has some bigger issues to worry about.

A browser that is presented with a certificate for a site could check whether the certificate is signed by a CA and/or whether the certificate fingerprint matches that in the SSHFP record for the same domain. In this way a self-signed certificate can have its key fingerprint stored in the domain DNS records without having to pay anybody and for those who want the extra reassurance for their customers they can pay for their certificate to be signed as now.

The browser doesn't have to do the DNS request: it simply asks the DNS server for the contents of the SSHFP record for that domain if required. There will be a slight delay while it does this, but if you want your users to avoid this you can pay for a CA to sign your certificate. If a certificate is signed but cannot be authenticated by a CA or the DNS record, then the browser is at liberty to present a warning to the user. At present I imagine many domains do not have anything in their SSHFP record, but if they want to use self-signed certificates they will certainly do so if the browser adopted this policy.

# Puts on flame-proof suit

I imagine (but hope not) by this point a number of DNS and SSL/SSH experts will be reaching for their keyboard to shoot me down. If that's the case please do so. I am an expert in neither but I do use them so this is my suggestion for a cost-effective resolution as I see it. If I am wrong tell me why, please, but if I am not or if my idea has merit, where do we go from here?