---
nid: '3718'
title: 'Create a radio station in five minutes with Airtime 2.0 on Ubuntu or Debian'
authors: 'Daniel James'
published: '2012-02-22 1:16:15'
tags: 'radio,audio,broadcast,ubuntu,debian'
license: gpl
section: end_users
main_image: Screenshot2-Airtime_now_playing.png
listed: 'true'

---
Airtime is the GPLv3 broadcast software for scheduling and remote station management. It supports both soundcard output to a transmitter, and direct streaming to an Icecast or SHOUTcast server. Web browser access to the station's media archive, multi-file upload and automatic metadata import features are coupled with a collaborative on-line scheduling calendar and playlist management. The scheduling calendar is managed through an easy-to-use interface and triggers playout with sub-second precision.

<!--break-->

Airtime has been intended to provide a solution for a wide range of broadcast projects, from community to public and commercial stations. The scalability of Airtime allows implementation in a number of scenarios, ranging from an unmanned broadcast unit accessed remotely through the Internet, to a local network of machines accessing a central Airtime storage system. Airtime supports the playout of files in both the commonly used MP3 format and the open, royalty-free equivalent Ogg Vorbis.

Airtime manages the Liquidsoap stream generator, which is at the heart of the system. Liquidsoap generates streams from files in the Airtime media archive, which is indexed in a PostgreSQL database. Live shows are automatically recorded with Ecasound, using the soundcard line input. Editors and station controllers can use Airtime to build playlists and manage files (upload, add metadata, manage advertisements) inside the station or via the Internet, using a standard web browser such as Firefox or Chromium.

# Installation steps

Packages for Ubuntu Lucid or later and Debian Squeeze or later are available from the apt.sourcefabric.org repository.

1. Edit the repositories file for your server:
=CODE_START=
sudo nano /etc/apt/sources.list
=CODE_END=
For Ubuntu Lucid [or Maverick, Natty, Oneiric] servers, use the Sourcefabric repository, replacing _lucid_ with your distro:
=CODE_START=
deb http://apt.sourcefabric.org/ lucid main
=CODE_END=
and make sure you have enabled the multiverse repository for MP3 encoding support, such as for lucid:
=CODE_START=
deb http://archive.ubuntu.com/ubuntu/ lucid multiverse
=CODE_END=
For Debian Squeeze servers, use the Sourcefabric repository:
=CODE_START=
deb http://apt.sourcefabric.org/ squeeze main
=CODE_END=
and enable the backports repository for MP3 encoding support:
=CODE_START=
deb http://backports.debian.org/debian-backports squeeze-backports main
=CODE_END=
2. Install the Sourcefabric package signing key:
=CODE_START=
sudo apt-get update
sudo apt-get install sourcefabric-keyring
=CODE_END=
3. Install the database management system:
=CODE_START=
sudo apt-get install postgresql
=CODE_END=
4. Install the streaming media server (optional):
=CODE_START=
sudo apt-get install icecast2
=CODE_END=
5. Remove PulseAudio (for direct ALSA access to the soundcard):
=CODE_START=
sudo apt-get purge pulseaudio
=CODE_END=
(This step will remove the ubuntu-desktop metapackage on a desktop system. This metapackage is used for upgrades, so purging it does not remove an installed desktop such as GNOME).

6. Install Airtime:
=CODE_START=
sudo apt-get install airtime
=CODE_END=

=IMG=screen.jpg=The Now Playing view=

You will be prompted for the hostnames and passwords of your Airtime and Icecast servers. Refer to the [Airtime manual](http://en.flossmanuals.net/airtime-en-2-0/) for details. 

# That's it!

After the installation has completed you should be able to log in to the Airtime administration interface, as shown in the _Getting started_ chapter of the [Airtime manual](http://www.sourcefabric.org/en/airtime/manuals/). Your radio station is up and running - all you have to do now is choose what to broadcast!
