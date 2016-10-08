---
nid: '3600'
title: 'Firewall consistency with Firewall Builder'
authors: 'Marco Marongiu'
published: '2011-09-20 11:55:17'
tags: 'firewall,sysadmin,firewall-builder'
license: verbatim_only
section: hacking
listed: 'true'

---
(This article was edited by Mike Horn)

In the past I've already published [articles](http://fsmsh.com/2071) and [interviews](http://fsmsh.com/3138) on FSM about Firewall Builder (or FWB in short). The reason is simple: the tool kept evolving during the years, improving the features it already had and adding interesting new ones.

During these years I've not being using the tool regularly since I am not a Network Administrator. But I can say that every time I had a firewalling problem at hand, where I needed to prototype and test iptables configurations quickly, this tool never betrayed me!

This time we'll talk about how FWB helps you to configure multiple firewalls in a consistent way. We won't be talking about firewalling per se, so you can still benefit from reading this article even if you don't have deep firewalling, networking or security knowledge.

The examples in this article are based on Firewall Builder v4.2.  NetCitadel recently announced the release of Firewall Builder 5 which includes some minor changes in the GUI, so some screenshots in this article may look slightly different from what you would see in v5.

<!--break-->

# What is Firewall Builder?

Firewall Builder is a program that simplifies the management of firewall rules for a wide range of operating systems and hardware firewall devices. The list is quite long, and you can [find more on its website](http://www.fwbuilder.org/4.0/supported_firewalls.html).

=ZOOM=FWB helps you to configure multiple firewalls in a consistent way=

Broadly speaking, FWB is both an graphical interface (GUI) and a set of compilers. You define your rules in the GUI, and a compiler generates scripts from them for the chosen platform. In fact, the same set of rules may be used to generate scripts for iptables, ipfilter, or (e.g.) Cisco devices.

FWB provides an handy library of objects for commonly used entities in firewall rules (e.g.: private address ranges, well-known IP and networks addresses, as well as protocols). These standard objects may be extended by the user with new objects, or by grouping together existing objects in new ones. Firewalls are also objects, so you can manage many firewalls in the same interface, and share objects between them. This, as we'll see, is an unexpectedly powerful feature.

FWB saves all these entities (objects and firewalls) in an XML file using the ".fwb" extension. Corruptions in fwb files may be corrected using a simple text editor such as gedit (eh, yes, that happened to me a few times...).

# Scenario

In the project I was working on, we had a number of machines in two different datacenters. Each machine should run an host firewall.

A firewall-wise classification of the servers was easy to do: there was a general set of rules which held for all servers, namely:

1. any traffic through the loopback interface should be allowed;
2. any outgoing traffic on physical interfaces should be allowed; besides, incoming packets related to these outgoing connections must be allowed;
3. a selection of incoming ICMP traffic should be allowed (only ICMP packets with well defined type/code combinations);
4. all incoming traffic from directly attached networks, the other datacenter, and a selected set of our company's networks should be allowed;
5. all other traffic should be blocked and logged.

Further rules permitting specific traffic would be added to specific servers. E.g., an Internet accessible web server will be allowed to receive http connections; DNS servers will have a rule that allows incoming DNS traffic, and so on.

When the classification was done, we had two Generic rulesets (one for hardware servers and one for virtual machines), a set for Xen servers, and five more rulesets covering other special cases.

An iptables-savvy person will immediately realize that creating these rulesets by hand is not too difficult. But, if that person is _really_ savvy, they will also understand the hidden pitfall of this approach: maintenance.


# The maintenance pitfall

The pitfall hides at point #4 in the list above, which contains a set of addresses allowed to initiate any type of traffic to these machines. While a portion of this set is unlikely to change (for example, the network addresses associated with the two datacenters), the remaining part is expected to undergo several changes during the years. The same changes will need to be applied consistently to all rulesets and distributed to all machines.

=ZOOM=Creating similar rulesets by hand is not too difficult, but there is a hidden pitfall: maintenance=

As you can easily guess, the problem is not the distribution of the rulesets (provided you have a configuration management tool in place, such as [Cfengine](http://www.cfengine.org/) or [Puppet](http://docs.puppetlabs.com/#learning-puppet)). The problem is that, with a manual approach to the management of the rulesets, the rules will easily get out of sync. An improperly configured ruleset can have potentially devastating consequences for the security of the whole infrastructure.

You'll need some templating system in place to generate consistent rulesets. Or you can use Firewall Builder.


# Using Firewall Builder for consistency

As said, you can create an object to match entities that will be used in your rules such as a network range. Besides, you can group multiple objects together into a group object. The set of IP addresses and networks allowed to connect to our datacenters without limitations is a good candidate for using a group object.

=IMAGE=Figura1.jpg=Figure 1: using group objects in firewall rules=

We created a separate object for each IP address or network range and gave it a meaningful name (e.g.: "management stations in location X", "monitoring server in location Y", "customer's server from Z" and so on), and then grouped these objects together in a new object called "Allowed externals". This object is then used in rules where a firewall needs to provide access to all these addresses.

What happens if you add a new object in "Allowed externals"? What happens if you change something in one of the objects in "Allowed externals"? The answer is: what you'd expect: FWB detects a change in the object, and marks the firewalls which use it as having been modified. When you later request FWB to compile the firewalls, it will give you the opportunity to recompile only those which need it.

=ZOOM=If you modify an existing object, FWB does what you expect=

The same principle holds for other type of objects, too. Let's say, for example, that you host a custom network service which uses the TCP ports 1234, 2345, and 4567. Again, you can make an object for each of these ports, group them together in a new object (let's call it "MyService") and use it in a firewall rule (e.g.: allow incoming connections to MyService from any host). If you later extend this service with, say, UDP port 4321, all you have to do is to create a custom object for this new port, add it to MyService, and recompile: all affected firewalls will be recompiled resulting in new scripts.


# Handling a special case: Xen rulesets

Defining a set of firewall rules for Xen was such a special case that it deserves a separate section. In order to explain the challenges, we need to spend a few paragraphs and elaborate on what Xen is and how it manages network connections.

To put it simple (if not simplistic) Xen is both a virtualization technology and a system that allows a number of virtual machines to run on top of a single physical machine (that is, an ["hypervisor"](http://en.wikipedia.org/wiki/Hypervisor)). When we talk about Xen here, we refer to the hypervisor and not the technology itself.

From a networking point of view, Xen mediates the connections to and from the virtual machines, that is:

* connections from the "external" network to the virtual machines, and vice versa;
* connections from the "external" network to the hypervisor system itself, and vice versa;
* connections between the virtual machines.

When a virtual machine is started, Xen assigns it a _dynamic_ ID. I stressed the word "dynamic" for a reason: each time we start a virtual machine, it may get a different ID: the ID depends on the start-up order of the virtual machines rather than the virtual machine itself (it's not a property of the virtual machine itself, so to say). Xen uses this ID throughout the whole VM lifecycle, and in particular for networking. The hypervisor itself has an ID of 0, and is often referred to as "dom0".

Let's say that we start a virtual machine and it gets an ID of 5; let's also say that the VM has two virtual network interface which will be eth0 and eth1 when you look at them in the virtual machine. When you look into the hypervisor system, you'll see two corresponding virtual interfaces for this machine: vif5.0 and vif5.1. The eth`N` and the vif5.`N` in the dom0 are connected as if there was a crossover cable between them (to a certain extent, you can simplify and think of this as if there was a single object, shared between the virtual machine and the hypervisor, with two different names: one name in the VM and one in the dom0). You will also see a vif0.`N` interface for each physical interface the hypervisor has (e.g.: vif0.0 will be a virtual interface corresponding to the eth0 for the dom0, same thing for vif0.1 and eth1, and so on).

Unless you configure things differently, [dom0's physical interfaces and all the vifs are connected to a virtual bridge](http://wiki.xensource.com/xenwiki/XenNetworking#head-602e26cd4a03b992f3938fe1bea03fa0fea0ed8b). When packets come in one of the physical interface, they enter the bridge and then are forwarded the appropriate vif by the bridge. The same thing holds if one of the machines needs to send packets to the network or another virtual machine: the packet leaves the originating machine, enters the bridge, and is then forwarded to the appropriate destination.

This leaves us with two different possibilities in order to firewall the dom0 and the virtual machines that run upon it:
* all filtering happens in dom0, or
* dom0 filters only the packets that are addressed to itself, and forwards all other packets to the virtual machines; the virtual machines will run their own firewall.

Each one of these two choices carries its advantages and disadvantages. 

In the first case, you minimize the amount of processes running on the hardware: in fact you have only one iptables process running for the dom0 and all of the virtual machines running on it. On the other hand, the rules for the dom0 need to take into account all of the virtual machines, and each one of them can be running or shut down at any given moment, and can change ID over time: this would lead to fully dynamic iptables rules. All in all, a powerful but complex setup.

In the second case, the rules on the dom0 need just to take care of the dom0, and forward all the rest to the virtual machines. This will lead to a fixed set of simple rules in both the dom0 and the virtual machines, at the expense of more processing power and memory to keep a number of independent iptables process running separately. A simpler, yet underoptimized, setup.

After some evaluation and testing, we decided for a KISS (Keep It Simple, Stupid) approach, and went for the second one. Actually this choice made things simpler on one side, but a bit more complicated on the other.


## Implementing filtering in the dom0

To take into account the _physical_ interface through which the packets flow, we needed to use iptables' physdev module, which is not directly supported by FWB.

Why do we need that specific module? As said, all packets flowing from any of the physical interfaces to any of the vif interfaces, and vice versa, needs to be forwarded directly without any further check. Also, all packets travelling from vif to vif will be subject to inspection in the VMs' firewalls and doesn't need to be inspected in the dom0. Any other packet (like those flowing from physical to physical) will be handled by the iptables process in the dom0.

=ZOOM=Rulesets for Xen had peculiarities that made them a special case=

It is important to note that, all in all, we are saying: "if packets flow from physical to vif or vice versa, or from vif to vif, forward them; otherwise, handle them in dom0": the forwarding rules come first, and then come dom0's filtering rules. This helps us to clear the hurdle of the missing physdev support in FWB.

When used to generate iptables rules (actually, when used on a system supporting a UNIX shell), FWB will compile the rules into a shell script. In this case you can also add two customised script chunks: a _prolog_, which will be executed before applying any rule, and an _epilog_, which will be run after all rules are applied. The physdev rules we've just talked about are very good candidates to go into a prolog, in fact. Here's what we added:

=CODE_START=
$IPTABLES -A FORWARD -m physdev --physdev-in peth+\
	--physdev-out vif+ -j ACCEPT
$IPTABLES -A FORWARD -m physdev --physdev-in vif+ \
	--physdev-out peth+ -j ACCEPT
$IPTABLES -A FORWARD -m physdev --physdev-in vif+ \
	--physdev-out vif+ -j ACCEPT
=CODE_END=

=IMAGE=FirewallProperties.jpg=Figure 2: getting to the firewall properties=

Adding this rules to the firewall is easy: you double click on the firewall icon, and get the screen above. At this point you'll press on the "Firewal Settings ..." button.

=IMAGE=PrologWindow.jpg=Figure 3: adding a prolog=

Here you will select the "Prolog/Epilog" tab, and paste in the rules you want to appear in the script.

That's all we needed to make things work. It looks like an easy thing today, but it took us some time to find out.

You may have noticed that we are using a "+" wildcard in the interface names. "+" means "a string of characters of any length", and combined together with the "peth" and "vif" which come before it, they mean: all interfaces whose name start with "peth" or "vif". Why we are not using "eth" instead of "peth" would require to delve more into Xen networking, so we'll skip it. Again, take a look at the [Xen Networking](http://wiki.xensource.com/xenwiki/XenNetworking#head-04ebcc1760dbc4678e83b116afa310dc0612dc39) documentation if you are interested.


# Conclusion

In this article, we showed how we used Firewall Builder to consistently configure a set of host firewalls.

The advantages of this approach are:
* firewalls sharing the same objects are always consistent, as changing an object marks all affected firewalls for recompiling;
* you have a graphical user interface which may simplify rule definitions
* you can compile the same rulesets for different devices and keep them consistent;
* you can quickly prototype new rulesets taking advantage of FWB's built-in sanity checks, and then implement the rulesets any way you like (not necessarily in Firewall Builder)

Whether you are a GUI fan or a command-line junkie you can take advantage of FWB's functionalities, so why not give it a try?

=TEXTBOX_START=What's new in Firewall Builder 5=
Some of the new features in Firewall Builder 5, for example user defined object folders and object keywords, make it easier for users to manage their firewall configurations.  Objects can be tagged with multiple keywords.  Typing a keyword into the Quick Filter will show all the objects that have that keyword defined.  Objects can also dragged-and-dropped into user created folders to organize objects based on your environment.

Another new feature in Firewall Builder 5 that uses object keywords is dynamic groups.  Dynamic groups are configured with matching criteria based on the object type and object keywords.  When a dynamic group object is used in a firewall rule the group object will be expanded to include all the matching objects at the time the firewall is compiled.

The behavior for rules where multiple actions need to be performed on the same traffic was also improved in Firewall Builder 5.  Previously tagging, classifying and policy routing all required a separate rules in addition to the rule that determined whether the traffic was permitted or denied.  In v5 users can now define a single rule to accept traffic and also to apply additional actions, like tagging, all in the same rule.

Finally, the latest version adds a new type of object called the Attached Network object.  This object can be associated with an interface and represents all the IP networks that are associated with the IP addresses that are assigned to that interface.  This makes it easy to represent a list of local networks that are attached to a firewall's interfaces.
=TEXTBOX_END=
