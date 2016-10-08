---
nid: '2366'
title: 'Configure and use the Untangle Gateway'
authors: 'Dirk Morris'
published: '2007-09-10 21:25:51'
tags: 'servers,networking,untangle,untangle-gateway'
issue: issue_19
license: verbatim_only
section: hacking
main_image: hide.jpg
listed: 'true'

---
Connecting a network to the modern day internet can be challenging. Basic infrastructure, like routers, DHCP Servers, and DNS servers, are required to get the network online. The network must also be protected with a firewall and intrusion prevention, and the desktops need protection from viruses and spyware. Next will come a spam and phish filter to stop the continual flood of junk email. Most are then forced to implement some sort of internet usage control, like web filtering, to control what users are doing on the network. As network users begin to work from remote locations, VPN is required to allow for safe remote access.

As each problem is tackled, each point solution must be researched, purchased, deployed, integrated and maintained. While enterprises with time and money can accomplish this, home and small business networks are left to fend for themselves.

The Untangle Gateway Platform is a free software network gateway solution that installs on off-the-shelf hardware and provides all the solutions necessary to get the network online and keep it safe and controlled. After installing the Untangle Software on a server, it needs to be installed somewhere between all the PCs and the internet, typically it is the firewall/gateway or it sits behind the current firewall/gateway as a transparent bridge.


# Installing Untangle

First, plug in the server you will be using as your Untangle Server. It will need two network cards, one which connects to the outside connection (such as your DSL/Cable modem) and one which connects to the internal network switch. If you are installing the Untangle Server behind your current router/firewall, you should connect the Untangle Server to the internal port on your router/firewall and the other port to you internal switch.


# The first boot

After booting the Untangle Server for the first time, a setup wizard gets the Untangle Server and the network online in a basic configuration.


=IMAGE=wizard.jpg=Figure 1: The Setup Wizard=

After this, new applications (like Virus Blocker, Spam Blocker, etc.) can be downloaded from an online library directly into the Untangle Server. The Untangle library is filled with a multitude of best-of-breed free software applications that have been tailored specifically for small business and home networks.

After downloading applications from the online library, they automatically install and appear as “virtual appliances” in the “virtual rack” and start processing network traffic. For networks with existing infrastructure, the Untangle solution complements existing point solutions. Redundant applications in the Untangle solution can either provide an additional layer of protection or not be used.


=IMAGE=beforeafter.jpg=Figure 2: Installation of an application=

=TEXTBOX_START=Interview with Bob Walters by Tony Mobily=
**TM: Hello Bob. Please introduce yourself to our readers!**

Hi everyone. I’m Bob Walters and I joined Untangle as CEO in June of 2006. I started my career in the US Marine Corps as a fighter pilot flying jets on aircraft carriers. Since then, I’ve served in a variety of executive roles with several startups:


* Vice President and General Manager, Informix Software;
* Vice President, Linuxcare
* Vice President and General Manager, Securant
* CEO, Teros (now Citrix)

My last three companies were all substantial users of free software, and Linuxcare was a major player in the “Generation 1” class of commercial free software vendors.

**TM: What’s your view on free software in general?**

Simply put, free software is a better model for software development. The diversity of user and developer communities that support successful free software projects produce elegant and thoroughly tested code that is impossible for any proprietary software vendor with a single frame of reference to match. High quality free software that is customizable without any vendor lock-in... what’s not to like about that?

**TM: Do you think free software is at odds with the current economic system? Why?**

No, free software is not at odds with the current economic system. [According to IDC](http://www.idc.com/getdoc.jsp;jsessionid=LVAKJ3AXG5SG2CQJAFICFGAKBEAUMIWD?containerId=prUS20711507), global revenue from stand alone free software as $1.8 billion in 2006. Sourcefire and Jboss represent successful commercial free software vendors and there are numerous startups growing quickly with commercial free software business models. Commercial free software business models reduce the costs of customer acquisition and allow software vendors to vigorously focus on incorporating user feedback and building great products. There is plenty of room for companies to sell services, support, training and premium features around free software. The fact that free software has been disruptive in so many areas is validation of just how well free software engineering and business models work within the current economic system.

**TM: You run Untangle, which is mainly providing free software. What’s your business model, and how is it going?**

Approximately 95% of Untangle software is free to use, study, modify and distribute under the GNU General Public License v2. This represents the Untangle Platform which virtualizes network applications, 12 of the 14 applications that run on it and all the software and signature updates associated with those 12 applications. Untangle sells the Professional Package, through our reseller and managed service provider partners. The Professional package is a commercial add-on for organizations that want the convenience of live support, two additional applications and advanced management features. The reaction to Untangle’s free software announcement at the end of June has been fantastic! Our forums are buzzing and our downloads are through the roof.

**TM: What’s next? Will Untangle release more software? What about selling hardware appliances? Is that something you’re interested in?**

We intend to develop more network based applications and continue to improve upon our platform. Our future development plans center around incorporating the community feedback that our recent free software announcement generated and delivering on our vision of making the best free software network applications as easy as possible for businesses to install, configure and manage.

We don’t have any plans to offer an appliance, because we believe that proprietary hardware is an artificial form of vendor lock-in. Here at Untangle, our motto has become “software is better, open source is best.” However, we will continue to offer a prepared server, running on off-the-shelf hardware, for organizations that want the convenience of a pre-installed system that is ready to plug & play.


=TEXTBOX_END=

<!--pagebreak-->



# Securing the network

All networks, from home networks to business networks, need to be secured from outside threats. With the Untangle solution, this is a simple process that can be accomplished quickly. To install new applications, simply click on them on the left side “library” menu and click “download”. The following applications are basic applications that will secure your network from outside (and inside) threats:


=IMAGE=virtrack.jpg=Figure 3: The Virtual Rack=

**Virus Blocker** is a great place to start. Virus Blocker scans the traffic entering and exiting the network for any viruses. No software is required on the end user desktops: all the scanning is done on the traffic as it transits through the Untangle Server. Virus Blocker provides a great solution for those without virus protection on the end user desktops or for those wanting an extra layer of virus protection. Virus Blocker is completely configured by default and requires no extra tinkering or configuration.

**Spyware Blocker** stops spyware before it reaches the end user desktops, and can also help detect spyware already installed on machines. Spyware Blocker uses numerous techniques to stop spyware from entering your network and stop users from going to places which infect them from spyware. This can save numerous hours of tracking down weird problems and slowness issues caused by malware and spyware. Spyware Blocker is also completely configured by default and requires no configuration.


=IMAGE=spyware.jpg=Figure 4: Configuring Spyware Blocker=

**Intrusion Prevention** uses thousands of signatures to scan traffic for attacks. Using snort signatures, Intrusion Prevention can detect, block, and log attacks. Intrusion Prevention is preconfigured with good defaults to maximize protection and minimize false positives.

**Attack Blocker** is a heuristic based intrusion prevention application which blocks attacks like floods and port scans based on reputation. Attack Blocker also requires no configuration.

**Router** provides basic routing functionality, and DHCP and DNS servers. It may already be installed depending on the selections made during the setup wizard. If there is already a router on the network, there is no need to install the Router unless replacing the current firewall/router. Router makes the Untangle Server act like a router that by default serves DHCP and DNS with an internal IP of 192.168.1.1, much like a Linksys or Netgear router.

**Firewall** is a simple rule-based firewall that blocks sessions based on protocol, IPs, or ports. This can provide an extra level of control to restrict the traffic entering or exiting the network. Again, if there is already a firewall on the network, this application can either complement the existing firewall or not be used.

These applications are all easy to install and can secure your network within minutes.


# For business networks

Business networks usually face a few additional challenges. Having an email server brings an additional responsibility to protect the all the users from continuous spam, phish, and viruses they get via email. Fortunately, with the Untangle solution all that is required is downloading the appropriate applications.

**Spam Blocker** uses all sorts of spam technologies like blacklists, bayesian filters, signatures, and optical character resolutions to scan email and detect spam. After installing Spam Blocker, it scans SMTP, POP3, and IMAP traffic and can block spam as it enters your network.

Most companies with their own email server will have the Untangle Server scan the SMTP email as it enters the network on the way to the company email server. When Spam Blocker detects spam, it will file the spam message in the user’s quarantine. Each user receives a Quarantine Digest, and can wade through their personal spam quarantine if they choose, and maintain their own pass list.

Spam Blocker provides an easy spam solution that requires no maintainence. Similarly **Phish Blocker** filters out all the phishing emails. Phishing emails are the fake emails coming from PayPal, banks, eBay, etc., that try to trick users into volunteering their password or personal information. Phish Blocker, similar to Spam Blocker, cans email traffic using signatures looking for phish email, and also scans web traffic to prevent users from visiting sites attempting to steal information. Phish Blocker also requires no extra configuration and can potentially save an organization from a massive disaster.

Many businesses also have remote workers that may need access to internal network resources from home or when travelling. The Untangle library hosts two different applications to help remote users safely connect to the internal network.

**OpenVPN** is VPN solution that provides remote connectivity directly into the network over an SSL connection. Install OpenVPN and configure the OpenVPN application as a server and go through the setup wizard. In the exported address step, add any addresses to the list which users should be able to reach remotely. In many cases, this is the entire internal subnet, but it can be limited to only a few servers for security reasons.


<!--pagebreak-->


After the wizard, new VPN client users can be created under the “clients” tab and prebuilt `.exe`’s can be emailed to clients. Each client will run the prebuilt `.exe` (executable files) on their PC, which installs a client in the system tray that will allow them to connect directly into the network, much like a long virtual ethernet cable.

**Remote Access Portal** provides a clientless web-based portal to access internal network resources. For example, a remote user can login to their web portal and remotely access their desktop, using RDP or VNC, download files from network shares, and access internal websites (like Outlook Web Access).

Remote Access Portal provides easy access and little configuration because there is no client installation. Users and administrators can create a dashboard of bookmarks to their internal network resources.


# Controlling the network

Many business networks and larger organizations (like schools and libraries) also need to control what activities users do on the network. This ranges from visiting inappropriate websites to wasting time on instant messaging, or using all the bandwidth downloading music on peer-to-peer networks. With the right applications, these issues are easily solved.

**Web Filter** controls and monitor web usage on your network using a large database of known websites. It can be configured to block all porn, gambling, web mail, proxy sites, etc. or specific sites like myspace.com or even file types. This allows administrators to easily configure web filter to reflect the organizations usage policy. Of course, exceptions can be made for executives and administrators. Web Filter can also be used with **Untangle Reports** purely to monitor web usage on the network.

**Protocol Control** helps clamp down on those hard to block protocols. Protocol Control scans all traffic regardless of port and identifies protocols by signature, allowing for tricky protocols like Instant Messaging to be detected and blocked. Peer-to-peer protocols, like Bittorrent, can also be detected and blocked preventing a single user from using up most of the bandwidth of the organization.


# Example deployment

Assume there is already a Linksys or similar router already in place. I may wish to keep my Linksys in place and deploy Untangle as a transparent bridge (this is an easy way to test without messing with the network). I would plug the external NIC on the Untangle Server to the internal port on the Linksys router, and the internal NIC on the untangle Server to my main network switch.

During the Setup wizard it can make sure I will select “Transparent Bridge” and “DHCP” for the IP settings. I may need to swap the network cables after my Untangle Server decides which NIC is external and which is internal (there is a step to help you determine this). After the setup wizard, I can download the “Open Source Package” which contains all the applications discussed above. After all the applications are done downloading the installation is complete! Business users may  also wish to configure OpenVPN at this point, or enforce the web usage policy with Web Filter.


# Conclusion

The Untangle solution provides free and effective protection and control for business and home networks. The Untangle Gateway Platform can be downloaded at [untangle.com](http://www.untangle.com). After downloading the ISO CD image, it can be burned on to a CD. Booting from the CD on the server will install the Untangle Platform and convert the server into an Untangle Server.

