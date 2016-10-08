---
nid: '3567'
title: 'Put your webcams to good use with iSpy camera security software.'
authors: 'Sean Tearney'
published: '2011-06-01 15:56:23'
tags: 'security,windows,surveillance,webcam,ip,camera,motion,detection,recording'
license: verbatim_only
section: end_users
listed: 'true'

---
Installed home surveillance systems can cost thousands of dollars, they are expensive to maintain and costly to upgrade. Lying around your house right now you've probably got all the ingredients you need to create your own video surveillance system for next to nothing - all you need are a couple of old web cameras, a PC and some new free (as in freedom) Windows software called [iSpy](http://www.ispyconnect.com).

<!--break-->

#What, why and how?!

Installation costs for traditional home security systems can run into thousands of dollars - installs, maintenance, upgrades etc. There are software alternatives but they are either expensive to purchase, locked down to one make of camera, limited in functionality or complicated to setup.

I've recently been working with a new free solution called iSpy ([www.ispyconnect.com](http://www.ispyconnect.com)) - this software uses your existing webcams and microphones and a lot of established free software libraries (FFMPEG, VLC, AForge, NAudio to name a few) to provide a robust and feature-rich surveillance platform. iSpy supports audio and video feeds from an unlimited number of sources (well, limited only by the capability of your computer -- and then you can just add more computers!). Leveraging VLC (if it's installed), iSpy can connect to virtually any video or audio source you care to mention including MPEG, RTSP, MP4 and ASF streams.

=ZOOM=iSpy can connect to virtually any video or audio source you care to mention including MPEG, RTSP, MP4 and ASF streams=

#Potential uses of iSpy

As can be seen from the iSpy forums, uses for the program range wildly: from home security to preventing dogs barking, from detecting cosmic rays to neighbourhood watch, from bird watching to staff activity monitoring, the potential uses of iSpy are practically endless.

=IMAGE=ispy.jpg=Figure 1:  iSpy monitoring 3 cameras, 1 desktop and 3 microphones=

#Downloading and installing iSpy

You can [download iSpy from the ispyconnect website](http://www.ispyconnect.com/download.aspx). You'll need a Windows XP or higher computer (iSpy currently uses DirectX libraries, the developer is looking at porting it over to Mono soon, so that Windows is no longer a requirement) along with the .Net 3.5 client framework which will be installed automatically if needed.

When installed, iSpy will start and you can jump in right away adding your cameras and microphones. iSpy comes with another free software application called iSpyServer that enables you to connect to USB cameras and microphones running on other computers on your network. The installer for iSpyServer is available in the iSpyServer directory in the `program files` directory: just copy this to your other computers and run it. You can then use the network addresses that iSpyServer provides you with as video or audio sources in iSpy.

#Adding cameras and microphones to iSpy

Using iSpy is very simple: you can add as many cameras and microphones as you like to the iSpy work surface. You can click and drag to move them around, or use the grab area at the bottom right to resize them (hold shift to maintain aspect ratio). iSpy can handle pretty much any video or audio source. To add a camera you can either click on Add on the toolbar or right click on the work surface and click Add from there.

The first screen you'll see is a dialog asking you to select your video source. If you have a USB camera, you'll want to select "Local Device". If you have an IP camera you should select MJPEG or VLC source (you'll need [VLC](http://www.videolan.org/vlc/) installed to access MP4 or ASF feeds amongst others). If you are connecting to an iSpyServer video feed select JPEG. When you have chosen your video source, click OK and you'll be taken to a configuration dialog.

=IMAGE=ispy_edit.jpg=Figure 2:  Configuring motion detection=

iSpy monitors your cameras and only records when it detects movement (you can record all the time as well if you want). The two most important controls on this tab are "Use Detector" and the "Sensitivity" slider. iSpy has different detectors for different scenarios. The most commonly used detector is "Two Frames" - iSpy compares the last frame with the current frame and calculates the difference to detect movement. Other detectors include "Background Modelling" that can be useful if you have something constantly moving in frame (trees, people etc). Using "Background Modelling" iSpy learns to ignore repetitive movement and will only record when something unusual happens. The sensitivity slider controls the level of movement required to trigger motion detection. As you move the slider, you'll notice a green bar underneath the video stream move in the opposite direction. iSpy constantly displays the current level of motion detection under the image as a blue bar: if the blue bar crosses the green bar then a movement alert is raised.

iSpy can optionally highlight where movement has been detected. To do this select a "Display Style" from the drop-down. To specify specific areas of the frame you want to process for motion draw out rectangles in the "Detection Zones".

When you are done configuring the motion detector click onto the Alerts tab.

#Setting up alerts and scheduling

=IMAGE=ispy_alerts.jpg=Figure 3:  Setting up alerts=

When motion (or sound) is detected you can do anything you like: run a program, play an MP3, send an Email or SMS etc. iSpy can also trigger alerts when motion isn't detected so you can monitor machinery or find out if everyone leaves the office early! iSpy also has face detection built in, so you can alert when a human is detected as opposed to a cat or a dog. You can change how often iSpy generates alerts by changing the "Distinct Alert Interval". This stops you from being constantly bombarded with alerts if constant motion is detected.

The iSpyConnect website provides SMS and Email alerts through web services so you can be notified of new recordings anywhere in the world. These extra services are available with a subscription (from $4 a month) on the iSpyConnect website. If you don't want to subscribe you can setup a batch file to send a message out with your own SMTP server.

=IMAGE=ispy_schedule.jpg=Figure 4:  Scheduling iSpy=

Scheduling is easy to setup with a weekly scheduler for every camera or microphone. The schedule tells iSpy when to switch on/off, whether to record, whether alerts are active or timelapse is enabled etc.

#Playback and web access

You can play back the content that iSpy captures either directly through the file system or through the website (iSpy uses FFMPEG to transcode the generated media to web formats: Flash video files or MP4 files). The iSpyConnect website is able to access your iSpy server directly over your local network so playback is super fast and won't chew up your bandwidth:

=IMAGE=website.jpg=Figure 5:  Using the iSpyConnect website=

iSpy saves two images with every recorded video to provide a thumbnail and a zoom preview image. The images it saves are the frames taken at maximum movement detection so provide a good way to determine whether the video is interesting or not without having to watch it right the way through.

Access to iSpyConnect is free if using it from the same network that iSpy is running on. You can do pretty much everything through the website interface, including watching all recorded clips, enabling and disabling cameras and microphones, changing settings, viewing logs, removing cameras and even adding new cameras. You can also upload your videos to YouTube with a single click if you want to back them up.

You can watch live video and listen to live audio, remotely issue commands to iSpy (great for playing an MP3 to scare the wife or calm the dog!) amongst many, many other options. With webservices enabled you can also grant other people remote access to your cameras and microphones. It's even possible to connect multiple computers running iSpy under one account and view all aggregated live and captured media from the one web page.

#Mobile access and more

=IMAGE=ispy_mobile.jpg=Figure 6: iSpy on an iPhone=

iSpy can also be accessed by a range of mobile devices (Android, iPhone, Blackberry etc). The mobile application has the full functionality of the website. iSpy does way more than is covered here. I encourage you to dive in and mess around with it to get the most out of it. Some of the other things you can do with iSpy are: 

* Timelapse record
* Automated FTP
* Automated YouTube upload
* PTZ control (also over the web and via mobile devices)
* Live stream embedding in your own website
* Paired recording (record video on sound detection and vice versa)
* Desktop recording 

iSpy has busy and friendly [community forums](http://www.ispyconnect.com/forum.aspx) so any issues are quickly resolved and help is only a click away.

Happy iSpying!
