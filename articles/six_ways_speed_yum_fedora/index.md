---
nid: '3077'
title: 'Six ways to speed up Yum on Fedora'
authors: 'Gary Richmond'
published: '2009-01-05 5:23:21'
tags: 'fedora,apt-get,yum,yumex,kyum'
license: verbatim_only
section: hacking
listed: 'true'

---
I've been using Fedora (Core and all) on and off for a few years now and its parsimonious attitudes to codecs notwithstanding, the thing that always reduces me to a whimpering, pleading wreck is watching [Yum](http://yum.baseurl.org/) installing a piece of software. I can forgive its tendency to handhold and even to confabulate, but Yum moves with all the speed of a treacle flow at the North Pole. Apt-get has already done its stuff and gone home for tea but Yum is still setting the table and polishing the silver. Once you've used Yum for a while you will know why it puts the V in verbose. Is there _anyway_ to get this package manager off the sofa and into the gym for some serious exercise?

# It's not the hardware

=ZOOM= Once you've used Yum for a while you will know why it puts the V in verbose=

"Bet you're running Fedora on a computer that was being used when the Dinosaurs roamed the Earth, mate?", you say; well, yes and no. My ancient machine with a hobbled 400MHZ Celeron processor ran Fedora Core 5 (just) so you might have a point, but I did not notice any huge improvement in speed when I installed later versions of Fedora on more powerful desktops and laptops with processors in the 2.6MHZ range. I fell for the advertising hype every time. Yum, they said, is faster than ever. Go on, Install Fedora and see it run! I did. I didn't get a rampaging Tiger; I got a beached Whale. Hardware bottleneck? I don't think so. After all, I had been using distros with Apt-get for years on a variety of machine speeds, and it always did what it said on the tin, but Yum seemed to breach the Trades Descriptions Act. Judged on speed alone I have yet to see anything that can match Apt-get. So, what can we do to make Yum a contender instead of riding a one way ticket to Polookaville?

# Don't use a GUI for Yum?

I am always looking for front ends to command line tools, especially package managers. You sacrifice granularity and potential problem solving to be sure, but you gain ease of use and relative transparency -- and with front ends like Synaptic you are not disappointed. There is little by way of a speed hit. As it should be. Yum is a different matter. Install and fire up [Kyum](http://sourceforge.net/projects/kyum) or [Yumex](http://sourceforge.net/projects/yumex/) and you have two very fine-looking and featureful GUIs for Yum but both have reduced me to a state of catatonic paralysis by their plodding slowness--especially Yumex. I know checking transactions and keys are important but these front ends seem to slow even this. Even [Packagekit](http://www.packagekit.org/), the new frontend for Yum since Fedora 9, is no Olympic sprint champion either. Yes, if you use Yum on the command line you will need to memorize some stuff, but believe me, after you have almost lost the will to live watching Kyum, and particularly Yumex, grind out a simple install, you will think committing some commands to memory a small price to pay to avoid install rage.

## Take the waiting out of wanting

=ZOOM=added together these tips should help Yum put a foot on the accelerator pedal=

Well, I'm not being strictly honest here. If you launch Yumex from the Start menu or a Desktop icon with default configurations then keeping a book by your side while it does it thing may be necessary to pass the time. My current version of Yumex seems to lack a feature I have seen before: the ability to launch itself _aka_ a Firefox profile manager. Amongst other things this allowed the user to disable the metadate update and use the local cache instead. Alas, it seems to be no more. When I tried that I just got the normal GUI so it looks like we need to look elsewhere  for a speed hit.

In terms of speeding up Yum the answer lies in its `config` file. If you open up that file in your favourite text editor you will see that there is a default expiry time for updating the metadata. It used to be thirty minutes but has been extended to ninety minutes. Even the most dedicated or prolific software installer does not need to be _that_ up to date and setting a much higher default should do a lot to reduce the bottleneck. Set a figure commensurate with your habits and see the speed hit. If you prefer, set a really high default corresponding to once a week. If editing config files is not for you the quick _ad hoc_ way is just to type `yum -C install <your application>`. The `C` ensures that Yum bypasses updating all headers and runs with what is in the cache. If you do this you will, sooner or later, want to synchronize the local metadata cache with the repositories; to do that just type `yum makecache` periodically to sync with the Fedora updates. In the final analysis however, Yum's real problem seems to be slowness in XML parsing and C strings becoming Python strings. Hacking the metadata configuration is probably the best thing you can do to speed up Yum, but it is not the only thing. The other stuff is less powerful but added together they should help Yum put a foot on the accelerator pedal.

## Mirror mirror on the wall. Who is the fastest of them all?

There tends to be an assumption that a local mirror for repositories will be the fastest but that it not always necessarily so--as anyone who has tried various mirrors when downloading a GNU/Linux ISO will attest. This next tip will eliminate the guesswork from trying to determine whne and where to find the fastest mirrors. Enter stage left, Yum Plugins.

It is as simple as typing the following command in a console: `yum install yum-fastestmirror`. That's it. From now on Yum will select the fastest available mirror every time to install a piece of software. Additionally, if you wish to exclude certain domains to squeeze a little more juice out of Yum, launch your favourite text editor (as root) and navigate to `/etc/yum/plugin conf.d/fastest mirror.conf` and add a line like `exclude=.ee/ .dk` to exclude sites in Estonia and Denmark, to take just two random examples. (You can get a list of top level domain abbreviations [at Wikipedia](http://en.wikipedia.org/wiki/Country_code_top-level_domain)). By default Yum fastestmirror recalculates every ten days but if you install a lot of software you might want to force it with the following: `rm /var/cache/yum/timedhosts.text` to have the fastest mirror(s) currently available.


## Call out the Delta force

Most readers will be familiar with differential and incremental backup of files. The principle is known and established but it can be applied in the area of package management. Normally, when an update for a piece of software is available Yum will download and install it for you but the update may differ little from its predecessor. If it was a big file like OpenOffice.org you'd certainly appreciate something to reduce the strain on the your bandwidth (the difference between 120MB and 8Kb). Delta RPMs can do this for you. With these Yum only downloads the _difference_ (Delta=difference) between packages, not the whole package. 

You can enable this very useful feature by installing the presto plugin (`yum install yum-presto`). Fedora have scheduled this for [inclusion by default in Fedora 11](http://fedoraproject.org/wiki/Releases/FeaturePresto) but Delta RPMs should be available in Yum repositories at present. I have been using them for some time now.

## Check, skip and exclude before you update

If you are not using the previous tips (and even if you are) another way to speed Yum along is to simulate an update with `yum check-update` and identify any big updates you want to exclude and then proceed with the exclude switch: `yum update --exclude=openoffice --exclude=firefox`. You can add as many packages as you wish here. Hint: if you wish exclude also all similarly-named packages just add an asterisk: `yum update --exclude=openoffice* --exclude=firefox*`. This will both save space (in conjunction with Delta RPMs) and in the case of Firefox ensure that currently working addons and plugins are not broken. Finally, you might get a slight speed hit if you tell Yum to skip broken dependencies. A simple `yum install yum -skip-broken`. Once installed Yum will ignore any packages with dependency problems. 

## Install a better(?) package manager

Doubtless, Yum _has_ improved substantially over the years but Oranges aren't the only fruit and Yum is not the only package manager. Porting applications across distros is a popular hobby in Unixland and package managers are no exceptions. Two stand out: Apt4Rpm and Smart manager; and ports for Fedora are available. If you find speed and dependency resolution are still plaguing your enjoyment of Fedora you might want to try them out.

# Apt4rpm 

[Apt4rpm](http://apt4rpm.sourceforge.net/) support for Yum was added as far back as May 2004 (version 0.68.2) but binaries for recent versions of Fedora are scarce. If you cannot find it in your repositories you can grab a copy at [Sourceforge](http://apt4rpm.sourceforge.net/). Dependency hell is not quite dead yet--it's Hydra headed and liable to rear its ugly head and bite. So, when Yum fails Apt4rpm might deliver you from Hell. As the geek joke has it, Apt is what Yum wants to be when it grows up.

# Smart

=ZOOM=the developers of Smart boast that its algorithm makes Apt-get look like a big girl's blouse=


If Debian users like to taunt Fedora devotees as Apt users in short trousers the developers of the [Smart package manager](http://labix.org/smart) take it to the next level and boast that the algorithm powering Smart makes Apt-get look like a big girl's blouse. I can testify from personal experience that where Apt-get failed to install a piece of software, Smart delivered the goods. If you can't find it in the Fedora repositories, the Smart homepage has pre-compiled binaries for various distros as well as the obligatory tarballs. However it is is need of serious update so pop over to [RPMpbone](http://rpm.pbone.net/index.php3) instead and grab a binary for Fedora. Your mileage with both Apt4rpm and Smart may vary and of course mixing package managers entails the same danger as mixing your drinks--falling over! Be careful out there.

## Conclusion

The forking and fissile nature of GNU/Linux ensures that it throws up all kinds of problems but for every problem some enterprising developer comes up with a solution and while Yum may never compete in a sprint race with Apt-get these tips might just put Yum in the running for a podium medal. In the meantime, I'll always keep apt-get up my sleeve on a Debian distro an my insurance policy for a rainy day. It's, well, yummy. 
