---
nid: '2881'
title: 'Workrave : combating RSI the free software way'
authors: 'Ryan Cartwright'
published: '2008-05-28 22:31:08'
tags: 'rsi,workrave,break-timers'
license: verbatim_only
section: end_users
listed: 'true'

---
Thanks to [FSDaily](http://www.fsdaily.com), I recently came across an [excellent post regarding useful exercises for geeks](http://www.junauza.com/2008/05/12-essential-exercises-for-geeks.html). What surprised me about it was that [Workrave](http://www.workrave.org) was not mentioned at all. Here I take a brief look at this great piece of free software designed with one purpose: combating repetitive strain injury (RSI).

<!--break-->

# Is RSI real?

I doubt if anybody would argue that performing the same physical task many times over a long timespan would cause aches and pains. In some cases this aching can become more serious and take on characteristics much closer to injury than aching. Repetitive Strain Injury has long been [disputed within the medical profession][4], not because doctors doubt it exists but because it has been [difficult to make clear diagnosis][5] and symptoms are often "vaguely defined". In fact some doctors have argued about the name because it is more often caused by persistent muscle tension that repetitive movement. Despite this RSI and the associated pain is very real to the thousands of people who suffer from it.

# Avoiding aches and injury

Even if you do not suffer from RSI, if you work at a computer for any long period, you may well find that muscles, eyes etc. will ache. Doctors and physiotherapists have long suggested a series of regular breaks and exercising such as those suggested in the [12 Essential Exercises for Geeks][2] blog post. Once RSI became an accepted risk in the workplace, corporate software was quick to surface as employers and employees searched for solutions and ways to manage the risk. Most of these are simply timers. Workrave was developed to produce a more rounded solution, initially for GNU/Linux but is now also available for FreeBSD, HP-UX, Solaris and Windows as well.

=ZOOM=Workrave works by monitoring and timing your use of the computer=

Workrave works by monitoring and timing your use of the computer, prompting to you take breaks at set intervals. An important difference between Workrave and other such software I have come across is that it has three types of break and it pauses the timer if you are not using either the keyboard or mouse for a few seconds. It also has network functionality for collating and monitoring statistics on users across a network.

=IMAGE=wrconfig.jpg=Workrave has fairly comprehensive configuration options=

The timer lengths for each type of break and how long the break should be are user defined. Be warned that they come with some fairly aggressive defaults due to one of the main developers recovering from RSI and thus requiring more regular breaks. Also by default the input devices are blocked during breaks. You can turn this off or have it blank the screen. Breaks can be postponed or skipped and you can set limits to how many times you are allowed to postpone a break. These turn out to be initially annoying but eventually if you let the program do its job you can find them useful aids.

## Types of break

The first type of break is the micro-break, a short thirty second stop-using-your-computer type break. By default these are triggered every three minutes and last for 30 seconds although I set them to be a slightly less annoying 10 minutes apart. During the break you are encouraged by a pop-up to remove your hands from the input devices and look away from the screen. Remember that this timer records continuous usage. As said, the timer is paused if you stop using the PC for a few seconds and--in a nice feature--if that period lasts longer than the micro-break duration then the timer is reset.

=ZOOM=The exercises are ably demonstrated by “Miss Workrave” who seems to indicate that her creator may be a Manga fan=

The rest break is a slightly longer one where you are encouraged to walk away from the computer. A tea or coffee break could be a good excuse for this. During this--unless you disable them--you are given some exercises to perform. These seem a bit daft at first--and may attract some comments from colleagues--but by the end of the day I found my shoulders, hands and eyes ached a lot less when I performed them. The exercises are ably demonstrated by "Miss Workrave"--an avatar of sorts--who seems to indicate that her creator may be a Manga fan. Once you get past the apparent foolishness of these exercises they are very useful so I recommend persevering with them. As with micro-breaks the timer for rest breaks is paused during period of inactivity. You can also take a rest-break at any time by clicking the taskbar icon.

=IMAGE=wrexecise.jpg=One of the Workrave exercises - complete with Miss Workrave=

The final break type monitors the total amount of computer usage in any one day. The default is set to 4 hours, which seems low but remember that we are talking about collective actual usage time and not time sat at your desk but not using your computer. Again the timer pauses during periods of inactivity--including breaks. Once this timer is triggered, you are prompted to stop using the computer for the rest of the day. You can ignore this if you wish and Workrave will let you. It will then remind you again in a few minutes (how long can be set by you). If your working day is incomplete then this is the time to catch up on those other tasks you've been meaning to get to for so long.

# How annoying does it get?

I'd imagine there will be quite a few people reading this with the above question on their mind and the answer is: quite annoying really. The pop-ups seem to come up just when you don't want them to. I have a similar issue with being forced to fsck my hard drive every thirty boots. I don't really object to this and I know how to change it, it just seems to always happen when I need to boot the PC quickly.

=ZOOM=It gets very tempting to ignore/postpone the longer rest-breaks and the daily limit - don't=

Being prompted to take a thirty second break every ten minutes is no hardship but you are tempted to keep reading the screen behind the prompt. It also gets very tempting to ignore/postpone the longer rest-breaks and the daily limit. Worse, it's tempting to set them to a value which is hardly ever triggered. This is in my opinion foolish. Persistent computer usage can cause strain on muscles and eyes: I doubt this is news to any of us. The problem is that we are generally useless at taking the regular breaks necessary to prevent that strain. Workrave is a great solution to aid in this and to keep ignoring the prompts it gives or set it so it doesn't actually give them then we might as well not use it.

The point of an application like this is to help you and--this is where it gets all philosophical--it can only do that if you let it. Give it a try if you want to or if you have been noticing aching shoulders, eyes and hands. If you do give it a try--it's probably available as a package for your distro--I suggest you give it an *honest* try. Set realistic timer limits and break durations and do at least some of the exercises. 

# Disclaimer

I am not a medical professional and any advice given here should not be taken against the advice of your own medical practitioner. If in doubt always seek professional medical advice.

# References

* [Workrave website][3]

[1]: http://www.fsdaily.com
[2]: http://www.junauza.com/2008/05/12-essential-exercises-for-geeks.html
[3]: http://www.workrave.org
[4]: http://news.bbc.co.uk/1/hi/health/1844459.stm
[5]: http://www.onderzoekinformatie.nl/en/oi/nod/onderzoek/OND1273049/