---
nid: '3732'
title: 'Keep an Eye on Your GNU/Linux System with Glances'
authors: 'Dmitri Popov'
published: '2012-03-13 13:25:39'
tags: 'linux,python,monitoring,system'
license: verbatim_only
section: end_users
main_image: main.jpg
listed: 'true'

---
Looking for a no-nonsense command-line tool for monitoring your GNU/Linux system? [Glances](https://github.com/nicolargo/glances) might be right up your alley. This neat little Python-based utility provides an overview of all key system aspects, including CPU load, disk storage, memory consumption, and network activity. More importantly, the utility does a good job of presenting monitored data in an easy-to-follow manner.

In addition to a clean layout, Glances uses color codes to identify key parameters and their current status.  For example, the *Mount* section displays  the total and used disk space. If the disk space is less than 50% full then it's marked with the green **OK** color code.  As  the amount of free disk space decreases, the color codes change accordingly. So when a file system is 90% full, its color code changes to **CRITICAL**. This seemingly simple trick makes it significantly easier to keep an eye on your system's resources.

=IMG=glances.png=Glances in action=

Glances has only two dependencies: Python 2.6 and the python-statgrab library version 0.5 or higher.  If your particular distro doesn't have the latest version of python-statgrab, you can easily compile it from source . To install Glances, grab the latest release of the software from the project's website, and do the standard compilation routine:

	./configure
	make
	make install

The latter command should be executed as root. Once Glances has been installed, you can launch it by running the `glances.py` command in the terminal. By default, Glances refreshes stats every second, but you can specify a different refresh interval using the `-t` switch:

	glances.py -t 5

The utility also features a handful of commands. The `c` command, for example, sorts the processes list by CPU consumption, while the `f` command toggles the file system stats. You can view a list of all commands by pressing the `h`key.