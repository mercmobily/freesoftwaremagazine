---
nid: '3821'
title: 'Temporarily Unavailable: /tmp: filesystem full'
authors: 'Cautious Koala'
published: '2013-01-22 3:23:45'
tags: tmp-unionfs
license: verbatim_only
section: hacking
main_image: statue.jpg
listed: 'true'

---
/tmp is a vital ingredient of any Unix-like OS. If your /tmp is too
small, but you only discover that fact when you are in the middle of a
crucial task, is all lost? Or is there a way to avoid the worst
consequences of your earlier imprudence?

<!--break-->

## Youtube karaoke

Cautious Koala was enjoying his favourite indulgence, Youtube karaoke,
when, Oliver Sudden, things started to go pear-shaped. 

"Oh dear, what can the mather be?" he sang aloud. He had not quite
shaken off the karaoke mood, even though it was the karaoke that was
misbehaving. More precisely, it seemed that the Youtube was
misbehaving.

CK started investigating. Largely his actions were random. Unbeknownst
to him, had he applied the universal Microsoft solution - restart the
machine - his problems would have vanished. (They may have returned
later.) But CK was a reluctant restarter. He gained a smug
satisfaction from running `uptime` and seeing responses like
_up 76 days_.

=ZOOM=Investigating the problem might uncover something useful=

Further, he was reluctant to restart his machine because he lost
context. Being an absent-minded Koala of very little brain (a little
like Pooh - in the brain department, not the bear department (see
[Bio][Bio])), he found that, after a restart he could rarely remember
what he had been doing. Secretly he believed that that was part of the
universal Microsoft solution: tell the customer to restart her machine
and, who knows? When the machine is back up, something might come
along to distract the befuddled user.

But he also believed that there were times when investigating the
problem might uncover something useful. Perhaps this was one of those
times.

## /tmp full

After rummaging around here, there and everywhere, CK discovered that
`/tmp` was full:



=CODE_START=
Filesystem                      Size     Used    Avail Capacity Mounted
/dev/ad1s3e                     310M     285M       0B 100% /tmp
=CODE_END=


"Oh, no! How much can a koala bear? [See [Bio][Bio].]
Am I going to have to give up Youtube karaoke?"

After a little further analysis, he let out a sigh. "Well, I guess
I only have myself to blame: there's crap here that goes back over two
years. Which part of **tmp** did I have difficulty understanding?"

Being Cautious both in name and spirit, CK was a Reluctant Deleter. He
had been known to delete files occasionally, but he would be hard put
to recall the last time if pressed.

CK looked for recent files in `/tmp`:
=ZOOM=What to do?=


=CODE_START=
        ls -latr /tmp | tail
...
-rw-------   1 ckoala  wheel      36874038 Dec 22 09:55 FlashpokETZ

        file /tmp/FlashpokETZ
/tmp/FlashpokETZ: Macromedia Flash Video
=CODE_END=


He realised, his `ls` command was totally inadequate for the Youtube temp
files.

=CODE_START=
        ls -latrh /tmp | tail
...
-rw-------   1 ckoala  wheel       35M Dec 22 09:55 FlashpokETZ
=CODE_END=


Later - much later - after he'd solved all his problems, he learnt a
little more about Youtube. Obviously, shorter clips created shorter
temp files. What was not quite so obvious was that, even if he paused
a clip, the temp file kept growing. It probably didn't matter much on
a 3-minute clip. But at about 4 MB per minute, his puny `/tmp` would
fill up very quickly indeed.

Which made him think of something else. What was he thinking when he
created `/tmp` way back when? He'd started off with an 80 GB drive, the
larger of 2 in this machine. It had seemed so much space back then.
Why, he had split the disk into 7 partitions! Was that possible? He
looked at his portable 1 TB USB drive and scratched his head ruefully.
A lot had changed in just under 3 years.

To make matters worse, his current OS, FreeBSD, resided on one of the
partitions (8 GB); and FreeBSD in turn sliced (FreeBSD's term for
partitioning) the 8 GB even further. He supposed he would have taken
FreeBSD's defaults. It all boiled down to a `/tmp` which had been
allocated 310 MB, and which was now full when it showed 285 MB used.

## What to do?

There was space in other places on the hard disks. There was also
heaps of space on the portable drive, but he shuddered as he imagined
wanting to unmount it for some reason. He was not called Cautious for
nothing.

He formed a plan. He understood that `/tmp` was a vital ingredient of
any Unix-like OS. So he needed to do things cautiously. He thought he
could rename `/tmp` and create a symlink to replace it. If he did it all
as a single command, it might work.

His first foray went something like this:


=CODE_START=
        mv /tmp /tmp_orig; ln -s /DISKA/TMP /tmp
mv: cannot rename a mount point
=CODE_END=


"Hmm, not so easy. Back to the drawing board," he said to himself. 

After a while, he had another idea. "If you can't lick 'em, join 'em.
If it won't let me rename a mount point, I'll unmount `/tmp`."


=CODE_START=
        umount /tmp; ln -s /DISKA/TMP /tmp
umount: unmount of /tmp failed: Device busy
ln: /tmp/TMP: File exists
=CODE_END=


"Damn and double damn! The first damn for not working; the second
because I could have done bether." CK realised that he had let himself
down in the caution department. Fortunately there had been no bad
consequence, but he should have used a slightly different command:


=CODE_START=
        umount /tmp && ln -s /DISKA/TMP /tmp
=CODE_END=
 

The way he had entered the command, the `umount` had failed, but the
`ln` command had been attempted (and failed). The semicolon (;) between
the two commands usually means _do command 1 and then do command 2,
no matter what_. (In a shell script, it's possible to use `set
-e` to exit if a command returns a non-zero status. Use with care.)

=ZOOM=Damn and double damn!=

The second form (using &&) means _do command 1 and, only if the
first command succeeds, do command 2_. Which is what CK really
wanted, even if he hadn't realised at the time.

The following example says it all:


=CODE_START=
        aaa; bbb
bash: aaa: command not found
bash: bbb: command not found

        aaa && bbb
bash: aaa: command not found
=CODE_END=


Consider the consequences of this contrived example:


=CODE_START=
        cp file1 file2; rm file1
        cp file1 file2 && rm file1
=CODE_END=


In the first case, if the copy fails, you end up with no files. That
might be a little disappointing if `file1` is valuable. A Cautious Koala
would always prefer the second command: if the copy fails, the remove
is not invoked.


CK went to the internet. At the time, he may have had a plan, but, as
has already been noted, he is a Koala of very little brain. He found a
solution, but he can no longer remember what led him to it. However,
he is a very cautious koala, well aware of his limitations, so he
dutifully recorded all the details. Omitting distracting output, here it is:


=CODE_START=
        mkdir /DISKA/TMP
        mount_unionfs /DISKA/TMP /tmp

        mount -t unionfs
<above>:/DISKA/TMP on /tmp (unionfs, local)

        df -h 
Filesystem                      Size     Used    Avail Capacity Mounted
/dev/ad1s3e                     310M     285M       0B 100% /tmp
/dev/ad0                         36G      29G     4.1G  88% /DISKA
<above>:/DISKA/TMP               36G      29G     4.1G  88% /tmp
=CODE_END=


CK noted that this was not what the creators of unionfs had in mind
(see  [here](http://en.wikipedia.org/wiki/UnionFS)).


# Conclusion

The effect of his solution was very pleasing to CK, who was starting
to get peckish. Should he return to his Youtube karaoke, or should he
get something to eat? "It might be difficult to do both at the same
time," he observed, his mouth not yet full.

He decided to review his accomplishment first.

"I now have an enlarged `/tmp`. In effect, `/DISKA/TMP` has been mounted
on `/tmp`. But, whereas in the case of a normal mount, the previous
contents of `/tmp` would be inaccessible for the duration of the mount,
with a union mount, the mount is sort of transparent. It's possible to
see files underneath the directory that is mounted above. In fact, for
reads on `/tmp`, I see the union of what was in `/tmp` and what was in
`/DISKA/TMP`. Of course, since I only just created `/DISKA/TMP`, that's a
little like the union of a set with an empty set, so it's not all that
interesting. 

=ZOOM=The effect of his solution was very pleasing=

"But, what really mathers to me at the moment is that I can now write
to `/tmp` - even though a minute ago `/tmp` was full! That's magic. (Why do
they say I have a liddle brain?) Attempts to write to `/tmp` will
actually populate `/DISKA/TMP`, which can be easily confirmed by
examining `/DISKA/TMP`.

"It is also possible to write to `/DISKA/TMP` directly (rather than to
`/tmp`). It really doesn't mather. Files so created will also be visible
when `/tmp` is examined.

"If I edit a file which is physically in the real `/tmp`, the
behaviour I get is _copy on write_. Although the original file in `/tmp`
is still there, it is now inaccessible. Instead I am presented with
the edited file which resides in `/DISKA/TMP`.

"I can get some confirmation by looking at inodes and examining
`/DISKA/TMP` directly. But by and large, what's actually in the
underlying `/tmp` is unavailable to me until I unmount `/DISKA/TMP`.

"Again, what really mathers is that I can go back to Youtube karaoke.
I have no control over where Youtube writes. (I suppose it might be possible
to configure, but I doubt I could change that in the middle of a
clip.) But it doesn't mather. Youtube still "thinks" it's writing to
`/tmp` - the same `/tmp` as before. It doesn't "know" that it is a
somewhat different `/tmp`."

And so, feeling very pleased with himself, CK went off to find some
eucalypt leaves, whose effect on koalas is not unlike that of certain
recreational psychoactive drugs on humans. "For medicinal purposes
only. All the bether to appreciate the music," he muttered to himself.

# Footnotes

CK would like to point out that his exercise was performed on a
FreeBSD machine. Linux has a similar capability - sort of. 

The FreeBSD man page for mount_unionfs claims that the _utility first
appeared in 4.4BSD_, which is to say June 1994. CK believes that it
has been available as a standard part of FreeBSD since then.

The Wikipedia page for [UnionFS](http://en.wikipedia.org/wiki/UnionFS)
lists several Linux implementations. CK was a bit perplexed. "How do I
choose?"

In the end, just for the exercise, he did the following on a Fedora 16
system:


=CODE_START=
        yum info funionfs
        yum install funionfs
=CODE_END=


CK was pleased to see that the whole shooting match only took 30 k.

He thought a little test was called for:


=CODE_START=
        mkdir /UX
        mkdir /UX/tmp
        touch /UX/tmp/file1
        touch /UX/tmp/file2
        touch /UX/tmp/file3
        mkdir /UX/user
        touch /UX/user/fileu1
        touch /UX/user/fileu2
        touch /UX/user/fileu3
        chown -R ckoala /UX/user
=CODE_END=


The next bit had him stumped. "How do I mount things?" 

Looking back at the output of `yum info funionfs` he saw a
reference to a [URL](http://funionfs.apiou.org/?lng=en").

There he found something that worked:


=CODE_START=
        mkdir /mnt/union
        funionfs -o dirs=/UX/tmp=RO:/UX/user NONE /mnt/union

        mount
funionfs on /mnt/union type fuse.funionfs (rw,nosuid,nodev,relatime,user_id=0,group_id=0)

        df -h
funionfs           18G  4.4G   13G  26% /mnt/union

=CODE_END=


"That seems to be a near equivalent to my FreeBSD setup. `/UX/tmp` is
mounted read-only. /UX/user is mounted read-write. There doesn't seem
to be a notion of above and below. Maybe I'm missing something."

He tried creating files. It seemed satisfactory.

There is another use of UnionFS described [here](http://blog.hilee.org/mountunionfs-as-an-adhoc-build-rescuer).


[Bio]: link.address.here "link title here"

# Bio

Cautious Koala enjoys writing about himself in the third person.
Details about his family can be found
[here](http://en.wikipedia.org/wiki/Koala). In particular, he wants it
known that he is not a bear. 