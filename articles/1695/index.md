---
nid: '1695'
title: 'User interfaces should teach, not hide'
authors: 'Terry Hancock'
published: '2006-08-09 0:30:00'
tags: 'education,interfaces,guis,cli,gvim'
license: verbatim_only
section: opinions
listed: 'true'

---
Today, I finally decided that my gVim editor needed a smaller font, and the process of getting it to work right has made me notice a fundamental flaw in the way we think about user interfaces. It’s not an innovation that you’ll get on the proprietary side of the line, because it’s an innovation required for the digital middle class of ‘user-developers’ that I mentioned last week.

Essentially it’s just this: GUIs should _teach_, not _obfuscate or hide_ the underlying mechanism.


<!--break-->


What I did, of course, was go straight to gVim’s snazzy GUI _Edit_ menu and select _Select Font..._.  This leads to a GUI menu which allows me to choose any one of my installed fonts, and I really do have a lot of them!  Furthermore, I get a nice preview of the font I’m going to choose, and I can easily try it out.  _Clicky, clicky,..._ GUIs are fantastically efficient ways to work!

If you pay attention to the status bar in gVim when doing this, you’ll notice it says `:set guifont=*`.  Now that’s kind of cool, because it tells me what I’d have to type to change the font using the command interface in gVim, which is basically a CLI and scripting interface. That’s important, because later on, I’m going to want to stick these commands in my startup file for gVim so that I can do this everytime.

However, this is unnecessarily hard to do, and I want to explore why that is.


# Behind the curtain

Something that did not happen, which would’ve been really nice, is that when I did pick a font, the status bar did _not_ show me what I would’ve needed to type to get the same effect from the command line (or from a script).

What a waste of an opportunity!

But it made me think about why this opportunity gets missed, and it has to do with the unfortunate myth of class division promulgated upon us by the same professional programmer mystique that I mentioned last week. The myth says there are two classes of people: “users” and “developers”.

“Users”, are a much maligned class of people. Developers have little respect for them, and regard pleasing them as an unfortunate consequence of getting your software used. They’re just so demanding. What’s more, they can’t be bothered to learn obvious CLI command names and hotkeys. They just won’t read the manual.

“Developers”, on the other hand are smart people like me, who know how to do things the “right” way by relying on commands and the manuals that define them. They don’t mind taking the time, and they know their way around.

I hope it’s pretty clear that this division is entirely off base when it comes to users of a programmer’s editor like Vim!  But the truth is, it’s pretty much true everywhere—or at least it should be. Because we in the free software world don’t want a division between users and developers. We need that middle class, because free software is driven more than anything else by people fixing their own problems.

Yet, we’re still thinking like professional proprietary programmers, trying to defend our turf from the riff-raff.

The conventional wisdom is that GUIs should hide as much information as possible, to keep from confusing the user. But that process makes switching from “user” to “developer” mode harder, and that works against our community goals just as much as hiding your source code.  Because, essentially, that’s what the GUI is doing: hiding the source code.

That downright discourages tinkering and customization.

Most free software GUI applications are actually front-ends for CLI applications. GVim’s GUI is (I imagine) just passing commands through the standard Vim CLI to get its work done. Something just like that happens when you use KDE’s ‘Control Center’ or run an X-based CD-R burner application.

The developers of these front ends see their jobs as “making things easier for end users”, but they are not helping the “end users” to become anything more than ”end users”.

Ironically, many old time GNU/Linux users feel threatened by all these GUI-based users and cling to CLI interfaces. A peculiar idea of CLI use as a critical rite of passage emerges, and a rift grows between the “new” GUI users, and the “old” CLI users. In the name of modernizing and simplifying our systems to make them “more usable”, we’re making them “less hackable”.  Essentially we’re copying the proprietary models of Windows and Apple too closely.

This isn’t so obvious to the old guard, because they still have their familiar, hackable, CLI and scripting interfaces to play with. But they may by now have noticed the absence of new blood to their communities. What’s missing is the open _bridge_ that invites “users” to _become_ “developers”, by simply allowing them to see behind the curtain.


# Teaching, not hiding

The key concept here is that we should view GUIs not as an opaque layer to separate the digital classes, but as a convenience to make learning easier.

In my gVim example, this doesn’t work so well because neither the status line nor the GUI font selector tells me what the correct name for the font I’ve chosen is. The command that is displayed, `:set guifont=*`, _is_ a useful hint (it tells me what command to look up, but it doesn’t tell me the right arguments to use, the `*` only brings up the GUI menu (not something I’d want to do from my start-up script!).

Browsing the manual, I do, of course find documentation. However, it’s short on examples, and the font names are different, depending on whether the program is running in Windows, GTK, or Motif window managers. I do happen to know that I’m running in GTK—but is that really knowledge that should be assumed? The program itself obviously ‘knows’ which version it is running under, so it would make more sense for it to figure this stuff out and then _tell me_ what font names it means. The mapping from the names in the menu I get is not necessarily intuitive.

For example, suppose I selected “Sazanami Mincho”, the style “Mincho-Regular” (there’s only one to choose from on my system), and fontsize “8” points. That all makes sense, of course, but how am I supposed to know that this should appear on the command line as:

`:set guifont=SazanamiMincho\ 8`

and not, say, like this:

`:set guifont=Sazanami\ Mincho\ 8`

or even

`:set guifont=-shinonome-mincho-medium-i-normal--0-0-75-75-c-0-jisx0208.1990-0`

?

The last one may seem a little odd, but not when you consider that the Vim manual _suggests_ using `xlsfonts` to find font names, and this is the nearest “mincho” font I can figure out to the one I chose.

You might note that this is an unusual font, but frankly, getting “Bitstream Vera Sans Mono, 8pt” to work is even harder (is that “BitstreamVera”, “Bitstream Vera”, “bitstream-vera”, or just “Bitstream”; is “Vera” a ‘fontname’ or an ‘option’?).

This sort of confusion is exactly what makes GUIs so useful, because it sorts all that out for you, and lets you visually choose which font makes sense instead of forcing you to play guessing games with a long feedback loop.

However, the time gVim saved me in picking my favorite font, it then proceeded to steal back from me, by not providing any way for me to extract that internal information so that I can use it in my start-up script. I’ve experienced “User Ghetto Lock-In”!


# It’s not gVim’s fault

Somebody’s going to complain that I’m picking on gVim—but I’m not. I ran into this problem with gVim precisely _because_ it’s my favorite editor, and I’m not planning on switching anytime soon.  Also, gVim is just following the norm here. I could’ve run into this problem in any of a dozen different applications.

In particular, I realize that this conflict is the one thing I really don’t like about KDE, compared to my old favorite window manager, which was FVWM. FVWM was a pain to customize, because everything had to be done in scripts.  You had to find obscure documentation to figure out how to design on-screen launcher bars and stuff that we take for granted in KDE and Gnome. In order to see the results of your changes, you had to log out and log back in again.

But because there was no other way to do the job, and because you had to know where the scripts were to create them, you obviously wound up knowing where your customizations were when you were done with them. You could easily back them up with your other user files, and it was easy to reload them onto a new computer, or recover them from backup after a hard drive crash. They were _yours_, not something the program hid away from your prying eyes.

With KDE, of course, all these customization are massively easier, and I routinely set things up, that would’ve been a nightmare with FVWM. But at the same time, I’ve lost control.  I don’t know where KDE is storing all that information. The GUI itself certainly doesn’t show me, and while I don’t doubt that the answer is buried somewhere in the KDE documentation, it certainly is not easy to find.  And if I have to dig through KDE documentation just as I had to dig through FVWM’s documentation, then what has the GUI really gained me?

Some old-timers are quick to shout “Nothing! That’s why you shouldn’t use those new-fangled point-and-grunt interfaces!”  Well, that’s silly, actually, because there’s nothing about the GUI concept itself that insists on this kind of secrecy. It’s just a habit that free software GUI designers have inadvertently copied from proprietary designers.


# Show me the magic!

Obviously, I’ve ranted for a bit here, but the insight is simple: GUIs for free software, in order to appeal to the same ideals that make free software possible, should provide some kind of transparency. It should be possible for the _end user_ to capture the messages going from GUI front-end to CLI back-end, or to see the configuration files that that fancy GUI configurator is writing.  At least tell us where you’re writing all that mysterious information, so we can go diving for it afterwards.

If you do this, then you’ll be inviting end-users to become more involved, and healing the gap between “user” and “developer”. You’ll be providing a much needed incentive and educational help. You’ll also be giving end-users that feeling of greater control over their system which is one of the main draws to free software operating systems.

We can learn what’s good from proprietary GUIs without copying all the bad habits or turning our backs on the ideals inherent in good, open design.


## License


>Copyright (C)2006 Terry Hancock / [CC-By-SA 2.5+](http://creativecommons.org/licenses/by-sa/2.5). Originally published at [www.FreeSoftwareMagazine.com](http://www.freesoftwaremagazine.com).. 

