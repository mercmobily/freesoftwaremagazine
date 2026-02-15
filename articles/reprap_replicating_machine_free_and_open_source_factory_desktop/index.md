---
nid: '3226'
title: 'RepRap, the replicating machine: The Free and Open Source Factory on the Desktop?'
authors: 'Gary Richmond'
published: '2009-11-02 18:21:33'
tags: 'gpl,open-hardware'
license: verbatim_only
section: end_users
listed: 'true'

---
[RepRap](http://reprap.org/bin/view/Main/WebHome) (replicating Rapid-prototyper) is a 3D printer and it is impeccably free and open source under both the GPL and the Creative Commons Licence. It's early days but the implications and the promise are potentially enormous in their own right -- but the fact that it is resolutely _not_ proprietary is what caught my attention.

<!--break-->

## Taking it back from the man?

=ZOOM=it's good to report that private citizens are doing their own tool-shed science and doing it under the protective umbrella of the GPL=

I wrote an article some time time ago about applying the principles of free software and the rules and spirit of the GPL to [DIY biology](/articles/extending_free_software_paradigm_diy_biology/). At a time when big science is increasingly funded by corporations and governments it was good to report that private citizens were doing their own tool-shed science and doing it under the protective umbrella of the GPL. Science that is not in thrall to such bodies or their restrictive patents and claims to intellectual property rights is a good thing both in principle and practice.

Why? Because, as Douglas Rushkoff points out in [Life Inc: How the World Became a Corporation and How to take it Back](http://www.rushkoff.com/) modern corporations originated in the Renaissance, invented by the aristocracy to control and profit from the activities of the merchant class. The rest, as they say, is history. In Rushkoff's own words, the corporations effectively outlawed the exchange of value between individuals. There have been many movements to oppose this centralised, globalised control (which, it must be said in fairness, has brought benefits as well as disasters) but in a digital age the free software movement has been one of the most important. So, what exactly is RepRap?

Well, CAD/CAM is not exactly a new concept. Commercial versions have been around for some time; what is different with RepRap is using free software and using it to actually _make_ things. Better still, it is a self-replicating machine and it is this which distinguishes it from commercial rivals--which have a vested interest in being "closed source". Cost differences are a huge factor too: the average cost for a commercial version is about £28,000. The cost of the RepRap is, well, zero. The only cost is about £395 for the materials needed to construct the machines (the bulk of which is accounted for by the printed circuit board and electronics, coming in at £110). There are no hidden DRM-style restrictions. 

=ZOOM=A machine which can make improved versions of itself is the perfect realisation of digital evolution by means of free software in action=

You can make as many machines as you wish and give them to anyone else and they in turn can make more copies. It's positively viral. If even £395 is too much there is absolutely nothing to stop individuals clubbing together to buy the first machine, construct it and replicate others to give away which in turn......well, you get the picture. Not only that, you can use RepRap to make a more advanced model of itself. A machine which can make improved versions of itself is the perfect realisation of digital evolution by means of free software in action.

## But let's keep it real

However, before I get carried off on a wave of uncritical euphoria it is important to qualify the claims about self replication. RepRap makes the _skeleton_ of the machine but _not_ the electronic components and of course other raw materials must be sourced too. By the same token, RepRap's strapline is "Wealth without Money". Superficially, this is true but those raw materials have to be sourced--and paid for too. A truly self replicating machine, however impeccably free and open, is a long way off and if fully realised would have huge implications just as Napster had for file sharing. I'll grant you RepRap looks a bit Back to the Future, but don't let that put you off.

=IMAGE=A_RepRap_Machine._Simples.jpg=Figure 1: A RepRap Machine. Simples=

And if you want to see it in action just type RepRap into the YouTube search bar. [Thingiverse](http://www.thingiverse.com/tag:reprap) has lots of RepRap-tagged pictures. It won't be making complex engine components anytime soon. You'll have to settle for such mundanities as plastic coathooks, cups and glasses and some primitive electronic circuitry; keep in mind that the Wright Brothers started with a flying stringbag that flew for mere seconds. All journeys begin with the first step.

ReRap is the brainchild of Adrian Bowyer of Bath University in England and from the outset he has done everything under the banner of free and open standards. The theoretical concept though is not new, as Bowyer himself admits: John Von Neumann proposed a "Universal Constructor", a machine capable of reproducing itself. Bowyer explained his thinking behind it in [his seminal paper in 2004](http://www.reprap.org/bin/view/Main/BackgroundPage). It is a bold and imaginative document and well worth reading. It has drawn praise from people as diverse as Sir James Dyson (inventor of the bagless vacuum cleaner) and Chris DiBona (Google).

The software core of RepRap is a zip file hosted on [Sourceforge](http://sourceforge.net/projects/reprap/files/Host%20Software/). There is one specifically for GNU/Linux (and Bowyer expresses a preference for Ubuntu, as his screenshots illustrate) and the major requirement is to have Java version 1.5 or higher installed. In keeping with the spirit of the project, Sun's Java SDK is now free and open. Installing the software is just a matter of downloading the zip file, extracting it to the directory of choice and running the script. Continuing the Java theme, RepRap uses the free and open source [Art of illusion (AOl)](http://www.artofillusion.org/) 3D modeling system as its front end.  
 
The RepRap project has been designed with both the developed and the developing world in mind. In the former people can be freed from the grip of corporations and in the latter it provides a potential means for isolated communities to do small scale manufacturing. It is worth noting that alternatives to using Java software to control a RepRap machine, called [Skeinforge](http://www.skeinforge.com/) and [ReplicatorG](http://replicat.org/), are ideally suited to the command line and run very well on the [OLPC](http://laptop.org/en/), a computer specifically designed for the developing and third world. Potentially, a perfect synergy with everything running off free software. The dream scenario would be to power all of this with off-grid electricity from solar panels which would allow autonomous small-scale manufacturing in isolated areas in both the developed and third world. 

## The GPL and nothing but the GPL

The real challenge for RepRap though will be not just to make more complex stuff with significant economic impact but in interfacing to the potential legal quagmire of free hardware. [Even Richard Stallman thinks it raises relatively more complex issues](http://www.linuxtoday.com:80/news_story.php3?ltsn=1999-06-22-005-05-NW-LF), such as firmware, circuit designs, copyleft, patents and free interface specifications. This very website has already broached the possibilities of open hardware in [articles by Alicia Perez](http://www.freesoftwaremagazine.com/articles/making_open_hardware_possible) and [Terry Hancock](http://www.freesoftwaremagazine.com/books/mihrfc/impossible_thing_5_open_hardware). The latter article is optimistic and even cites an open source car project, something which Bruce Perens specifically said was way over the horizon in [a spat with the RepRap developers](http://technocrat.net/d/2008/6/5/42592/). (Wikipedia has a [good article on open hardware](http://en.wikipedia.org/wiki/Open_source_hardware) with links.) 		

=ZOOM=Here, the GPL is the law. It ensures that we do not fall into the trap of the "tragedy of the commons"=

There has been extensive press coverage of RepRap; the press being the press there has been a tendency to hype the story somewhat but it _is_ early days. Rome wasn't built in a day and a portable factory won't be either. Nothing made by RepRap so far would win a Design Council award but every journey has to start with the first step. Let's come back in five or ten years and see how far it's travelled.

By far the most important fact about the whole project is that it is not proprietary and if the original developers stumble the project is open to everyone because no one owns it--except the GPL. A British law Lord once said, "be you ever so high the law is above you". Here, the GPL is the law. It ensures that we do not fall into the trap of the "tragedy of the commons". Quite the contrary: because no one owns it, it belongs to anyone.