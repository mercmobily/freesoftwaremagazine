---
nid: '1456'
title: 'Spring Cleaning'
authors: 'Jeremy Turner'
published: '2006-02-03 14:02:04'
license: verbatim_only
section: opinions
listed: 'true'

---
Here in the US, yesterday (Feb 2) was Groundhog Day. From what I understand, this comes from an old German Pennsylvania ritual of getting up early on a Winter day and observing an animal coming out of hibernation to see if he (or she, or it) can see his shadow. If so (as Phil did yesterday), tradition holds that there will be 6 more weeks of Winter. If not (which is a lot rarer), there will be an early Spring.

Of course, Spring (with or without the groundhog) means it’s a good idea to take stock of things and do a little cleaning, which I usually dread. However, since this is a free software blog, maybe I should do a little bit of cleaning on my Linux home directory.

I have a lot of files hanging around my home directory. The filestamps have unfortunately been lost in haphazard backup restores, but I do have one filestamp from early 1995. I have documents from high school, college, and even some cool scripting hacks from some of my earlier jobs that I managed to save. I’ve saved downloads, funny video/sound clips, etc. And having [TiVo](http://www.tivo.com) now for one year, I even have MPEG-2 videos, waiting to be burned to DVD and then removed. And lastly, I have lots of half-finished project directories from programs or scripts that I have yet to complete.

Before cleaning, let’s talk about organization structure. Under my home directory, I have `bin`, `doc`, `etc`, `pub`, `src`, `tmp`, and `usr`. `bin` includes my personal scripts (which really should only contain symbolic links to the actual script, which has it’s own directory in `src`). `doc` includes my document files. `etc` contains configuration files. Some of my user dotfiles (`.firefox`, `.muttrc`, `etc`) are really symbolic links to, say, `etc/firefox` or `etc/mutt/muttrc` respectively. `pub` contains downloads (not installs) or things I don’t really care to backup. `src` contains directories of projects (which I usually haven’t finished). tmp is temporary items. `usr` contains user-installed applications, such as Mozilla Firefox, Real Player, and other applications that I need to install manually.

I am in the process checking just about everything into subversion repositories on an off-site server. Why? Mainly for three reasons: (1) I have an off-site backup, (2) I have the ability to version control everything, and (3) I can check files out and in on both Linux systems and Windows systems (which I have to use occasionally).


## Off-site Backup

This is one of the more important features to me. My subversion repository is kept on a shared hosting server several time zones away. If a tornado tears through my house, at least my data is safe, although I’d probably be needing some new way to access it.


## Version Control

One obvious benefit of using a version control system, is (you guessed it) version control. Version control gives you the power to go back in time and look at how to fix the file you just deleted or otherwise messed up.


## Data Portability Between Platforms

Version control systems usually enable multiple users to collaborate in producing some type of product, either software or documentation. However, using subversion, I mimic this same functionality, except I am the only contributor, but using multiple machines, each locally. I ran into the problem of working on a document on one computer, then later editing the document on a different computer, only to discover that it was an earlier copy. Subversion keeps me in check, and keeps my files organized. Subversion also has a Windows Explorer shell extension, so if by chance I need to work on a Windows machine, I simply check out the required repository and get to work. When I’m done, I simply commit my changes, and delete the local copy of what I was working on. Then I don’t have to wonder exactly what file I’m working on.

FSM blog readers, how do you keep your home directory organized? Do you use some sort of version control system?

