---
nid: '3677'
title: 'Video editing with OpenShot: Capable, but lacks some polish'
authors: 'Terry Hancock'
published: '2012-01-15 4:34:16'
tags: 'video,movies,free-software,openshot'
license: cc-by-sa
section: reviews
main_image: 2012-01-12-openshot.jpg
listed: 'true'

---
The [OpenShot](http://www.openshot.org) video editor was the easiest to get in Ubuntu Studio's "Oneric Ocelot" release, so we had a chance to try it out recently. It's pretty good -- much more capable than Kino. It provides similar capabilities to Blender's VSE, but without the burden of learning Blender. In fact, the learning curve is very gentle, because the interface is clean and simple.

I was also a little biased because I had learned that OpenShot was written in my favorite programming language, [Python](http://www.python.org). I don't know why, but I still have a soft-spot for Python apps. I guess I imagine I might conceiveably contribute to them someday, even though I've almost never done so.

But, just as I was falling in love with it, I started to see some very irritating oversights in the design. The bubble burst. Specifically, it's very hard to magnify the strips enough for frame-accurate editing and there aren't really any options for changing the time-code display. In fact, a lot of the details of the video format are somewhat hidden.

I also found the rendering was rather slow. OpenShot sometimes had trouble playing audio and video back at full speed and keeping synchronized. It also would sometimes seem to take a long time to respond to certain edits, as if it were spending a lot of time on rendering. This could partly be a hardware problem, but other editors had less difficulty with this.

This left me with an "so close and yet so far" feeling. Maybe it'll be better in a later version. I've tested version 1.1.3 on [Debian](http://www.debian.org) "Squeeze" and version 1.4.0 on [Ubuntu Studio](http://ubuntustudio.org) "Oneric Ocelot".
