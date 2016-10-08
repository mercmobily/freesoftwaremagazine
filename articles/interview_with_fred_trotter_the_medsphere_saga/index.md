---
nid: '1918'
title: 'Interview with Fred Trotter: the Medsphere saga'
authors: 'Tony Mobily'
published: '2006-12-07 8:19:05'
tags: 'medical-software,medsphere'
license: verbatim_only
section: interviews
listed: 'true'

---
Recently Medsphere, supposedly an “Open Source” Medical Software Company, has sued its founders Scott and Steve Shreeve. Why? Medsphere claims that the Shreeves illegally released Medsphere software to Sourceforge. An “Open Source” Software company is suing its founders for releasing code under a free license... that’s a bit like Ford suing its employees for making cars. Recently [Fred Trotter](http://www.fredtrotter.com) has come forward with evidence that he claims makes the Medsphere lawsuit baseless. Read on for an email interview with Fred Trotter regarding who did what in the Medsphere lawsuit, and why every free software developer should care about what is happening to the Shreeves.

**TM: Tell me a little about yourself Fred?**

I am from Texas, where my family has run a Medical IT business for more than thirty years. My grandfather started the business as a Medical Manager franchisee and my [aunt and uncle](http://www.synseer.com/index.php?module=htmlpages&func=display&pid=1) still support several Medical Manager installations. That business has changed into [SynSeer](http://www.synseer.com), which is now one of the top companies for Free and Open Source Software (FOSS) clinical Electronic Health Record (EHR) consulting. Personally, I came to Medical IT from an internet security background. I worked for Verisign as an senior Internet Security Consultant, and was originally trained at the Air Force Information Warfare Center in San Antonio. When I first got interested in free medical software there was a lack of medical billing capabilities in several FOSS EHR projects. In response, I wrote [FreeB](http://www.freeb.org)), which is a medical billing engine that can work with any EHR. The project was a success and resulted in a [LinuxMedNews](http://www.linuxmednews.com)[Achievement Award](http://www.linuxmednews.com/1095084285/index_html). Since then, I have become the de facto [Medical Billing Guy](http://www.linuxmednews.com/1113401258/index_html) in the FOSS medical community. I first encountered the [VistA community](http://www.worldvista.org) as the result of this interest in medical billing . [VistA](http://www.worldvista.org/AboutVistA) is an excellent free software hospital EHR that the VA wrote over the course of many decades. VistA needs a billing engine, so I have been working with the VistA community to see what can be done to integrate VistA and FreeB.

While I am familiar with the VistA community, I am not a core VistA developer. I know “what’s going on” with the VistA community and Medsphere but I do not really have anything to lose, since my primary project is FreeB and [MirrorMed](http://www.mirrormed.org). As a result I was in a position to say what others in the VistA community did not want to because they hoped that Medsphere might eventually become an ally.


=ZOOM=The GPL is the only moral license to use for medical software=

I am first a medical FOSS programmer, but lately I have been getting more attention as an activist. I believe that the GPL is the only moral license to use for medical software. I edit [GPLMedicine.org](http://www.gplmedicine.org) which is site devoted to the defense of that ideal. From that site, I hope to challenge proprietary medical software companies to release under the GPL for moral reasons, and to help them to see that the GPL is not a threat to their business models. I really want to target proprietary medical software companies, but I have been spending most of my time with companies that claim falsely claim to be Open Source.

**TM: Who is Medsphere and what did they do to deserve your criticism?**

Medsphere is a VistA vendor who is very popular in the media. Medsphere has [recently sued](http://www.linuxmednews.com/1154470142) its founders Scott and Steve Shreeve. for posting Medsphere owned software to Sourceforge. I have information that shows that the basis of the Medsphere complaint is [a sham](http://www.gplmedicine.org/articles_12/). I have been trying to work with Medsphere to get them to quietly drop the lawsuit and repair things. That effort failed and now I am whistle-blowing. I have tried to make it clear that I am not against Medsphere itself. However, I believe that their current action is a betrayal of the FOSS community.

**TM: What was the original problem with Medsphere? Why did you ever bother talking to them?**

Originally I was concerned that they were selling a non-free medical billing system with their version of VistA. Because VistA is public domain, they can make any part of it proprietary or keep it as free (libre) software. My fear was that they were developing a proprietary competitor to my GPL project, (which is fine) and then competing with me by marketing that code as “open source” even though it was a proprietary system (which is not fine).

**TM: So Medsphere was pretending to be an “open source” company?**

Not exactly. Medsphere’s website says that they are the “leading provider of open source software to the healthcare industry”. Medsphere does not claim to be an “open source company”, instead they say they “provide” open source software. This gives them lots of wiggle room. Oracle is now a “provider” of GNU/Linux systems, but is still a proprietary software company. So Medsphere is playing with language in order to give them the marketing benefits of being “open source” without any of the commitments that being an “open source company” entails. The main stream press is not capable of parsing these kinds of subtle distinctions, so Medsphere gets unwarranted attention in the press. Medsphere is treated with the kind of respect that you would expect the top FOSS medical software company to receive. In reality, the top medical FOSS company is probably [Uversa](http://www.uversainc.com) with their [ClearHealth](http://www.clear-health.com) project (Note: Uversa is a friendly competitor of mine). Medsphere does not even warrant the title of “top VistA company”. [Blue Cliff](http://www.bluecliffinc.com/) is a good example of a company that has a good reputation within the community, but gets far less attention than Medsphere. There are many other FOSS medical companies out there all of whom have contributed more than Medsphere. Yet Medsphere dominates the placement in the mainstream press, probably because they have received considerable funding.

While Uversa has released an entire clinical EHR under the GPL, Medsphere has released only one significant contribution to VistA: a new version of Fileman. Fileman is an important component in VistA that was written by George Timson, who left Medsphere immediately after Medsphere sued the Shreeves. Excluding the work of Timson, Medsphere has not “provided” the healthcare industry with any free software at all.


=ZOOM=We can only accuse them of trying to give a false impression=

I have spoken with Richard Stallman (RMS) about Medsphere’s word-games and I think his comments on the subject bear repeating. Stallman’s comments:


>The weaseling that Medsphere does in its use of the term “open source” is exactly the sort of thing that I documented years ago in [http://www.gnu.org/philosophy/free-software-for-freedom.html](http://www.gnu.org/philosophy/free-software-for-freedom.html).. Because of that weaseling, their statement does not promise us anything. So we cannot accuse them of breaking a promise. We can only accuse them of trying to give a false impression.. In theory, companies could try to use the term “free software” in the same weasely way, but in practice they don’t seem to do it. Perhaps this is because making reference to software users’ freedom will encourage people to judge software in terms of whether it respects their freedom.. 


<!--pagebreak-->


Medsphere has not broken any promises, it is just abusing the term “Open Source”. This is the reason that I originally went to [Eric Raymond](http://catb.org/esr/) regarding this issue. Medsphere is not claiming to be a free software company. Instead they are half-claiming to be an open source company. I wanted someone who could speak with some authority for those who advocate “Open Source” as opposed to free software. [Eric and I advocated for several weeks for Medsphere to reach a peaceable solution to this lawsuit](http://www.gplmedicine.org/index.php?module=htmlpages&func=display&pid=13). However, in the end, Medsphere refused to work with us to find a peaceful solution.

**TM: What did you originally hope to gain from Medsphere?**

I wanted them to be a free/libre (as in freedom, not price) software company, meaning that I wanted them to release their improvements to VistA under the GPL. It should be noted that my money is where my mouth is. [SynSeer has a publicly stated policy to release code under the GPL](http://www.synseer.com/index.php?module=htmlpages&func=display&pid=6). SynSeer is not a VistA company (I don’t code MUMPS, so there are limits to what I can do with VistA without help from a Mumpster) and as a result SynSeer does not matter much in the VistA world. However, the most important community group in the VistA world (besides the VA itself) is WorldVistA. [WorldVistA](http://www.worldvista.org) has decided to release their improvements to VistA under the GPL. If Medsphere chooses a different license than WorldVistA this decision would divide the community.

**TM: Why do you use the word “betrayal”? Isn’t that too strong?**

There are two reasons that I think Medsphere’s actions are a betrayal.

First, Medsphere is attacking innocent free software developers. Medsphere is categorizing the release of code under a FOSS license as an attack. If some Microsoft employee released Windows on SourceForge under the GPL, you might understand if Microsoft later sued that employee. However, you would be disappointed if Red Hat sued one of its developers for releasing an improvement to Linux. Is Medsphere a proprietary company like Microsoft or an “Open Source” company like RedHat? Because of their “weaseling” it is not easy to tell which it is. However, Medsphere is essentially claiming that it is a proprietary company in the lawsuit against the Shreeves. From the Medsphere complaint:


>The Board and the CEO would also evaluate what intellectual property protections should be sought before or after the release of the code, such as any need to copyright or patent the source code.. 

Later in the Medsphere complaint:


>In addition, neither Dr. Kizer nor the Board had made any determination that such a release was consistent with Medsphere’s intellectual property strategy or, among other important things, whether patent and/or copyright protections were necessary for the source code, and no steps were taken to ensure that Medsphere’s proprietary information and/or trade secrets were safeguarded.. 

Only the board of a proprietary software company would consider patenting software. Software patents clearly stand against both open source and free software ideals. Medsphere is claiming that the Shreeves betrayed the company by forcing them to be truly open source without the board’s knowledge. Again, from the lawsuit:


>This announcement _[that the sourcecode was available on SourceForge]_ came as an unwelcome and startling surprise to Dr. Kizer, Mr. Shannahan, Mr. Pecaitis, and all of the Board members (except Steve Shreeve).. 

However, several months before the release, Steve Shreeve sent me and CEO Ken Kizer an email including the following... Steve Shreeve’s email to Fred Trotter and Medsphere CEO Ken Kizer:


>We’re working to release a fully-cross platform and completely free (as in freedom) stack, from top-to-bottom towards the latter part of this year. We are working long hours to make this a reality.. 

Dr. Kizer received the email because he later sent me a reply. Medsphere CEO Ken Kizer’s email to Fred Trotter:


>It appears that Steve has responded to you, but I thought that you might be interested in the attached comments I gave last week—Ken. 


=ZOOM=The first way that Medsphere has betrayed the community is by its malicious and baseless attack on two free software developers=

Two free software developers, Steve and Scott Shreeve are being sued for releasing software under a free software license, even though they had properly informed their CEO that they would be making a release. With an informed CEO, the Shreeves released the code and Medsphere actually provided some free (as in freedom) software! Somehow, a few days later, Ken Kizer and the board of Medsphere decided that they wanted to be a proprietary company. Frankly, it is their prerogative to decide this. What is not acceptable is to scapegoat the Shreeves and sue them as though they had betrayed Medsphere. To sum up, the first way that Medsphere has betrayed the community is by its malicious and baseless attack on two free software developers.

The second way Medsphere is betraying the community is that Medsphere is also suing anyone who downloaded the code from SourceForge. From the Medsphere complaint:


>The Board and the CEO would also evaluate what intellectual property protections should be sought before or after the release of the code, such as any need to copyright or patent the source code.. 


=ZOOM=The second attack is to target FOSS community members who innocently downloaded code=


<!--pagebreak-->


The people who downloaded the code from SourceForge are named as co-conspirators with the Shreeves and are named as defendants in the complaint. The second attack is to target FOSS community members who innocently downloaded code.

**TM: So this email that Shreeve sent to you and Ken Kizer seems to be pretty central?**

Absolutely. It totally destroys the foundation of Medsphere’s claims against the Shreeves. Medsphere’s claims are only legitimate if Medsphere is a proprietary software company. Medsphere can be a proprietary company if and only if Ken Kizer was not properly informed about the release. Since Kizer was informed regarding the release, the Shreeves where operating under the assumption that Medsphere was an free software company, making their release routine.

**TM: What ramifications does Medsphere’s lawsuit have for the FOSS medical community?**

It depends on the degree that Medsphere is taken to represent the FOSS medical community. In medicine, as it should be, trust is paramount. Hopefully, the fact that Medsphere has proven untrustworthy will not effect the larger VistA or FOSS medical community. The FOSS movement has only recently begun to make inroads into healthcare. It is absolutely critical to educate the medical community that Medsphere is not VistA. If you are a member of the healthcare community and would like more information regarding other solid VistA companies, do not hesitate to contact me via [my website](http://www.fredtrotter.com).

**TM: What ramifications does Medsphere’s lawsuit have for the FOSS community at large?**

Anyone who is hired by a company to develop GPL code should be watching this case carefully. The outcome of the case will determine the standard level of care that any software developer needs to take before he can release code to the public. Just imagine what the FOSS world would look like if Medsphere were successful in this action against the Shreeves. First, the burden of proving that releases are allowed will shift entirely to the FOSS developer. Second, a FOSS developer would no longer be able to rely on their employers public or private statements regarding open source to defend a release. Ultimately, any developer who releases company code to SourceForge would need to get a signed document from the CEO for every release. (Remember that according to Medsphere the release of Timson’s Fileman was okay, but the Shreeves’ release was not. The approval of previous releases would not be enough to show that a current release was permissible).

This is not about whether your CEO approves a release. Medsphere’s lawsuit, if successful, would mean that any FOSS developer would need to have proof that such an approval took place. Suppose you meet your boss in the hallway and he says: “We just decided that we will be releasing X, go ahead and post it to SourceForge”. If the “Medsphere precident” were in place, you would be foolish to actually follow this directive. There would be no proof that the conversation ever took place. Or perhaps your Boss might himself be conspiring against the company? A simple hallway conversation would not protect you. In fact even an email from you to the CEO would not protect you! The Shreeves clearly sent an email indicating that they would be doing a release to Medsphere CEO Ken Kizer. However, the Shreeves are still being sued for a “surprise” release. Apparently Medsphere holds that only way that you could be certain that you, as a FOSS developer, would not be held liable for a release that you performed for your company would be some form of unambiguous two-way communication, in a format that provided for [non-repudiation](http://en.wikipedia.org/wiki/Non-repudiation). That means either a signed paper letter, or a cryptographically signed email from the CEO. (You would need to make sure that you printed the email, in case you lost access to your company email address).

Obviously this would be a terrible precedent. It would mean that no relationship between a FOSS developer and a corporation could be based on informal trust. Obviously if you worked at a company like Red Hat you could probably get away with simply doing releases the same way you always had. But if you worked for IBM, or another company with both “open source” leanings and proprietary software leanings, you would need to be extremely careful, since you might be left holding the bag. If you did not have access to the CEO to acquire such permission? You would probably need to refuse to release the code. Otherwise the CEO could always claim that you, and whoever you were collaborating with, were betraying the company in a conspiracy. (Think Enron; “yes that’s right, Your Honor, I had no idea that this sourcecode was going to be released. I think the actions of (INSERT YOUR NAME HERE) clearly represent fraud and I request jail-time.”)

**TM: What can our readers do?**

The first thing to consider is what Medsphere can do! I have not given up hope for Medsphere. I think they still have the possibility to be a positive force within the medical and free software communities. However, Medsphere needs to substantially change direction.


* Medsphere should drop the lawsuit against the Shreeves, and compensate them for all legal fees.
* Medsphere should restore all the software that the Shreeves posted to SourceForge.

If Medsphere did these two things then I would do everything that I could to praise them publicly for doing so, indeed they would merit the praise.

As to what your readers can do: it depends on who your readers are.

If you are a hospital CIO or CEO then consider contacting Frank Pecaitis, the top salesman at Medsphere. Let him know that while you might not be able to commit to buying Medsphere’s services if they reconcile with the Shreeves, you will definitely not be purchasing anything if the lawsuit moves forward.

If you are a Medsphere software developer consider bringing this issue up with your boss and your boss’s boss. There are two kinds of companies, the kind where the developers are listened to and given a voice and the kind that treats developers like inter-changeable cogs that are not expected to voice opinions about the moral choices that the company makes. Google has a reputation for welcoming internal discussions regarding their “don’t be evil” motto. Other companies that are more clearly FOSS oriented, like Cananonical or Red Hat, seem to take their developers pretty seriously. Or at least those companies are used to the [consequences of having fundamental disagreements with developers](http://lists.kde.org/?l=kde-devel&m=103293985032408). It is time to ask yourself if you are working for an “evil” company. If your boss ignores you when you complain about this issue, then it might be time to seriously question why you are working there. I am already in contact with two people who have left Medsphere because they felt that the company was not morally sound. If you do make the decision to leave Medsphere, or just want to vent, please [send me a letter](http://www.fredtrotter.com) that I can publish or send me a link to a post on your own blog.

If you are not a hospital CIO or a Medsphere employee, then consider adding blurb about what you think about this to your blog. If you do not have a blog, then mention this issue to a doctor you know. This is an excellent opportunity to sit down with an M.D. relative and explain how “free software” ideals ultimately impact clinicians. So far the main stream press that I have contacted with this have published nothing. Slashdot has passed on my post regarding this issue. So far the only person that has published anything regarding this issue is Ignacio Valdes over at [LinuxMedNews.com](http://linuxmednews.com) and several other bloggers. This issue must come to the attention of Medsphere’s potential customers. Impact to the bottom line is only way to get the board of directors, who are all venture capatalists, to care enough to change direction.

**TM: Thanks for your answers!**

No problem, thanks for providing a place where people who care about these kinds of issues can come together!

