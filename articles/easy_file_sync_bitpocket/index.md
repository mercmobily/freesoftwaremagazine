---
nid: '3740'
title: 'Easy File Sync with Bitpocket'
authors: 'Dmitri Popov'
published: '2012-03-28 9:59:18'
tags: 'synchronization,shell-scripts,bash'
license: verbatim_only
section: end_users
main_image: 20120111_155119.jpg
listed: 'true'

---
Need to keep files and documents in sync across multiple Linux machines?  [Bitpocket](https://github.com/sickill/bitpocket) provides a no-nonsense solution to the problem. This tiny shell script uses the excellent rsync software to perform the syncing jiggery-pockery. This means that you can have one machine acting as the "main repository", and then have several "client" machines which will be able to sync with it. (This obviously means that all client machines will have the same files). Here is how you configure it.

<!--break-->

You can use any remote Linux machine as a syncing hub, provided it has OpenSSH and rsync installed on it  The only thing you need to do is to create a directory that will hold master copies of the files, which can be done using two commands (replace `user@remotehost` with the actual user name and IP address or domain name of the remote machine).

	ssh user@remotehost
	mkdir ~/bitpocketmaster

# Deploying it

To deploy bitpocket on client machines, you need to have available both `rsync` and `curl`. So, first of all, run:

	sudo apt-get install rsync curl

You will then need a private key for the client:

	ssh-keygen -t dsa

You should also place your public key in the authorized_keys file in the remote host, so that you will be able to logon using your private/public key pair:

	ssh-copy-id -i .ssh/id_dsa.pub user@remotehost

(Replace `user@remotehost` with the actual user name and IP address or domain name of the remote machine.)
At this point, just install Bitpocket (which implies getting it from GitHub, compiling it, and installing it):

	curl -sL https://raw.github.com/sickill/bitpocket/master/bin/bitpocket > ~/bitpocket
	sudo mv ~/bitpocket /usr/bin/
	cd /usr/bin/
	chmod +x /usr/bin/bitpocket

Finally, you can create your bitpocket directory and set everything up:

	mkdir ~/bitpocket
	cd ~/bitpocket
	bitpocket init user@remotehost ~/bitpocketmaster

# Turning it into a script

If you are in a hurry, you can use a simple shell script cobbled together by yours truly:

	#!/bin/sh
	sudo apt-get install rsync curl
	ssh-keygen -t dsa
	ssh-copy-id -i .ssh/id_dsa.pub user@remotehost
	curl -sL https://raw.github.com/sickill/bitpocket/master/bin/bitpocket > ~/bitpocket
	sudo mv ~/bitpocket /usr/bin/
	cd /usr/bin/
	chmod +x /usr/bin/bitpocket
	cd
	mkdir ~/bitpocket
	cd ~/bitpocket
	bitpocket init user@remotehost ~/bitpocketmaster

Copy the code above and paste it into a new text file. Replace `user@remotehost` with the actual user name and IP address or domain name of the remote machine, then save the script as *installbitpocket.sh*. In the terminal, make the script executable and run it:

	chmod +x installbitpocket.sh
	./installbitpocket.sh

This installs the required packages and the bitpocket itself, generates and copies encryption keys, creates the *bitpocket* folder in the user home directory, and initializes the created folder for use with bitpocket.

# Making it work

To check whether everything works properly, place a few files into the *bitpocket* directory, then switch to the directory in the terminal and perform a sync:

	cd ~/bitpocket
	bitpocket sync

This should sync the files with the *bitpocketmaster* directory on the remote machine. To run the syncing operation automatically, run the `crontab -e`command, and add the following cron job (modify the example schedule, if needed):

	*/5 * * * * cd ~/bitpocket && nice /usr/bin/bitpocket cron

That's all there is to it.