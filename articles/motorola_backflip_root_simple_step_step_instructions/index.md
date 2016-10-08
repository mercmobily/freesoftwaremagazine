---
nid: '3440'
title: 'Motorola Backflip root: simple, step-by-step instructions'
authors: BZmarica
published: '2010-10-11 12:39:44'
tags: 'tutorial,android,motorola,backflip,root,rooted'
license: verbatim_only
section: end_users
listed: 'true'

---
Last night, I spent about 3 hours finally gaining "root" for my Motorola Backflip (starting from midnight...). As far as I am concerned, last night my Backflip wasn't _actually_ mine. Now, it is. I can finally run programs that require root access, and -- more importantly -- do tethering.

It's ironical that many people banged their heads against the wall for months, trying to root their Backflip, and the solution was right there... You could root your Backflip using the same exploit used for the Droid 2! The "nearly" is what cost me time: there are a couple of differences that make it much harder.

This is a set of instructions *just* for the Backflip.

# Step 1: Install a terminal on your Android

Go to the Google Market, and install a terminal emulator. Google's is perfect. Type "Android Terminal Emulator" in your search: the program is called "Terminal Emulator".

PASS TEST: You can run "Terminal Emulator" in your phone

# Step 2: Enable "USB Debug mode" on your phone and plug it in.

This should be pretty basic. But! Make sure you don't mount the SD card -- just "charge only". 

PASS TEST: You have the phone connected, but your computer has not mounted the file system

# Step 3: Install Android's SDK

This sounds scary, but it's not: [Download Android's SDK](http://developer.android.com/sdk/index.html) 
Just uncompress it somewhere in your computer. The goal is to make sure that it you can run the program called "adb" which is normally in "tools". If you are in GNU/Linux, you will type something like `./adb`. In Windows, you will simply run `adb`.

You also need to test that the connection to your phone is up. Make sure it's connected as "recharge only", and run `adb devices`. You should see your device listed. Hint: you will need to be "root" for this, if you are using GNU/Linux.

PASS TEST: you need to be able to run the program called "adb" from your terminal, and see your phone listed in `adb devices`. 

# Step 4: Download the software you need

 * First of all, you need a static version of "su" and a working version of "Superuser.apk". They need to work for your Android. This is where the instructions for the Droid 2 will fail you... This is a [SuperUser kit that will work for the Backflip](http://forum.xda-developers.com/showpost.php?p=6499147&postcount=1). Make sure you download the one for Cupcake which is `su-2.3.6.1-cd-signed.zip . Then, copy the two files `su` and `Superuser.apk` in the same directory as the `adb` file.

 * Then, you need the magic: `rageagainstthecage-arm5.bin` . It looks like it got removed from the forums. I suspect this could possibly be because it's illegal to host it. However, you will have no problems at all finding it.

PASS TEST: you have `su`, `Superuser.apk` and `rageagainstthecage-arm5.bin.gz` in the the `tools` directory of the SDK, which is same directory as the `adb` file

# STEP 5: Make a simple script

Using a text editor, make a file called "g.sh" in the `tools` directory of your SDK. It needs to contain the following:

=CODE_START=
mount -o rw,remount /dev/block/mtdblock1 /system
cat /sdcard/su > /system/xbin/su
chown root.root /system/xbin/su
chmod 6755 /system/xbin/su
cat /sdcard/Superuser.apk > /system/app/Superuser.apk
chown root.root /system/app/Superuser.apk
chmod 644 /system/app/Superuser.apk
mount -o ro,remount /dev/block/mtdblock1 /system
=CODE_END=

PASS TEST: you have a file called `g.sh` in `tools`.

# Step 6: dump the right stuff on your phone

Go in the `tools` directory in your computer, and run the following commands:

 * `adb push Superuser.apk /sdcard/Superuser.apk`
 * `adb push su /sdcard/su`
 * `adb push rageagainstthecage-arm5.bin /data/local/tmp/rageagainstthecage-arm5.bin`
 * `adb push /home/amin/Desktop/g.sh /data/local/tmp/g.sh`

PASS TEST: the commands run without any problems

# Step 7: Make the "pushed" files executable

Run the following commands:

 * adb shell
 * cd data/local/tmp
 * chmod 0755 rageagainstthecage-arm5.bin

# Step 8: Become root in your shell!

Run the "terminal emulator" program in your phone. Then type this with your device's keyboard:

`/data/local/tmp/rageagainstthecage-arm5.bin`

Then you absolutely need to wait for `[+] Forked #### childs.`.

Then type `exit` and press enter: this will close the terminal.
Run the terminal again. For some reason, the first time I do this, it force closes. Do it again: you are root! You will see a `#` instead of a `$` 

Note: this is the other part that failed, compared to the "standard" Droid 2 exploit; with the Droid 2, you were able to do this from the shell. However, with the Backflip, it won't work: you need to do this from the phone's own terminal.

PASS TEST: You see a `#` there. 

# Step 9: Make your root permanent!

This is the very last step. You are basically done. From your device terminal (which, remember, has a #) type:

 * `cd /data/local/tmp`
 * `sh g.sh`

And it's done!
Type `exit`, press enter, and get ready to party.

PASS TEST: You get no output.

# Step 10: Last tests

Now, reboot your device. Then go to programs, and click on "Superuser". You should see something that is _not_ a blank screen.
Then run the Terminal Emulator. Type `su` and enter. You should get a nice Window: it's the Superuser application asking for confirmation that you want to allow the Terminal to become "root". Say "yes". And there you go! The `$` will become a `#`, which means that everything works.

PASS TEST: You end up with a `#` at the end.

# Step 11: Do Tethering!

You can't install the "normal" "Wireless Tethering" application for Android, since the kernel that comes with the Backflip doesn't have Netfilter. When I discovered this, at 3:00AM last night, I was a little upset. However, I soon discovered that you can install an application called "Barnacle Wifi tether" which is free software, and allows you to do tethering without netfilter. How? I have no idea. But, it works.

Note that you absolutely have to check the box "skip wpa_supplicant" in the program configuration for it to actually work. 

PASS TEST: You browse the internet with wireless tethering with your Backflip. You do!

# Step 12: Install your loader

I haven't completed this step myself... However, there is [A post with the restore loader, and a link to custom ROMs](http://theunlockr.com/2010/09/14/how-to-load-a-custom-rom-on-the-motorola-backflip/). Following the instructions here, you should be able to install your own boot loader and therefore be free to install any ROM you like.

Note: the Backflip hasn't had root for very long. Plus, it's a pretty old device. So, there isn't such a big demand for ROMs. [This is the only one available today](http://modmymobile.com/forums/566-motorola-backflip-motus-roms/556727-rom-preclair-beta3-yes-2-1-apps2sd-bluetooth-working-9-30-10-a.html)

# Mistakes?

If I made mistake, please let me know! I will fix this tutorial ASAP.

# Acknowledgements

I didn't do anything... at all. I know very little about Android. I simply re-packaged existing information. I doubt people will even find this article, which is very much "out of character" for Free Software Magazine.

However, after spending many hours doing it, discovering that you needed to make critical changes to the normally published exploit, and after managing, I feel compelled to explain what I did.

Because the Backflip should be _your_ phone.

 * [Original Droid 2 post](http://forum.xda-developers.com/showthread.php?t=764950)

 * [The procedure that "nearly" works to root your Backflip](http://www.attdroids.com/forum/motorola-backflip-development-hacking/1675-backflip-root-2.html)

 * [The right su and Superuser.apk files](http://forum.xda-developers.com/showpost.php?p=6499147&postcount=1)

 * [A post with the restore loader, and a link to custom ROMs](http://theunlockr.com/2010/09/14/how-to-load-a-custom-rom-on-the-motorola-backflip/)

 * [The only Backflp custom ROM available](http://modmymobile.com/forums/566-motorola-backflip-motus-roms/556727-rom-preclair-beta3-yes-2-1-apps2sd-bluetooth-working-9-30-10-a.html)

 * [A forum post with working instructions](http://modmymobile.com/forums/567-motorola-backflip-general/555749-root-all-versions-backflip.html)