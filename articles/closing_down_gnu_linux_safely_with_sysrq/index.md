---
nid: '2396'
title: 'How to close down GNU/Linux safely after a system freeze with the SysRq key'
authors: 'Gary Richmond'
published: '2007-07-06 6:30:00'
tags: 'tips,sysrq,freezes,keyboard'
license: verbatim_only
section: end_users
listed: 'true'

---
Despite jeering at Windows for the infamous system freezes and blue screens of death, there are and will be times when your computer just locks up: the cursor is frozen and even invoking a console by `Ctrl + Alt + [F2, F3, ...]` to close down the X windows session running on `F7` is non-functional.

My fellow blogger, Andrew Min, [has given excellent tips](http://www.freesoftwaremagazine.com/blogs/weekly_tips-killing_processes) on this website when faced with stubborn processes and applications that just refuse to terminate. This tip may be of assistance to those whose entire system has frozen and aren’t happy to just do a hard power off and trust to luck that data will not be corrupted. Fortunately GNU/Linux has journalled filesystems so the chances of this happening are reduced and you will not suffer the indignity of being told that you performed an illegal operation or having to drum your fingers waiting impatiently for scandisk to complete.

Like `Ctrl + Alt + Delete` this tip is a three fingered Vulcan neck pinch. It consists of `Alt + SysRq` and a selection of one other key (of which there are thirteen!), the choice of which will determine what operation is performed. This has been described as a way to communicate with the Kernel. It used to be that you had to enable this “magic key combo” when compiling a kernel but this is no longer necessary. (If your computer does not have a SysRq key then look for the “Print Screen” key—usually abbreviated to `Prt Scr` Normally, after certain key combos you will see “OK” and “Done”. If your kernel is really locked up you might not see them at all. If you have a file called `/proc/sys/kernel/sysrq` then you are okay and `man proc` should list it and it will be enabled if there is a “1” in it.


## `Alt + SysRq + B`

If you’re not running any crucial, scheduled tasks or in the middle of composing a letter or an e-mail then this key combination may be the one to use. It will reboot the system immediately without bothering to sync or unmount disks.


## `Alt + SysRq + R`

If you cannot get to a terminal window by using `Ctrl + Alt + F2` then use this key combination (pressed altogether) to get a keyboard (this is because this key combination turns off what is called keyboard raw mode. Pressing these keys allows keyboard input even after your X-Windows session has crashed/frozen). Now, try `Ctrl + Alt + F2` again and you can close down from the terminal. If that fails move on to the next option.


## `Alt + SysRq + S`

This key combo does just what it says on the tin: it (S)ync’s all filesystems which reduces the possibility of loosing any data and possibly obviating the need for the system to run `fsck` upon reboot.


## `Alt + SysRq + U`

As you might guess, this one tries to unmount disks and remount them as read only.


## `Alt + SysRq + O`

Not so obvious, but this will power off your machine without syncing or unmounting disks (but it won’t reboot. See above).


## If in doubt use a mnemonic

If you are not sure about the sequence to use or just can’t remember, why not use a memory aid like: _Raising Elephants Is So Utterly Boring_ (REISUB) or _Everything Is Superb_ (EISUB) or _So Everything Is Unusual - Boot_ (SEIUB). If even that was too much effort for you, just do `Alt + SysRq + H` which will bring up a helpful list of the command above.

