---
nid: '3283'
title: 'Firefogg: Transcoding videos to open web standards with Mozilla Firefox'
authors: 'Gary Richmond'
published: '2010-02-11 3:04:34'
tags: 'firefox,mozilla,ogg,codecs,html5,transcoding,wikimedia'
license: verbatim_only
section: end_users
listed: 'true'

---
GNU/Linux has never been short of audio and video players, but they live in a world of multiple codecs, chief culprit amongst them being MP3, AAC, WMA and (Adobe) Flash. I say "culprits" because they are not free and open codecs. They are encumbered by patents; most websites with embedded audio/video use them and most of the people who view them are also using other patented software: Windows. GNU/Linux is a good alternative and all distros come bundled with free and open multimedia alternatives too: Ogg. You would not be surprised that these players can handle Ogg but what if I told you that Mozilla's Firefox browser could not only handle this codec but could be used also to transcode videos to that format? Interested? Read on.

<!--break-->

## Firefox, thy name is versatile

=ZOOM=It goes without saying that the Ogg codec has the unconditional support of Richard Stallman and the Free Software Foundation--but wanting doesn't get=

One of the constant bugbears about viewing multimedia content on the web is the need for third-party plugins, especially for proprietary plugins like (Adobe) Flash. The free software community has responded with a non-patent version called [Gnash](http://www.gnu.org/software/gnash/), with limited success. It's still a plugin though, free or not; besides, the number of websites hosting Ogg as the basis for their streaming software can probably be counted on the fingers of one hand. It goes without saying that the Ogg codec has the unconditional support of Richard Stallman and the Free Software Foundation -- but wanting doesn't get. For example, I own an ageing iRiver MP3 player. It is one of the few that also supports Ogg but that seems a little superfluous given that so few sites offer it.

In an effort to redress the balance the web community is developing an embedded video tag in [HTML5](http://dev.w3.org/html5/markup/) (supported by Mozilla, Google Chrome and Apple's Safari but not Microsoft) which would bypass the need for plugins. It supports both Ogg and the more prevalent H.264 format used on YouTube. (The fate of Ogg and HTML5 seems to be [inextricably linked](http://en.wikipedia.org/wiki/Ogg_controversy)). The battle is on for which one (or both) will become the normative codec. H.264 has patent issues; so, if you want an unencumbered codec it's got to be Ogg. For a good summary of all the codecs and issues involved see [Roughly Drafted Magazine](http://www.roughlydrafted.com/2009/07/06/ogg-theora-h-264-and-the-html-5-browser-squabble/).

Of course you will have spent many hours downloading videos from the web and they will mostly be in non-free formats. There is nothing to prevent you doing a post download transcode to Ogg. As I said earlier, GNU/Linux is not short of multimedia players, as a quick visit to [Linux links](http://www.linuxlinks.com/Software/Multimedia/Video/Players/index.shtml) will show. Some of them also [support the ability to transcode](http://wiki.xiph.org/index.php/TheoraSoftwareEncoders).

=ZOOM=You knew I was going to invoke those handy little helpers=

VLC is the Crab Nebula of multimedia players. It has one of everything and can handle virtually everything you can throw at it ([including some you features you may not know about](http://www.unixmen.com/linux-tutorials/610-do-you-know-which-more-things-vlc-mediplayer-can-do-)) but for transcoding small videos it may be overkill. VLC, Kino, Cinilerra and HandBrake are good at doing the heavy lifting on feature length videos but many of us are more used to dealing with videos of lengths common to sites like YouTube. and this is where Firefox comes into its own. With a little help from an addon called Firefogg. Yes, you knew I was going to invoke those handy little helpers.

## Let Firefogg take the strain off the server

You won't find Firefogg at the official Mozilla Addons site. You'll have to get it on the [Firefogg homepage](http://firefogg.org/) which contains the link to install it. The big advantage of this addon is that it relieves the site to which you are uploading a video of the need to do the heavy lifting involved in actually transcoding. As the algorithms for transcoding become more complex and efficient, demands on processors grow. So, executing transcoding usually doesn't sit well with concurrent tasks on slower computers.

The downside of using Firefogg is that it depends absolutely on an internet connection. You are dependent on a good, steady and reasonably fast connection but if that connection is broken Firefogg has been designed to allow upload resumption. If you are away from access to the internet you'll have to rely on a stand-alone desktop application instead -- which is fine if you ignore the real point that Firefogg was designed primarily to convert and upload video to a website capable of hosting Ogg content. (At the moment it only supports two sites with two more to follow soon, one of which will be Wikipedia.)

However, if you are also on another machine without the desktop apps to do the conversion, then Firefogg can fill the gap. The extra good news about Firefogg is that it is impeccably free and open. It seems to have started life at the Google Summer of Code as a project for [Xiph.org](http://www.xiph.org/) to "create a Firefox extension that will record sound locally and then stream to an Icecast server", but as often happens it has gone off in other interesting directions.

Well, that's the theory. How does Firefogg stack up in practice? First, catch you addon. [Head over to the site and grab a copy](http://firefogg.org/). You'll need Firefox version 3.5. The frontpage has the addon link. Install it and restart Firefox (quick moan: When, oh when, is Mozilla going to do as both Opera and Google Chrome/Chromium do, and install this kind of thing, _without_ the necessity for a restart?). And don't forget to enable Javascript in the browser too.

=IMAGE=Firefogg_install_page.jpg=Figure 1: Firefogg install page=

The primary function is to upload Ogg videos to a website but you can just as easily use it to convert copy on a local hard drive--and save it to your hard drive or other device. I do have KDE service menus for video and audio conversion but they are specific to one computer. Firefogg can be used anywhere with an internet connection.

Once Firefox is up and running again, click on the link `make Ogg Video` on the right-hand side of the frontpage and a new link will appear, `Select file`:

=IMAGE=From_here_select_a_local_file.jpg=Figure 2: From here select a local file=

Select a video or video clip to convert. I have a collection of video in various formats, including MP4 and Flash. The file dialogue window will open:

=IMAGE=Local_file_directory.jpg=Figure 3: Local file directory=

I opted to convert an MP4 video of James Taylor (who else?) to Ogg. Once the file has been selected Firefogg offers the user a default encoding option but there is a good selection of other, more advanced options:

=IMAGE=Default_and_advanced_options.jpg=Figure 4: Default and advanced options=

Expanding Custom settings reveals a very clever user choice. If the video (clip) you are converting is for uploading to a website or for embedding in your own website Firefogg offers the sensible option to encode with low bandwidth, for obvious reasons. If you're saving your Ogg conversion to a local machine you can opt for the high quality version, though this will result in longer conversion times and a bigger file. Using the highest available settings for audio and video resulted in a 10MB spread in final file sizes for the James Taylor video. Firefogg also offers two-pass encoding which is generally held to give the best results but that is probably more true for the H.264 codec.

=ZOOM=It appears that Microsoft are not the only purveyors of FUD=

According to the [Floss Manual site](http://en.flossmanuals.net/TheoraCookbook/FFMPEG2Theora#) it's real value lies in fitting a transcoded video onto fixed media like a CD or DVD -- and that requires some elementary sums and recourse to the command line. That would be superfluous for uploading to websites or saving copy to a capacious hard drive. In any case, the difference in quality, bitrate and file size wise, between a [YouTube H.264 video and a transcoded Ogg video file is negligible](http://hacks.stage.mozilla.com/2009/06/open-video-codecs-and-quality/). It appears that Microsoft are not the only purveyors of FUD.
That's quite a decent set of options. Of course it's nice to have the comfort zone of a nice point and click GUI but you still need some knowledge about the terminology of audio/video settings. The simplest feature is under `Encoding range`. Expand it and Firefogg reveals a useful feature for anyone who just wants to convert, save, or upload a section of audio or video by specifying the start and finish time.

Firefogg's developers have added a nice touch here. Toggable, sticky help. Hover your mouse over the blue info icons on each sub menu and some of the terminology becomes a little clearer. In some instances there will be a hyperlink to explore a term further at Wikipedia (for example, Framerate, for which Firefogg offers a maximum of 30 and Aspect ratio which offers two common settings, 16:9 and 4:3).

Firefogg presents the user with a nice progress bar and when encoding is finished it offers the final flourish of a preview (courtesy of the HTML5 video tag) with the option to save the output--either as a copy on a local hard drive or an removable device. The other option offered is to "send video", that is, to upload it those sites currently capable of using Firefogg.

=IMAGE=Firefogg's_preview_and_save_options.jpg=Figure 5: Firefogg's preview and save options=

If you are hosting your own site you can use [Firefogg's Javascript API](http://www.firefogg.org/dev/index.html) to embed Firefogg capability. (If you are going to embed Firefogg in your site people have already been busy designing widgets for it and you can [grab some ready made ones over at Ohloh.net](http://www.ohloh.net/p/firefogg/widgets) if you can't be bothered to make your own.) The API offers an option to transcode/upload or to encode and initiate a regular multipart HTTP POST thereafter. In the [Wikimedia Commons version](http://commons.wikimedia.org/wiki/Special:Upload) of this you get a bonus: the file is not only converted and uploaded to the site but also thoughtfully deposits a copy on your local drive alongside the original. A win win situation.

# Conclusion: transcoding in the cloud?

=ZOOM=the core of Firefogg's purpose is revealed in the support it gets from the FSF, Richard Stallman and Wikimedia Commons=

The thinking behind the development of Firefogg places it centrally in the battle for adopting open and free video standards on the web. It was never intended as a stand alone application for transcoding multimedia on the desktop, but clearly you can use it like that. As with so many other projects, other developers come onboard and take it in other slightly directions and extend it; however, the core of Firefogg's purpose is revealed in the support it gets from the FSF, Richard Stallman and Wikimedia Commons.

The Firefogg developers are certainly committed to free and open standards. In addition to Ogg they plan to add support for [Flac](http://en.wikipedia.org/wiki/Free_Lossless_Audio_Codec), [Speex](http://www.speex.org/)("a free codec for free speech" and part of the GNU Project) and [Celt](http://www.celt-codec.org/)(used by or supported by Ekiga, a free alternative to Skype). Support for uploading to Wikipedia is promised but if you can't wait and you want to explore further you can go to [test.wikipedia.org](http://test.wikipedia.org/wiki/Main_Page), add the Add Media Wizard and a Firefogg upload button will be added.

=ZOOM=Firefogg? Well, every little helps=

Chris Blizzard at Mozilla has written a Greasemonkey userscript called [Theoratube](http://www.0xdeadbeef.com/theoratube/) which syncs with Firefogg to scrape YouTube videos, transcode them to Theora and stream them back to the browser via a private URL. [Bland explains how it works on his website](http://www.0xdeadbeef.com/weblog/2009/11/bringing-theora-to-youtube-the-hard-way/). 

The common thread in all of these developments is the ability to promote open multimedia standards across the web, using the web itself as the platform to transcode in the cloud so to speak. As usual, the digital curmugdeon is Microsoft and Internet Explorer. However, the more people switch to Firefox and Chromium the more they bypass the barriers to HTML5 and Ogg adoption. However, it's still something of an uphill struggle to establish and maintain free and open standards against the weight of vested proprietary interests. Firefogg? Well, every little helps.