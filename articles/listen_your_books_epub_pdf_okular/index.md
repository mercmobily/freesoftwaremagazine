---
nid: '3779'
title: 'Listen to your books (ePUB or PDF) with Okular, KDE''s PDF Reader'
authors: 'Gary Richmond'
published: '2012-06-21 1:48:49'
license: gpl
section: end_users
main_image: Okular.jpg
listed: 'true'

---
Okular is the PDF reader for the KDE desktop. You can run it under any other desktop environment too, but you can also get some more mileage out of it with these three simple tips.

PDFs are very common and popular but with the rise of smartphones and tablets the EPUB format has risen to prominence too. Okular has some very neat features not available to other PDF readers and you might want to combine them with this relative newcomer on the block. 

<!--break-->

# An Okular backend

First up, we need to get Okular to actually be able to load and reader EPUBs. This is blindingly easy, Open your terminal of choice and type `apt-get install okular-extra-backends` (preceded by `su`, or `sudo` for Ubuntu) or `yum install okular-extra-backends` for Fedora and all RPM-based distros.

With this plugin Okular can now handle the EPUB format. For any doubting Thomases, I submit a screenshot of Okular rendering an FSM EPUB I created from an RSS feed with Calibre. 

=IMG_CLEAR=An_EPUB_file_displaying_perfectly_in_Okular.jpg=Figure 1: An EPUB file displaying perfectly in Okular=

# Can't read, won't read. Listen

Why read a PDF or an EPUB when you can sit back, close your eyes and listen to it? You can, but out of the box that feature is greyed out. You can enable it with a speech synthesizer plugin called `jovie`. A simple (su/sudo) `apt-get install jovie` will do the trick. It may also pull in `kmouth` too. (If Okular is running you will need to restart for this to take effect). Once the EPUB is opened, the previously grayed-out options are now active. Select either `Speak whole document` or `Speak current page` from the Tools menu.

=IMG_CLEAR=Take_your_pick_of_the_options.jpg=Figure 2:Take your pick of the options=

The Jovie icon will now appear in the taskbar. Right click it and select `Configure`.

=IMG_CLEAR=The_text_to_speech_module.jpg=Figure 3: The text to speech module=

The default voice sounds like Stephen Hawking wrestling a Dalek, so we need to experiment. Select the Talkers tab and move the sliders to adjust pitch, volume and speed. Experiment too with the type of voice from the drop-down menu until you get the combination of characteristics you want. Give it a name, apply and save the profile. Now, plug in the headphones. Lie back, Relax. Listen. 

(For an in-depth look at Jovie [read the PDF at KDE docs](http://docs.kde.org/stable/en/kdeaccessibility/jovie/jovie.pdf).)