---
nid: '3071'
title: 'Video Conversion System Implementation'
authors: ElenaGR
published: '2008-12-19 10:17:47'
tags: 'java,development,conversion,enterra'
license: verbatim_only
section: hacking
listed: 'true'

---
Many systems support video upload and viewing functionality. Of course, all video files uploaded by users shall be converted to some common format (flv format as usual) to make playback easier, probably scaled to common resolution, or watermarks are required on the site, etc. Therefore, developers have to solve the problem of video conversion very often and use various approaches.

In this article, we will try to provide our vision to implementation of this kind of a system, sample system functions in a real world application. Our demo sample is written in Java™ (Spring + Hibernate), uses FFmpeg as a converter facility and JMS to interact with an external (invoking) system and for internal communications. 
Read more (with necessary images) at http://techzone.enterra-inc.com/video/video-conversion-system-implementation/