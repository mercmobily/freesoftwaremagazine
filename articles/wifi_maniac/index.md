---
nid: '1540'
title: 'GNU/Linux and WiFi'
authors: 'Alan Berg'
published: '2006-11-01 8:00:00'
issue: issue_14
license: cc-by-nc
section: end_users
listed: 'true'

---
The idea was simple: why not build my own little GNU/Linux based wireless network in a spare five minutes?


# WiFi Maniac needs aspirin and emotional support

Upstairs at my place there’s a play computer with lots of development tools, and... ok, a few games too, along with a WiFi router; downstairs there’s the study and an old laptop. Installing [Fedora](http://fedora.redhat.com/) downstairs and [Ubuntu](http://www.ubuntu.com/) upstairs was quick and painless. With a few clicks on the wizards and a sudden surge in adrenalin as I formatted the disk partitions, lots of package names whizzed by at great velocity and *puff* finished. Yes, an anticlimax of simplicity and stability. Just one small, tiny, insignificant task left, the WiFi connections. No problem, I’m not stupid. I have the power: I know how to Google. So five pages later, I need [ndiswrapper](http://ndiswrapper.sourceforge.net/) for the laptop and the `Zd1211` module for the gam... um, I mean development machine. After an hour of looking at the Ubuntu machine, prodding it to see if it was still breathing, walking up and down, and nodding profoundly to my family as if I knew what I was doing, I realized the obvious: Ubuntu has the [Zd1211](http://zd1211.sourceforge.net/) driver already installed. With loud rounds of sarcastic applause ringing in my ears, I followed the readme instructions (for non root users).


=CODE_START=

sudo ifconfig wlan0
sudo iwconfig wlan0 essid Sitecom key xxxxxxxxx
sudo dhclient wlan0 

=CODE_END=

The actions worked. And, being GNU/Linux, the actions always work. I was connected. I was the master of my WiFi universe upstairs and it only cost me two hours and a couple of dents to my ego. Luckily or perhaps not, my family hadn’t changed their collective opinion of my humanity, being a caveman I bluffed well. However, if I’d started with the black magic recipe or had read the right documents in the correct order in the first place, then the cost in real time for installation would have been less than a minute. But no one else knew that did they? Shh... it’ll be our little secret!


=ZOOM=If I’d started with the black magic recipe or had read the right documents in the correct order in the first place, then the cost in real time for installation would have been less than a minute=

Next the big challenge, Fedora Core 5. Core 5 sounded like a nuclear reactor and the WiFi turned out to require some real science. First, I tried the `Zd1211` trick, but `Zd1211` wasn’t installed. No `Wlan0` interface would come up. So back to Google, which, in minutes, had turned up a tantalizing hint: `ndiswrapper` is a rather excellent utility that allows Windows drivers to work under GNU/Linux.

The problem was that I needed to compile the wrapper. To compile you need the header files of the installed kernel. I dutifully downloaded both the 586 and 686 header files. Informed the compiler where to find the interfaces and then compiled. The code compiled cleanly and, with a highly motivated yelp of delight, I deployed the youthful binary. The wrapper didn’t work. What next? The wrong header files perhaps? Being of strong will—hardened by the day-to-day competition for food at the breakfast table—I sought out an `ndiswrapper` package and installed it. Failed dependencies!

Finally, brute force won over intelligence, as it often does with me. I updated the kernel and installed the kernel source code and headers. Compilation worked, but guess what? I had the wrong Windows drivers. One and a half hours later finally all was good, everything works predictably, stably, and will do so until an asteroid hits the earth or my younger son decides to finger paint the internals of the hard drive. Even better, I have that feeling of killing the prey, climbing to the top of the mountain and looking down victoriously. And only for eight hours work. Or ten minutes if I did the same actions in the correct order a second time around.

The moral of this story is clear. WiFi is standard functionality. GNU/Linux is shaping up as a desktop competitor against Microsoft. Tools such as `Zd1211` and `ndiswrapper` are essential for that competition. I therefore welcome advances in the WiFi configuration field and I am happy to see that [this is already occurring](http://www.devicescape.com/news/releases/release_05-01-06_opensource.php).


# Bibliography

[Fedora](http://fedora.redhat.com/)

[Fedora Update](http://download.fedora.redhat.com/pub/fedora/linux/core/updates/)

[Header files](http://en.wikipedia.org/wiki/Header_file)

[ndiswrapper](http://ndiswrapper.sourceforge.net/)

[Ubuntu](http://www.ubuntu.com/)

[Zd1211](http://zd1211.sourceforge.net/)


