---
nid: '2033'
title: mgetty
authors: 'Wouter Verhelst'
published: '2007-01-28 9:00:00'
tags: 'fax,modem,hylafax,mgetty'
license: verbatim_only
section: hacking
listed: 'true'

---
By many people, sending and receiving faxes on GNU/Linux is considered to be equivalent to using HylaFAX. And while I agree that HylaFAX is a nice piece of software with a nice set of features, I found that sometimes it can be rather overwhelming to set up. If you need some of its more advanced features, such as its client-server protocol that’s used for Windows clients, then HylaFAX is a great choice. But if you don’t need all that, then I believe mgetty is a much wiser choice...


# Background

The transmission standard for faxes is very similar to modem technology; a fax may send data at a speed of either 9600 or 14400 bps. Since there are some differences, a modem does need some modifications to allow for sending and receiving faxes; so not all modems will support sending and/or receiving faxes at all. Most will, however. Obviously the computer also needs to know whether the incoming transmission contains fax data or is just a data transmission; but that’s easy to find out, since the modem will tell the software this. Additionally, since the beginning of a PPP connection is rather peculiar, it’s pretty easy to figure out whether you’re talking to a PPP connection or whether the incoming data transmission contains some random junk.

With mgetty, it’s possible to exploit this so that one can use a single modem as a fax receiver, to handle incoming PPP connections, and to give people the ability to log in through a getty connection on the modem line. Additionally, mgetty can send out faxes as well, and even handle voice calls, if your modem has support for that. Incoming faxes will be handed to a script; the default script will convert the fax to an image file in one of a number of formats, and mail that off to a configurable user.


# Setting up incoming data traffic

So, how does all this work? It’s quite simple, really:

First, you need to install mgetty, either by using the packages in your distribution, or [from source](ftp://alpha.greenie.net/pub/mgetty/source/).

Next, edit the configuration files. In prepackaged distributions, these are often found in `/etc/mgetty`; the most important one for incoming data is `/etc/mgetty/login.config`, which specifies what to do with incoming transmissions. It can be as simple as containing two lines:


=CODE_START=

/AutoPPP/   -   a_ppp   /usr/sbin/pppd auth -chap +pap login proxyarp debug
*           -   -       /bin/login @

=CODE_END=

Which will allow incoming PPP connections, provided the user specifies a username and password that exist in `/etc/passwd`, encoded using PAP; or it will allow a non-PPP data connection by just giving the user a plain-text login prompt, where the user should log in with the same username and password.

It’s important to realize that PAP and getty logon procedures require passwords to be sent out in the clear over the wire; if you’re interested in a slightly more secure setup, you may want to look into using CHAP rather than PAP; but note that then you can’t use passwords from `/etc/passwd` then, while CHAP isn’t an encryption system either; it’s just a rather weak password scrambling system. Also note that `login.conf` gives you a pretty flexible way of disallowing certain users to log in; if you don’t want _every_ user in `/etc/passwd` to be able to log on to your modem via your getty, you can replace the * in the second line by a username (you would need to add a line per user who is allowed to log in).

Now it’s time to put mgetty in your `/etc/inittab`. Add a line like this:


=CODE_START=

S0:2345:respawn:/sbin/mgetty -x0 -s 57600 ttyS0

=CODE_END=

And take care to ensure that the first two letters are unique in your entire inittab, that the 57600 is modified to be the correct speed for your modem, and that the “2345” includes the runlevel your system defaults to.

With that, you have a running and working mgetty setup. You can receive faxes; you can receive PPP calls to investigate if something goes wrong with your network; and you can receive “regular” getty logins through a modem in case something goes totally awry and even PPP doesn’t work.


# Faxing

After setting up mgetty as described above, receiving faxes is enabled by default, but it can be disabled by specifying a `-D` option on the mgetty command line in `inittab`; -D, for “Data only”. Similarly, data calls can be disabled by use of the `-F` command line option, for “Fax only”. If you choose to enable receiving faxes, then the `/etc/mgetty/new_fax` script is executed when a fax is received. As explained before, the default `new_fax` script will mail the fax off to a specified user after conversion to a specific image format; you may want to edit the that file to modify the recipient of fax mails, and/or the image format to which faxes are converted.

If you also want to send faxes using your mgetty setup, then you need a bit more work. Not much, though:

First, edit `/etc/mgetty/mgetty.config`, `/etc/mgetty/sendfax.config`, and `/etc/mgetty/faxrunq.config`, which require some configuration regarding your modem, your fax ID (the string, usually containing your name, which is listed on top of every outgoing fax), and some other things. These files are pretty well documented and straightforward; I can’t really explain them here. Next, make sure that `faxrunqd` is running; on Debian, you do this by way of the `/etc/init.d/mgetty-fax` initscript. Finally, you can send faxes by way of the `faxspool` command: `faxspool +3231234567 file1.ps file2.ps file3.ps` will convert three postscript files to the right Fax encoding, and queue them for transmission. Faxspool will accept files in either Postscript or plain ASCII format; it also supports delayed transmission (e.g., queueing a fax for transmission at night). For more information on this and several other features, please see the `faxspool` manpage.


# Conclusion

While `mgetty` does not support a client-server protocol such as is the case with HylaFAX, which makes sending faxes from Windows clients slightly more complicated, it is a nice piece of software that is easy to set up, and supports many advanced fax features, as well as a number of other things. If you tried HylaFAX and didn’t like it—or just if you don’t need all the maintenance overhead—mgetty may be something for you.


# Resources


* [HylaFAX](http://www.hylafax.org/)
* [Mgetty](http://mgetty.greenie.net/)

