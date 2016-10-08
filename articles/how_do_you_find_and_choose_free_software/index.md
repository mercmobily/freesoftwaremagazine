---
nid: '3405'
title: 'How do you find and choose free software?'
authors: 'Ryan Cartwright'
published: '2010-09-17 17:20:27'
tags: 'gnu/linux,choice,package-management,packages'
license: verbatim_only
section: opinions
listed: 'true'

---
So you've got your GNU/Linux based box. You've installed the base system and you're good to go. Welcome to the world of freedom. But then what? How do you determine what packages to install. How do you decide which of the alternatives to go with?

<!--break-->

## Package managers

I accept that the obvious answer here is to find your software in the package management tools provided by your distribution, but that may not help very much. Take Debian for example: excellent package management via dpkg, apt and associated tools but you still have something in excess of 20,000 packages to deal with. Whilst many of those will be libraries, data files and the like, it still leaves you with a lot of applications from which to choose. No matter how simple a package manager will make the installation of software, it doesn't always help that much with choosing it in the first place. Even if you use the search tools in the package manager you are still left with a decision between the various options presented in the results.

Take web browsers as a ubiquitous example. Search with apt-cache for a web browser and (once you've filtered out the libraries and plugins) you're left with a lot of possibilities to choose from ranging from text-based browsers like lynx, links or elinks up to high-end GUI ones like Firefox/Iceweasel, Konqueror and Chrome. Which one do you choose and why?

What if you want to do some graphic editing. Once you've gotten past questions like "vector or bitmap?" you need to decide on things like format, MDI and compatibility with other tools. How?

## Sourceforge

In the past when I've wanted to look for a free software tool to perform a certain job I've gone to sourceforge. It is still one of the most comprehensive lists of free software applications around, and even if I then end up installing from my package manager I still like to look at the sourceforge information while choosing. The problem is that whereas Sourceforge could once be guaranteed to include more applications for GNU/Linux than other platforms, these days -- thanks to the ever-growing popularity of free licences -- you can find a greater
number of applications for Windows and Mac systems. This fact is great news and long may it continue but it does lower the signal-to-noise ratio somewhat and that makes it a less useful tool in this context.

## So what do you use?

So how do you find and choose your free software? Do you simply go for the first package your package manager returns? Do you select the one you've heard of? Perhaps you ask somebody else what they use or maybe you look for articles in places like FSM? Whatever it is I doubt it's intuitive and I suspect it will be a tried and trusted technique you have honed over time. When somebody enters what they consider to be a brave new world of free software and they move beyond their first toddle of installing from a LiveCD how do they decide on the software they use? Do we as a community have any obligation to help them in that choice and if so how do we do it?

=ZOOM=When somebody enters the brave new world of free software how do they decide on the software they use?=

I'm not sure that recommendations in terms of voting works very well here, as it soon becomes a popularity contest and the ones at the top have a greater chance of attracting more votes simply because they are at the top. Should there be some way to have the system recommend software to you based on the usage of what you already have installed? Trying a new package just for the hell of it can be fun but again it's a question of making the decision in the first place. Maybe a system could be developed that recommends packages for you to try based again on your currently installed packages and their usage history. I should again reiterate that I am largely talking about applications here not libraries and the like. One thing to add to all this by the way is the duty of care upon packagers and developers to include useful information in the description fields for packages. I grow tired of descriptions which repeat the packages name with spaces and punctuation. While we're at it how about some documentation. almost 20 years after Linus' announcement and we're still saying the same things. You think we'd learn and grow! If you want people to use your package (including those who might understand it) then make something more than a default man page and give it a proper description.

# Free software is still best

Unfortunately I don't have any answers here beyond the suggestions above and I appreciate an article like this is often fuel for the "free software is confusing because the amount of choice" argument. Don't get me wrong though. I like having this much choice, I like that I can prefer to use one application while somebody else can prefer another. I just wish sometimes it was easier to make an informed choice.