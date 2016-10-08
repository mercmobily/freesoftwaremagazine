---
nid: '1792'
title: 'Book review: OpenVPN: Building and Integrating Virtual Private Networks <i>by Markus Feilner</i>'
authors: 'Alan Berg'
published: '2006-11-23 6:30:00'
tags: 'book-review,vpns,openvpn'
issue: ''
license: cc-by
section: reviews
listed: 'true'

---
Virtual Private Networking enables secure online communication over TCP/IP networks such as the Internet and Extranets and between road warriors and there online bases.  VPN’s are the stock and blood of many distributed organizations. The technologies involved are relatively easy to use and widely applied. OpenVPN is one suitably viable and mature (James Yonan started the project in 2001), and open source instance. When properly deployed the server has a significant and beneficial impact on the security of your organizations online communication. The product specific book OpenVPN Building and Integrating Virtual Private Networks is a thorough and detailed manual on achieving a realistic and successful deployment. The authors in depth personal knowledge is warmly encapsulated in the content.


=IMAGE=cover.jpg=The book’s cover =

Marketers and techno cool geeks can shroud underlying VPN structures in self serving terminology: IPSec, revocation lists, symmetrical, asymmetrical keys, tunneling, encapsulation, and whole dictionaries worth of conventions.  Luckily for the doers in this world the author  Markus Feilner concentrates on the practical and only mentions the underlying complexities when necessary and at a suitably non religious shallow and glancing angle.


=ZOOM= Markus Feilner concentrates on the practical and only mentions the underlying complexities when necessary=


# The contents

Within the 258 pages and 11 chapters of this well crafted book sit all the content you need for a relevant and open source VPN solution. Starting from the very basics defining what a VPN is the book speeds through the first three chapters of lightly explained conceptual background. The first significant thick chapter, chapter four explains the subject of installation in much detail and rightly so the chapter is of the same length as all the theoretical chapters together.

There is much to like in the content, for example details on building RPM or DEB packages in chapter 4 or the use of  Webmin to manage INIT startup scripts in chapter 5. 

My day job is as a developer of campus wide infrastructure at a University; therefore, from this perspective, my particular favorite description was on the subject of how to call a script to check for passwords. This allows you to knock OpenVPN into your organization specific authentication services without too much hassle.

 A couple of chapters are generic enough to have broader meaning than for VPN’s alone. These chapters are Chapters 9 Advanced Certificate Management and Chapter 11 Troubleshooting and Monitoring. One can imagine deploying a simple Certificate Authority via XCA or finding errors within your Intranet ntop. 


=ZOOM= There is much to like in the content=


# Who’s this book for?

As hinted previously Markus Feilner has written a practical book best suited for system administrators or developers that need to deploy a VPN solution. Background information over Webmin, XCA, troubleshooting and monitoring networks is an added bonus.


# Relevance to free software

A successful OpenVPN solution involves not only the software but also the underlying OS networking services.  The VPN offering needs to tap into these services for secure tunneling between systems to exist at all. OpenVPN Specific drivers for Linux, Windows, and Mac exist for this purpose. Firewalls affect the tunneling mechanism. Thus, the influence of the built in proprietary Windows firewall is detailed.  Administrators need to manage file copying potentially via the mechanism of SCP to enable key sharing for symmetrical.

The book also mentions quickly, accurately supporting open source tools such as Webmin and XCA, and debugging network related tools such as nmap or iptraf. Therefore, the book by the environment it seeks to detail has a predominant emphasis on Open Source with a mild taint of proprietarily OS specific details.


# Pros

This book describes deployment of OpenVPN in detail for a number of Linux flavors and Windows and Macs. This mix of OS’s or a subset therein is enough to define most organizations server and client populations.

Further, the book mentions supporting tools such as packet sniffers, firewalls, open source certificate authorities, allowing you to build up the required VPN related internal infrastructure.


# Cons

If you want to know the gruesome details of the difference between TLS and SSL2 or wish for pretty org diagrams with potential workflows then you will find the theoretical content somewhat on the light side.  


 | |
-|-|
Title |  OpenVPN: Building and Integrating Virtual Private Networks | 
Author | Markus Feilner | 
Publisher | PACKT | 
ISBN | 190481185X | 
Year | 2006 | 
Pages | 258 | 
CD included | No | 
FS Oriented | 9 | 
Over all score | 8 | 

=TABLE_CAPTION=In short=

