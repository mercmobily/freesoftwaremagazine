---
nid: '3841'
title: 'Watch Netflix outside the US, for nearly free (without paying for a tunnel)'
authors: 'Tony Mobily'
published: '2015-06-02 12:08:01'
tags: 'netflix,geolocation,proxy,squid,linux'
license: verbatim_only
section: end_users
main_image: main.jpg
listed: 'true'

---
Some services line Netflix have an annoying geolocation restriction that made them unavailable outside the United States. In case of Netflix, this is due to licensing issues. It's not a slim difference: do you want to be able to access just over one thousand movies, or would you prefer to have access to over _thirteen thousand_ movies?

Unfortunately, getting around the geolocation issue is not for everybody: it's based on the principle of browsing the Internet _bouncing off_ an IP address (Internet address) located in the US (instead of using your own IP address, geolocated wherever you are).

One common way of doing so is by using a _tunnel_: in short, you are creating a "virtual cable" to a host in the US, and are using that virtual cable to direct all of your Internet traffic. Using a tunnel, magically, you are located in the US as far as anybody else is concerned.

The problem with tunnels is that they are expensive: the average price is around $5/month. That's nearly the cost of your whole Netflix subscription, just for the privilege of using Netflix in the first place!

Well, there is another solution -- one that I consider much better.

First of all: type "what is my IP" in Google, and write down the result.

# Create your own proxy server, and use Squid

This solution can be summarised by the following steps:

1. Get a cheap, super-cheap virtual server (called "VPS"). You need very very little RAM, very little disk, very little CPU... very little _everything_. You will barely use this computer! By "super cheap", I mean $3/_year_ (not a month!)
1. Install and configure "squid" on it. The configuration is the hard part, but once you're done with it, you are good to go forever.
1. Configure your browser to use that proxy server
1. Go to Netflix and enjoy more than _thirteen thousand_ movies, rather than whatever pitiful number is available

The second step is the most difficult one: it requires you to become a Linux system administrator for a good 15 minutes. You never know -- you might like it, and become a real sys admin later in life! In this article, I will assume absolutely no knowledge of GNU/Linux nor Unix.

So, let's get to it.

# Get a cheap Linux-based VPS

Google is your friend. Now, I cannot stress this enough: you need to find the cheapest, smallest, least performing VPS you can find.
Typing `cheapest vps linux` in Google returns interesting results -- once you've gone over the initial spam, fake review, and affiliate ads. There is no point in me giving out links, as they will probably age very quickly. However, I can say that I found one for $2.50/_year_ after 3 minutes of research.
The requirements are simple:

* CentOS. Any recent version will work
* SSH access as "root"

You need to make sure that you have an "ssh" client installed. If you use Windows, you should install [Putty](http://www.putty.org/).

You will use Putty to connect to your server, and run the commands you need to set it up.

The VPS provider will send you the following information:

* Your server's IP address
* The `root` user's password

You should only read on once you have obtained this information and have managed to use Putty to login; you ended up with something like this:

=CODE_START=
[root@centos655130 ~]#
=CODE_END=

Now you are ready to roll.

# Configure squid

Alright then, you are in front of the dreaded `[root@centos655130 ~]#`. Your ultimate goal at this point is to make sure you didn't waste the money you spent for the VPS, and get Squid running.

First of all: Squid is a _proxy server_. This means that _every_ request to view a web page won't be made to the destination server itself, but to Squid, which will -- in turn -- retrieve the page for you, and will send it to your browser. So, in terms of traffic, once you have Squid set up, _everything_ in terms of browsing will go through Squid.

The first thing you need to do is install Squid on your server. To do that, type:

=CODE_START=
yum -y install squid
=CODE_END=

You will also install "nano", a simple editor for GNU/Linux:

=CODE_START=
yum -y install nano
=CODE_END=

At this point, you are nearly good to go. First of all, start Squid and make sure that it's always run when the server is booted up:

=CODE_START=
chkconfig squid on
=CODE_END=

The next thing you need to do is _configure_ squid. In server speech, configuring means changing a configuration file so that a program works the way you want it to work.

To do that, you will use `nano`, the editor I got you to install a minute ago.

=CODE_START=
nano /etc/squid/squid.conf
=CODE_END=

Nano works like any other text editor: scroll right to the end, and paste the following:

=CODE_START=
via off
forwarded_for off

request_header_access Allow allow all
request_header_access Authorization allow all
request_header_access WWW-Authenticate allow all
request_header_access Proxy-Authorization allow all
request_header_access Proxy-Authenticate allow all
request_header_access Cache-Control allow all
request_header_access Content-Encoding allow all
request_header_access Content-Length allow all
request_header_access Content-Type allow all
request_header_access Date allow all
request_header_access Expires allow all
request_header_access Host allow all
request_header_access If-Modified-Since allow all
request_header_access Last-Modified allow all
request_header_access Location allow all
request_header_access Pragma allow all
request_header_access Accept allow all
request_header_access Accept-Charset allow all
request_header_access Accept-Encoding allow all
request_header_access Accept-Language allow all
request_header_access Content-Language allow all
request_header_access Mime-Version allow all
request_header_access Retry-After allow all
request_header_access Title allow all
request_header_access Connection allow all
request_header_access Proxy-Connection allow all
request_header_access User-Agent allow all
request_header_access Cookie allow all
request_header_access All deny all

access_log none
cache_store_log none
cache_log /dev/null
cache deny all

=CODE_END=

This will make Squid "invisible" to other hosts (in theory, it should tell the other hosts about the fact that it's a proxy request, but that would defeat our purpose of getting around geolocation!). It will also make sure that any logging, and any caching, is disabled.

The code above was taken partially from the [official squid documentation about  request_header_access](http://www.squid-cache.org/Doc/config/request_header_access/), and partially from a [StackOverflow question about Squid and anonymous traffic](http://askubuntu.com/questions/618070/http-proxy-using-squid-on-ubuntu-12-04-and-anonymizing-the-traffic).

Once you've pasted the code above, you can save the file by pressing CTRL-O in Nano; you can then exit Nano by pressing CTRL-X.

Now, there is more. The problem with this setup is that _anybody_ will be able to use your Squid to browse the Internet anonymously. That's not what you want: you need to make sure only _authenticated_ users can do that.

This is a little tricky, but easy enough to do.

First of all, type `rpm -ql squid | grep digest` in the command line. You should end up with something like this:

=CODE_START=
[root@centos655130 ~]# rpm -ql squid | grep digest
/usr/lib/squid/digest_edir_auth
/usr/lib/squid/digest_ldap_auth
/usr/lib/squid/digest_pw_auth
[root@centos655130 ~]# 
=CODE_END=

Or your output might look like this:

=CODE_START=
[root@centos655130 ~]# rpm -ql squid | grep digest
/usr/lib64/squid/digest_edir_auth
/usr/lib64/squid/digest_ldap_auth
/usr/lib64/squid/digest_pw_auth
[root@centos655130 ~]# 
=CODE_END=

In any case, you are interested in the line with `digest_pw_auth`. I will assume it's `/usr/lib64/squid/digest_pw_auth`, but it might well be `/usr/lib/squid/digest_pw_auth` (without the 64).

Go back to the `squid.conf` file:

=CODE_START=
nano /etc/squid/squid.conf
=CODE_END=

This time, don't scroll right down, and find the spot, in the file, that says "INSERT YOUR OWN RULE(S) HERE TO ALLOW ACCESS FROM YOUR CLIENTS". Scroll a little down, and find the line that reads `http_access deny all`.

Now, _before_ that line (and yes, it _needs_ to be _before_!), type:

=CODE_START=
auth_param digest program /usr/lib64/squid/digest_pw_auth -c /etc/squid/passwords
auth_param digest realm proxy
acl authenticated proxy_auth REQUIRED
http_access allow authenticated
=CODE_END=

Note that the first line might be `/usr/lib/squid/digest_pw_auth` or `/usr/lib64/squid/digest_pw_auth` -- it depends on the result of the command before.
 
You are nearly there: it's now time to create your user, by typing:

=CODE_START=
htdigest -c /etc/squid/passwords proxy user
=CODE_END=

And type a password (it will prompt for it twice).

At this point, believe it or not, you are done.
Type:

=CODE_START=
service squid start
=CODE_END=

Squid will start, and it will be ready to act as your own personal bridge.

If you made a mistake, and need to change `squid.conf` again, remember to run:

=CODE_START=
service squid restart
=CODE_END=

This will restart Squid, and will make sure that any changes will actually take effect.

# Configure your browser

At this point, you are ready to test your Squid. In order to do that, you will need to configure your browser so that it uses a "Proxy server" in order to browse the Internet.

The server's address will be the IP (internet address) of your VPS. The port will be 3128. Remember to set this both for HTTP and for HTTPS.

When trying to retrieve a page, you will be asked for a login and password: the login will be `user`, and the password will be whatever you set when you used your `htdigest` command.

If you were asked to authenticate, you are _definitely_ using the proxy server. If you want to make sure, just type `what is my IP` in Google and check that the IP is the one of your proxy server.

You did it!

# Keep your server updated

You are a system administrator now, with your own server! While it doesn't really matter _that_ much if the server gets hacked and destroyed (since it takes so little time to setup), you still don't want to give crackers and hackers and open system to use and abuse.

Basically, you need to make sure that you:

* Login as root
* Run the command `yum update` on your server regularly.

That's it. Yes, it is this simple to keep a GNU/Linux server running CentOS up to date. Nevertheless, you mustn't forget.

# Enjoy!

If there was anything missing, please leave a comment underneath here.