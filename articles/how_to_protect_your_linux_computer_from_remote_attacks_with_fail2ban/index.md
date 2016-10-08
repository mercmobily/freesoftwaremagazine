---
nid: '3844'
title: 'How to protect your GNU/Linux computer from remote attacks with Fail2ban'
authors: 'Jeff Jordan'
published: '2015-06-16 6:51:26'
tags: 'hackers,hacking,spying,ssh,privacy'
license: verbatim_only
section: hacking
main_image: main.jpg
listed: 'true'

---
Governments around the world are hacking into any computer that they can find. They are not just targeting large companies, but any computer that has information that they can sell. Is there anything on your computer that some hacker could sell for money?  When was the last time you looked at your `/var/log/auth.log` file?

# Checking

First of all, if you are behind a "NAT", it doesn't mean that you are safe. NAT is the mechanism where several computers share the same IP address; if that's the case, those computers are -- in theory -- invisible from the outside. While historically most attacks happen when computers have a public IP address, there is a [lot that can go wrong even with NAT](http://security.stackexchange.com/questions/7911/what-kind-of-attacks-against-home-routers-nat-do-exist).
 
For entertainment value go ahead, open a terminal and type (assuming it's a Debian lineage distros):

=CODE_START=
less /var/log/auth.log.
=CODE_END=

or for RedHat lineage distros:

=CODE_START=
less /var/log/secure
=CODE_END=

The only entries in it should be readily identifiable logins by yourself, root, and CRON jobs. There may be other entries depending on what you've been doing, but what you shouldn't see any entries that show someone from some unidentifiable IP address, trying to login to your system. If you see a lot of them, then it's time to start worrying and do something about it.

I setup an Ubuntu box with `sshd` (the ssh daemon) running and connected it to my home LAN. Within 3 days, I had over 5,000 attempted logins from IP address originating from China, South Pacific, India, and Indonesia. I then implemented the strategies that I'm about to show you and have never had even one attempt within 90 days, being online.  

For example I had:

=CODE_START=
May 31 03:17:10 centos655130 sshd[4461]: Failed password for root from 43.229.52.173 port 43493 ssh2
May 31 03:17:12 centos655130 sshd[4461]: Failed password for root from 43.229.52.173 port 43493 ssh2
May 31 03:17:14 centos655130 sshd[4461]: Failed password for root from 43.229.52.173 port 43493 ssh2
May 31 03:17:14 centos655130 sshd[4462]: Received disconnect from 43.229.52.173: 11: 
=CODE_END=

If you have a ssh daemon running so that you can login to your computer remotely, you'll see entries in your access log file (`/var/log/auth.log` on Debian type systems), showing that you logged in using your name, from some IP address. If you have your ssh daemon setup to accept connections on port 22, which is the default port for ssh logins, and your machine has a direct connection, you'll probably also see a _lot_ of people trying to login from IP address that belong to companies from all over the world. They are running programs that go through every IP address on the net, looking for vulnerable computers.

All it takes, is a bit of distraction on your side, a weak password, and they are in.  

# Protecting yourself

There are several steps needed to fully protect your computer. The simplest way is to install a program called Fail2ban. Most distros have this in their repositories. If not, you can find it easily with Google. 

Fail2ban is simple to install and configure. Many tutorials can easily be found. Briefly, what Fail2ban does is detect if someone from any IP address tries to login more than a certain number of times, within a certain amount of time (default is 3 tries in 10 minutes) and bans that IP address for 10 minutes. That means that if that same person tries to login a 4th time, within 10 minutes, your computer will not even acknowledge the connection from that IP address and hopefully the hacker will give up.

# Installing it

In a Debian-based system, you would install it with `sudo apt-get install fail2ban`. After the installation process, you will see something like this:

=CODE_START=
Processing triggers for ureadahead (0.100.0-16) ...
ureadahead will be reprofiled on next reboot
Setting up fail2ban (0.8.11-1) ...
l2ban
 * Starting authentication failure monitor fail2ban                      [ OK ] 
Setting up python-pyinotify (0.9.4-1build1) ...
Processing triggers for ureadahead (0.100.0-16) ...
merc@merc-ThinkPad-X131e:~user$ 
=CODE_END=

In CentOS 6 systems, you would first add EPEL to your repository with `rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm`, and then type `yum install fail2ban` to get it installed.

# Configuring it

The default values are only a starting point. They assume that the person will give up and move on if they can't make a connection after a few tries after they've been banned. I have found from experience that the default times don't work very well. People from that same IP address will come back day after day or wait 30 minutes and try again. Luckily, those times can be changed very easily. My personal opinion would be to set the ban times to at least 30 minutes and maybe even 24 hours. There is an option to ban them forever.

However, that assumes that you don't fumble the ball and mistype your login from a remote location more than 3 times in 10 minutes. Otherwise, you'll be locked out of your own computer for 24 hours, unless you find another IP address to login from. 

To change fail2ban's configuration, first make a copy of its config file:

=CODE_START=
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
=CODE_END=

You can then go ahead and edit the file `/etc/fail2ban/jail.local`. The top part allows you to define times, and that's easy to understand. Refer to the [official documentation of fail2ban](http://www.fail2ban.org/wiki/index.php/Main_Page) for details on how to configure it.

When you change the configuration, remember to run `sudo service fail2ban restart` so that the changes take effect.

By typing as root `iptables -L`, you'll see that Fail2ban is working properly. Your firewall (iptables) should look something like this:

=CODE_START=
Chain INPUT (policy ACCEPT)
target     prot opt source               destination         
fail2ban-apache-nohome  tcp  --  anywhere             anywhere             multiport dports http,https
fail2ban-apache-overflows  tcp  --  anywhere             anywhere             multiport dports http,https
fail2ban-apache-noscript  tcp  --  anywhere             anywhere             multiport dports http,https
fail2ban-apache-multiport  tcp  --  anywhere             anywhere             multiport dports http,https
fail2ban-apache  tcp  --  anywhere             anywhere             multiport dports http,https
fail2ban-ssh  tcp  --  anywhere             anywhere             multiport dports ssh
ACCEPT     udp  --  anywhere             anywhere             udp dpt:domain
ACCEPT     tcp  --  anywhere             anywhere             tcp dpt:domain
ACCEPT     udp  --  anywhere             anywhere             udp dpt:bootps
ACCEPT     tcp  --  anywhere             anywhere             tcp dpt:bootps
=CODE_END=

This shows that Fail2ban is protecting both ssh and the Apache web server.
With Fail2ban running, you'll see entries in your `/var/log/auth.log` file showing when an IP was banned and when it was unbanned. 

# Conclusion

Fail2ban will help immensely in preventing hackers from logging into your computer. However, this still allows them 3 tries, of which one may be successful. 

[1] [China admits cyber warriors](http://fortune.com/2015/03/26/china-admits-cyber-warriors/)

[2] [Chinese Hacking of Fortune 500 Companies](http://www.c-span.org/video/?314832-6/chinese-hacking-fortune-500-comapnies)
