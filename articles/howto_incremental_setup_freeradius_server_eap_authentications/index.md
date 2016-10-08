---
nid: '2760'
title: 'HOWTO: Incremental Setup of FreeRADIUS Server for EAP Authentications'
authors: 'Gong Cheng'
published: '2008-03-09 8:14:15'
tags: freeradius
license: verbatim_only
section: hacking
listed: 'true'

---
# Introduction

If you are like me and need to set up a FreeRADIUS server for EAP 
authentications every so often, each time do you also find yourself 
having a little hard time trying to refresh your memory? Well, after that 
happened to me for a couple of times, I found that a incremental and 
systematic way of setting up and testing FreeRADIUS server could make it 
easier to remember and easier to debug. Here is what I do and I hope 
it can benefit others as well.

Step 1. Set up and test local authentication without EAP, using radtest tool.
Step 2. Set up and test remote authentication without EAP, using radtest tool.
Step 3. Set up and test simple EAP method EAP-MD5 (without certificates), using 
        radeapclient tool.
Step 4. Install necessary certicates, set up and do full tests of more 
        sophisticated EAP methods like EAP-TLS, PEAP and EAP-TTLS, using the 
        eapol_test tool from the wpa_supplicant project.

If this approach seems to make sense to you, I have more details below on each step.

# A Few Things First

Before going to the steps, there are a few things I'd like to set aside:

* This guide is based on the latest FreeRADIUS version available at the time of
  writing: 2.0.2, and I installed it from source because most binary packages
  are still of 1.7 or other 1.x versions. Most of the things covered here 
  should work just as well in older versions, and if anything is not, I will 
  try to point it out to the best of my knowledge.

* Usual location for installed files:
  `/usr/local/sbin/radiusd` is the main binary
  radtest, radeapclient could be found at `/usr/local/bin/`
  `/usr/local/etc/raddb/*` for configuration files
  `/usr/local/etc/raddb/certs/*` for included certiciates

* I generated my own certiciates using openssl, but I won't go into details on 
  how to do that here: there are ample resources available on the Internet. 
  You can also use FreeRADIUS's included certificates just for testing purposes
  (only on 2.x version, older versions certs might have expired), or use any 
  other valid certificates.

* On terminology's side, I am using the usual 3-party authentication model, and 
  that is composed of: supplicant, authenticator and Authentication server/RADIUS 
  server. This wikipedia page could be helpful on the background:
  `http://en.wikipedia.org/wiki/802.1x`

* Configuration files that are relevant to this guide:
- radiusd.conf: the main configuration file. We won't need to modify the 
                default radiusd.conf file though, but you should know about it.
- clients.conf: RADIUS clients/NAS configurations. Note that NAS is the term 
                used in RADIUS terminology. To simpilify things, just think of 
                it as authenticator in our 3-party model.
- users: per user configurations. Think of users as supplicants in our 3-party 
         model. Note that user configurations could reside in other places like 
         a database instead of the users file, but that is out of the scope of 
         this howto.
- eap.conf: EAP related configurations

* Some general suggestions

  - it is always good to save the original raddb directory as future reference, 
for example I do:

  cp -r raddb raddb.orig

  - Starting from the default configuration files is a good idea because a lot 
    of basic scenariost have already been taken into considerations.

  - Always start your FreeRADIUS daemon in debug mode with -X during initial 
    testing and trouble-shooting phase:

  /usr/local/sbin/radiusd -X

    And if there is any issues, look into the screen output of your radiusd's 
    terminal window for clues.

  - Always remember to restart your daemon after making any configuration 
    changes

  - A lot of commands here require you to have root access of the system, so you
    either need be root or need to use commands like sudo.

# The Steps

## Step 1. The most basic: Local authentication without EAP

  In this step, all the configurations you need is to add a test user at the 
  end of your users file with its password listed, like this:

=CODE_START=
testuser Cleartext-Password := "password"
=CODE_END=

  We don't need to configure the clients.conf file because FreeRADIUS server's
  default clients.conf already has an entry for local authenticators: 127.0.0.1.
  For each authenticator/NAS in the file, a shared secret with the FreeRADIUS 
  server needs to be provided too, and for 127.0.0.1 it is by default 
  "testing123".

  Now go ahead and restart your server.

  There is a included tool in FreeRADIUS package (normally found in
  /usr/local/bin) called radtest that is very convenient. In Step 1, we invoke 
  the radtest tool locally on the same host your FreeRADIUS daemon is running:

=CODE_START=
radtest testuser password 127.0.0.1 1812 testing123
=CODE_END=

  The syntax is straightforward: 
=CODE_START=
radtest <user name> <user password> <server IP address> <server UDP port> <shared secret>
=CODE_END=

  You should see an output like this:

=CODE_START=
Sending Access-Request of id 11 to 127.0.0.1 port 1812
User-Name = "testuser"
User-Password = "password"
NAS-IP-Address = 127.0.1.1
NAS-Port = 1812
rad_recv: Access-Accept packet from host 127.0.0.1 port 1812, id=11, length=20
=CODE_END=

  It succeeds if an Access-Accept is received like the above.

  There is something extra here for FreeRADIUS 1.x users: your default users 
  file that you change upon might came with a line like

=CODE_START=
  DEFAULT Auth-Type = System
=CODE_END=


  That line could ruin a simple radtest test like the above. What it means is 
  that by default a user will use local Unix password system for authentication
  unless the "Auth-Type" is overwritten later with a different value.
  It does affect a request coming from radtest and will require your local Unix 
  system to have a user named testuser and with password "passowrd" to make our 
  test succeed. That is not very likely to be the case unless you create such
  a user. An easy solution is to comment out that line by putting a "#" at the
  beginning. You could also add a 
  "Auth-Type := Local,"
  in your testuser entry but you will have to remember removing that for the
  EAP tests we have later.

  You might also see people use "User-Password :=" rather than using
  "Cleartext-Password". Both work for older versions but you should stick to the
  latter in latest versions.
 
## Step 2. One step further: authenticate via a remote authenticator

  Once you passed Step 1, we can go one step further by invoking radtest from 
  another host. This does mean that you need to have a FreeRADIUS installed, 
  preferably matching versions, on another host that is network reachable.

  Before you fire your radtest on another host, you need one more configuration 
  change: Add your test authenticator host at the end of your clients.conf and
  assign a shared-secret. This is what I use for a host at 192.168.1.100

=CODE_START=
  client 192.168.1.100 {
      secret = testing123
      shortname = 192.168.1.100
   }
=CODE_END=

  Suppose the server itself is at 192.168.1.1, then all you need is to change
  127.0.0.1 from previous test into 192.168.1.1 (I am using same shared secret
  here), and do it from 192.168.1.100:

=CODE_START=
radtest testuser password 192.168.1.100 1812 testing123
=CODE_END=

  Again, it succeeds only if an Access-Accept is received.
  

## Step 3. Getting the simplest EAP method into the picture: EAP-MD5

  Now we are ready to try out the basic EAP functionality. EAP-MD5 is among the
  simplest EAP methods available, but it does allow you to exercise your
  FreeRADIUS server's EAP module without requiring things like certificates. You 
  should be warned though that EAP-MD5 is not considered an secure
  authentication method. We only use it for testing here.

  FreeRADIUS came with another tool that can be used to test EAP-MD5:
  radeapclient
  You can normally find it at /usr/local/bin too if you've installed FreeRADIUS.

  For our purpose, the tool can be used like this:

  This is what works:

=CODE_START=
( echo "User-Name = \"testuser\""; \
  echo "Cleartext-Password = \"password\""; \
  echo "EAP-Code = Response"; \
  echo "EAP-Id = 210"; \
  echo "EAP-Type-Identity = \"testuser\""; \
  echo "Message-Authenticator = 0x00"; ) | \
radeapclient -x 127.0.0.1 auth testing123
=CODE_END=

  It is a command the accepts input from standard input which is generated from
  a series of echo commands printing RADIUS attributes. 

  The command succeeds if you see an Access-Accept packet with EAP-Code = Success. 
  
  You might have noticed that command is issued from local host. You could
  repeat the same test on a different host. Just change 127.0.0.1 to the server
  IP address, and make sure you have an entry for your authenticator in 
  clients.conf, just like before.

## Step 4. Full swing with EAP-TLS, EAP-TTLS and PEAP

  We are almost ready for testing more sophisticated EAP methods, with two more
  preparations to be done.

  Firstly, install your certificates and update your eap.conf to reflect the 
  paths to necessary files.  If you have your own certificate generation 
  mechanism already in place, and in that case, you need to copy three files 
  onto your FreeRADIUS server's host:

  - The Root CA (Certificate Authority) certificate file which lists the 
    trusted root CAs
  - A certificate generated for your FreeRADIUS server
  - The matching private key for your FreeRADIUS server's certificate

  However, if you don't have your own certificates ready and just for testing
  purposes you could use the files came with the FreeRADIUS package if you 
  are using 2.0 version. The files are at your raddb/certs:
  ca.pem, server.pem and server.key

  Unfortunately, for FreeRADIUS 1.x version users, the installed certificates 
  are likely expired already. In that case, there are online resources 
  instructing you how to be your own root CA and generate certs, for example 
  using openssl. 

  In any case, if you have your files ready, you will need to modify your 
  default eap.conf file to reflect your actual file locations. In my case, 
  I have the certs located at my home directory: /home/gcheng/myCA/, and here
  is the changes I made in eap.conf (using diff command):

=CODE_START=

diff -upNr /usr/local/etc/raddb.orig/eap.conf /usr/local/etc/raddb/eap.conf
--- /usr/local/etc/raddb.orig/eap.conf 2008-02-28 16:44:51.000000000 -0800
+++ /usr/local/etc/raddb/eap.conf 2008-02-28 18:10:26.000000000 -0800
@@ -145,7 +145,8 @@
cadir = ${confdir}/certs

private_key_password = whatever
- private_key_file = ${certdir}/server.pem
+ #private_key_file = ${certdir}/server.pem
+ private_key_file = /home/gcheng/myCA/radiusd_serverkey.pem

# If Private key & Certificate are located in
# the same file, then private_key_file &
@@ -157,7 +158,8 @@
# only the server certificate, but ALSO all
# of the CA certificates used to sign the
# server certificate.
- certificate_file = ${certdir}/server.pem
+ #certificate_file = ${certdir}/server.pem
+ certificate_file = /home/gcheng/myCA/radiusd_servercert.pem

# Trusted Root CA list
#
@@ -174,7 +176,8 @@
# not use client certificates, and you do not want
# to permit EAP-TLS authentication, then delete
# this configuration item.
- CA_file = ${cadir}/ca.pem
+ #CA_file = ${cadir}/ca.pem
+ CA_file = /home/gcheng/myCA/cacert.pem

#
# For DH cipher suites to work, you have to

=CODE_END=



  Once your certificate and eap.conf is ready, you can restart your FreeRADIUS 
  server and it is ready for EAP testing. The tool I found very convenient is 
  called eapol_test that came with the wpa_supplicant project. unfortunately, 
  it is not included in a wpa_supplicant binary package. But not to worry, 
  just building it from source is not that hard either, and the following is 
  all I needed:

=CODE_START=
wget http://hostap.epitest.fi/releases/wpa_supplicant-0.5.10.tar.gz
tar xvf wpa_supplicant-0.5.10.tar.gz
cd wpa_supplicant-0.5.10/
cp defconfig .config
make eapol_test
=CODE_END=

  A binary eapol_test will be generated if the build was successful, and I'd 
  copy it to /usr/local/bin:

=CODE_START=
ls eapol_test
cp eapol_test /usr/local/bin/
=CODE_END=

  Now that your eapol_test is installed, you need to prepare a configuration 
  file for it for each EAP method you want to test. The file format is very
  simple, and if you are already family with the wpa_supplicant configuration
  file format, it will look familiar to you. For example, the following is for 
  PEAP testing:

=CODE_START=
$ cat eapol_test.conf.peap
network={
eap=PEAP
eapol_flags=0
key_mgmt=IEEE8021X
identity="testuser"
password="password"
ca_cert="/home/gcheng/myCA/cacert.pem"
phase2="auth=MSCHAPV2"
anonymous_identity="anonymous"
}
=CODE_END=

  And this is how you invoke the command to start the test:

=CODE_START=
eapol_test -c eapol_test.conf.peap -a127.0.0.1 -p1812 -stesting123 -r1
=CODE_END=

  Like in all authentication tests, Access-Accept is the indication of
  authentication success.

  You might have noticed a couple of things in the configuration file:
  - There is a ca_cert line. That is required for PEAP and it must be pointed
    to the same root CA file we used on the FreeRADIUS server's eap.conf file.
    If it is on a different host where you run your eapol_test, you will need
    to copy over the same file.
  - There are lines like phase2 and anonymous_identity. To explain them, we need
    to know some basic backgroud of PEAP.
    PEAP is one of those so-called two-phase or tunneled EAP methods:
    -- Phase 1 where a TLS tunneled is established for use of phase 2. In Phase
        1, a "fake"/anonymous identity is used as a security feature.
    -- Phase 2 where some inside EAP method is used, protected by the TLS tunnel
       from phase 1. 
  For PEAP, it is common to use EAP-MSCHAPv2 in phase 2. And the true
  identity is also used in phase 2 only.
  EAP-TTLS is another type of two phase EAP method with similiar design to
  PEAP. 

  Here are more eapol_test configuration files I use for the test user.
  Indicated by the suffix, they are for EAP-TLS, EAP-TTLS using EAP-MD5 as
  inside method, and EAP-TTLS using MSCHAPv2 as inside method:

=CODE_START=
$ cat eapol_test.conf.tls
network={
eap=TLS
eapol_flags=0
key_mgmt=IEEE8021X
identity="testuser"
ca_cert="/home/gcheng/myCA/cacert.pem"
client_cert="/home/gcheng/myCA/testuser_cert.pem"
private_key="/home/gcheng/myCA/testuser_key.pem"
private_key_passwd="whatever"
}

$ cat eapol_test.conf.ttls_md5
network={
eap=TTLS
eapol_flags=0
key_mgmt=IEEE8021X
identity="testuser"
password="password"
anonymous_identity="anonymous"
ca_cert="/home/gcheng/myCA/cacert.pem"
phase2="auth=MD5"
}

$ cat eapol_test.conf.ttls_mschapv2
network={
eap=TTLS
eapol_flags=0
key_mgmt=IEEE8021X
identity="testuser"
password="password"
anonymous_identity="anonymous"
ca_cert="/home/gcheng/myCA/cacert.pem"
phase2="auth=MSCHAPV2"
}
=CODE_END=

  It is worth mentioning that the configuration file of EAP-TLS has not only
  the ca_cert path like in PEAP and EAP-TTLS configuration files, it also has
  paths to client certificate and private key. This is because in EAP-TLS, not
  only does the supplicant verify the server's certificate, the RADIUS server
  usually verifies the supplicant's certificate too. Also the word "client"
  here is not to be confused with the "client" in FreeRADIUS configuration
  files: they are referring to supplicant and authenticator respectively.
  Please also note that the client's certificate must have been signed by
  (one of) the root CA listed in the root CA certificate file, otherwise it
  won't be accepted by the server.

  For each of the above configuration file, just invoke the eapol_test command 

=CODE_START=
eapol_test -c <eapol_test config file> -a127.0.0.1 -p1812 -stesting123 -r1
=CODE_END=

  Again, instead of using 127.0.0.1 on the local machine, you can do the test
  from a different host.

# About the tools

  When we use radeapclient and eapol_test tools, an observant reader might
  wonder why there are only two parties involved in the 3-party model testing?
  The answer is that those tools are specially made to combine the supplicant
  and authenticator so they are co-located. However, that doesn't affect our
  testing of RADIUS server functionalities.

# Conclusion

  If you have passed all the above tests, congratulations! now you have some
  level of confidence that your freeRADIUS server can perform the basic
  functions of EAP authenticaitons. Of course, to get the server working with
  real authenticators and real supplicants, to get it support real world
  requirements for authentication and attribute assignements, to get it working
  with other applications like MySQL server, LDAP server, there are a lot more
  to do. But this is a start and can serve as a reference point. Thanks to its
  creators and maintainers, FreeRADIUS has become a nice, powerful and robust
  server, and I wish we all enjoy using it!

  Finally, this is all the configuration changes we needed today for the
  single test user:

=CODE_START=
$ diff -upNr /usr/local/etc/raddb.orig/ /usr/local/etc/raddb/
diff -upNr /usr/local/etc/raddb.orig/clients.conf /usr/local/etc/raddb/clients.conf
--- /usr/local/etc/raddb.orig/clients.conf 2008-02-28 16:44:51.000000000 -0800
+++ /usr/local/etc/raddb/clients.conf 2008-02-28 17:00:45.000000000 -0800
@@ -227,3 +227,8 @@ client localhost {
# secret = testing123
# }
#}
+
+client 10.166.255.145 {
+ secret = testing123
+ shortname = 10.166.255.145
+}
diff -upNr /usr/local/etc/raddb.orig/eap.conf /usr/local/etc/raddb/eap.conf
--- /usr/local/etc/raddb.orig/eap.conf 2008-02-28 16:44:51.000000000 -0800
+++ /usr/local/etc/raddb/eap.conf 2008-02-28 18:10:26.000000000 -0800
@@ -145,7 +145,8 @@
cadir = ${confdir}/certs

private_key_password = whatever
- private_key_file = ${certdir}/server.pem
+ #private_key_file = ${certdir}/server.pem
+ private_key_file = /home/gcheng/myCA/radiusd_serverkey.pem

# If Private key & Certificate are located in
# the same file, then private_key_file &
@@ -157,7 +158,8 @@
# only the server certificate, but ALSO all
# of the CA certificates used to sign the
# server certificate.
- certificate_file = ${certdir}/server.pem
+ #certificate_file = ${certdir}/server.pem
+ certificate_file = /home/gcheng/myCA/radiusd_servercert.pem

# Trusted Root CA list
#
@@ -174,7 +176,8 @@
# not use client certificates, and you do not want
# to permit EAP-TLS authentication, then delete
# this configuration item.
- CA_file = ${cadir}/ca.pem
+ #CA_file = ${cadir}/ca.pem
+ CA_file = /home/gcheng/myCA/cacert.pem

#
# For DH cipher suites to work, you have to
diff -upNr /usr/local/etc/raddb.orig/users /usr/local/etc/raddb/users
--- /usr/local/etc/raddb.orig/users 2008-02-28 16:44:51.000000000 -0800
+++ /usr/local/etc/raddb/users 2008-02-28 16:47:28.000000000 -0800
@@ -201,3 +201,5 @@ DEFAULT Hint == "SLIP"
# Service-Type = Administrative-User

# On no match, the user is denied access.
+
+testuser Cleartext-Password := "password"

#restart radiusd

# use eapol_test

=CODE_END=
