---
nid: '2633'
title: 'Book Review: Linux Thin Client Networks Design and Deployment by <i>David Richards</i>'
authors: 'Robert Pogson'
published: '2008-05-13 8:49:45'
tags: 'linux,book-review,thin-clients'
issue: ''
license: cc-by-nd
section: reviews
listed: 'true'

---
This book is a gem. The author has written a compact volume covering many facets of GNU/Linux on thin clients. The book is persuasive and gives attention to issues of users and managers.
The author is the same David Richards who led the government of Largo, Florida, to adopt GNU/Linux on thin clients under the radar of Microsoft, through the valley of thin clients, across the mountains of IT to the promised land of GNU/Linux--before Munich and Extremadura. This is also the same person who brought thin clients on e-bay. 

<!--break-->

=IMAGE=cover.jpg=The book's cover=

# The contents

Richards reveals the advantages of thin client/server systems and explains how to approach management, users and technical staff to get them on-side with adoption of thin clients.

In a few dramatic pages he describes the advantages of thin clients over thick clients and of GNU/Linux over Windows; he also explains how to present them to management and users. He describes presentations designed to alleviate the fear of network problems and running on a server. He also presents realistic costs for a variety of small medium and large deployments, and recommendations for distribution of tasks to servers; this gives a clear picture of how any size deployment should work economically and perform well. Later chapters describe delicious details of running applications on different servers transparently to users, adding visual appeal, and selecting and configuring desktops. The book ends with the initial steps of installation and an appendix of resources.

The author gives a compelling argument about how much fast memory is needed for a particular application with 10 PCs, 10 thin clients using Windows or 10 thin clients with GNU/Linux:

> If this scenario is deployed on centralized Microsoft Windows using thin clients, then 2.76 GB is required. This slight increase is because of the small amount of memory required on the thin client to handle the video portion of the remote application ((256 MB + 10 MB +1 MB) X 10). [...] However, when a centralized UNIX/Linux solution is used, only 376 MB of memory is required. This is because of shared memory. When the server detects that a program is already running, it doesn't start another instance of it in memory, and instead simply adds a user space that stores the data specific to the user (10 MB + 1 MB) X 10 +256 MB)."

The comparison is in favour of GNU/Linux on terminal servers, permitting far more processes on each machine with a given amount of memory. From really thin clients, loading an operating system over the network, to small devices that fit in a pocket to fairly fat machines with an operating system in flash memory, the author points out the advantages and disadvantages of each kind. Even with top-end thin clients, and frequent upgrades of top-end servers, using thin clients saves about half the hardware costs and more than half the manpower costs.

Issues of users are treated carefully including the initial approach. He describes disconnecting a thin client from a persistent session, logging in with a different client and continuing with no interruption. He emphasizes professional training, enough eye-candy, software to take home, tracking issues and tracking training as important means to accommodate users. Productivity will increase because “What a thin client deployment does is remove the hardware and system elements from a user's day-to-day task. Instead of having to troubleshoot problems or experiment with settings, they are simply given a stable environment with software that just works.”

Issues of hardware are covered in detail. A network that must respond in real time to users and to servers, not just carry bits, and must be designed and tested for that load. The suggested server is an eye-opener for a desktop user. The author suggests $30000 quad-processor 16 GB servers per 50 users. Even with that top-of-the line equipment, the thin client network pays dividends in hardware and manpower savings. He suggests using multiple servers with one major application per server, and one server for the desktop login and window manager. This increases the already good reliability of the GNOME desktop by saving the session on most server outages. He shows how to install Suse with GNOME and XDMCP with customization of the login and using Main Menu (Slab) instead of the traditional cascading menus.

Installing the software on different servers by means of rsh, ssh or rdp, gives great flexibility in the design of the system. This can be transparent to the user running FireFox on one server while logged onto another while using a third box as a terminal. Moving applications around the network gives yet another way to balance loads and to improve reliability.  There is a list of standard software explaining the merits: OpenOffice.org, TomBoy for notes, Planner, Pidgin, Beagle indexing, GIMP and F-Spot image processing, Xine, Real Player, MySQL, PostrgreSQL, Mono, gnome-terminal, and xterm provide a good starting-point for general purposes. 

# Who's this book for?

The cover says it all: “A quick guide for System Administrators”.  Anyone who needs to set up a network of desktops should read the initial chapters. Everyone from the boss to the accountant will like the numbers. The people implementing change should read all of it, several times. It is a gold mine of ideas that work.

# Relevance to free software

Based on the arithmetic in his examples and anecdotes, the author recommends GNU/Linux as a cost-effective and reliable solution for most IT. A couple of minor points: the author uses the expression “licence-free” and “without licences” which is inappropriate for software licensed under the GPL. Clearly the meaning should be “free of licensing fees”. Accordingly, I filed a “bug report” at http://www.packtpub.com/support .  A big plus is that he recommends a set of base applications which include Beagle and “the slab” menu which are not widely known but advantageous. These fine applications also are valued by users and help to overcome reluctance to change.

# Pros

This book will settle any doubts the reader or his associates may have about thin client computing. Implementing any or all of the suggestions will save much more time and effort than the cost of the book and the time taken to read it. The author really knows his stuff. 

# Cons

It is a little too short. The author leaves the reader wanting more. Implementing security is left as an exercise for the reader but most of the target audience will know to keep a physically isolated LAN and to firewall the gateway.


Book          |     |
--------------|--------
Title         |  Linux Thin Client Networks / Design and Deployment |
Author        |  David Richards |
Publisher     | PACKT Publishing |
ISBN          | 9781847192042 |
Year          | 2007 |
Pages         | 160 |
CD included   | No |
FS Oriented   | 10 | 
Overall score | 10 |

=TABLE_CAPTION=In short=
