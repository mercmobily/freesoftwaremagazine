---
nid: '1589'
title: 'Keep your private documents private'
authors: 'Robin Monks'
published: '2006-06-06 12:00:00'
license: verbatim_only
section: end_users
listed: 'true'

---
[Digg it!](http://www.freesoftwaremagazine.com/node/1589)

Nowadays, with more and more governmental censorship (and with it getting worse by the day, just look at Slashdot’s [privacy section](http://slashdot.org/search.pl?tid=158)) and reports of hacking into major servers becoming almost a daily occurrence, we all want the maximum security and privacy possible online. Thankfully, some great free software projects have risen to the challenge! Here are some simple steps to keep your "stuff" safe:


<!--break-->


The first thing you’ll want to get is [Gpg4win](http://www.gpg4win.org/). Gpg4win’s excellent installer will automatically download and install all the components you need to generate public and private keys, sign and encrypt documents, emails and files; decrypt and verify your documents, files, emails and more!

Gpg4win includes [GnuPG](http://www.gnupg.org/) (a free software re-make of PGP’s (Pretty Good Privacy’s) personal encryption suite), the [WinPT](http://www.stud.uni-hannover.de/~twoaday/winpt.html) GUI for GPG, the [GPA](http://www.gnupg.org/related_software/gpa/index.html) key manager, [GPGol](http://www.g10code.de/p-gpgol.html) to integrate with MS Outlook 2003, the [GPGee](http://gpgee.excelcia.org/) shell extension and the [Sylpheed-Claws](http://claws.sylpheed.org/) lightweight email client.

You can get Gnu4win directly from [here](http://www.gpg4win.org/download.html). Just run the graphical install (accepting defaults is fine) and in about 5min, you’ll have an complete personal encryption suite.


=IMAGE=untitled.JPG=Gpg4win installer=

Once installed, find the shortcut to “WinPT” and open the program (the location of the shortcut depends on what you checked in the installer, mine’s in the quick launch bar). A new key icon will appear in the system tray, double click it to open WinPT’s key manager.

If you haven’t made a private key for yourself yet, you’ll need to click “Key → New → Normal” and follow the steps to create an encryption key. Remember to make a hard to guess passphrase, WinPT will give you tips on doing this. If you have installed GnuPG before your previous keys will import automatically. 

To get your “public” key to give to other people so they can send you secure email and files, right click your key and select “copy key to clipboard”. You can also add keys others have given you by coping their key to the clipboard and selecting “Edit -> Paste” from the key manager. Remember to never give out your private key, only your public key!

Now, to encrypt a file, just right click on the file in windows explorer and highlight “GPGee”. Select “Symmetric” encryption to encrypt a file to yourself, or PK encryption to encrypt to multiple people (such as before emailing a file to someone, or if you want multiple people to be able to access a file).


=IMAGE=untitled2.JPG=Encrypting a file=

If selecting PK encryption, select the people you want to have access to the file, click “OK” and enter your passphrase if asked. For symmetric encryption, just enter your passphrase if asked. Either way you’ll get a new file ending in `.gpg` ready to be emailed or stored. If you want to keep the file securely on your hard drive, remember to delete the original, unencrypted version using “Shift + Delete” so as not to leave a copy in the recycle bin.

Like all free software projects, Gpg4win and all the projects its graphical installer configures are created by donations of time and funds. If you find yourself using a free software alternative to an expensive program, consider giving ten, twenty, thirty, etc., percent of what you would have paid for the proprietary product to the project to ensure that project continues to provide great software to the free software community.

Now you can be private once again.

