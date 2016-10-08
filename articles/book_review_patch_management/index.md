---
nid: '1388'
title: 'Book review: Linux Patch Management <i>by Michael Jang</i>'
authors: 'Alan Berg'
published: '2006-05-25 4:00:00'
issue: ''
license: cc-by
section: reviews
listed: 'true'

---
In “Linux Patch Management”, Michael Jang describes in necessary detail how to achieve patch efficiency via tools such as `apt-get`, `rpm` and `rsynch`.

GNU/Linux has a multitude of distributions and a significant number of approaches to security patching and installing and upgrading software. Taking a non-religious approach Michael Jang explores the most well used patch tools and their associated GUI helpers. Advanced details such as how to create your own local repository to limit network traffic and setting proxy and satellite servers are also covered in detail. It is of worth to note that the author has previously written a number of training books that help beginners and experts alike toward passing specific certifications. His strength and skill at structuring the most relevant information can be seen throughout the book.


=IMAGE=cover.jpg=The book’s cover=


# The contents

Linux Patch Management is not a thick bible mentioning every command option. Rather, the 288 page book contains the expected recipes required to get the job done. This recipe based approach appears to be consistent across the whole range of books in the Bruce Perens’ Open Source Series. The first chapter quickly dives into an explanation of what a patch is and how to manage patching. The book as a whole flows from patch management for individual machines to maintaining an infrastructure for a large numbers of computers on an intranet. This book is well focused for system administrators that wish to transition to intranet wide control from daily machine-by-machine efforts. I specifically enjoyed the extensive and efficient use of `rsync` and the screen grabs that made each task very clear. My favourite moment was reading how to mount an ISO image as if it was CD and use that image as an installation repository. Without the book, these little details can take days to find out when they only take seconds to use. Distributions such as Redhat and SUSE are exampled and contrasted. The advantages of Yum over direct RPMing are illuminating.


=ZOOM=Without the book, these little details can normally take days to find out when they only take seconds to use=


# Who’s this book for?

This book is of interest primarily to system administrators that wish to maintain a healthy GNU/Linux based network. Seemingly esoteric topics such as setting up of mirrored repositories and configuring an FTP Yum server have great practical value for building stable and up-to-date infrastructures. Architects and consultants can also benefit from such knowledge. Security experts must also realise that such workflows can be created as part of a hardened environment with a low security surface.


=ZOOM=This book is of interest primarily to system administrators=


# Relevance to free software

Diversity of free software is profoundly positive. However this is only true as long as that diversity does not totally confuse the end user and system administrators with an over abundance of choice. With `apt`, `rpm`, `yast`, `yum`, `zenworks`, Redhat advance servers, etc., patch management tools run the risk of generating a feeling of too much diversity. Michael Jang’s book places the diversity within a recognizable framework and structures the information in such a way that practical goals such as creating a local reposity and proxy servers are achievable. Removing confusion can only give managers more confidence when making buying decisions. One can only hope that this book helps decision makers make educated total cost of ownership augmentations for migrating to GNU/Linux based on good patching policies


# Pros

This book has value for daily administration of a GNU/Linux biased intranet. Linux Patch Management is well structured and practical. If you wish to get things done such as building an enterprise wide infrastructure for the most popular distributions this is a good to excellent place to start. The screen grabs are pictorially intuitive and define how GUI based tools deskill complex tasks.


# Cons

Due to the wealth and range of tools mentioned the book has not dwelled on every detail and every approach. In general, this is not necessary because the two main types of package extensions `deb` and `rpm` are well covered. But for exotic systems or very specific problems such as `deb` to `rpm` conversion via the alien tool the reader may need to look elsewhere.


 | |
-|-|
Title | Linux Patch Management: keeping Linux systems up to date | 
Author | Michael Jang | 
Publisher | Prentice Hall — Pearson Education | 
ISBN | 0132366754 | 
Year | 2006 | 
Pages | 288 | 
CD included | No | 
FS Oriented | 10 | 
Over all score | 8 | 

=TABLE_CAPTION=In short=

