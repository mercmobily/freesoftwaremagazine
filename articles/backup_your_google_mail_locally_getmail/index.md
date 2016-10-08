---
nid: '3332'
title: 'Backup up your GoogleMail locally with getmail'
authors: 'Ryan Cartwright'
published: '2010-06-19 5:52:57'
tags: 'backup,google,getmail,e-mail,cron,gmail'
license: verbatim_only
section: hacking
listed: 'true'

---
To the chagrin of their competitors, GoogleMail seems to have become almost as synonymous with webmail as Google has with search engine (recently my six year old was explaining to me how he Googled for something at school). GoogleMail is a useful tool and has a lot of advantages over traditional client-server mail accounts, particularly if you are on the move. To be honest those sorts of advantages are present in pretty much any webmail setup: I'm just concentrating on GoogleMail because it's by my experience the most popular. But GoogleMail has one disadvantage, all your messages are stored on Google's servers. If you [lose access to Google service or to your account](http://www.wikihow.com/Avoid-Getting-Your-Gmail-Account-Suspended) then you lose your e-mails. Fear not oh free software lover, help is at hand in the form of the very useful [getmail](http://pyropus.ca/software/getmail/).

<!--break-->

Getmail is a command-line tool for retrieving e-mail from remote servers and delivering into a local mailstore. That mailstore might be an [mbox](http://en.wikipedia.org/wiki/Mbox) file or a [Maildir](http://en.wikipedia.org/wiki/Maildir) directory. Personally I prefer the latter because it means I'm no longer relying on one ever-increasing file for my mail. 

# Installing

To be honest I'm not sure why I still include this section in these types of articles, installing software on modern GNU/Linux systems is such a breeze and I'm guessing most of you are using one. Search your usual package manager for getmail and install from there. You can download the source and build it from the [getmail homepage](http://pyropus.ca/software/getmail/) if you want to. Me, I just ran `apt-get install getmail` from a shell. There are few dependencies for getmail. It's a python script, so Python (2.4) is a requirement but that's about it.

# Configure GoogleMail

For getmail to retrieve your GoogleMail you'll need to tell Google to permit access from outside of their systems. Getmail supports POP3, POP3-over-SSL, IMAP4, IMAP4-over-SSL, and SDPS mail accounts either as single or multi-drop accounts (where several e-mail accounts end up in one inbox). For this tutorial I'm going to use POP3 but GoogleMail supports IMAP as well.

=ZOOM=Getmail supports POP3, POP3-over-SSL, IMAP4, IMAP4-over-SSL, and SDPS mail accounts either as single or multi-drop accounts=

* First log into GoogleMail and then go to the `Settings` section (there should be a link on the top right for this)
* Now goto the `Forwarding and POP/IMAP` tab
* Select `Enable POP for all mail`. Later you can go back and change this to `Enable POP for mail that arrives from now on` but for now we want to back up all your GoogleMail. (see note below)
* Choose an appropriate option under step 2. For mine I leave it as `keep GMail's copy in the Inbox`
* Click `Save changes`

# Configure getmail

You can have getmail retrieve your GoogleMail by passing it command-line parameters, but I'm guessing you'll want to do this again sometime, so it's best to use a getmail config file. Unless you provide a full path to the config file, getmail will presume it is within its default directory. On most system this will be `.getmail` under the user's home directory. You can of course put the files anywhere as long as they're readable by the user running getmail. If you do not pass it a config file path, getmail will look for the default one of `~/.getmail/getmailrc` ("~" is a shortcut for the current user's home directory). For simplicity we'll use that, but if you have multiple accounts then you can create multiple config files and tell getmail to use them by starting it with `getmail -r <your config file>`.

=ZOOM=You can have getmail retrieve your GoogleMail by passing it command-line parameters, but I'm guessing you'll want to do this again sometime, so it's best to use a getmail config file=

For now create a file called `~/.getmail/getmailrc` and enter the following into it, substituting your GoogleMail address as the username where required:

=CODE_START=
[retriever]
type = SimplePOP3SSLRetriever
server = pop.gmail.com
username = YourGoogleMailAddress

[destination]
type = Maildir
path = ~/gmailBackup/

[options]
verbose = 1
message_log = ~/.getmail/gmail.log
=CODE_END=

The `message_log` line is optional but can be useful if you want to keep track of what getmail has done. There are some other options you might like to consider here. The type setting can be Maildir or mbox if you prefer and the path setting can be any directory/file the user running getmail has write permissions for. the `verbose` setting dictates how much information is sent to the terminal while getmail is running. Setting this to 1 will echo the messages it is retrieving as it goes. Other options are 0 for only warnings and errors and 2 for pretty much everything. 1 seems a happy medium to me.

# Running it

That's all there is to the config file so once it has been created you can run getmail. Open a terminal and enter `getmail` followed by Enter. If you have given the config file another name you'll need to tell getmail what it is with `getmail -r filename`. if the file is not in the default directory you should also give the full path `getmail -r /path/to/your/config/file`. When you run it, getmail will ask for your GoogleMail password. If you don't want to type this every time you can put it in the retriever section of the config file. Below the username line add `password = YourGoogleMailPassword`. Personally I don't like to do such things as somebody getting access to my laptop could then access my GoogleMail account, but if you run getmail as a cron job (scheduled event) then you might need to add the password line.

Each time you run getmail, it retrieves the mail it has not seen before. GoogleMail is setup so that mail you have sent is in the same mailbox as mail you have received. This means getmail will retrieve the `All mail` folder from GoogleMail. It will not retrieve anything from the Spam older. Once you have your GoogleMail on your local machine, you might want to read it. You can point pretty much any mail client at the backup file/directory. Personally to keep things simple I use the excellent [mutt](http://www.mutt.org) as it provides fast and simple access without needing to set up accounts and the like that some of the desktop mail clients require you to.

# Automating it

If you use your GoogleMail a lot you'll probably want to perform this backup quite regularly. You can of course remember to run it every so often but you can also use the [cron](http://en.wikipedia.org/wiki/Cron) tool in your Unix-like system to automate the backup. This isn't a tutorial on cron, but for now here's a few simple steps. Type `crontab -e` into a shell and your cron file will open in a text editor. This is where you add commands you want to run at scheduled times. Move to the end of the file and add the following line:

=CODE_START=
10 10 * * 1-5 /usr/bin/getmail -r /full/path/to/your/config_file >/dev/null
=CODE_END=

The format from cron commands is `minute hour day-of-month month day-of-week command` so this will run at 10:10 AM every weekday of every month (* is a wildcard). Note that you must include the full path to any config file you give, shortcuts like "~" won't always work in cron environments. Of course you don't need to specify one at all if you are using the default config filename but I always think it's better safe than sorry. The `1>/dev/null` bit on the end means that any output from the command will be discarded. This is fine because getmail is logging everything anyway, and if we didn't do this the system would likely send you an e-mail with the list of mail that was retrieved. Errors from running the command (for example if you've not entered the command properly) will be sent to you but you can discard them by changing `> /dev/null` to `2&1> /dev/null`.

# Notes and caveats

* Leaving POP access on your GoogleMail account open does make it less secure than closing it. Someone would still need to either know your password or be able to crack it but the risk is there. If you want to be extra careful you can always go back and reverse these steps once getmail has done its thing.
* Getmail can be used on any remote mail account that supports the protocols it supports. This means you should be able to use it on other webmail services, but I can't guarantee that as I've not tried.
* Getmail as the name suggests is for mail only. It won't help you backup Google calendar or docs. To backup Google calendar you can [export it](http://www.google.com/support/calendar/bin/answer.py?hl=en&answer=37111) similarly with [Google docs](http://docs.google.com/support/bin/answer.py?hl=en&answer=49115).
* I'm not responsible for your e-mail. if you follow these steps and something goes wrong I can't responsible as things change and I can only report what works when I try. That said, I hope this helps.