---
nid: '3582'
title: 'Checking Out Ubuntu Studio 11.04'
authors: 'Terry Hancock'
published: '2011-12-13 5:09:07'
tags: 'ubuntu,debian,gnu/linux,blender,multimedia,software-center'
license: verbatim_only
section: end_users
main_image: studio.jpg
listed: 'true'

---
<!-- Checking Out Ubuntu Studio 11.04 -->

Well, it's not exactly brand new, but I am taking my first real look at Ubuntu Studio 11.04 (based on Ubuntu "Natty Narwhal"). This is what we decided to put on our "guest" computer when Debian "Wheezy" proved not to be so easy, and it gives us an opportunity to step out of our rut and look at a new GNU/Linux distribution.

<!--break-->

If you read my column a lot, you probably know I'm a long-term Debian loyalist. Or maybe I should say "lazy-ist", because my loyalty to Debian is not so much a matter of ideology as a simple case of me not wanting to have to learn a new system. I like computer technology, but mostly because of what I can do with it, not for its own sake. So I tend to find one system I'm comfortable with, and stick with it -- especially when it comes to the computer I use every day.

=ZOOM=I'm a long-term Debian loyalist. Or maybe I should say "lazy-ist", because my loyalty to Debian is not so much a matter of ideology as a simple case of me not wanting to have to learn a new system=

This can be very frustrating, though, when software I very much want to use is not packaged for my familiar system. I _can_ install software from source, but I really don't like to, because it involves a lot of "technical debt" -- once you start maintaining a package installed from source, you have to keep doing it or give up and go back to the packaged version. And I do have other things to do with my time.

# An extra computer

Recently, we "inherited" another computer, and we decided to set it up as a "guest" or "backup" computer which isn't particularly for anyone in the house, but is there in case one of the others is not working, or doesn't have the right software, or whatever.

Originally we thought we'd run a Debian "testing" instance on it. Right now that would be "Wheezy".

=ZOOM=Recently, we "inherited" another computer, and we decided to set it up as a "guest" or "backup" computer=

But it seems to be an awkward time for doing that and my first few attempts failed -- not impossible to fix, but a good excuse to try something different.

So we decided to try out [Ubuntu Studio](http://ubuntustudio.org). Ubuntu Studio is a flavor of Ubuntu optimized for multimedia users. The main difference at present seems to be what software it installs by default.

=IMAGE=fig_us_apps.jpg=Ubuntu Studio specializes in multimedia applications used on a creative workstation. This is a good fit for our household=

I have two major objections to Ubuntu, which is why I haven't used it in the past:

* I prefer KDE to Gnome, especially with KDE4
* I don't like the default single-user installation

However, there is an "alternate install" version of Ubuntu, which means using the standard Debian installer.

=ZOOM=There is an "alternate install" version of Ubuntu, which means using the standard Debian installer=

There is, of course, a KDE version of Ubuntu, called Kubuntu, but it is not as well supported. Besides, I felt I should give Gnome more of a chance.

The one thing that I really do admire about Ubuntu, is that it has much more up-to-date packages. Especially for end-user applications. And it has a better reputation for keeping them working well enough for the end-user market that Ubuntu targets (whereas the stereotypical Debian user is who the shaggy dog in [Ryan Cartwright](http://www.freesoftwaremagazine.com/poster/8833)'s "[Bizarre Cathedral](http://www.freesoftwaremagazine.com/taxonomy/term/1395)" cartoons is supposed to be).

# First Impressions

My first observation was that the installation went a little more smoothly. There were a number of streamlined steps in the installation that eliminated some of the hiccups I've gotten used to with Debian.

=ZOOM=My first observation was that the installation went a little more smoothly=

Using the alternate installer also gave me all the same flexibility in setting up disk partitions and user accounts that I am used to with Debian installations.

After installation, I spent some time learning how to use the system.

Gnome is unfamiliar and very minimalist when compared to KDE4. For some people this is a plus, but I find a lot of features missing that I am accustomed to.

Probably the thing that annoyed me the most is that there seems to be no way to change the appearance of the GDM log-in screen. To me, it seems particularly obtuse to assume that vocational _artists_ (the target market for Ubuntu Studio) would not want to change this.

But apparently, in order to have this ability, I would need to:

* Add a new non-standard package repository
* Install a special package called "gdm-tweaker"
* Use the application to alter the screen

Which is a lot. So I gave up and acquiesced to being stuck with Ubuntu Studio's default login screen. Maybe I'll see if the standard repositories include KDM at some point.

=ZOOM=I really resent a UI designer telling me how I should use my computer, and Gnome always feels like that to me=

I found a lot of things of this type to grumble about, which reinforces that I don't like Gnome that much. I really resent a UI designer telling me how I should use my computer, and Gnome always feels like that to me.

I did finally find the controls to set up multiple desktops, which Gnome calls "Workspaces" and this certainly helped with some of the superficial issues.

Perhaps I will get used to it. But I'm certainly not switching _my_ computer over to Gnome anytime soon ("Grr." Maybe I am a little like that dog).

## Installing software

By far, the best experience with Ubuntu Studio has been the improved methods for managing software. There are in fact three major ways to do this with this installation:

* Using the command line tools (`apt-get` or `aptitude`), as I'm used to doing with Debian
* Using the GUI Synaptic interface to the APT system, or...
* Using the Ubuntu Software Center

=IMAGE=fig_software_center.jpg=For me, the Ubuntu Software Center was the coolest thing I've gotten from using this distribution=

The Ubuntu Software Center is the real star! This appears on the main menu, and is a really engaging and intuitive way to handle package management. Using the Software Center is like shopping an online catalog -- you get ratings, screencaps, good organization by type, and a search interface. Dependencies (actually handled by APT, of course) are managed intuitively on screen when you ask for an application.

This is truly an administration system for end users! I found it really easy not only to find familiar software I knew I wanted, but also to browse for new software I hadn't seen yet.

=IMAGE=fig_usc_neverball.jpg=When you find a piece of software in the Software Center, it's just like looking at a catelog page in an online store, and I think that's just about perfect for selecting packages from a large repository like Ubuntu's (or Debian's)=

## Blender 2.5

One reason I wanted to run a later release on this computer was simply that I wanted to be able to install Blender 2.5. This version includes a lot of the work developed alongside "Sintel" and has some interesting new GUI changes. I also have been in communication with people developing some exciting new Blender animation technologies -- and they are all targetting version 2.5, so if I want to try them out, I've got to get Blender 2.5 installed.

=IMAGE=fig_blender_25.jpg=I've finally gotten my first look at Blender 2.5, although closer inspection reveals a little bit of a problem with it=

Unfortunately, even in Ubuntu Studio 11.04, Blender is still only at version 2.49. I did find out that one can [install](http://www.linuxnov.com/install-blender-2-58-stable-in-ubuntu-11-04-natty-ppa/) from the Blender Subversion repository for 2.58 using a special repository:

=CODE_START=
sudo apt-add-repository ppa:cheleb/blender-svn/ubuntu
sudo apt-get update
sudo apt-get install blender
=CODE_END=

Although most of the major functionality in Blender 2.58 seems to work, I am rather frustrated with a bug in the way the menu text is rendered. By default, all of the text looks incomprehensibly garbled. By tweaking the interface under File->User Preferences->System (increasing the DPI to 128 and turning off anti-aliasing) I get output like this:

=IMAGE=fig_gl_text_bug.jpg=Text rendering bug that shows up in Blender and a few other GL programs=

I haven't figured out exactly what this is, but it's apparently something to do with the ATI Radeon 9200 graphics card and the standard "`ati`" driver module for it. It's annoying enough to make it impractical to use Blender 2.5 for anything except viewing existing models. It's probably not a Blender-specific problem, since I found the same thing in "Extreme Tux Racer".

It's too early to offer a real verdict on Ubuntu Studio, but there's a lot here I like and a few things I don't.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=
