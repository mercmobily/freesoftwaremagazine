---
nid: '3179'
title: 'Howto: Share mobile broadband in Ubuntu using only the GUI'
authors: 'John Lewis'
published: '2009-07-16 20:03:51'
tags: 'router,ubuntu,firewall,mobile,broadband,jaunty,masquerade,hsdpa'
license: verbatim_only
section: end_users
listed: 'true'

---
Like many people who aren't able to get DSL, I use mobile broadband. Typically, at least in Ireland and the UK, you are forced to purchase a modem with your contract. What if you want other devices in your house to use this broadband and you don't want to fork out several hundred wing wangs for a mobile broadband router like the Novatel MiFi when you have a perfectly good modem and wireless router already? In Ubuntu you can setup the modem-connected machine as a robust router/firewall using the in-built Network Manager, Firestarter, and optionally, Gadmin DHCPD. These are all GUI tools and so there is no need to go near the dreaded command line here.

# Modem Setup

With the release of Ubuntu Jaunty Jackalope mobile broadband setup has become very easy and intuitive. Simply plug the modem in and in a few seconds the "New Mobile Broadband Connection" wizard should appear. Click "Forward" and you will be presented with a list of mobile broadband providers relevant to your geographical location. Select the provider you use and click "Forward" again. See Figure 1.

=IMAGE=Mobile broadband wizard 2.jpg=Figure 1: choose broadband provider=

Now you are presented with a summary screen. You can change the name if you like but, unimaginatively, I just stuck with the defaults. Hit "apply" and then make the connection come up automatically. Right click the Network Manager task bar and choose "Edit Connections". Click the "Mobile Broadband" tab, select the connection we just made and click the "Edit" box. See Figure 2.

=IMAGE=Edit connection.jpg=Figure 2: edit broadband connection=

Tick the box to "Connect automatically", hit "Apply" and you are ready for the next stage of the setup, as in Figure 3.

=IMAGE=Connect automatically.jpg=Figure 3: automatic connection=

At this stage the mobile broadband should be connected and you should see the wireless mast-type icon on the Network Manager task bar as below in Figure 4. If not, you may need to look at the trouble shooting section. 

=IMAGE=Connected.jpg=Figure 4: broadband away!=

# Setup Routing

=ZOOM=With the release of Ubuntu Jaunty Jackalope mobile broadband setup has become very easy and intuitive=

Now we need to protect ourselves and also masquerade the local network so that other devices can access the internet through your machine. Firestarter is a very user friendly and simple firewalling solution to setup. Firstly go into Synaptic by clicking the "System" menu, going into "Administration" and then clicking "Synaptic Package Manager". In the search box type "firestarter", right click and choose "Install this package", then click apply. See Figure 5.

=IMAGE=install firestarter.jpg=Figure 5: install firestarter=

Now, to configure Firestarter click "Applications", "Internet" and then "Firestarter". You will be presented with a wizard again. Click "Forward" as the wizard suggests and see Figure 6.

=IMAGE=Fire starter wizard 2.jpg=Figure 6: configure internet device=

All mobile broadband devices use PPP so select "Dialup device (ppp0)" from the drop-down menu and also select "Start the firewall on dial out" as in Figure 6 above. Now we've to select which LAN device is to be routed/masqueraded. Typically this would be wlan0 (for wireless) or ath0 if you are using an Atheros card with the old proprietary HAL, or even eth0 if you aren't using wireless. Also tick the box which says "Enable internet connection sharing" and again click "Forward". See Figure 7 below.

=IMAGE=Firestarter wizard 3.jpg=Figure 7: configure network device=

Make sure "Start firewall now" is ticked and click on save. At this stage, assuming you are using a wireless access point with a DHCP server built in, you need to make sure your machine has a static IP configured in the range of your wireless network and to tell the DHCP server that this static IP is the gateway for the network. For instance my home network uses 192.168.0.0/24 as it's network addressing scheme and I have my mobile broadband attached to a machine with address 192.168.0.254. Refer to your wireless access point's documentation for details on how to change the default router in the network scope options. You will also need to setup the relevant DNS servers (from your mobile broadband connection) in this network scope. 

# Setup DHCP server (optional)

If for some reason your access point doesn't have it's own DHCP server or you are using good old fashioned ethernet with a switch then you will need to setup a DHCP server on the broadband machine itself. I found that trying to use the bundled Firestarter DHCP functionality didn't work in Jaunty Jackalope even if a DHCP server was installed and started. In Synaptic do a search for DHCP and then select and install "gadmin-dhcpd". See Figure 8 below.

=IMAGE=dhcp install.jpg=Figure 8: install gadmin dhcpd=

Start Gadmin DHCPD under "Applications", "System Tools". Now you need to set up a scope. Obviously, replace the settings below with your own. Figure 9.

=IMAGE=gadmin dhcpd add scope.jpg=Figure 9: add DHCP scope=

Then add in the router and DNS addresses using the relevant settings for your network and broadband connection. Figure 10.

=IMAGE=gadmin dhcpd gateway and dns.jpg=Figure 10: gateway and dns addresses=

# Troubleshooting

## HSDPA modem problems

=ZOOM=the connection and therefore firewalling/masquerading will not start unless you are logged in=

It is entirely possible you have a newer HSDPA modem which isn't automatically handled by the kernel. When I say "handled" I am referring to the mechanism which tells the device to go from storage mode (typically how the device drivers are loaded in Windows) to modem mode. For instance I own a Novatel Wireless XU950D. I have to use a package called "usb-modeswitch" which is called by udev upon device insertion to do the switching.

If your device has been correctly detected and switched you should have output similar to the following in syslog. Figure 11.

=IMAGE=HSDPA modem log.jpg=Figure 11: correct log output for a HSDPA modem=

If in doubt there no harm installing usb-modeswitch anyway. It can be found [here](http://packages.debian.org/squeeze/usb-modeswitch),downloaded and installed using Gdebi.

## Broadband provider settings change

In the last few weeks my mobile broadband provider has changed from private to public addressing of broadband clients. This involved an APN and DNS settings change. It is worth noting this as it is entirely possible that the network manager settings could be out of date. Figures 12 and 13.

=IMAGE=Change apn.jpg=Figure 12: APN settings have change for Three=

=IMAGE=dns.jpg=Figure 13: DNS server addresses for Three are now in public as opposed to private address ranges=

# Conclusion 

Obviously as the connection is controlled by the Network Manager, which is a "user" context app, the connection and therefore firewalling/masquerading will not start unless you are logged in. You could set automatic logins so that it will launch on startup regardless, otherwise  or you will have to find another solution.

Assuming everything went well you should now be sharing your broadband on your network. If not, do ask a question in comments or feel free correct me.
