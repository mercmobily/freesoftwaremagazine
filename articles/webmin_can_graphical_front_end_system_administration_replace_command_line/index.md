---
nid: '2987'
title: 'Webmin: can a graphical front end for system administration replace the command line?'
authors: 'Gary Richmond'
published: '2008-08-31 20:57:56'
tags: 'command-line,apt-get,webmin,configuration'
license: verbatim_only
section: hacking
listed: 'true'

---
This article will tell you how to install and use Webmin, a web user interface mainly used for administering servers. If you are not a sysadmin, don't run away: Webmin can also be used on a single desktop too. You may struggle to remember all the command line operations to manage, say, run levels or various daemons and prefer to do it the GUI way. One of the best reasons for using Webmin is to circumvent the sheer number of command line variations from distro to distro and the different locations for configuration files that you would otherwise require to memorize (manpages notwithstanding). 

<!--break-->

Please keep in mind that it is still essential to know how to use basic Unix commands. Using Webmin without some system literacy is just asking for trouble. It should be used as an additional tool, not a replacement--because a little knowledge is a dangerous thing. On that basis, let's look at what Webmin modules can do for the desktop user.

# What exactly is Webmin? 

=ZOOM=Webmin is a collection of Perl CGI scripts, so if you are a Perl programmer you can write new scripts and modify Webmin itself=

Simply put, it is a way to administer your machine graphically through your chosen web browser and it will work with all the major and popular browsers: Firefox, Opera, Flock, Konqueror, Epiphany, Galeon, Seamonkey and Netscape Navigator which support tables and forms (and Java for the File Manager module). For lovers of small, fast and sleek browsers like Dillo I'm afraid you'll be out of luck. Dillo does not support [SSL](http://en.wikipedia.org/wiki/Secure_Sockets_Layer) which Webmin uses. However, there are many browsers to choose from so you can run Webmin from one browser in that list that's bound to be your favourite. Better still, Webmin is a collection of Perl CGI scripts so if you are a Perl programmer you can write new scripts and modify Webmin itself (the source code is included).

Being such a popular piece of software means that you should experience little difficulty in getting hold of Webmin. Virtually all the major distros (Ubuntu, Mepis, Fedora, Madriva, Suse, etc) host it on their repositories and if your system is up to date you should not experience any problems. Your package manager should resolve all dependency problems. Don't worry if your package manager doesn't have the latest version of Webmin for installation. Install it anyway and once Webmin is up and running you can upgrade it from within the software in the Upgrade Webmin module, dependencies notwithstanding. The default is set to upgrade from the Webmin site. However, if all else fails point your browser to the [official Webmin site](http://www.webmin.com/) which kindly hosts a number of binary package flavours for RPM, Debian, Solaris (and Tar too). They also [kindly list all the versions]( http://www.webmin.com/support.html) of GNU/Linux known to work with Webmin. It is a fairly hefty 12.9MB but that's only to be expected given what it does. Your package manager should handle the installation smoothly.

If space or download speeds are a consideration there is always the [minimal version of Webmin](http://prdownloads.sourceforge.net/webadmin/webmin-1.420-minimal.tar.gz) which has only the Webmin API and few basic modules to get you started. You can then add/delete modules later as you please. If you are a GNU/Linux GPL purist, be warned that Webmin operates under a [BSD-like](http://en.wikipedia.org/wiki/BSD_license) licence. If you know how to program in Perl and have an itch to scratch, you can write your own third-party modules and release them under any licence you want, including the unsullied purity of GPLv3. Once installed you will get a message telling you that the install is complete and that you can log in using as root user:

=IMAGE=Webmin_logon_screen.jpg=Figure 1: Webmin logon screen=

Don't worry about the warnings. That's normal as the digital certificate is self signed. You're in:

=IMAGE=Webmin's_default_front_page.jpg=Figure 2: Webmin's default front page=

You may encounter problems with self-signed certificates if you are using Firefox 3 and have to jump through a few hoops before you use Webmin. My colleague, Ryan Cartwright, [has already discussed this here on FSM](/articles/self_signed_certificates_and_firefox_3_possible_solution/) (and others too, [here](http://pandion.ferrus.net/2008/07/31/mozilla-ssl-policy-bad-for-the-web)).

If you are going to use Webmin regularly to administer your machine it might be a good idea to set up a Firefox profile for it or navigate to the log-in page in Konqueror and drag the favicon onto the desktop for convenience. Just a thought. If you don't like the default theme there are modules to change it. (I have used the default theme. The default theme is better if only because it allows you to select a module from the side panel without opening tabs and windows, though you can if you prefer). Extra themes can be installed from the panel on the left-hand side of the homepage under the Webmin drop-down menu (change language and theme) The pre-installed modules are also listed under various headings. 

# Before you start

Before you start doing any serious configuration work with Webmin you might want to think about configuring access to it. It used to be that Webmin would, by default, auto logout after five minutes but the latest version (1.420) leaves the field blank.

To avoid potential security problems of closing down (or a system crash) whilst root, it is perhaps advisable to set a time out. The period is up to you but do choose something commensurate with your work pattern. How? Simple, from the front page of Webmin choose _Webmin User → Webmin Configuration → Authentication. Check the box marked _Auto-logout after_ and key in a suitable value. As an additional security feature, Webmin automatically uses [PAM](http://en.wikipedia.org/wiki/Pluggable_Authentication_Modules) (Pluggable Authentication Modules) for Unix authentication. 

It is worthwhile to set up one administrative user as it is generally not a good idea to work as root all the time. As you can see from the screenshot, Webmin allows you to set this up with tight control of what is permitted to be accessed:

=IMAGE=webmin_users_module.jpg=Figure 3: webmin users module=

Clicking on any of the listed users allows you to customize the number of accessible modules, user access rights, security profiles and more:

=IMAGE=editing_Webmin_users.jpg=Figure 4: editing Webmin users=

Finally, as we are using Webmin as a GUI for a single machine it also makes sense to limit access to localhost:

=IMAGE=setting_IP_access_under_Security_and_Limits_Options.jpg=Figure 5: setting IP access under Security and Limits Options=

Check the radio button for _Only allow from listed addresses_ and type `localhost` (or whatever name was set up) in the dialogue box and save your way out. One last thing you might want to consider to boost your security profile is [port numbers](http://en.wikipedia.org/wiki/TCP_and_UDP_port). 

By default Webmin uses port 10000. Changing port numbers won't always fool [Port scanners](http://en.wikipedia.org/wiki/Port_scanner) and whilst it is true that high port numbers are accessible to non-root access and compromising Webmin login details, Webmin uses [SSL](http://en.wikipedia.org/wiki/Secure_Sockets_Layer) and that should negate the problem.

To test if SSL is installed properly type  `perl -e 'use Net::SSLeay'` in a terminal. If there is no error returned you are good to go. Webmin will automatically use SSL--but you can disable it from the SSL module in Webmin Configuration--> SSL Encryption.

However, if you do decide to change the port number it is smart to choose one that is not shared by any other service. [Wikipedia has a list of port numbers](http://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers), what they do, and more importantly, if they are shared.

If you prefer the command line (ironically) fire up a console and type `grep -w 10000 /etc/services`. If the port is not being shared with any other service you will be returned to a prompt. Whatever port number you deploy it may be necessary to tweak your firewall depending on the settings. Finally, on the basis of the precautionary principle, it makes sense to delete all those modules you do not need, to avoid access to system files via Webmin.

# Useful modules for single desktops (and laptops too)

## System

Perhaps the most interesting and useful module for the single desktop user is _System_. Once it's expanded, you can see the available administration categories:

=IMAGE=the_contents_of_the_System_module.jpg=Figure 6: the contents of the System module=

=ZOOM=one of the less immediately obvious killer features of Webmin is that it operates directly on the files it amends rather than storing information in a database which may provoke compatibility problems=

You can see straight away that there are some old hardy perennials there for desktop users: bootup and shutdown, changing passwords, scheduled cron jobs, system logs, users and groups to mention a few. Now, of course both Gnome and KDE provide specific GUI tools for these, but Webmin brings them all under one convenient location. More importantly, one of the less immediately obvious killer features of Webmin is that it operates directly on the files it amends rather than storing information in a database which may provoke compatibility problems. This means that you can use Webmin, safe in the knowledge that if you need or prefer to edit system files the old fashioned way on the command line specific to your GNU/Linux distro it should not precipitate any disasters. Incidentally, if you foul up you can inspect log files in a terminal, but Webmin can be configured to log all the changes you make when you are using it. If you brick something with Webmin you will still have the command line as your rescue tool. Not for nothing has Webmin been described as a "mix and match". To illustrate these features let's see Webmin in action handling installing software. 

Selecting Software Packages from the System sub menu brings up the following screen:

=IMAGE=Webmin's_software_packages_module.jpg=Figure 7: Webmin's software packages module=

Webmin will detect you system and package manager but if you need to you can tweak things a little further by clicking on the `module config` link (top left) and this will give you the option to choose systems and package managers, including whether or not to use Apt-get or Aptitude to install/remove software:

=IMAGE=module_configuration_for_software_packages.jpg=Figure 8: module configuration for software packages=

There are a number of installation options: from a local file, FTP, HTTP or from the repositories I chose the last one, which opens a separate window. I chose to search for Karm and the results are hypertext links:

=IMAGE=Webmin's_search_result_for_Karm.jpg=Figure 9: Webmin's search result for Karm=

Clicking on the link for Karm installs the package:

=IMAGE=Webmin_successfully_installs_Karm.jpg=Figure 10: Webmin successfully installs Karm=

As you can see from the screenshot the process is, at this point, non-interactive with Webmin setting Apt to assume `yes` to all prompts and queries (which is _not_ my default on the command line). I am rather concerned that Webmin invokes the `force` option for Apt-get. Surely that should not be the default as it may override system files and stability. The only configuration file I was able to locate was in Perl, at `/usr/share/webmin/software apt-lib.pl` which contained specific references to `yes` and `force` defaults, but as I am not familiar with Perl I resisted any temptation to try and amend the file to change them. However, because Webmin acts on the files directly rather than through a database, what Webmin does, Apt-get on the command line can undo and Karm can be safely removed with your package manager GUI or the command line equivalent.

Additionally, you explore your installed software files by clicking on the _Package Tree_ button (top right) which gives you access to numerous hyperlink options:

=IMAGE=Package_Tree_reveals_a_list_of_installed_software.jpg=Figure 11: Package Tree reveals a list of installed software=

This an quick and easy way to see at a glance exactly just what you have installed without recourse to the command line. You can familiarize yourself with your system's file structure and drill down through all the levels too (especially convenient when done from within the confines of a tabbed browser). However, if you're pining for the uncluttered purity of the command line, Webmin may help there too. Like the Filemanager module, the command shell module comes to us courtesy of a Java applet. It can be found under the _Other_ category:

=IMAGE=default_command_shell.jpg=Figure 12: default command shell=

And it outputs results just like a conventional console:

=IMAGE=command_shell_running_the_output_of_dmesg.jpg=Figure 13: command shell running the output of dmesg=

However, if you want to output dmesg one page at a time, appending | less will not work as it does normally in a console. Man pages are alright, but trying to launch applications fail. Clearly, Webmin's command shell is not a viable substitute for a proper terminal. 

# Cron jobs and Running Processes

You can run a GUI like Kcron or fire up a terminal to schedule/create tasks but Webmin has a module for that too. You can schedule a con job from an pre-existing list:

=IMAGE=scheduled_cron_jobs.jpg=Figure 14: scheduled cron jobs=

or create your own:

=IMAGE=creating_a_cron_job_with_Webmin.jpg=Figure 15: creating a cron job with Webmin=

You can of course monitor you box with top and pid but once again Webmin can function as a useful shoe in. Selecting, er, Running Processes bring it up:

=IMAGE=Running_Processes.jpg=Figure 16: Running Processes=

Along the top are four display options: PID, User, Memory and CPU:

=IMAGE=details_of_the_pid_for_the_CUP_daemon_with_options_to_kill_it.jpg=Figure 17: details of the pid for the CUP daemon with options to kill it=

The PID details gives you plenty of options, including the ability to kill the process or "renice" it. Choosing the _User display_ option splits the PIDs under user headings. If you want to track down any memory hogs, then selecting the _Memory display_ options will finger the culprit(s)--with the usual opportunities to kill, renice, etc.

The _Bootup and Shutdown_ module uses a similar layout with the facility to configure daemons and run levels in real time, at shut down or boot time:

=IMAGE=Bootup_and_Shutdown_module_options.jpg=Figure 18: Bootup and Shutdown module options=


## Other tab

This contains several nifty modules, especially _Command Shell_ (which can operate as a stand in for exploring your system without opening a console) and _File Manager_. The last one requires your browser to be enabled for Java as illustrated by this screenshot of Webmin's file module running in Firefox:

=IMAGE=Webmin's_filemanager_module_running_in_Java-enabled_Firefox.jpg=Figure 19: Webmin's filemanager module running in Java-enabled Firefox=

You also have lots of file options right within your chosen browser.

It is of course Java ugly, but it does allow you to browse all your files from the comfort of your favourite browser.  

# Final thoughts

We all love GUIs. For the average user of proprietary systems like Windows they are mostly all they ever need or see. Unix systems are rather different. Long before GUIs became ubiquitous, system administrators (and single machine users too) were weaned on configuration on the command line and spent copious amounts of time mastering their craft.

The increasing use and popularity of GNU/Linux has been educating people about its superior architecture, better security and relatively simple configuration files. It is also true though that the huge availability of graphical front ends has brought in a whole new slew of users who feel right at home with them as they did in Windows. However, the usual criticism is that, good and relatively easy to use as they are, they can never emulate the fine, granular control of the command line. There is a deal of truth in that.

Webmin, as a GUI, can challenge this. While you may discover that certain modules will not work because all distros do not use agreed, standard locations for their configuration files, Webmin is nevertheless one of the most feature-rich pieces of software you may ever use. Each module has a bucket load of features and so far there are 113 of them as nearly as many third party modules too. Webmin seems to have everything bar the kitchen sink--and I wouldn't be at all surprised to find a module for that too! Hopefully, once the [LSB](http://en.wikipedia.org/wiki/Linux_Standard_Base) (Linux Standard Base) is adopted this problem should disappear. This article cannot begin to do justice to the sheer range of what Webmin can do. (Hell, if you don't like the modules titles there is even a module to change them to something for meaningful/relevant to you. Now, that's what I call customization. How recursive.


=ZOOM=Giving Webmin to a newbi as a substitute for hard-won knowledge on the command line would be like giving a pyromaniac a flame thrower in a leaking oil refinery=


Although it was designed primarily for administering remote machines on LANs and WANs, it is perfectly serviceable for users who want to configure several unconnected machines running different distros without having to remember the multiplicity of file paths and commands. None of this exempts the user from mastering GNU/Linux on the command line. Webmin is not for beginners. Giving it to a newbie as a substitute for hard-won knowledge would be like giving a pyromaniac a flame thrower in a leaking oil refinery. Without the pre-requisite skills and knowledge the premature and uncritical use of Webmin would be as dangerous a place to be as the refinery.

That said, once you have adequate system administration skills on the command line you can afford to relax a little and treat yourself to a few sessions on easy street with Webmin. The next best thing you can do is to treat yourself to a great book on Webmin--and it is free, courtesy of the Bruce Perens' Open Series of books. Point your browser to the [downloadable PDF](http://www.informit.com/content/images/0131408828/downloads/0131408828.pdf). It was written by Jamie Cameron--and he ought to know a thing or two. He was the primary coder of Webmin.