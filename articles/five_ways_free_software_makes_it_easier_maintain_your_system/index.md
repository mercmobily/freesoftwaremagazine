---
nid: '3031'
title: 'Updating your system: GNU/Linux 5, Windows 0'
authors: 'Ryan Cartwright'
published: '2008-10-17 15:03:52'
tags: 'windows,apt,comparisons,updates,maintenance'
license: verbatim_only
section: end_users
listed: 'true'

---
The pace of software development -- regardless of the licence -- is pretty fast these days. The state of your systems need constant monitoring. New features, bug-fixes and (most important) security updates need to be properly managed. Here, in no particular order, are five ways that choosing a free operating system will make system maintenance a lot easier and simpler. In short they are ways that -- when it comes to system updates -- GNU/Linux beats Windows.

<!--break-->

# Intelligent updating tools

* **GNU/Linux 1** : Automatically updates underlying required packages in the process.
* **Windows 0** : User update dependant packages manually. Those updates in turn may cause conflicts.

Like it or not modern operating systems all require updates and patching. Some updates require updates to underlying libraries and utilities. Intelligent systems will download and update those at the same time. By using software that can be freely distributed, then you can take advantage of this kind of intelligent feature. Most GNU/Linux distributions handle this through their package-management tools. The really intelligent ones will warn if you updating a library is going to break other software, and because of the sharing nature of free software that means most GNU/Linux distributions.

=ZOOM=The mistrusting nature of proprietary software vendors means one package update could break some other software on your system=

Conversely because of the mistrusting nature of proprietary software vendors ("It's our code you can't have access to it!"), you can get into situations where one package update requires a library update which will break some other software on your system. Anybody who has had to repair a Windows system that was broken by upgrading the anti-virus suite will know what I mean here.

# Update your entire system at once -- no matter how old it is

* **GNU/Linux 2** : Install it once, update it as required. Older hardware can still be updated.
* **Windows 0** : Upgrade paths only available between concurrent versions. Older hardware get less supported very quickly.

Microsoft will issue (sorry, _sell_) update media which will update the current version of their (not your) OS to the next one. It's not very often you can purchase an update CD which will span two major versions. Their "solution" is that you have to buy a new machine. Yes, you can install the new version from scratch, but what happens to your data/applications? Also, it's unlikely a machine capable of running Windows 2000 will cope with Vista. Granted, most of the new "features" on the later version won't be available to any machine they deem "old" anyway. This may explain why so many Windows users buy a new PC every now and then.

=ZOOM=Debian has a deserved reputation that you need only install it once=

Compare this to a system where you can update to the latest versions by downloadable CD or over the Internet. Debian has a deserved reputation that you need only install it once. The same can apply to Ubuntu and other GNU/Linux distributions. As I write this article, I am upgrading this machine from one major release of Debian (Etch) to the next one (Lenny). Apt is downloading the 586 needed files in the background. I issued a single command to do that. Once it's finished (before I finish writing this piece), I can apply the upgrade with another single command. I could do both at once but I prefer to be there while the actual upgrade takes place. In recent weeks I have updated systems running previous versions of Debian to Etch and Lenny using the same two commands. Yes, there were features I could not use -- like 3D graphics -- on some of those systems, but that did not stop me updating them anyway.

# Update a restored system in one step -- including applications

* **GNU/Linux 3** : Restore-update. A true one-stop-shop, all applications updated via official repositories and tools.
* **Windows 0** : Restore-update-reboot-update-reboot-update, repeat until fed up. Then reinstall/update all your applications.

This is related to the previous point, but it's somewhat different. Have you ever had a hard drive die on you? Most people have and restoration as simple as some software producers would have us believe. Most backups exclude the operating system. So you have to reinstall the base OS and start run to the update system.

=ZOOM=What you really need is a system that will update you to the latest version for each package in one step=

At this point what you really need is a system that will update you to the latest version for each package in one step. What you don't need is having to contact several manufacturer's repositories and get stuck in some kind of eternal patch-reboot-patch cycle. I've lost count of the number of times I've had to rebuild a system where the restore CD (if you have one) is XP and then I have to use Windows Update to bring it up to SP2 or 3. It frustrates the heck out of me that I have to install a bunch of patches then reboot and then find a whole other bunch which update the still-out-of-date system. And I haven't even got to the third party software yet! I mentioned that I am currently updating this system while I write. I didn't mention that includes _all_ my applications as well, not just the OS.

# Mirror, mirror save me time

* **GNU/Linux 4**: Updates issued via official channels when they are needed from a host of local mirrors.
* **Windows 0** : Updates (including security patches) only issued monthly from Microsoft's servers only.

Microsoft issues its updates and patches on the second Tuesday of each month ( [Patch Tuesday](http://en.wikipedia.org/wiki/Patch_Tuesday) ). Billions of PCs all downloading any number of patches. Every single one of them from Microsoft's update servers. Anybody who's had to wait for the updates to download knows what effect that has on bandwidth - both yours and Microsoft's. Aside from the time and bandwidth issues, there's also the obvious risk of waiting anything up to a month for a security patch that would otherwise leave your system(s) vulnerable. Microsoft are not alone in this behaviour, but theirs are the updates that proprietary systems may require most.

Compare that with a system of updates where individual packages release updates independently but through the official repository, where a comprehensive mirror system is in place, where you can even set-up your own local mirror so that only that machine contacts the central repositories. Mirrors are possible because you are able to examine the source of the patches and therefore know you can determine your trust based on your preferences. Proprietary software houses can't really use mirrors in the same way: how would you know that the patch you downloaded didn't contain any nasty additions -- even if it comes from an official repository? Some Windows admins will download all the patches once and push them to the clients overnight. Which is fine but leaves still leaves you waiting until Patch Tuesday for the main updates.

# Full disclosure on updates

* **GNU/Linux 5** : Release notes indicate what has changed and why plus what effect it will have on your system.
* **Windows 0** : Sparse, generic and unhelpful information given with updates. No indication of the effect on your system until you install it.

=ZOOM=Proprietary companies will release change notes  which is tant-amount to saying "Something isn't quite right and this will fix it, but that's all we're saying"=

Wouldn't you rather know what a patch fixes and/or changes it will make before you apply it? Several proprietary companies (including Microsoft) will release change notes and update information which is tant-amount to saying "Something isn't quite right and this will fix it, but that's all we're saying". If you ask me, this borderlines between mistrusting and patronising.

Compare this to a system where release notes/change logs and the like are available before you download the update. Many of the release notes could improve on ease of use, but the fact remains that you can find out what needs to change and why, determine the risk level to your systems and schedule the updates accordingly. On my Debian system I usually install `apt-listbugs` as well, so I can see any outstanding bug reports before I apply an update/patch. I discussed this [earlier in this column](/articles/beyond_synaptic_using_apt_better_package_management/).


# Conclusion

* Final score: **GNU/Linux 5, Windows 0. GNU/Linux wins**

I'm not suggesting that system maintenance is the _only_ reason you choose an operating system; however, it certainly should be a consideration. As they say: "security, ease of use, cost-effectiveness - pick any two". When it comes to system patching, free software enables you to have all three.