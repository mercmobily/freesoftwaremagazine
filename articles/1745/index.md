---
nid: '1745'
title: 'A bit about BitTorrent'
authors: 'Terry Hancock'
published: '2006-09-03 12:00:00'
tags: 'bittorrent,torrents'
license: verbatim_only
section: end_users
listed: 'true'

---
I’ve been hearing about BitTorrent for at least a year. It’s an exciting technology in principle, because it solves traditional central repository file distribution problems, uses peer-to-peer (P2P) file sharing technology, and is written in my favorite programming language, Python. All interesting  material—but what about practical utility? I first actually used BitTorrent earlier this year, when I needed to get copies of the _Elephants Dream_ and _The Boy Who Never Slept_ movies in order to view and review them. I found it to be a great tool that really ought to be used even more than it is. But many people still don’t seem to understand how it works. Not surprising, I suppose, since on the surface, it sounds impossible. It’s actually a pretty simple idea.

=TEXTBOX_START=Time out=
_I know I promised a bit more philosophical issues for the next few weeks, but I’m still working on those posts and I have very little time to blog this week. This is based on an email I sent to a friend about a month ago, explaining why BitTorrent is so useful._


=TEXTBOX_END=

# What _is_ a torrent file?

Basically a torrent download is like a scavenger hunt and the `.torrent` file is the list of things you have to find. I can’t imagine how a client could possibly get the file without getting the `.torrent` file first.

It’s sort of a map of the file. It tells how many chunks it’s broken into, file hashes for each chunk, and the URL of the “tracker”. The client then goes to the tracker for pointers on who to start getting chunks of the file from.

The idea is to move the burden of the download from the “server” to the “clients” by having the clients serve each other (of course they’re no longer strictly “clients” once you do that—so BitTorrent has its own terminology, which I don’t completely know yet).

In a conventional download, if you have 100 people who want one 500 MB file, you send them all to one “server” which then gives each of those 100 people the entire 500 MB file. This is hugely demanding on the server.

With a torrent, you instead “seed” the file by breaking it up into 500 chunks and giving each downloader a few chunks. Then you tell them to sort it out amongst themselves. The clients trade chunks of file with each other until all 100 users have all 500 chunks.

The `.torrent` file is the spec that each client uses—that’s how it knows when it has acquired the whole file and whether all the checksums match.

The tracker is a server (probably also run by you) which acts like a traffic-controller—if clients can’t figure out where to get a piece of the file, they ask the tracker for directions (they can also discover this information from each other).  So there’s a lot of short control packets going back and forth between clients and the tracker.

I know it sounds kind of crazy, but it works. And, especially for large files, it’s much more reliable than ordinary downloads because it does all those checksums along the way. And, of course, it greatly reduces the server bandwidth. Obviously the total bandwidth is a little bit higher because of the control data being passed around, but it’s distributed over all the downloaders’ machines.

I experienced this personally when I downloaded the movies _The Boy Who Never Slept_ and _Elephants Dream_ that I reviewed awhile back. Those were monster files (multiple gigabytes), but the `.torrent` files were about 30-40KB in size.

I installed and used “qtorrent”, one of several GUI torrent client applications (predictably, one based on the Qt GUI toolkit) that are available. It worked very nicely, but I haven’t got much to compare it with. My impression is that the clients are probably pretty consistent, so which one you use probably has more to do with your GUI environment preferences.

The BitTorrent documentation says that a torrent download should begin when you click on the torrent link in Mozilla, but this never worked for me. Instead, I had to save the torrent file to disk, then open it with qtorrent in order to begin retrieving the file. This is actually very convenient, because it means I can save the small torrent file immediately, and then actually download the monster files when I’m not making much other use of my internet connection—a nice feature if your broadband connection is intermittent or not quite as broad as you’d like!

When I start it, qtorrent stops and makes a big “skeleton” version of the file (it allocates all the necessary space). Then it starts filling in chunks, and tells me how many I need, how many I’ve got, and gives me a percentage completion bar, etc.  It’s considered polite to leave the torrent app running for awhile after you download the whole file, because it then acts as a seed for others.

BitTorrent avoids cheating or “leaching” (only downloading, not uploading) by the algorithm it uses to decide priorities for which peers to serve—the ones that play nice get served first (i.e. it’s a “tit for tat” algorithm).

This is quite different from gnutella or kazaa which are completely decentralized file-sharing applications. With BitTorrent, you still have a server which moderates the download process and you have to get the torrent file to know what to download. It just uses peer-to-peer methods to complete the file.


# Hosting BitTorrent files

If you want to distribute your own files via BitTorrent, you can save a lot of load on your server, which can be a life-saver for small, community-driven projects where maintaining a high-traffic server isn’t really an option. The great thing about BitTorrent is that it scales automatically: the more popular your project, the more BitTorrent saves you on bandwidth. Or to put it another way, the growth with project popularity is more or less nil—you have an almost constant effort regardless of how many people are downloading (in technical terms, the burden of sharing a file among “N” users probably follows “order of log N” growth).


* The `.torrent` file which describes the download. Each client gets this first (by ordinary HTTP)
* A tracker which will serve clients when they need help to find parts of the file
* A “seed”, which is basically just like one of the clients, except it already has the whole file, so it only gives out chunks

I think the same tracker can be used for many downloads.

Anyway, there’s a HOWTO on providing torrents, which I was mostly trying to ignore while looking for information on how to download, but what I saw didn’t look that hard.

So you just keep track of the `.torrent` file downloads if you want to know who’s getting the file. This can be important for traditional, advertizing-based distributors. Theoretically, of course, people could pass torrent files to each other, but in practice, they won’t—if yours is the authoritative source, and the file isn’t big enough to load your server (similar in size to a normal HTML web page), then they’ll want to get the torrent direct from you.

Torrent distribution is optimal for _large_ downloads for large numbers of users. The typical sorts of things that are distributed this way are entire GNU/Linux distributions (ISO 9660 CD or DVD images), entire feature-length motion pictures, and so on. Those tend to be hundreds of megabytes, or even multiple gigabytes in size, and have many people wanting to download them, often simultaneously. This is the case that BitTorrent is designed to optimize.

For large enough files, where downloads may take hours or days, however, even a couple dozen users will make overlapping requests. Alternatively, even relatively small (a few MB) files may have overlapping requests if there are thousands or tens of thousands of users—as in the case of a blockbuster hit song or video short.

The alternate case, where BitTorrent doesn’t help, is the “deep catalog” case where you have a server with a huge amount of small content and collisions between users asking for the same information is rare (this might describe a government document server, an OGG/MP3 music catalog site, or an ordinary static website). Such a site wouldn’t gain from BitTorrent, and loads on such a server can only be solved by upgrading the system—but note that in this case, bandwidth upgrades will generally only be needed when storage, memory, CPU, and even number of servers have to be increased as well.

Generally, though, if either the number of users is very large (100/day+), and/or your distribution file sizes are large (10MB+), then you really need to make friends with BitTorrent. Note that the motivations for using BitTorrent are pretty nearly the same as the motivations for upgrading your download server’s bandwidth. Basically any time you start thinking “I’ve got too much load on my FTP server, I need to upgrade my bandwidth,” you should start thinking about BitTorrent distribution instead.


## License

You must retain this notice if you reprint this article.

©2006 Terry Hancock / [Creative Commons Attribution-ShareAlike License (CC-By-SA-2.5+)](http://creativecommons.org/licenses/by-sa/2.5)

Originally published in [Free Software Magazine](http://www.freesoftwaremagazine.com)

