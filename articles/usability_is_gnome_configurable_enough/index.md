---
nid: '1935'
title: 'Usability: is Gnome configurable enough?'
authors: 'Wouter Verhelst'
published: '2006-12-10 9:00:00'
tags: 'gnome,usability,f-spot'
license: verbatim_only
section: opinions
listed: 'true'

---
Two days ago, I bought myself a DSLR camera; a Nikon D50. It’s a nice piece of hardware, and since it can do USB Mass Storage, there are no issues in using it with Linux. Well, not from the camera’s side, anyway.

When you work with a digital camera, there are a few things you usually want to do with the photos. First, you want to get them off the camera and onto your hard disk. Second, you want to manage them with some application that will store some metadata in a database and allow you to search this metadata for photos and catalogue them. You want something to edit photos. And, you may want to put some of them online.

There are applications for all of these available for GNU/Linux. And I’m not Bruce Perens, so when I find that something doesn’t work the way I think it should, I won’t shout that it’s impossible. But while looking around for an application to manage my pictures, I was reminded of something:

[Linus was right](http://mail.gnome.org/archives/usability/2005-December/msg00021.html).


# Managing pictures

On IRC, I was pointed towards [f-spot](http://f-spot.org), a Gnome application for picture management with a whole slew of features. With this application, I can:


* import pictures into a sort of database directly from the camera, either using PTP (through [gphoto2](http://www.gphoto.org/)) or via USB Mass Storage, and _turn them in the right direction_, using the EXIF data in the pictures; alternatively, I can import any random picture from anywhere, provided I put it in some directory somewhere.
* tag them; that is, tack a number of tags onto them from either a set of predefined tags that come with the application or with my own tags which I can add in a hierarchical fashion
* search for them on a timeline or based on the tags that have been applied
* view them full-screen or in a slideshow
* export them to web applications such as [Gallery](http://gallery.menalto.com/), [Flickr](http://www.flickr.com/), [Picasa](http://picasa.google.com), and others
* export files to a CD using nautilus-cdburner. (It’s not clear to me whether this is going to be a Photo-CD; if I’m correct and it is, I should be able to view it in my DVD player)
* edit them with a few builtin functions or with external applications such as [The GIMP](http://www.gimp.org/)

...and a whole bunch of other interesting things. On the whole, a very nice and flexible application, really; there were only two things that I _didn’t_ like about it:


1. The application stores pictures in a directory `~/Photos`. I don’t like that; I have a directory `data/images` where all my graphic files are today, and I would like my pictures to be stored in, say, `data/images/photos`.
1. When in slideshow mode, it switches to the next picture in about one or two seconds, whereas I would prefer a more relaxed five seconds.


# De gustibus et coloribus non disputandum

Obviously, anyone even remotely familiar with computer software will feel that these are things nobody feels the same about. So, it should be possible to change these values in the preferences. And, while that’s true, this is a Gnome application...


=IMAGE=preferences.png=The preferences dialog=

The preferences dialog shows me that the application has a feature which I hadn’t even thought about (using my pictures for a screensaver); but the two basic options I was looking for were glaring in their absense. Worse; if I want to modify these basic things, I have to download the source, edit it, and recompile the application, for they don’t even provide `gconf` hooks. I doubt anyone not familiar with the source code could accomplish that.

Of course, since the Debian package of this application is currently at version 0.2.1, it’s not unlikely that more recent versions _will_ turn this into configurable settings; in fact, a quick check shows that the most recent version now reads the first, but not the second, from a preferences variable rather than a string. Still, it’s striking that it’s Gnome applications that have these types of problems; and it always makes me wonder what their developers are thinking, and how they can defend non-configurability as “usability”.


# Conclusion

Some things just cannot have sensible defaults. I don’t mind if my holiday pictures scroll by at a high rate, but I don’t feel the same about pictures I took just because I felt like taking pictures.

Accordingly, some things should be configurable. It’s okay if that makes the application slightly harder to use—computers are intrinsically complex and, as a result, hard to use.

Linus was right.

