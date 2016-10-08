---
nid: '2821'
title: 'My OpenDiameter Experience, Part II, setting up a simple 3-party EAP-MD5 test'
authors: 'Gong Cheng'
published: '2008-04-10 0:18:57'
tags: 'networking,opendiameter,aaa,eap-md5'
license: verbatim_only
section: hacking
listed: 'true'

---
In Part I, I have shown what I did to get the build and installation going. In 
Part II, I will show what steps I took to get a simplest test like the following
 done:
A EAP-MD5 test that involves an OpenDiameter server (aaad), an OpenDiameter 
client (nasd), and a EAP-MD5 client (pacd) talking to nasd using PANA. All three
 parties reside on one single host.

Simple as the test is, a lot of work is needed in OpenDiameter's case, as we 
will see soon.

# Some Background Information

## The Diameter Protocol
  Diameter is intended to be the next generation AAA protocol that replaces 
RADIUS. Wheather and when it will replace RADIUS is not for me to discuss here, 
but it has already found uses in a lot of applications, notably in 3GPP and 
WiMAX infrastructures. I will assume that you are familiar with AAA or RADIUS
and I will just try to point out a few concepts that is unique in Diameter and
we will encounter in our little test.

* Peer
Diameter nodes like server and NAS talk connection-oriented protocols of TCP 
or SCTP, as opposed to the connectionless protocol of UDP used by RADIUS. The
connections are also maintained and monitored by using watch-dog messages. As a
result, in Diameter, "peer" is used to refer to the ends of a connection, and
please don't confuse it with the "peer" used in EAP which is really the
supplicant. One Diameter node could have multiple peers and a peer table usually
 exists in its configurations.

* Applications
Diameter introduces the concept of application which is a major mechanism for
extensibility. Each application is identified by a unique 32 bit application
ID. EAP is implemented as an application too in Diameter and it is assigned an
ID of value 5.

* AVPs and dictionary
Just like RADIUS, Diameter's function largely involves carrying attributes 
around. However, the attribute space is much bigger in Diameter and the 
structure to carry them is a new design that is called Attribute-Value Pair, or 
AVP. Naturally, when there are attributes, there will be dictionaries for the 
nodes to look them up.

* NAI, realm routing
Network Access identifier (NAI) is the standard form of user Identity. It 
normally contains a realm part, like gong@mynet.com. The realm part can be used 
by Diameter nodes to decicde which peer/domain it should be sent to, hence 
the concept of "realm routing". A routing table can be found in a Diameter 
node that contains information about for what realm what action should be taken 
and which peer should be used. It is most commonly used by Diameter agents that 
does proxy or relay, and since our little test doesn't involve an agent, it 
shouldn't matter. However, in Opendiameter's nasd implementation, it also uses
the realm to decide which Diameter server should it forward messages to, and 
that is why I mention it here.

* PANA
PANA stands for Protocol for carrying Authentication for Network Access. The 
idea is like this. In a 3-party EAP model, the authenticator acts as an 
pass-through device that relays authentication requests from a supplicant to an
authentication server. A EAP packet doesn't travel itself and needs to be
carried in some other transport protocol. RADIUS and Diameter can both be used
to carry EAP from the authenticator to the authentication server. However, on
the other side of authenticator that faces the supplicant (the Access Side) a
different carrier protocol is needed. Often an authenticator that directly
faces a layer 2 network uses a layer 2 carrier protocol like 802.1x(EAPOL) and
PPP. However, if an authenticator sits deeper inside a network and does not face
 the edge, it might make sense to use an uppler layer transport to do the job. 
PANA is such a carrier protocol that is IP based and operates in layer 3. 
OpenDiameter's nasd uses PANA, and in PANA terminology nasd is a PAA (PANA
 authentication agent) which accepts EAP requests from supplicant. The other 
end of PANA connection is called PaC (PANA Client). In OpenDiameter, the pacd
program acts as a combined PaC and supplicant.

## Binaries from OpenDiameter
As already mentioned, we will be using the server binary (aaad), authenticator/
NAS binary (nasd) and the PANA client + Supplicant binary (pacd). Opendiameter 
also generates a series of test clients and test servers, but we will not use 
them here.

## OpenDiameter Config files
OpenDiameter's configuration files are mostly .xml files that are in XML format 
and each .xml file has an companion .dtd file for Document Type Definition
(DTD).

# Sorry, more compilation please

## nasd
I must admit that in Part I, which should take care of all compilations, I 
omitted one inconconvenient fact that requires a quick re-complilation. The 
reason is that it only affects nasd which may not be essential for a lot of 
uses where people are only interested in the server.

In the code that came with 1.0.7-i, nasd somehow has commented out lines 
related to Diameter EAP application in its initialization part. That not only 
makes nasd not usable for Diameter EAP, but also pretty much makes it unsable 
for anything. The reason is that nasd defines its peer table inside of 
the nasd_diameter_eap.xml (which is weird by itself since EAP is just one 
application) and the file won't even be read with those lines commented out.

so, we need to apply the following simple diff and redo "make; make install"
in the opendiameter root directory.

=CODE_START=
+++ applications/nas/src/nasd_main.cxx  2008-04-05 06:52:44.000000000 -0700
@@ -51,17 +51,17 @@ int main(int argc, char **argv)
     /// Node writers MUST add thier initializer
     /// instance here
     NASD_PanaInitializer apPanaInit;
-    //NASD_DiameterEapInitializer aaaDiameterEapInit;
+    NASD_DiameterEapInitializer aaaDiameterEapInit;
     NASD_EapBackendInitializer aaaEapBackendInit;
     NASD_PolicyScriptInitializer plcyScriptInit;

     std::string strApPanaName("pana");
-    //std::string strAaaDiameterEapName("diameter_eap");
+    std::string strAaaDiameterEapName("diameter_eap");
     std::string strAaaEapBackendName("local_eap_auth");
     std::string strPlcyScriptName("script");

     NASD_CnInitializer_I->Register(strApPanaName, apPanaInit);
-    //NASD_CnInitializer_I->Register(strAaaDiameterEapName, aaaDiameterEapInit);
+    NASD_CnInitializer_I->Register(strAaaDiameterEapName, aaaDiameterEapInit);
     NASD_CnInitializer_I->Register(strAaaEapBackendName, aaaEapBackendInit);
=CODE_END=

## Crypto related Library linking problems
  On some systems I have also seen problems during build phase when linking to
crypto libraries, and I suspect it has something to do with system's openssl 
libcrypto.a. Since it is not universal, I omitted them, but now I feel I 
probably should point them out too. You can omit this if you didn't have any 
problem following Part I.

* complaints about dlopen() when compiling ACE
You could work-around it by this quick hack on ACE_wrappers/configure file:
=CODE_START=
--- configure.orig      2008-04-04 12:49:15.000000000 -0700
+++ configure   2008-04-05 05:09:15.000000000 -0700
@@ -6865,7 +6865,7 @@ fi
 
 
 
-  ace_TLS_LIBS="-lssl -lcrypto"
+  ace_TLS_LIBS="-lssl -lcrypto -ldl"
=CODE_END=

* linking errors about MD5 when building OpenDiameter
I also have a quick-n-dirty patch for this. Since it involves a few files, I
have listed it in the appendix part of this article. Again, don't bother if you
didn't have problem in Part I.

# Update Shared Library Information

When use your binaries after first time building opendiameter, it might fail 
complaining about libACE. That is caused by an un-updated shared-library 
database on the system after new libraries are generated. I fixed it by this:

=CODE_START=
echo "/usr/local/lib/" > /etc/ld.so.conf.d/local_lib.conf
/sbin/ldconfig -v
=CODE_END=


# Fix the configurations for aaad and nasd

We did do "make install" before, but unfortunately there are mutliple things 
that are missing in the process and we need a do-over.

The binaries of aaad and nasd are installed correctly at /usr/local/bin. There
are configuration files copied at /usr/local/etc/opendiameter, but I discovered 
that a few issues exist:

* missing .dtd files for certain .xml files
* nasd has a file that includes a wrong .dtd file name.
* the include path to a dictionary file are all set to relative path which makes
 the binaries only able to be invoked from the parent directory of the "config"
directory, otherwise the dictionary files could not be found by them. 
* there are inconsistencies between dictionary files used by peers.
* nasd's eap dictionary file is completely outdated.

I suggest to follow the following steps to fix those issues:

* Step 1
copy over aaa and nasd config files manually from your OpenDiameter source
tree to /etc/opendiameter. Even though the default installation goes to 
/usr/local/etc/opendiameter, I found there seems to be assumptions in the code
about the path /etc/opendiameter. So to avoid issues, I suggest directly go to
 /etc/opendiameter instead.

=CODE_START=
mkdir -p /etc/opendiameter/aaa/
mkdir -p /etc/opendiameter/nas/

cp -r ./applications/aaa/config/ /etc/opendiameter/aaa/
cp -r ./applications/nas/config/ /etc/opendiameter/nas/
cp -r ./applications/nas/scripts /etc/opendiameter/nas/
=CODE_END=


* Step 2
change paths to dictionary files to be absolute so can be invoked from
anywhere.

change the following files for aaad and nasd respectively.

Note: I have moved the Diff to the end in the Appendix section because there are some characters in the diff that will make the posting system unhappy and ruin the rest of the formating. 

* Step 3

correct nasd_pana_dictionary.xml file which points to wrong .dtd file:

=CODE_START=
--- nasd_pana_dictionary.xml.orig       2008-04-05 15:36:40.000000000 -0700
+++ nasd_pana_dictionary.xml    2008-04-05 15:39:02.000000000 -0700
@@ -1,5 +1,5 @@
 <?xml version="1.0" encoding="UTF-8"?>
-<!DOCTYPE dictionary SYSTEM "dictionary.dtd">
+<!DOCTYPE dictionary SYSTEM "nasd_pana_dictionary.dtd">

 <dictionary>
=CODE_END=


* Step 4

The nasd_diameter_eap_dictionary.xml file is outdated and copy a correct one
from source tree:

=CODE_START=
cp /usr/local/src/opendiameter-1.0.7-i/libdiameter/config/dictionary.xml /etc/opendiameter/nas/config/nasd_diameter_eap_dictionary.xml
=CODE_END=

then update its 2nd line from this
=CODE_START=
<!DOCTYPE dictionary SYSTEM "dictionary.dtd">
=CODE_END=
to be like this:
=CODE_START=
<!DOCTYPE dictionary SYSTEM "nasd_diameter_eap_dictionary.dtd">

=CODE_END=

 
# fake host names

In our test, we will be using a single local host to simulate a 3-party 
network environment.
To get things working, I am faking different domain names for nasd and aaad.

I am giving aaad the name localaaa.localdomain1.net, and nasd the name
localnas.localdomain2.net
and I added the following two entries in the local /etc/hosts file:

=CODE_START=
127.0.0.1 localaaa localaaa.localdomain1.net
127.0.0.1 localnas localnas.localdomain2.net
=CODE_END=


# Get aaad and nasd talk to each first
Now, with all those setups, aaad and nasd should be able to talk to each other
as peers without EAP in picture. All we need to do is to tell them who
themselves are and who their peer is.

## aaad side
in aaad, configure it its identity of localaaa.localdomain1.net, and its peer 
localnas.localdomain2.net. Apply the following change to file aaad_diameter_server.xml.
=CODE_START=
--- aaad_diameter_server.xml.orig       2008-04-05 15:14:33.000000000 -0700
+++ aaad_diameter_server.xml    2008-04-05 15:29:07.000000000 -0700
@@ -24,11 +24,11 @@
       </vendor_specific_application_id>
    </general>
    <parser>
-      <dictionary>config/aaad_diameter_dictionary.xml</dictionary>
+      <dictionary>/etc/opendiameter/aaa/config/aaad_diameter_dictionary.xml</dictionary>
    </parser>
    <transport_mngt>
-      <identity>server.isp.net</identity>
-      <realm>isp.net</realm>
+      <identity>localaaa.localdomain1.net</identity>
+      <realm>localdomain1.net</realm>
       <tcp_listen_port>1812</tcp_listen_port>
       <sctp_listen_port>1813</sctp_listen_port>
       <use_ipv6>0</use_ipv6>
@@ -38,15 +38,16 @@
       <request_retransmission_interval>10</request_retransmission_interval>
       <max_request_retransmission_count>3</max_request_retransmission_count>
       <receive_buffer_size>2048</receive_buffer_size>
-      <advertised_hostname>server1.isp.net</advertised_hostname>
+      <advertised_hostname>localaaa.localdomain1.net</advertised_hostname>
       <peer_table>
           <expiration_time>1</expiration_time>
           <peer>
-              <hostname>nas.access1.net</hostname>
+              <hostname>localnas.localdomain2.net</hostname>
               <port>1811</port>
               <use_sctp>0</use_sctp>
               <tls_enabled>0</tls_enabled>
           </peer>
+<!--
           <peer>
               <hostname>nas.access2.net</hostname>
               <port>1811</port>
@@ -57,6 +58,7 @@
               <port>1811</port>
               <tls_enabled>0</tls_enabled>
           </peer>
+-->
       </peer_table>
       <route_table>
           <expire_time>0</expire_time>
=CODE_END=

Note that I also commented out some original sample peers for simplicity.

## nasd side
For nasd, update the file nasd_diameter_eap.xml similiarly:
use localnas.localdomain2.net as identity and use localaaa.localdomain1.net as
peer.
=CODE_START=
@@ -24,11 +25,11 @@
       </vendor_specific_application_id>
    </general>
    <parser> 
-      <dictionary>config/nasd_diameter_eap_dictionary.xml</dictionary>
+      <dictionary>/etc/opendiameter/nas/config/nasd_diameter_eap_dictionary.xml</dictionary>
    </parser>
    <transport_mngt>
-      <identity>nas.access1.net</identity>
-      <realm>access1.net</realm>
+      <identity>localnas.localdomain2.net</identity>
+      <realm>localdomain2.net</realm>
       <tcp_listen_port>1810</tcp_listen_port>
       <sctp_listen_port>1811</sctp_listen_port>
       <use_ipv6>0</use_ipv6>
@@ -41,7 +42,7 @@
       <peer_table>
           <expiration_time>1</expiration_time>
           <peer>
-              <hostname>server.isp.net</hostname>
+              <hostname>localaaa.localdomain1.net</hostname>
               <port>1812</port>
               <use_sctp>0</use_sctp>
               <tls_enabled>0</tls_enabled>
=CODE_END=

* with those changes, now start aaad and nasd by simply invoking them (as root)
without any parameters (They don't have much command line options anyway). You
should see constant messages about watch-dog if the connections are successful, 
like this:

=CODE_START=
(7867|3038682000) Watchdog msg from [localaaa.localdomain1.net.localdomain1.net], state=1207434903, time=1207435199
=CODE_END=

I suggest that you start aaad before nasd. Based on my experience, on different 
systems, if doing the other way around, it either takes longer or nasd crashes.
:)

# Fix up pacd

The files installed at /usr/local/etc/opendiameter/pana don't seem to be 
usable by pacd either, so I decided not to use them at all. Unfortunately, I 
didn't find any proper candiate from the source tree. The best I came up
with was an ugly solution (appologies!) by downloading from the latest 
opendiameter repository with some modifications.

* go to your source tree's applications/pana directory, and this is where the
pacd binary is at.

=CODE_START=
cd /usr/local/src/opendiameter-1.0.7-i/applications/pana/
=CODE_END=


* use svn to download just the pana config directory from the opendiameter 
repository:

=CODE_START=
svn co https://diameter.svn.sourceforge.net/svnroot/diameter/cplusplus/applications/pana/config
=CODE_END=

(if you don't have svn installed, it is easy. For example, in ubuntu, do
sudo apt-get install subversion)

* The newer dictionary file is not exactly consistent with the 1.0.7-i's 
version used by nasd, and that will cause problem. In theory, the newer ones
should be latest, but to avoid trouble, I reverted the newer one to older one
instead. Just copy the one used by nasd, and update its correponding .dtd file
line.

=CODE_START=
cp /etc/opendiameter/nas/config/nasd_pana_dictionary.xml config/pana_dictionary.xml
=CODE_END=

and update its 2nd line to:
=CODE_START=
<!DOCTYPE dictionary SYSTEM "pana_dictionary.dtd">
=CODE_END=

 

# Configure aaad, nasd and pacd for the final EAP-MD5 test

Finally, after all the hassle, we are ready to do some "true" configurations.

* enable eap application in nasd and aaad.
As I mentioned, EAP is implemented as an application in Diameter. And during
initial connection establishment, peers will exchange capability information 
(in CER/CEA messages) and see if both support some common applications. For our
test, we must enable both aaad and nasd to support EAP.s
EAP applicaiton's assigned ID is 5.
Just add the line
=CODE_START=
      <auth_application_id>5</auth_application_id>
=CODE_END=
in both aaad_diameter_server.xml and nasd_diameter_eap.xml after the line of
=CODE_START=
      <auth_application_id>2</auth_application_id>
=CODE_END=

* User information

I will use testuser@localdomain1.net for our EAP-MD5 test. Note that I assigned
it to be in the same domain as our Diameter server.

   - aaad part side

Apply this change:
=CODE_START=
+++ aaad_user_db.xml    2008-04-05 17:57:43.000000000 -0700
@@ -41,12 +41,20 @@
          file.

       -->
+    <user_entry>
+       <name_match>testuser@localdomain1.net</name_match>
+       <eap_method>md5</eap_method>
+       <md5>
+          <password_type>flat</password_type>
+          <secret>12345</secret>
+       </md5>
+    </user_entry>

     <user_entry>

        <!-- will match any identity with
             a "user" sub-string -->
-       <name_match>user</name_match>
+       <name_match>dont_match_anyone</name_match>

        <!-- Available eap methods:
=CODE_END=


Note the line I changed from "user" to "dont_match_anyone". That is because I 
found that OpenDiameter seems to have a counter-ituitive way of doing match.
and a entry of "user" will match any requests with "user" in its sub-string. I 
didn't want that.

   - pacd side
Apply this change
=CODE_START=
--- config/pana_setup.xml.orig  2008-04-05 16:05:15.000000000 -0700
+++ config/pana_setup.xml       2008-04-05 16:05:42.000000000 -0700
@@ -6,7 +6,7 @@
    <pana_cfg_file>config/pana_pac.xml</pana_cfg_file>

    <!-- Username used for EAP auth -->
-   <username>user1</username>
+   <username>testuser@localdomain1.net</username>

    <!-- Assocaited password, used
         during EAP-MD5 -->
=CODE_END=

   - Password
Both sides already default to use password "12345", so that doesn't need to
be changed.

* Add a route entry for nasd

As I mentioned before, nasd uses the realm part of NAI to determine peer, and
for our test, I added the following route in the route table of nasd's 
nasd_diameter_eap.xml file:
=CODE_START=
          <route>
             <realm>localdomain1.net</realm>
             <role>1</role>
             <redirect_usage>0</redirect_usage>
             <application>
                <application_id>5</application_id>
                <vendor_id>0</vendor_id>
                <peer_entry>
                    <server>localaaa.localdomain1.net</server>
                    <metric>1</metric>
                </peer_entry>
             </application>
          </route>
=CODE_END=

That tells nasd that, for requests of the realm localdomain1.net, forward it to
peer localaaa.localdomain1.net.

* Make the requirement of User-Name avp consistent between aaa and nasd:

The dictionary files used by peers are supposed to be consistent. There is one
little inconsistency between them that will cause problem. In nasd's 
nasd_diameter_eap_dictionary.xml file, the AVP User-Name is defined as 
mandotory but it is not the case in aaad. Remove the mandotory part from it
and make them consistent.

line 734 of nasd_diameter_eap_dictionary.xml:

=CODE_START=
    <avp name="User-Name" code="1" mandatory="must">
      <type type-name="UTF8String"/>
=CODE_END=

line 740 of aaad_diameter_dictionary.xml:

=CODE_START=
    <avp name="User-Name" code="1">
      <type type-name="UTF8String"/>
    </avp>
=CODE_END=

* The Final Go!

Finally, we are ready.

Restart your aaad and nasd like before, and make sure they have established 
connections.

Now start pacd from the applications/pana directory like this: (as root)
=CODE_START=
./pacd -f config/pana_setup.xml
=CODE_END=

And if you see messages from pacd window like this, then you are good. 
=CODE_START=
Peer: Success received.
Peer:  Success.
Authentication success at peer
Welcome to the world, testuser@localdomain1.net !!!
=CODE_END=

# Conclusions
I don't know about you, but I feel tired by now after all this, and that is just
 a EAP-MD5 test that can't be made simpler.  As I stated before, I am new to 
OpenDiameter myself and my way of doing things might not be the right way, so be
 cautioned there! I am also sorry that at the point I don't have much more to 
contribute, but I do hope this little two-part article can help other 
OpenDiameter beginners. If it does help you to get started, I encourage you to 
contribute back by sharing your tricks too.

In my opinion, OpenDiameter does not seems to be in a mature stage yet. It suits
 to serve as a starting point to develop your own applications or to conduct 
your Diameter tests in the labs, but I am not sure about more serious 
deployments.  Again, I could be totally off, but if that is the case, I hope 
the true experts could step up and provide more documentations.

I am also very much looking forward to the next release (1.0.8) which is 
delayed. And I hope all those issues I have met, if they are real, will be fixed
 and more importantly, more documents please!

# REFERENCES
[1] OpenDiameter README file from 1.0.7-i source package

[2] [RFC 3588, Diameter Base Protocol](http://tools.ietf.org/html/rfc3588)

[3] [RFC 4072 Diameter Extensible Authentication Protocol Application](http://tools.ietf.org/html/rfc4072)

[4] [IETF PANA Draft](http://tools.ietf.org/html/draft-ietf-pana-pana-18)

# Appendix for MD5 link problem

Please note that, since this (ugly) patch affects the Makefile.in files, you 
will need to redo ./configure for the OpenDiameter after applying the changes.

=CODE_START=
--- ./libdiameternasreq/Makefile.in.orig        2008-04-05 13:08:04.000000000 -0700
+++ ./libdiameternasreq/Makefile.in     2008-04-05 13:26:32.000000000 -0700
@@ -381,12 +381,12 @@ test/client_test.$(OBJEXT): test/$(am__d
        test/$(DEPDIR)/$(am__dirstamp)
 client_test$(EXEEXT): $(client_test_OBJECTS) $(client_test_DEPENDENCIES) 
        @rm -f client_test$(EXEEXT)
-       $(CXXLINK) $(client_test_LDFLAGS) $(client_test_OBJECTS) $(client_test_LDADD) $(LIBS)
+       $(CXXLINK) $(client_test_LDFLAGS) $(client_test_OBJECTS) $(client_test_LDADD) $(LIBS) -lcrypto
 test/server_test.$(OBJEXT): test/$(am__dirstamp) \
        test/$(DEPDIR)/$(am__dirstamp)
 server_test$(EXEEXT): $(server_test_OBJECTS) $(server_test_DEPENDENCIES) 
        @rm -f server_test$(EXEEXT)
-       $(CXXLINK) $(server_test_LDFLAGS) $(server_test_OBJECTS) $(server_test_LDADD) $(LIBS)
+       $(CXXLINK) $(server_test_LDFLAGS) $(server_test_OBJECTS) $(server_test_LDADD) $(LIBS) -lcrypto
 
 mostlyclean-compile:
        -rm -f *.$(OBJEXT)
--- ./applications/nas/Makefile.in.orig 2008-04-05 13:08:11.000000000 -0700
+++ ./applications/nas/Makefile.in      2008-04-05 13:26:40.000000000 -0700
@@ -331,7 +331,7 @@ src/nasd_diameter_eap.$(OBJEXT): src/$(a
        src/$(DEPDIR)/$(am__dirstamp)
 nasd$(EXEEXT): $(nasd_OBJECTS) $(nasd_DEPENDENCIES) 
        @rm -f nasd$(EXEEXT)
-       $(CXXLINK) $(nasd_LDFLAGS) $(nasd_OBJECTS) $(nasd_LDADD) $(LIBS)
+       $(CXXLINK) $(nasd_LDFLAGS) $(nasd_OBJECTS) $(nasd_LDADD) $(LIBS) -lcrypto
 
 mostlyclean-compile:
        -rm -f *.$(OBJEXT)
--- ./applications/aaa/Makefile.in.orig 2008-04-05 13:08:20.000000000 -0700
+++ ./applications/aaa/Makefile.in      2008-04-05 13:26:49.000000000 -0700
@@ -315,7 +315,7 @@ src/aaad_diameter_eap.$(OBJEXT): src/$(a
        src/$(DEPDIR)/$(am__dirstamp)
 aaad$(EXEEXT): $(aaad_OBJECTS) $(aaad_DEPENDENCIES) 
        @rm -f aaad$(EXEEXT)
-       $(CXXLINK) $(aaad_LDFLAGS) $(aaad_OBJECTS) $(aaad_LDADD) $(LIBS)
+       $(CXXLINK) $(aaad_LDFLAGS) $(aaad_OBJECTS) $(aaad_LDADD) $(LIBS) -lcrypto
 
 mostlyclean-compile:
        -rm -f *.$(OBJEXT)
--- ./applications/pana/Makefile.in.orig        2008-04-05 13:08:27.000000000 -0700
+++ ./applications/pana/Makefile.in     2008-04-05 13:27:12.000000000 -0700
@@ -273,10 +273,10 @@ clean-noinstPROGRAMS:
        done
 client_pana_eaptls$(EXEEXT): $(client_pana_eaptls_OBJECTS) $(client_pana_eaptls_DEPENDENCIES) 
        @rm -f client_pana_eaptls$(EXEEXT)
-       $(CXXLINK) $(client_pana_eaptls_LDFLAGS) $(client_pana_eaptls_OBJECTS) $(client_pana_eaptls_LDADD) $(LIBS)
+       $(CXXLINK) $(client_pana_eaptls_LDFLAGS) $(client_pana_eaptls_OBJECTS) $(client_pana_eaptls_LDADD) $(LIBS) -lcrypto
 pacd$(EXEEXT): $(pacd_OBJECTS) $(pacd_DEPENDENCIES) 
        @rm -f pacd$(EXEEXT)
-       $(CXXLINK) $(pacd_LDFLAGS) $(pacd_OBJECTS) $(pacd_LDADD) $(LIBS)
+       $(CXXLINK) $(pacd_LDFLAGS) $(pacd_OBJECTS) $(pacd_LDADD) $(LIBS) -lcrypto
 
 mostlyclean-compile:
        -rm -f *.$(OBJEXT)
--- ./libeap/Makefile.in.orig   2008-04-05 13:10:41.000000000 -0700
+++ ./libeap/Makefile.in        2008-04-05 13:25:21.000000000 -0700
@@ -569,12 +569,12 @@ tests/md5_test.$(OBJEXT): tests/$(am__di
        tests/$(DEPDIR)/$(am__dirstamp)
 md5_test$(EXEEXT): $(md5_test_OBJECTS) $(md5_test_DEPENDENCIES) 
        @rm -f md5_test$(EXEEXT)
-       $(CXXLINK) $(md5_test_LDFLAGS) $(md5_test_OBJECTS) $(md5_test_LDADD) $(LIBS)
+       $(CXXLINK) $(md5_test_LDFLAGS) $(md5_test_OBJECTS) $(md5_test_LDADD) $(LIBS) -lcrypto
 tests/tls_test.$(OBJEXT): tests/$(am__dirstamp) \
        tests/$(DEPDIR)/$(am__dirstamp)
 tls_test$(EXEEXT): $(tls_test_OBJECTS) $(tls_test_DEPENDENCIES) 
        @rm -f tls_test$(EXEEXT)
-       $(CXXLINK) $(tls_test_LDFLAGS) $(tls_test_OBJECTS) $(tls_test_LDADD) $(LIBS)
+       $(CXXLINK) $(tls_test_LDFLAGS) $(tls_test_OBJECTS) $(tls_test_LDADD) $(LIBS) -lcrypto
 
 mostlyclean-compile:
        -rm -f *.$(OBJEXT)
--- ./libdiametereap/Makefile.in.orig   2008-04-05 14:05:46.000000000 -0700
+++ ./libdiametereap/Makefile.in        2008-04-05 14:06:11.000000000 -0700
@@ -418,7 +418,7 @@ src/diameter_eap_der_parser.lo: src/$(am
 src/diameter_eap_dea_parser.lo: src/$(am__dirstamp) \
        src/$(DEPDIR)/$(am__dirstamp)
 libdiametereap.la: $(libdiametereap_la_OBJECTS) $(libdiametereap_la_DEPENDENCIES) 
-       $(CXXLINK) -rpath $(libdir) $(libdiametereap_la_LDFLAGS) $(libdiametereap_la_OBJECTS) $(libdiametereap_la_LIBADD) $(LIBS)
+       $(CXXLINK) -rpath $(libdir) $(libdiametereap_la_LDFLAGS) $(libdiametereap_la_OBJECTS) $(libdiametereap_la_LIBADD) $(LIBS) -lcrypto
 
 clean-noinstPROGRAMS:
        @list='$(noinst_PROGRAMS)'; for p in $$list; do \
@@ -436,22 +436,22 @@ test/client_test.$(OBJEXT): test/$(am__d
        test/$(DEPDIR)/$(am__dirstamp)
 client_test$(EXEEXT): $(client_test_OBJECTS) $(client_test_DEPENDENCIES) 
        @rm -f client_test$(EXEEXT)
-       $(CXXLINK) $(client_test_LDFLAGS) $(client_test_OBJECTS) $(client_test_LDADD) $(LIBS)
+       $(CXXLINK) $(client_test_LDFLAGS) $(client_test_OBJECTS) $(client_test_LDADD) $(LIBS) -lcrypto
 test/client_test_tls.$(OBJEXT): test/$(am__dirstamp) \
        test/$(DEPDIR)/$(am__dirstamp)
 client_test_tls$(EXEEXT): $(client_test_tls_OBJECTS) $(client_test_tls_DEPENDENCIES) 
        @rm -f client_test_tls$(EXEEXT)
-       $(CXXLINK) $(client_test_tls_LDFLAGS) $(client_test_tls_OBJECTS) $(client_test_tls_LDADD) $(LIBS)
+       $(CXXLINK) $(client_test_tls_LDFLAGS) $(client_test_tls_OBJECTS) $(client_test_tls_LDADD) $(LIBS) -lcrypto
 test/server_test.$(OBJEXT): test/$(am__dirstamp) \
        test/$(DEPDIR)/$(am__dirstamp)
 server_test$(EXEEXT): $(server_test_OBJECTS) $(server_test_DEPENDENCIES) 
        @rm -f server_test$(EXEEXT)
-       $(CXXLINK) $(server_test_LDFLAGS) $(server_test_OBJECTS) $(server_test_LDADD) $(LIBS)
+       $(CXXLINK) $(server_test_LDFLAGS) $(server_test_OBJECTS) $(server_test_LDADD) $(LIBS) -lcrypto
 test/server_test_tls.$(OBJEXT): test/$(am__dirstamp) \
        test/$(DEPDIR)/$(am__dirstamp)
 server_test_tls$(EXEEXT): $(server_test_tls_OBJECTS) $(server_test_tls_DEPENDENCIES) 
        @rm -f server_test_tls$(EXEEXT)
-       $(CXXLINK) $(server_test_tls_LDFLAGS) $(server_test_tls_OBJECTS) $(server_test_tls_LDADD) $(LIBS)
+       $(CXXLINK) $(server_test_tls_LDFLAGS) $(server_test_tls_OBJECTS) $(server_test_tls_LDADD) $(LIBS) -lcrypto
 
 mostlyclean-compile:
        -rm -f *.$(OBJEXT)
=CODE_END=

# Appendix for the Diff that missed in Step 2 above
=CODE_START=
aaad_diameter_server.xml for aaad:

--- aaad_diameter_server.xml.orig       2008-04-05 15:14:33.000000000 -0700
+++ aaad_diameter_server.xml    2008-04-05 15:15:19.000000000 -0700
@@ -24,7 +24,7 @@
       </vendor_specific_application_id>
    </general>
    <parser>
-      <dictionary>config/aaad_diameter_dictionary.xml</dictionary>
+      <dictionary>/etc/opendiameter/aaa/config/aaad_diameter_dictionary.xml</dictionary>
    </parser>
    <transport_mngt>
       <identity>server.isp.net</identity>


nasd_pana_paa.xml and  nasd_diameter_eap.xml for nasd:

--- nasd_pana_paa.xml.orig      2008-04-05 15:17:08.000000000 -0700
+++ nasd_pana_paa.xml   2008-04-05 15:18:55.000000000 -0700
@@ -12,7 +12,7 @@
         <listen_port>3001</listen_port>

         <!-- Filename of the parser dictionary -->
-        <dictionary_filename>config/dictionary.xml</dictionary_filename>
+        <dictionary_filename>/etc/opendiameter/nas/config/nasd_pana_dictionary.xml</dictionary_filename>

         <!-- Configurable retransmission parameters
              as specified in the PANA draft. See

--- nasd_diameter_eap.xml.orig  2008-04-05 15:16:57.000000000 -0700
+++ nasd_diameter_eap.xml       2008-04-05 15:19:05.000000000 -0700
@@ -24,7 +24,7 @@
       </vendor_specific_application_id>
    </general>
    <parser>
-      <dictionary>config/nasd_diameter_eap_dictionary.xml</dictionary>
+      <dictionary>/etc/opendiameter/nas/config/nasd_diameter_eap_dictionary.xml</dictionary>
    </parser>
    <transport_mngt>
       <identity>nas.access1.net</identity>
=CODE_END=

