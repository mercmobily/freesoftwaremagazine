---
nid: '1412'
title: 'At times there’s too much freedom in free software...'
authors: 'Edward Macnaghten'
published: '2005-11-06 2:07:15'
license: verbatim_only
section: opinions
listed: 'true'

---
November has come, the winter nights are drawing in (here in the UK), time for some indoor activities.  One of these activities is a long overdue housekeeping exercise in the `home` directory of my GNU/Linux box.  Let’s face it, in the day-to-day operating of my computer, I don’t always tidy up after myself. All sorts of unused rubbish clutter up name space and the various subdirectories of my home directory, and it uses up significant disc space, not to mention the extra resource for my (too infrequent) backups.

Time for a tidy up.

After practicing the use of the `rm` command and the “Delete” key in file manager GUIs, I can now see some wood through the trees. Gone are my never looked at photos from that day out so long ago. Gone are the weird and wonderful pieces of software I downloaded for a quick one off evaluation. Gone is my file called `qq.tgz` with a date stamp of last January containing a compressed version of god knows what. I have been ruthless in clearing up the clutter. Old, weird file names that have given me a warm comfort blanket factor, but were totally useless—now history. My downloads directory—which may have something I have been deluding myself I might need in a peculiar set of unforeseen circumstances—trashed. The `"ls"` command can now do a long listing in a single “gnome-terminal” session (maximized) and I don’t need to scroll back and forwards or pipe to more. The clutter has disappeared!

Well—not quite—I backed it up first. I’m not quite THAT brave.

I have some mess I feel I cannot touch. It’s using my space but deleting it is a no-no. I’m talking about those hidden configuration files. Those DOT files and directories. I have eighty of them in my top level home directory! I know that developers kindly put them there for my own benefit; I’m a developer and I create helpful DOT files for any person gracious enough to run my programs. However, I’m now finding they shout out to me whenever I view my home top level directory. They are out of control!

A good solution to this is for there to be one top level directory in each home that should store those files. I would suggest `.etc`, or `~/.etc` to give it a more geeky name. That one file in my home directory I could cope with. I’d know what it is for, and I’d be unlikely to accidently delete important configurations from there. I’d even be happy to adopt my programming style to using it.

Unfortunately, this is unlikely to happen. The free nature of free software gives people the freedom to do what they want, rather than force them down a particular route. Granted, there are ancient standards that people more or less adhere to, such as using DOT files for user specific configurations, but these standards get old and don’t cater for the demands of a modern GUI system. Everyone likes standards, unfortunately everyone tends to like their own and ignore all the others. In free software there is no big boss shouting “DO IT THAT WAY OR ELSE!”. Granted, this enables freedom of system writers to create whatever they want, but it creates inconsistencies and inconveniences for the end-user, most of which, with a little organization, would be totally avoidable. The LSB goes some way toward fixing this, but there’s still a long way to go.

I like free software. I like working in the environment, and using the result. I can appreciate that having no central organisation is probably a small price to pay. Oh well, I guess I’ll have to shut up and put up with those eighty files I cannot do anything about.

