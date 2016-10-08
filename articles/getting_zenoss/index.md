---
nid: '2925'
title: 'Getting Zenoss'
authors: 'Terry Hancock'
published: '2008-07-11 0:12:26'
tags: 'python,zenoss,network-monitoring,zope'
license: verbatim_only
listed: 'true'
book: network_monitoring_with_zenoss
book_weight: '-10'
layout: book.html

---
Zenoss is pretty new, and there is no ready-made Debian package of it (or wasn't at the time of this writing, anyway), so installation will have to be from source. Given that Zenoss is a Python/Zope program, though, this won't be exceptionally hard, so long as all of the dependencies are taken care of.

The [installation procedure for Debian](http://www.zenoss.com/community/docs/install-guides/installing-zenoss-on-debian-sarge) is documented in detail on the Zenoss website, along with [other installation guides](http://www.zenoss.com/community/docs/install-guides/) (NOTE: the link for Debian on the "install guides" page does _not_ point to the same full Debian explanation in the first link, but to a brief summary. So far, it looks as if the Debian instructions page has been orphaned—the instructions are still good though).

Summarizing very briefly, these instructions describe how to:

* Install the dependencies with `apt-get`
* Setup the authentication on your MySQL server
* Create a Zenoss user
* Run a bash script to build and install Zenoss

# Accessing Zenoss

Once you have a Zope server running Zenoss, you will need to log into it and start setting it up to monitor your network. You should be able to access Zenoss now, by pointing your browser at the URL `http://localhost:8080`. When you do, you should see the login screen below (Figure 2). The username you will enter is "`admin`" and the password is the one you gave during installation.

=IMAGE=zenoss_login_page.jpg=Figure 2: Zenoss login web page=

After typing the correct username and password, you should be taken to the "Dashboard" screen in Zenoss (Figure 3), although at the moment, it will look very boring and uninviting, because no monitoring is set up.

=IMAGE=zenoss_first_login.jpg=Figure 3: Empty "dashboard" in Zenoss=

In order to improve the situation, we will first need to set up the computers for monitoring. For my LAN, I will install SNMP and configure it to respond to community based authentication in read-only mode. For my web server, I will use the SSH/Command method, and install Zenoss-Plugins to collect additional information.

