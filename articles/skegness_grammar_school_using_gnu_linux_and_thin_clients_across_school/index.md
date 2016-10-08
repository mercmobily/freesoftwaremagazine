---
nid: '2982'
title: 'Skegness Grammar School, using GNU/Linux and thin-clients across the school'
authors: 'Richard Rothwell'
published: '2008-08-21 10:15:30'
tags: 'free-software,gnu/linux,thin-client,school,ltsp'
license: verbatim_only
section: opinions
listed: 'true'

---
Garry Saddington is ICT co-ordinator at Skegness Grammar School. It is a specialist sports college and a specialist maths and computing college with nearly 800 pupils, and has a boarding provision for around 60. Alistair Crust is responsible for serving the technology needs of the Skegness Grammar School community.  All the school's 180 curriculum computers run GNU/Linux.  These run as thin-clients using the Linux Terminal Server Project, which uses low power clients with most of the processing being done on fewer, more powerful, servers.

=ZOOM=All the school's 180 curriculum computers run GNU/Linux=

The school uses a very wide range of free and open source applications – in fact all of the curriculum requirements are met through free software, with OpenOffice.org offering the main office suite and the following software meeting all the needs of curriculum ICT. Gimp and Inkscape for graphics work, kdissert for mind mapping, Kjots for notetaking and planning, Planner for Gantt charting. Knoda and Rekall for database frontends, Zope for A level project work, Plone for content management, Synfig for animation, Cinelerra for video as well as many others. The school plans to install Moodle for next term and have it integrated with the in house MIS.

## Background

In 2001, the school had an ageing Novell and Windows 98 curriculum network.  This was clearly in need of an upgrade.  The analysis of the options showed that installing a Microsoft Windows 2000 server and the associated office suite  would have cost around £100,000 including the hardware upgrade to cope with the new Windows software.  The decision to be made was how to move to a reliable and secure network without too much expenditure or change for the staff and students.

The school already had a small GNU/Linux network in its boarding house which proved popular and very stable. The decision was made initially to investigate, and eventually to install a free software system across the site.

##Solution

Garry produced a costing for a school Linux solution which came in at a 70% saving compared to the equivalent proprietary solutions.  This discussion document was distributed to the Senior Management. He was given approval to test Linux in one classroom and designed a Linux Terminal Server Project solution. This had two servers, running SuSE and 34 thin-clients.  Including the chairs, the total cost was £6,000. 

Garry then spread Linux to the other two ICT suites, at which point they needed a dedicated Linux network manager. Alistair was appointed and he then took over the day to day running of the network and has done so for the last three years. Since being appointed to manage the network, Alistair has overseen a migration to Ubuntu. Alistair said “I had heard of this new up-and-coming distro called Ubuntu and tried it out at home first. I immediately loved it. Ubuntu is straight to the point. There are no features that shouldn't be there or are implemented just because they can be.”

The current configuration is:

* 4 servers for the 180 thin-clients, running Ubuntu.
* Extra servers are used for: Email, Electronic marking, MIS (ScholarPack), pupil database server, Content management system, firewall, internet content filtering, proxy and DNS.
* All the school's management information requirements are undertaken by the web based MIS, ScholarPack.  This has been developed and written by Garry. This software is due to be released as free software later in 2008.
* A single Windows server providing applications through rdesktop to deliver legacy software wanted by some staff.


=ZOOM=It grew through the need to teach ICT using something reliable=

## Conclusion

“It grew through the need to teach ICT using something reliable,” remarks Garry,  “I feel we have better curriculum facilities than any school running Windows – and with far more reliability. As part of our computing specialism we are doing a full network Linux install in one primary school and we are trialling ScholarPack in another.”

The school has found support from the free software community to be excellent.  Asked if he would do anything differently if he were to start the process again, Garry stated that he would probably employ consultants to support the design and deployment of the system, but that in the long run he felt that support should be in-house, commenting that “with LTSP one techie can look after quite a large network”.  

Garry contributes to [Schoolforge UK](http://www.schoolforge.org.uk/).
