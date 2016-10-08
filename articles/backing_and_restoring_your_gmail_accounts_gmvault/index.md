---
nid: '3806'
title: 'Backing Up and Restoring your GMail Account(s) with GMVault'
authors: 'Gary Richmond'
published: '2012-10-18 4:52:08'
license: cc-by-nc-sa
section: end_users
main_image: gmvault-icon-512.jpg
listed: 'true'

---
Backing up all your precious data and settings is a given. However, when it comes to e-mail we tend to develop amnesia. It's the ghost at the banquet, yet losing your e-mails, your address book and contacts (especially if you run a business) would be a catastrophe. Fail to backup at your peril. Of course, if you use a desktop client like Evolution of Thunderbird, configuring either of them with IMAP will do the trick for you but if you prefer the traditional web interface for Gmail, then you need a different solution. GMVault may be that solution.

# Installing GMVault

GMVault is a command-line program written in Python, cross platform and released under the GPL. It's an immensely powerful piece of kit and I'm confident that it will eventually find its way into mainstream repositories, possibly even garnished with a GUI for good measure but in the meantime it's [available only as a zipped binary tarball from the official site](http://gmvault.org/download.html). Visit the link and scroll to the Python Source distribution (gmvault-1.7-beta-src.tar.gz) and download it to your chosen directory. The only dependency you should need is Python (version 2.6 or 2.7). Extract it and run the executable binary either by clicking on the file in your file manager (ensuring that you have ticked the `Allow this file to run as a program` box in the Permissions tab of Properties). Or, if you prefer it the old fashioned way, open a terminal, `cd` to the download directory and run the following command: `python setup.py install`.


If you should get an error message like `ImportError: No module named setuptools` install `Python-setuptools` from your distro's package manager and rerun the command. If you get the following error, `[Errno 13] Permission denied: '/usr/local/lib/python2.7/dist-packages/test-easy-install-4196.pth'` try rerunning it as root (`su`, or `sudo` in Ubuntu). If you also run into problems with your version of `Distribute` run `easy_install -U distribute` (as root). That worked for me. Your experience may vary before you get GMVault installed. As a quick check, type either `whereis gmvault` or `gmvault -h` to view the list of command options. Unless you have specified a specific location, GMVault should install by default to `/usr/local/bin/gmvault`.


# GMVault: the basics


=ZOOM=there is a plethora of switches that puts GMVault on steroids=

Now we're ready to use GMVault. The two main commands are `sync` and `restore` but with those commands there is a plethora of switches that puts GMVault on steroids. However, to begin at the beginning, type `gmvault sync <_your gmail address_>`. Now, you _can_ use you Gmail password but it makes sense to take up the interactive offer to use [OAuth](https://en.wikipedia.org/wiki/OAuth) to authenticate instead (OAuth will work with Google's two step authentication). If you insist on using a password stored locally on your hard drive, do at least consider encrypting it with the command `gmvault sync <_your gmail address_> -p --store-passwd`. So, accept the generous offer, hit ENTER and GMVault will open a browser at the Gmail page. Log in and you will be prompted to let GMVault access your account.
=IMG_CLEAR=Use_OAuth_to_grant_access_to_your_GMail_account.jpg=Figure 1: Use OAuth to grant access to your GMail account=

GMVault will store the token in its own separate directory. In my case, `/home/richmondg/.gmvault`. You'll need to enable hidden files view in your file manager to see it. Every e-mail is compressed and each one has its own metadata which can be viewed in any text editor.

=IMG_CLEAR=By_default_GMVault_backs_up_emails_as_compressed_emls.jpg=Figure 2: By default GMVault backs up emails as compressed emls=

You will only need to do this once. Alternatively, you can type `gmvault sync <your e-mail address> -p` which will prompt you for your password (which will be stored on your computer--and encrypted if you use the `--store-passwd` switch instead. This is not recommended. GMVault will now start backing up all your emails. Where? In your Home Directory. Mine are stored in `/home/richmondg/gmvault-db/db` which is created automatically and it sorts e-mails into directories by month and year.

=IMG_CLEAR=No_special_database:_just_directories.jpg=Figure 3: No special database: just directories=

If you are easily amused you can pass the hours and minutes watching the directories fill up with e-mails to distract from the tedium of watching the terminal output scroll by. GMVault has no progress bar but it will periodically report (about every fifty e-mails) on how many e-mails have been backed up and print an estimate of how long and how many e-mails left to complete the operation.

=IMG_CLEAR=GMVault_will_keep_you_informed_about_progress.jpg=Figure 4: GMVault will keep you informed about progress=

When GMVault has completed the backup it will give you a short report detailing any errors, such as the number of reconnections, the number of e-mails (and chats if selected) that failed to backup or that could not be fetched.

=IMG_CLEAR=GMVault_reports_before_exiting.jpg=Figure 5: GMVault reports before exiting=

Strictly speaking, e-mails are compressed to save space but you can extract them and read any of them as well as use your backup copy to restore your account. Restoring your e-mails to an account is equally simple. Just type `gmvault restore <your e-mails address>` and GMVault will do the rest. However, this software is more versatile than doing simple vanilla backups and restores. What if you only want to, say, back up a specific time period? Read on.

# Customizing your backups

Without arguments GMVault backs up all your gmails (and chats) but you wouldn't want to backup up the whole account again just to synchronize the last seven days of your e-mails. GMVault can do that for you with `gmvault sync <_your gmail address_> -t quick`. You don't have to be a genius or a visionary to see that this was just made for a `cron` job. You could even set this (and other arguments) as Bash aliases but perhaps storing your email address in plain text, even in an alias, isn't too smart. Very good--but the in depth guide for GMVault says that the time period can be specified by editing `quick_days` in the config file at `$HOME/.gmvault/gmvault_defaults.conf` where you can set the figure to one that suits your needs. This is a feature in the latest version (1.7) but I was unable to find it. The author (Guillaume Aubert) has asked me to submit a possible bug report.

The most flexible option allows you to specify downloading e-mails between two dates. Customising GMVault in this way is possible because it supports the IMAP requesting language. So, for example, if I type the following command in a terminal: 

`gmvault sync --type custom --imap-req 'Since 10-Aug-2012 Before 15-Aug-2012' <your gmail address>`

GMVault logs into my account and outputs the following:

`Perform custom synchronisation with imap request: Since 10-Aug-2012 Before 15-Aug-2012 56 emails to be fetched.`

And duly saves them to the default "database". However, e-mail accounts are not monolithic. We've all been good boys and girls haven't we and organised an efficient inbox and sub boxes by name or category? Of course we have so you can also use GMVault to selectively backup them too and in combination with specified time periods. So, firstly, I want, say, to backup e-mails from a specific person or under a specific folder for a give I just enter the following into a terminal:

`gmvault sync --type custom --gmail-req "in:inbox from:Tony" my gmail address.com`

Or, if you prefer, use the full e-mail address of the sender whose e-mails you want to sync:

`gmvault sync --type custom --gmail-req "in:inbox from:<sender's e-mail adress>" <my gmail address.com>`

Obviously, substitute the appropriate e-mail addresses.

You can see that, like building up a Bash command, you can combine many flags and switches with various filters to obtain the desired result. So, for example, if synchronization is interrupted by a server fault, a system freeze on your computer or a broken internet connection you only need to append `--resume` or `--restart` to the commands and GMVault will complete the download for you.

If, at any time and for any reason, you wish to delete revoke GMVault's access to your Gmail account just manage your authorizations by [logging into your Google Setting](https://accounts.google.com/b/0/IssuedAuthSubTokens?hl=en_US) and click on the Revoke access button.

=IMG_CLEAR=Revoking_GMVault's_access_to_GMail_is_only_a_click_away.jpg=Figure 6: Revoking GMVault's access to GMail is only a click away=

# Only a GUI could improve GMVault

=ZOOM=The developer of GMVault is working on a GUI. Out cup runneth over=

GMVault is a great piece of software so I don't think you'll be doing that any time soon. Yes, it's command line only but it's not difficult to use and if it gains traction (and I haven't seen a negative review yet) it might only be a matter of time before someone better versed in Python than me (not difficult) use a Python-based IDE to develop a GUI. In the meantime, for the CLI phobic there _is_ another Python-based alternative called [BaGoMa](http://bagoma.sourceforge.net/) which has both a CLI and a GUI. Unlike GMVault, it doesn't use OAuth but rather prompts for a password and it won't backup Google Chats. Re the password problem, as BaGoMa's developer has pointed out, the solution may be to store passwords in a `Cron` configuration file from where you can run a scheduled backup. This could apply equally with GMVault if you prefer not to trust your GMail account to third-party authentication.

_STOP PRESS:You heard it here first. GMVault's developer, Guillaume Aubert, has told me that he is working on a GUI for this great software which will be finished in a few months. Our cup runneth over._

My only gripe, though it's tangential to GMVault's central function, is that even if you don't compress your e-mails in the GMVault database they are not easily identified if you were searching for a particular e-mail though at least they are stored in the `eml` format and can be therefore be read in any text editor (though not very pretty). Since that format conforms to industry RFC 822 standard they can also be opened with any e-mail client supporting that standard. (I extracted one at random and opened it with Thunderbird--but eml-formatted emails will also open in Evolution). As an extra bonus, as eml is plain text, e-mails can also be read in browsers like Firefox and Opera, provided that you rename the file extension from `eml` to `mht`. 

The other thing you can and should do is to make a copy of your backup and throw it onto a USB stick. (For other options see the [in depth guide to GMVault](http://gmvault.org/in_depth.html)). With Thunderbird or Evolution configured with IMAP, GMVault backups on external media you've got all the angles covered. Now, if someone can just find a way to backup GMail with the subject heading that would be the icing on the cake. Well, I have a solution for this but I'm going to be a bit of a tease and save it for my next article. And honestly, it's a simple little gem. Watch this space!

=ZOOM=I predict a bright future for GMVault--not least because, unlike Thunderbird, it can _restore_ your GMail account(s)=

In the meantime, will I stop using an IMAP-configured Mozilla Thunderbird now that GMVault is installed too? Oh no. As our feminist friends might say, you can have it all. It's not a zero sum game. Thunderbird and GMVault are mutually supportive, not exclusive. I predict a bright future for GMVault--not least because, unlike Thunderbird, it can _restore_ your GMail account as well as just storing local copy. When the GUI is added, GMVault will surely find its way into the repositories of all the major distros.