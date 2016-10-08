---
nid: '1819'
title: 'Debian and the Creative Commons'
authors: 'Terry Hancock'
published: '2006-10-18 17:34:26'
tags: 'drm,debian,creative-commons,tpm,gplv3'
license: verbatim_only
section: opinions
listed: 'true'

---
Recently, I've become involved in the ongoing discussion between the Creative Commons and Debian over the "freeness" of the Creative Commons Public License (CCPL), version 3. Specifically, the hope is that Debian will declare the CC-By and CC-By-SA licenses "free", as most people intuitively feel they are. There are a number of minor issues that I think both sides have now agreed to, leaving only the question of "Technological Protection Measures" (TPM, also known as "Digital Rights Management" or "Digital Restrictions Management" or "DRM").

I myself have flip-flopped a couple of times on this issue. The inventors of TPM ("technological protection measures") also known as DRM ("digital rights management" or "digital restrictions management" as Richard Stallman has dubbed it) must be laughing at their cleverness now. The issue has stressed some of the key fracture lines in the free software and free culture communities.

The problem essentially is this: none of the Creative Commons licenses have a "source" requirement (unlike the GPL, for example), because, being intended for creative content, it was generally felt that no definition of "source" was really workable, and what's worse, the intuitive rules for different media would likely be very different.

Because of this, there is no "parallel distribution" requirement for "source" and "binary" versions of works in CC licenses. Instead, the licenses insist on a much milder requirement: the work must be distributed in a form that at least does not _actively interfere_ with the end user's freedom to use, modify and use, or distribute the modified version.

There has been a long-standing misconception that this provision would keep a user from applying TPM to a CC work in order to play it on a platform which requires TPM in order to play (a "TPM-Only Platform"). According to the CC representatives I've listened to, including General Counsel, Mia Garlick, this was not true in the previous CC licenses (that is: "yes you can TPM your own works on your own devices"). At the very least, the "fair use/fair dealing" provision is believed to provide this right in most jurisdictions, and the exact wording of the license is supposed to make it available generally. Nevertheless, there was agreement that the wording was too vague, and the CCPLv3 license has been revised to clear up the question (which I can vouch for myself, having read it -- though, of course, unlike Garlick, I am not a lawyer!).

What Debian wants, however, is the ability to distribute packages in TPM form. They propose to obviate the concerns of TPM lock-in by requiring a parallel distribution of a non-TPM form of the work. This would be analogous to the way the GPL deals with source/binary distribution (in certain ways, binary distribution can be regarded as a kind of TPM distribution, since it is hard to reverse the binary to get usable source code for modifying the program).

At first glance, this sounds like _The Solution_, and I argued pretty strongly for it on the cc-licenses list. However, another participant, Greg London, [demonstrated an exploit](http://lists.ibiblio.org/pipermail/cc-licenses/2006-September/004130.html) that uses TPM distribution (even with parallel distribution) to break the copyleft:

=TEXTBOX_START=London's 'DRM Dave' Scenario=
A brief summary of Greg's problem case:


1. Sam releases a work _A_ under By-SA w/ parallel-distribution allowance.
1. Dave, owner of a TPM-only platform, wraps work _A_ in his TPM wrapper to create _d[A]_ (the _d[]_ represents the TPM wrapper).
1. Under "parallel distribution" rule, Dave can now sell _d[A]_ through his channel, so long as he also provides _A_.
1. Dave may choose to alter the work to create _A†_, and wrap that to create _d[A*]_ which he may also sell (Dave has the right to modify and distribute). He also has to provide _A†_ of course.
1. Bob, however lacks this freedom. He downloads work _d[A]_ and likes it.  He decides that he wants to create a modified version, _A‡_ which he will (due to the platform's TPM-only nature) need to wrap to create _d[A‡]_ so that he can play on the platform Dave owns (and which is presumeably Bob's platform as a user). Unfortunately, he can't do this.
1. Bob can download the non-TPM work, _A_.  He can modify it to create _A‡_.  But he has no means to create _d[A‡]_.  Nor does anything we've done require Dave to give him those means! Bob's freedom to modify and distribute has been eliminated by Dave, in a clear breakage of copyleft.

So Dave has secured a platform monopoly on Sam's work. He is able to charge for it under monopoly terms exactly as if he were the copyright owner. He is not required to distribute the work in a form that allows others to modify it and play it on his platform. He has managed to effectively revoke the users' "freedom 1" ([FSF term](http://www.gnu.org/philosophy/free-sw.html)), making the work non-free.

Now, if you pay close attention, you can also see that this is basically identical to the problem of "tivo-ization": we need a special key, which has been withheld, in order to exercise our freedom to modify and distribute.  The GPLv3d2 attempts to rectify this problem by defining that key as part of the "corresponding source" for the work.

This is equivalent to demanding that Dave release his encryption key (or provide an alternate key) to be used to encode works to play on his platform. But note that this is (from Dave's point of view) no more difficult than making his platform run non-TPM'd works.  In fact, one way to implement that is to make a TPM-key-wrapper a part of his platform.

So, if Dave wanted to create a TPM-only platform in the first place, he's not going to release the encryption key.  Requiring him to do so is no less onerous than just asking him to let non-TPM works play on his platform.

Furthermore, if such a key is published, Bob may use the published key to TPM his own private copy of _A‡_ (to create _d[A‡]_, and so may all users who receive _A‡_. IOW, having the key allows the platform to be freed to allow content to play on it, thus nullifying the objection that a non-TPM _distribution_ requirement would restrict the user's _use_ of the work.


=TEXTBOX_END=
Well, I know that idea threw me for a loop. I had been snowed by the analogy between binary/source distribution and TPM/non-TPM distribution, but the example (and some other argument on both the cc-licenses and debian-legal mailing lists) has made it clear to me that this analogy is broken in at least two important ways:


## TPM is bound by law, not just code

It would be bad enough to block user freedoms by merely making it difficult to accesses the editable version of a work—that's the reason for the source distribution requirement in the GPL, but even if the user has a good tool for reversing or applying the TPM, it's illegal for him to use it (or possibly even to possess it!) under new laws like the DMCA, which essentially provide the legal definition of TPM (or DRM).

Because of this, it isn't just "difficult" for Bob to apply TPM to his modified work to be able to play it, it's probably illegal, even if he figures out a way.

This kind of problem, IMHO, invokes the "liberty or death" principle, as it is described in the GPL: if you can't find a way to distribute within the license requirements, you can't distribute.


## TPM is intrinsically simpler than compilation (or rather linking)

The desire for a right to _distribute_ in TPM form is a natural-enough idea for people who are used to binary distribution. Compiling a binary from source is a difficult and error-prone process which requires a fair amount of expert skill. If you've ever tried it, I'm sure you realize this is the case.

Now why should that be? The really difficult step turns out not to be the process of "compilation", but rather that of "linking". Typical programs reuse complex webs of libraries, static or shared, to do most of their "heavy lifting".  And of course, each library is typically on a different development schedule, so there is a complex version-matching problem to make sure that the interfaces the program expects are actually supported by the versions of the libraries that you have.

Even if this were not the case, the program may have complex interactions with the hardware (how many times have you had problems with a video or audio driver, for example?).

But none of this makes sense for TPM. TPM is basically just a form of encryption. You need the key, and you need the algorithm for applying that encryption with the key (usually a program). The TPM itself is a simple data-to-data mapping. There's no outside dependencies or hardware variability to worry about (indeed, one of the few redeeming qualities of TPM-only platforms is that they are usually very consistent in design -- the person designing the TPM should be aware of all variants his system may need to run on).

So while it is clear that general compilation and linking is doomed to be difficult, no matter how well-intentioned the developers are, the process of applying TPM is only going to be difficult if the TPM developer has intentionally made it so (perhaps to preserve a monopoly on being able to create works for the platform).

Furthermore, such obstruction can be regarded as restricting the end-user from "freedom 1" to exactly the same degree that they restrict "freedom 0" if he has to apply the TPM in the first place.

But that's the beauty of the CC solution. By not allowing TPM _distribution_, the CCPLv3 allows the works to be distributed and (easily) used by users, so long as the TPM can be (easily) applied by them. Providing an easy TPM wrapping application renders the work "free" in this sense.

But if, on the contrary, applying the TPM for the user to have "freedom 0" (i.e. to play the work) is hard or impossible, then that's actually okay, because it is to the exact same degree "non-free" anyway, due to the restriction on "freedom 1".

This is an elegant and much simpler solution than the intricate "Corresponding Source" requirements found in the new GPLv3 draft (which is not actually a criticism of GPLv3—for programs, the source/binary dichotomy already exists, so the possibility of TPM-imposed restrictions is already opened up).

So at this point, I'm of the opinion that the CCPLv3 should be accepted as it is by Creative Commons, and I very much hope Debian will see sense and recognize it as a free license. However, even if it doesn't, CC is better off staying with a freer license than capitulating to an anti-copyleft position simply because of political pressure.


## Reference Links

[Creative Commons Public License, version 3 draft - generic (PDF)](http://lists.ibiblio.org/pipermail/cc-licenses/attachments/20060809/24ad86fb/attachment-0004.pdf)

[CCPLv3 - US jurisdiction version (PDF)](http://lists.ibiblio.org/pipermail/cc-licenses/attachments/20060809/24ad86fb/attachment-0003.pdf)

[Replies from Mia Garlick to list questions about the draft (PDF)](http://lists.ibiblio.org/pipermail/cc-licenses/attachments/20060908/da9db6a3/attachment-0001.pdf)

[Debian Free Software Guidelines](http://www.debian.org/social_contract#guidelines)


## License

This article may be copied under the terms of the Creative Commons Attribution-ShareAlike 2.5+ license, provided that proper attribution and a link to the original is provided (e.g. "By Terry Hancock, Originally at [Free Software Magazine](http://www.freesoftwaremagazine.com/node/1819), [CC-By-SA-2.5+](http://creativecommons.org/licenses/by-sa/2.5)").

