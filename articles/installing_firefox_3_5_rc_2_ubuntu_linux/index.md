---
nid: '3160'
title: 'Installing Firefox 3.5 RC 2 in Ubuntu/Linux'
authors: code.guru
published: '2009-06-21 1:46:12'
tags: 'linux,ubuntu,firefox,tutorial,install'
license: verbatim_only
section: end_users
listed: 'true'

---
If you are using Ubuntu or any other _modern_ Linux distribution, you are probably running _Mozilla Firefox 3.something_. While those versions are stable, they are getting a little outdated; why not upgrade? Shall We?

<!--break-->

# Getting Firefox
Before we can install our new version of Firefox, we need to get a copy. I always like to download the latest from the [Mozilla FTP Server](ftp://ftp.mozilla.org/pub/).

To save us a little bit of time I've taken the liberty to find the link to the latest version as of right now.

Here's the link to download it:
[ftp://ftp.mozilla.org/pub/firefox/releases/3.5rc2/linux-i686/en-US/firefox-3.5rc2.tar.bz2](ftp://ftp.mozilla.org/pub/firefox/releases/3.5rc2/linux-i686/en-US/firefox-3.5rc2.tar.bz2)

Just download that, and we'll be ready to go.

# Installing Firefox
We'll be installing Firefox in Ubuntu 9.04; if you happen to be running a different _distro_, don't worry to much, these steps are pretty general.

1. Save the file to your desktop
2. Open a terminal
3. `cd Desktop`
4. `tar xfvj firefox-3.5rc2.tar.bz2` 
5. `sudo mv firefox /usr/lib/`
6. `cd /usr/lib/`
7. `ln -s /usr/lib/firefox/firefox /usr/bin/firefox`

There ya' go! You can now run firefox from any terminal with the command `firefox`

# Making The Menu Item(Optional)
This process installs Firefox, but it may leave an empty place in your menu. If you want to add it again, you can use _alacarte_ by running the command `alacarte`. It's a pretty straight-forward process.

#Conclusion
If all went well you'll be enjoying Firefox. I hope this tutorial was helpful to you, and feel free to comment/share it with people.   

~ Mike

# References
Here are a few links that were helpful in putting this tutorial together

* [Installing Firefox in Debian Lenny](http://www.pebelnet.com/?p=109)
* [Desktop Tricks](https://help.ubuntu.com/6.06/ubuntu/desktopguide/C/desktop-tips.html)

#License
This article is published under the GNU Free Documentation License.
