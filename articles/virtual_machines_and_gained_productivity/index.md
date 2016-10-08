---
nid: '2084'
title: 'Of virtual machines and gained productivity - and hardware'
authors: 'Mitch Meyran'
published: '2007-02-22 9:44:27'
tags: 'linux,qemu,kqemu,virtual-machine'
license: verbatim_only
section: opinions
listed: 'true'

---
I spend most of my time doing Web programming - basically, tinkering and cleaning up some professional websites that require maximum accessibility, and efficient coding while remaining very simple. This needs XHTML+CSS+ECMAscript and some PHP glue; and while I have no problem running a LAMP test server on my main machine, up until now I needed a spare machine just to do testing under Windows.

Not anymore.

_(Revised: some typos, missing brackets, and an 'extra' on kqemu configuration)_


<!--break-->



# Virtual Goodness


## A Faint Hope

Beforehand, I used a spare machine, some refurbished stuff that was supposed to move to my boss' wife's medical cabinet but remained under my desk for months before I decided to use it to do some IE ugliness testing.

In short, throwing CSS and Jscript hacks around to make my websites work as similarly as possible under Internet Explorer 6 as it did under W3C-compliant browsers while keeping those free of intrusive IE-only code. With the existence of IE7, I would have even needed two of those machines...

Luckily, since I wasn't the only one in this situation, there are already ways to at least test a website using several IEs under a single Windows machine; and the spare was used to run Windows XP (it came with it), with IE7 installed and IE 4,5 and 6 as 'standalone' installs. From 4 to 1 extra machines needed for testing: sweet.

But then, that machine was needed for a temporary worker in-shop: since I couldn't scrap enough budget to buy a new machine, my test machine had to be freed and formatted like all other machines in the shop (that's another part of my job). As such, no more multiple IE test machine; back to square one.


## Holy Grail

Having read about virtual machines, I started looking for more data; what softwares were available, easy to use, and the least expensive?

Right at that moment, the Mandriva French user mailing list got a post saying that Kqemu was finally GPL'ed, and not a binary blob with glue as it used to be.

I knew about Qemu, which is Fabrice Bellard's work on a multi-machine, multi-purpose emulator originally based on the Bochs emulator (but now radically different); learning more about the Qemu kernel module (kqemu), I was surprised to learn that it allowed almost native speed emulation of complete x86 machines on x86-based GNU/Linux systems.

So I decided to give it a test drive, first by installing the version bundled with my distribution, then using the latest tarballs.

Frankly, I was very soon amazed, but it required some tinkering on my part.


## The Quest for Ultimate Performance

First, I had to create the virtual machine; that requires creating a virtual drive image that will be stocked in a single, huge file; the rest of the system is emulated by Qemu. Basically,


* my current CPU: an Athlon64 2600+ (with some extra clock speed, however the overclock was prompted by Gimp sluggishness, not Qemu)
* an Intel 440FX chipset (probably the only way you'll see a 686 AMD on an Intel chipset - heh)
* a Cirrus Logic 5446 card (can be replaced with a generic VESA 2.0 card for higher resolutions)
* an NE2000 compatible card
* a CD-ROM reader (automatic since version 0.9)
* an ACPI controller

Additionally, I could have added:


* a USB controller
* a sound card: PC speaker, Sound Blaster 16 or Ensoniq AudioPCI ES1370
* multiple core emulation

Reading the documentation extensively, I decided to emulate a single core machine with no USB, no sound, 300 Mb of RAM and 4 Gb of hard disk space. Thus I created a RAW disk image, asked Qemu to boot from my cdrom drive, and started installing Windows XP Professional on it (I had a spare license). For now I didn't care about performance.

Suffice to say that it is better with such 'guest' OS to disable ACPI (possible Blue Screen Of Death caused by 'virtual' virtual IRQs being mistreated).


## Compress a Real Machine into a 800 Mb file

The install was a bit longuish (GNU/Linux systems spoiled me, I guess), but I was soon booting into Windows 'proper'; updates were installed (reboot), cleaned up (reboot), useless services shut down (reboot), IE7 installed (reboot), additional updates installed (reboot), and then finally I could install MultipleIE. Having cleaned up the system, defragmented the disk, freed up 'recovery'-wasted space, resized the swap file (reboot), I decided that the image was ready.

Notice the amount of rebooting; having those take place on a virtual machine hosted on a Linux-based system with plenty of RAM made those oh so fast...

I then decided to convert my 4 Gb image to a smaller, compressed, read-only image (the system would basically boot up from the same point in time and all modifications would be saved in /dev/null): the qcow2 formal allowed that. However, I was soon puzzled by a strange thing.

The new image was no smaller than the original, RAW image; I had expected to go down to, at least, the virtual drive's occupied size (by then, around a gigabyte). But then I remembered.

Windows file systems don't clean clusters when files they contain are deleted or moved. So I had to find something to clean free disk space. While Linux does the same thing, you at least have system tools to clean up after yourself if you so desire. No such luck with Windows.

So I installed Eraser 5.8, configured it to run a simple, zero-fill, pass. And then I redid the conversion.

I could finally run multiple Internet Explorer versions from a 800 Mb virtual machine that always boot fresh in a window. But it was a bit slow sometimes.


## The Race is ON

Thus I decided to attack the accelerator; but for that, I needed to actually recompile Qemu from source (it requires a gcc 3.x version, gcc 4.x won't work) and then compile Kqemu (requires kernel headers and the same compiler than the one used to compile the kernel). That was soon done.

I was a bit anxious, due to the fact that until now I had run Qemu on a 64-bit machine to emulate a 32-bit machine; the accelerator required both host and guest machines to use the same CPU.

The compilation went without an itch (Qemu required I specified the compiler at .configure time, but the rest was pretty much painless), the kernel module loaded without problem, and I could finally boot my accelerated virtual machine - using qemu-system-x86_64 -kernel-kqemu - and watch.

At first, I saw no difference; Qemu would tell me that it couldn't find /dev/kqemu (while it was obviously there). So I tried to start Qemu as root (not for long!), there was no error message; thus, I tried chmod 666 /dev/kqemu.

Holy Dooly, that thing's FAST!

In order for me not to have to log in as root every time I wanted to start that virtual machine, I did some config files editing:


* in /etc/modprobe.preload, load kquemu;
* in /etc/rc.local, i added: _echo 1024 > /proc/sys/dev/rtc/max-user-freq_ and _chmod 666 /etc/kqemu_ for a 'warning-free' Qemu loading

While the user mode emulation reminded me of an early try at running XP on an old laptop with very little RAM, a very slow hard drive and a puny processor, the kernel-accelerated version of the same was blazing fast, booting in a flash and launching applications at pretty much native speed.


## You got Power

I was stumped for a while on how to manage the emulation while it was running; the documentation mentioned a monitor, but for the life of me I didn't know how to access it; it allows commits to disk while running in snapshot mode, memory state dump and recovery (meaning you can save a running guest while it runs and restore it to that same point in time later on), stop the emulation (guest is frozen) and resume it (be careful, the guest's clock needs to be reset), unmounting and remounting devices (cds, USB devices) and some other useful things.

Simply press Ctrl+Alt+2 for the monitor console, Ctrl+Alt+1 goes back to the emulated system's screen.

Ain't that sweet?


# Conclusion

The accelerated system boots in under a few seconds; CPU use goes down to almost zero when the virtual machine is started and idling. The only thing I have to watch for is that sometimes, the guest system's clock goes forward a bit. But frankly, that thing is FAST: it enjoys close to native CPU speed and benefits from Linux's accelerated disk access on a compressed, read only system; the emulated machine takes up 300 Mb of RAM, but only because a lower value (default would be 128 Mb) means emulated swap thus some emulation slowdown.

It's even more comfortable to run an emulated machine than it was to run two machines side by side. For one thing, that's one less machine to load an antivirus for (it starts clean every time), and one less hard disk+fans noise.


# Bibliography

The [Qemu homepage](http://fabrice.bellard.free.fr/qemu/)

