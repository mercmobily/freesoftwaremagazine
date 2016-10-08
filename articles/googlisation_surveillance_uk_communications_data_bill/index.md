---
nid: '3819'
title: 'The Googlisation of Surveillance: The UK Communications Data Bill   '
authors: 'Gary Richmond'
published: '2013-06-07 6:17:11'
tags: 'ripa,security,rsa,encryption'
license: cc-by-nc-sa
section: opinions
main_image: Houses_of_Parliament_-_geograph.org_.uk_-_1126701.jpg
listed: 'true'

---
There is a belief that democracies respect the rights of their citizens. Well, they don't. There is a great deal of cant written about that but even the democratic modern state has become so big, so intrusive and utterly overbearing that its cancerous tentacles have insinuated themselves into every orifice of the body politic. No sooner has one threat to personal and internet freedom receded than another springs up like proverbial dragon's teeth. One of Hecate's children of the night has been brewing for a while and is set to make its way onto the statute book here in the UK. It's called the [Communications Data Bill](http://wiki.openrightsgroup.org/wiki/Communications_Data_Bill/Draft) and with Jimmy Wales threatening to encrypt UK users visits to the website in order to protect their privacy it's clearly a live issue and worth looking at.



# What the Bill is


The bill compels ISPs to retain records of all communications such as e-mail, social media and websites visited. They are constrained to do so for a period of twelve months (after which it will be destroyed, so we're told) and the government, probably the Home secretary, can access that information. And that is not a cost-free law. If a vote in Parliament passes this bill it has been estimated that it will precipitate an increase of £1.8 billion in public expenditure over the next ten years and that is without the inevitable cost to providers for compliance, a cost which they will doubtless pass onto their customers. It has been estimated that the cost of storing all the internet traffic transiting through the UK--about 10 exabytes--would be over $1 billion. That is the cost of purchasing such a system from an American company called Cleversoft. In a supreme irony, they released the software under a commercial and a GPL open source license before eventually withdrawing the latter.In a decentralised system proposed for the UK, costs would be even higher but reducible if communication and data content could be separated. 

That's Part One of the act. Part Two, which is equally disturbing, proposes to give local government bodies access to the data as well. If, as is generally believed, the primary import of the bill is to counteract terrorism then I wonder why there is any necessity to share information with bodies whose remit is dealing largely with roads, schools and rubbish collection. Finally, Part Three of the bill supercedes all previous legislation and incorporates elements of the notorious [RIPA (Regulation of Investigatory Powers Act)](https://en.wikipedia.org/wiki/Regulation_of_Investigatory_Powers_Act_2000). 



# The goldmine of mission creep


=ZOOM=history shows that the state has an incurable tendency to future-proof legislation by way of mission creep=


The government will tell you that the primary object of the bill is, of course, the monitoring and detection of paedophiles and terrorists. No British citizen, including this one, has any problem with that at all. However, experience and history show that the state has an incurable tendency to future-proof legislation by way of mission creep. It simply won't stop there. It never does. Few governments in the history of the world have ever indulged in the wholesale relinquishing of powers. If any British citizen cares to compare the powers of the state in any century prior to this one, the power grab is breathtaking. A British person in the Edwardian era would have been unlikely to encounter an official of the state more than two or three times a year and even then survelliance would have been more diffuse and less joined up because the era was pre-digital. Our post-analogue age has brought staggering benefits but it has also proved to be a goldmine for the modern state. Survelliance has become ubiquitous and seamless precisely because it is digital. It gives powers to notionally democratic states that would make the despots and tyrants of the ancient world green with envy.

The bill will provide rich pickings for government bodies that have little or no connection with matters of national security. For example, HMRC (the merger of customs and taxation, roughly the equivalent of the IRS) has publically admitted that the bill "_provides intelligence to support operational activity leading to arrests, and seizures of money and contraband. It is also adduced in evidence to support criminal prosecutions_". Nothing wrong with that but, as every British person knows, the HMRC has powers that entire governments in previous centuries could only dream of. The notion that they will not use the provisions of the bill to extend their powers to monitor legitimate business people and law abiding citizens is wilful delusion. I cannot stress enough that the powers and the remoresless brutality with which the HMRC pursue British citizens is worthy of the Spanish Inquisition--just without the physical weapons of torture.



# Even encryption is not completely safe


[C.P.Snow's two cultures](https://en.wikipedia.org/wiki/The_Two_Cultures) observation notwithstanding, most MPs in the British Parliament are not trained scientists or technocrats. They are, academically, humanities graduates and mostly therefore scientifically illiterate but they do have advisors in the form of permanent civil servants and _they_ do have understanding of some of the technical issues. Under this proposed bill it looks as if, for the first time, they may be targetting many of the tools that "geeks" and the open source community have been using for years to evade government snooping. Section 28 of the bill seems to intimate that they are now aware of these tools and may include them in a list of bodies required to collect data and that may include access to [Virtual Private Networks](https://en.wikipedia.org/wiki/Virtual_private_network) and [Tor](https://en.wikipedia.org/wiki/Tor_%28anonymity_network%29) node operators. 


=ZOOM=it looks as if "double bagging" is the best way to thwart the bill, For now=


That's worrying, although it should be noted that VPN uses [1024-bit key RSA encryption](https://en.wikipedia.org/wiki/RSA_%28algorithm%29) but [it has been broken in the past](http://www.engadget.com/2010/03/09/1024-bit-rsa-encryption-cracked-by-carefully-starving-cpu-of-ele/) before a cryptographic technique called salting was added to secure it again. It's available to ordinary end users as well as governments so the tussle goes on and as decryption/encryption is hardware intensive, it generates an arms race which ratchets up the costs on all sides and that would make a mockery of the government's projected (but unspecified) cost of £1.8 billion. This is why the goverment included a provision in RIPA to compel people to hand over their digital keys. Quicker and cheaper than hardware-based decryption. It looks as if the "double bagging" (Tor proxies and 256-bit encryption) is the best way to thwart the bill. Well, until quantum computing arrives and resets the cryptographic clock. In the meantime the good folk at [CryptoParty](https://cryptoparty.org/wiki/CryptoParty) seem to agree that there is a real need for basic fundamental education on the elements of this double bagging. If your town or city isn't listed for one of their parties, set one up from the webpage.

Site encryption is not new. It's been around for a while and is not difficult to implement. If you look at the address bar in your browser you will often see that the link has been encrypted. `https` is the giveaway. If you use Gmail you'll see it if you have elected to enable it and within e-mail clients PGP-level encryption has been around for years so when you use both you get double protection. For the really net savvy there is using Tor-like proxies to send your IP address round the houses. For the rest, the great unwashed lumpen proletariat of the internet, the Apple fanboys and the Windoze useful idiots, their online lives will be an open book. Bletchley Park code breakers working on the equivalent of the Enigma machine will not be needed. Unless we all start using the internet equivalent of [a twelve rotor Lorenz (Tunny) machine](https://en.wikipedia.org/wiki/Lorenz_cipher). (In the meantime, I can tell you that the encryption of Wikipedia pages for UK users seems to have started already. I noticed that the last link was encrypted. This may be the beginning of more and more websites encrypting their visitor's traffic--even when the webpage is nothing to do with e-commerce or e-banking)




# Governments lie. No, really, they do. All the time


I don't want to get into a debate about Wikipedia entries, editorial policies or the person of Jimmy Wales. Nothing and no one is perfect. Let's concentrate on the implications of the bill, its implications and how it could be circumvented. The bill will mandate UK ISPs to keep a record of every web page visited and all e-mails sent and received. Why? Yes, you've guessed it. National security. Now, I'm British. I love my country, warts and all, but I detest my government and I never make the mistake of conflating the state with the nation. And I _never_ trust politicians (or religious leaders). Ever. Period. 


=ZOOM=government safeguards are as easily circumvented as a Panzer division going round the Maginot line=


Due to an inconclusive general election in the UK we found ourselves saddled with an unwanted coalition. In the agreement subsequently drawn up there was a promise to "_implement a full programme of measures to reverse the substantial erosion of civil liberties and roll back state intrusion_". We soon discovered (as if we didn't know already) that once politicians have grabbed powers they rarely relinquish them. It's never long before the conditional clauses start creeping in, for that grand statement was soon followed by _"We will end the storage of internet and email records without good reason_". The "good reason" of course turns out, as it nearly always does, to be that trusty old standby, national security. Now, I don't want to repeat that overused cliche about those whose sacrifice liberty for security deserving neither liberty or security but it's true for all that. History is littered with the remains of promises about safeguards, safeguards that were as easily circumvented as a Panzer tank division going round the Maginot line. 


# There's no such thing as total security


So, despite assurances from the then Home Secretary, Jacqui Smith, that there would be no single database, only distributed ones, the bill contains provision for what it calls "request filters" which will facilitate the ab‎ility to do cross-datasbase searches and build a complete online profile of anyone and everyone. Under RIPA, monitoring traffic is not permitted beyond the first '/' after the main url without an interception warrant being granted to the police but in the Communications Data Bill the Home Office will effectively permit self-authorised access beyong that first '/', effectively allowing the government to extend profiling. What will be doing the survellience? Black boxes from the government installed on the ISPs servers--and if they can hack your online activity there will be others who will be trying to hack the black boxes in their turn. (One of the most notorious examples of "the snoopers hacked" was the ["Athens affair"](http://spectrum.ieee.org/telecom/security/the-athens-affair)). 


=ZOOM=The attitude seems to be that hacking is the government's backyard and no one else is allowed to play there=


All of this stands in marked contrast to the government's own [Levenson Inquiry](https://en.wikipedia.org/wiki/Leveson_Inquiry) which was set up to investigate News International's hacking of the mobile accounts of British celebrities (and one notorious murder case). The attitude seems to be that hacking is the government's backyard and no one else is allowed to play there. (I'm not defending News International. What they did was indefensible. There was absolutely no public interest defense there at all.) Doubly ironic, as it was a free press that exposed British MPs fiddling their parliamentary expenses. Genuine intentions aside, the government's track record on IT projects has been characterised by being late, over budget and leaking information like my mother's colender. The contents of the bill do not inspire confidence that it will be any different.

# Careful now!

The danger with obsessing about national security (in no small part a consequence of the Uk's supine adherence to the primacy of American foreign policy in Iraq and Afghanistan) is that it tends to promote [the precautionary principle](https://en.wikipedia.org/wiki/Precautionary_principle), a principle which has been applied to science by politicians, with Luddite consequences. Under this act, powers granted under the precautionary principle will be entrenched, encourage "fishing expeditions" and virtually guaranteed to be abused. That danger led to the unintended irony of the Metropolitan Police Commissioner describing the purpose of such blanket powers as being to "eliminate the innocent". Not a happy choice of words. Freudian slip? And you will not be surprised to know that this principle has been enshrined in EU law as a statutory requirement.

RIPA started out as a limited piece of legislation but was soon applied way beyond its remit. In a similar vein,  British fishermen were prosecuted and jailed for breaching the terms of the EU Commons Fisheries Policy and whatsmore, [with legislation (the Serious Organised Crime Agency, set up to combat drug smugglers) which was designed specifically to target serious crime](http://www.belfasttelegraph.co.uk/opinion/columnists/eric-waugh/how-eu-regulations-have-left-our-fishermen-in-deep-water-14261394.html). Their treatment was brutal, the result of typical, legislative creep, gold plated creep typical of the British government which regularly takes EU rules seriously and enforces them with papal rigour whilst virtually all the other countries ignore the rules with fraudulent contempt. We can expect more of the same under the wise and seemingly benign gaze of this coming bill.


# Freedom is dangerous. State security is very dangerous


I referred throughtout this article to British citizens. That was wishful thinking on my part. It would be truer to say that we are subjects (the result of the unfinished business of the Cromwellian Republic) but this bill would effectively reduce us from a nation of subjects to a nation of suspects. And if you think just because you are an honest person with nothing to hide then perhaps you should heed the ominous word of a certain Cardinal Richelieu: _"If you give me six lines written by the most honest man, I will find something in them to hang him"_.


The UK is one of the most overtaxed, over governed and spied upon nations in the developed world. This bill is further evidence that we are sleepwalking into a truly Big Brother country with legislation you will find only in other fun-loving democracies like Iran, China and Kazakhstan. It is a matter for national shame that we should even be mentioned in the same sentence as such secular and theocratic dictatorships. It's a ratchet effect. Reversing it and prizing control from the state is becoming increasingly difficult. I don't know what the answer is but I have a strong feeling that it must involve more and massive decentralisation of the internet which puts it beyond more government control (but that still leaves us with the weak link--businesses that can be politically pressurised by government (and who also effectively lobby government too). If the reader thinks I'm indulging in uncritcal hyperbole then read the 2009 report of the [Joseph Rowntree Reform Trust](https://www.cl.cam.ac.uk/~rja14/Papers/database-state.pdf) to grasp the extent of database Britain. 

=ZOOM=Today, we are in danger of becoming mere calves to the udder of the state=

That means living with the dangers and uncertainties of a kind of wild west where you have complete freedom--but so does everyone else and when everyone insists upon the free and untrammeled exercise of their rights and you do too, then it can be a recipe for insoluble conflict. On the other hand, you can opt for the easy certainties of consigning your rights and freedoms to the trust of the state and become a mere contingent being, a moral and mental child. Every generation in history has been confronted with this difficult choice. Whenever Charles I and James II offered the British people the certainties of their absolute despotism, they preferred the chaos of relative freedom. They chose to exist in a Hobbesian state of nature and that choice, that willingness to suffer hardships and privations changed the course of British and world history. Today, we are in danger of becoming mere calves to the udder of the state willing to submit ourselves to the it in order to gain a degree of "security" and freedom from basic wants.


#  Paradoxically, freedom is the best form of security

 
Education and personal wealth are the things that scare the living excrement out of governments. When people are truly independent in these matters they have less need for the "security" the state offers in their public and private lives and are therefore less likely to trade off their autonomy. When we exchange freedom from total survellience for the transient mirage of security and order we become "slaves in depths of our own hearts". To slightly paraphrase Alexis de Tocqueville again, our chief business must be to remain our own masters. It's a small step of course but using open source in practice and principle is a big step in the right direction but on its own it will be insufficient to make us entirely safe from the predations of the Communications Data Bill. 

That bill, v‪iewed in the wider context of a ubiquitous government presence in our lives, has the subtle but remorseless effect of "compressing, enervating, extinguishing and stupefying people until they are reduced to a mere flock of timid and industrious animals, of which the government is the shepherd", a government which will be only too happy, again, in the words of de Tocqueville, to relieve and "spare you all the care of thinking and all the trouble of living". The Communication Data Bill is a Westminister two-step but, like Jack Ryan, I don't dance Mr Cameron. And neither should anyone else.

*(NB. I am indebted to Glyn Moody, that tireless champion of open source, for the title of this article. He used it in his submission to a parliamentary committee on the bill)*

# POSTSCRIPT

In the course of finishing this article, the British Deputy Prime Minister, Nick Clegg (Liberal Democrat), in the coalition government, effectively seems to have killed off the bill in May by declaring that  _“What people dub the Snooper’s Charter, that’s not going to happen – certainly with Lib Dems in government_.” So, David Cameron's hands are tied. The only way to get the bill through would be, at a bare minimum, to dissolve the coalition and govern as a minority government. Unlikely. So, there was no sign of the bill in the Queen' speech to Parliament on 8 May. And they've already spent (or wasted, if you prefer) £400 miilion on laying the groundwork for that failed bill.

That seemed to be the end of the affair but the atrocious murder of a British soldier in Woolwich in the same month by Muslim fanatics seems to have revived attempts to get the bill under way again. It is highly contentious to argue that such a bill would have prevented that murder or such attacks and murders in the future. Given that we now know that British Intelligence knew about both suspects and had, allegedly, attempted to recruit at least one of them as spy/informer, it seems moot to assert that the provisions of the bill were needed to do that. In fact, Eric Pickles, a Conservative member of the Coalition government, is on record as saying that the bill would not have prevented the murder. 

It is a truism that hard cases make bad law but hard cases often have legs and this bill might just get up and running again. In the words of Bertholt Brecht, "_beware, the bitch that bore it is in heat again_". Hopefully not.


# STOP PRESS!

*We don't need no stinking Data communications Bill. We've got Prism* (because your privacy is our priority)

As sod's law would have it, just as the ink was drying on this article and it graced the fromt page of FSM, all Hell broke loose when a joint investigation by [The Washington Post (USA)](http://www.washingtonpost.com/investigations/us-intelligence-mining-data-from-nine-us-internet-companies-in-broad-secret-program/2013/06/06/3a0c0da8-cebf-11e2-8845-d970ccb04497_story.html) and [The Guardian (UK)]( exposed the fact that the the American and British governments have been using a covert backdoor programme called [Prism](https://en.wikipedia.org/wiki/PRISM_%28surveillance_program%29) since 2010 to mine data from the major internet companies like Skype, Google, Yahoo, Microsoft and Facebook (and the NSA would like to add Dropbox too). This included  email, video and voice chat, videos, photos, voice over IP conversations, file transfers, login notifications and social networking details. 

Prism is controlled and implemented by the American NSA (National Security Agency) and the British GCHQ (the inheritor of Bletchely Park which cracked the German Enigma codes) has definitely been using it as the basis for nearly two hundred intelligence reports. I say "back door" but The Guardian has reported that the forty one-page Powerpoint document indicated that this covert operation was carried out with the agreement of those listed companies. Wow! 

As you might expect, a media bush fire has raged since this story broke. And, as you might also expect, the named companies have been scrambling to limit damage, deny or obfuscate. Apple claims that they have never heard of Prism. That's not all. The exchange of this data between the NSA and GCHQ bypassed the requirement to go through [mutual legal assistance treaties (MLAT)](https://en.wikipedia.org/wiki/Mutual_legal_assistance_treaty). To date the USA has concluded treaties with no less that sixty two countries. I have not been able to discover how many treaties the UK has. 

But hey, if your American, don't sweat it. Obama has assured the great American public that Prism is not being used on them. Nope, it's just for those damned, pesky foreigners, like us Brits. (Yep, that's the real special relationship British politicians and the Foreign Office keep on about.) And, of course, the US government wouldn't spy on its own citizens. Watergate anyone? 

Those are the bald facts we have as the story unfolds. Doubtless, there will be much more to come. In the meantime, in the light of this revelation, you have to wonder why the British government bothered to spend that £400 million laying the ground for the Data Communications Bill--even if it manages to revive the ailing beast.You might well also want to ask why the BBC News thought the story so unimportant that it was eclipsed in the pecking order by the critically important story of the Duke of Edinburgh's hospitalization for exploratory surgery. Nice to see the BBc getting its priorities right. 