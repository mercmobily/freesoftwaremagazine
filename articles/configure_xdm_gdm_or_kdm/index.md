---
nid: '2748'
title: 'Getting the login right: moving from xdm to gdm or kdm'
authors: 'Terry Hancock'
published: '2008-03-13 2:02:36'
tags: 'login,xdm,kdm,gdm'
license: verbatim_only
section: end_users
listed: 'true'

---
For years now, I have been clinging to `xdm` as my display manager; years ago, I spent several days tweaking the configuration files of `xbanner` and `xdm` to get it to look "just so", and I didn't want to change it. But no more! After my last upgrade predictably broke my `xdm` and `xbanner` configuration, I decided to spend a little time trying to get each display manager to look "right" with my original login screen design. Pleasantly, both `gdm` and `kdm` are much easier to customize, and I had something tolerable with each in less than an hour. I found that `kdm` was more flexible and gave me much closer to what I was looking for, while `gdm` was quite obstinate about appearances, though it may be slightly more capable technically.

<!--break-->

=TEXTBOX_START=Versions=
In this article, I am working with Debian "Etch", which includes:

`xdm` v1.0.5

`gdm` v2.16.4

`kdm` v3.5.5a

There are also `wdm` and `ldm`, but I have not tried these.
=TEXTBOX_END=

I have something of an artistic outlook on my computer's display, and I can be a bit particular about the way it looks. The login screen is what you see whenever you aren't actually using the computer, so it should have a constant, friendly, and attractive (but not too invasive) appearance. Of course, you _can_ just let it show whatever boring splash screen your distribution defaults to, but I personally can't stand doing that!

=ZOOM=I have something of an artistic outlook on my computer's display, and I can be a bit particular about the way it looks=

Each of my computers has a "personality" of particular quirks, abilities, hardware, installed software, and nominal purpose. And they each have a name, which I usually select from minor characters in media or literature I like. Media's nice, because there are usually pictures I can use for the login screen. The computer I'm typing this column on is "Samwise", after the **Lord of the Rings** character, of course, and although I started the Tolkien naming scheme some time before the movie came out, I was lucky to have PR images of Sean Astin playing the role of Samwise when I set up this computer.

Figure 1 shows what my login screen has looked like for the last several years, implemented in `xdm` and `xbanner`.[1]

=IMAGE=c20080305_xdm_login_correct.jpg=Figure 1: my original xdm-based login screen for "Samwise" (These are actual photographs, because it's hard to screen-capture the login screen). [2]=

After upgrading from Xfree86 4.3 to X.org versions of X Windows (a pretty big leap), as part of my "dist-upgrade" on my Debian system, I wound up with the screen in Figure 2. Actually, I'm abbreviating the story a little bit. What I _actually_ saw after the upgrade was an empty X display: `gdm` was installed in place of `xdm` and KDE had been _removed_, leaving me with _no_ desktop environment. Oh well, dist-upgrades are a bit dicey, especially on a system with as many incremental package upgrades as I have on this one. But this time, I had some extra time, so I thought I'd go ahead and try out the alternatives before fixing my old `xdm`-based login screen (although I did reinstall KDE immediately!).

=IMAGE=c20080305_xdm_login_oops.jpg=Figure 2: This is what always happens with my `xdm`/`xbanner` configuration when I move from Xfree86 to X.org. Fortunately, I know what's wrong and can fix it (because I've seen this about three times before). It's apparently a bug in my config file that the upgrade exposes.=

# Trying GDM out

Because it was already installed, I tried out `gdm` first. I had also read good things about it in online reviews. There's no requirement to use Gnome to use `gdm`, by the way: one of the nicer features of `gdm` is that you can set your default environment to be anyone you please, even Gnome competitor KDE!

Under KDE, the configuration dialog for `gdm` appears (rather cryptically) as "K→System→Login Window Preferences" in the application menu (you'd expect that to be for `kdm`, but that's in a different place). Figure 3 shows what the configuration dialog looks like. As with other "administrator" tasks, you have to type the root password to get into this dialog.

=IMAGE=c20080305_gdm_configurator.jpg=Figure 3: The configuration window for gdm.=

The first thing to change is, of course, the background image. Fortunately, I didn't make sophisticated use of `xbanner` on this system, and my login image is a fullscreen image (it appears this is the only kind that `gdm` understands, although it is much less finicky about file formats).

This was extremely easy, but beyond that, there really wasn't that much I could customize in `gdm`. I did, of course, spend the time to set up the face browser. This is a nice feature of modern display managers which allow such options as automatically identifying the username at a mouse click (if you're willing to accept the security risk, then you can set up password-less login, so it's possible to login with just two clicks).

=IMAGE=c20080305_gdm_best_attempt.jpg=Figure 4: My best attempt with gdm was aesthetically disappointing. It is possible to drag the login window to a better position, but who wants to do that every time you log out?=

Sadly, the result from `gdm` is not very aesthetically pleasing. The login widget always appears right in the middle, which as you can see doesn't work well with this background. Of course, the widget is movable (you can grab the window with the mouse and move it around just like any normal GUI window), but that's not very satisfying as you would have to manually change it on every logout (meaning you'd have to hang around until the logout is complete, which I usually don't). There's no point in doing it when you login, since it'll all go away as soon as you do anyway. So the default position is pretty much where the widget is going to be all the time, and yet, I was unable to find any way to change it (it might be possible to do this through a configuration file, just as I had to do with `xdm`, but I was looking for progress here, not just more of the same).

=ZOOM=Sadly, the result from gdm is not very aesthetically pleasing=

Another unsatisfying thing is that despite the large size of the login window, the face browser can't display very many faces at once without having to scroll. There's not much direct control over the fonts and colors of the window itself. There is a "themes" feature, but in my installation there was only one, pretty plain, theme.

# Trying KDM

After satisfying myself that there was no way (or at least no easy way) to get what I wanted in the `gdm` preferences, I moved on to `kdm`. On a Debian system, it's very easy to switch which display manager will start on boot: on a terminal emulator, just run:

=CODE_START=
# dpkg-reconfigure kdm
=CODE_END=

It doesn't matter which of the managers you reconfigure, since all of them will ask the same question, which is "Select the desired default display manager" (with all of the installed managers as the options). 

Once the display manager has been switched, you can configure it. The KDE display manager configuration is located at "K→Settings→System Administration→Login Manager" (it can also be reached through the Control Panel). Again, you will have to enter the root password to "enter administration mode". Then you will reach the dialog window in Figure 5.

=IMAGE=c20080305_kdm_configurator.jpg=Figure 5: The configuration window for kdm.=

As you can see, there are a great deal more customization options in `kdm`. In fact, it's even possible to run older X programs like `xbanner` to draw the login background, using the "Advanced" button on the Background tab. However, I needed relatively little of that flexibility to get what I wanted: I selected the appropriate wallpaper background in the "Background" tab, then a desirable logo, invitation message, and percentage screen position for the login widget. I also selected a GUI theme for the login widget and set up the face browser under the "Users" tab. Finally, I picked more attractive fonts from the "Fonts" tab.

This all took perhaps 20 minutes—mostly due to me deciding which options I liked best. I did have to go through a few login cycles to check the outcome of my changes.

=ZOOM=The kdm configuration was a cinch compared to what I had to do to get xdm configured like I wanted=

The biggest problem I had was getting the percentage positioning right. The percentages are for the _center_ of the widget, and if it gets too close to the edge, it will squeeze up to fit. Unfortunately, on my first try, this closed up the face browser panel which made it hard for me to tell that I had even successfully enabled the face browser.

=IMAGE=c20080305_kdm_final.jpg=Figure 6: Final result with KDE. This was really more aesthetically pleasing than the original xdm layout, and it now has a face browser interface and a choice of desktop environments on login.=

My final result is in Figure 6, and in my opinion, it's actually more aesthetically pleasing than my original `xdm` layout. Certainly it is far and away more attractive than the best I could do in `gdm`. Perhaps more importantly, the `kdm` configuration was a cinch compared to what I had to do to get `xdm` configured like I wanted (the reason why I've taken so long to get around to learning another one, though now I'm embarrassed that I waited so long). There are some faults, of course: `kdm`, unlike `gdm` does not give you a choice of default desktop environments to bring up—you're stuck with KDE, though you can still switch the environment on each login. Fortunately, I don't have much need for this, although I did take a little time to play around with Gnome, now that I can easily access it. For now, though, I'm definitely sticking with `kdm`.

——

[1] Explaining how I did it in `xdm` and `xbanner` is a little too complex to include here, but if there's interest, I can write it up in a separate post.

[2] Credits on wallpaper image: Created by "Eiluned", at http://www.phoenixfyre.net. This particular wallpaper appears to have been removed. The image included, of course, is (C)2001 New Line Cinema, and was published as a public-relations photo. Naturally, the use on my desktop is legal as that is the intended use for such images. Publishing it here, especially at low resolution, is legal under fair use to illustrate my desktop. I expect there is a way to get direct screen captures of the X server's display, but it can be tricky to get through the security to do it. Most X screen capture utilities don't work until after you are logged in.

