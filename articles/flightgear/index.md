---
nid: '1502'
title: 'Flying high with FlightGear'
authors: 'Alan Berg'
published: '2006-11-08 8:00:00'
issue: issue_14
license: cc-by
section: end_users
listed: 'true'

---
FlightGear is a top notch and highly accurate free software flight simulator. The software has no kill or be killed situations. Don’t expect arcade like dogfights and precision bombing. Such features are not included. However, with a large range of planes to choose from and with most of the world covered by accurate maps expect a realistic experience as near to a holodeck as software only can allow.

FlightGear is platform agnostic, the simulator has been compiled and run under Linux, Windows, BSDUNIX, SGIIRIX, Sun-OS, and Macintosh. A flying experience makes a pleasant change of pace for me. During previous reviews of [Bzflags](http://www.freesoftwaremagazine.com/articles/bzflags) and the battle for [Wesnoth](http://www.freesoftwaremagazine.com/articles/wesnoth_interview_player): I have been beaten bruised, bashed, shot at and exploded hundreds of times by my irritatingly accurate elder son Nelson. Let’s raise the level of complexity and see who’s the better flyer. If you can’t beat’em then change the rules I say!


=ZOOM=Expect a realistic experience as near to a holodeck as software only can allow=


# Before your first attempts at flying

Preparation is everything. Preparation is important before any major journey as a newbie pilot. Before running FlightGear for the first time there are a couple of potential issues to note. The first is that the basic download is rather large at 148MB (version 0.9.10). This is made worse still if later you wish to have all the models for the airplanes, flying saucers and maps of the world. For example the map of England is a tasty 58MB in size. For broadband connections this isn’t a real issue, but for road warriors and countryside dwellers this may set a high barrier for first use. A well thought out alternative approach is to buy the [three DVD collection](http://cdrom.flightgear.org/) that comes with source code and a highly extensive range of maps and models. This is a good kickstart for the hours, days, and weeks of pleasure to come. The next issue to note is that flight simulators in general are graphics-hungry beasts. FlightGear uses the OpenGL API and concentrates on realism and not an over abundance of irrelevant wow factors. A quality experience is not only dependent on the graphics card itself, but also on the drivers that allow the cards to run at their optimum. Running FlightGear with my old but trusty ATI 9000 card was a little shuddery until I updated to the newest catalyst drivers. After reinstallation I had a responsive ride. That is apart from the sheer stupidity of my many avoidable (by a trained monkey) crashes. And yes I did my best to ignore the nervous laughter of Nelson as I slam dunked my stress ball onto the table for the fifteenth time.

Personally, I found using the mouse with the keyboard to pilot an airplane a lot less pleasurable than with a joystick. If you are like me and slowly get addicted to detailed realism then at some point you should spoil yourself with a yoke and associated pedals. Not that it would improve my flying. But hey, “nil desperandum”. I found the [short reference](http://www.flightgear.org/Docs/FGShortRef.html) an excellent aid, which I promptly printed and stuck on a notice board next to my computer.


=ZOOM=This is a good kick start for the hours, days, and weeks of pleasure to come=


# Beginnings

Okay, so I downloaded and installed the minimum package. Loaded in a Jumbo jet and waited for inspiration to hit me. Ten minutes later I realized this was no arcade game. Where was god mode? Where was the power up on engine four? You actually have to understand a little theory before beginning. I decided next to read the shortest tutorial I could find. With one click I had hit [pay dirt](http://www.4p8.com/eric.brasseur/flight_simulator_tutorial.html). So, I need an easy to manipulate first plane to fly. The Cessna 172p Skyhawk (1981 model) looked good, and the San Francisco airport (default) and a clear noon day sky gave me enough elbow room to epileptically bounce my first attempts into the sky.

There are two ways to run FlightGear, the first is through the command line and the second the more user friendly method is to use a graphical wizard called fgrun. Fgrun can in principle enable all the features that are available through the command line; therefore I chose the wizard to run the simulator. After choosing the flight options mentioned previously (partially shown in figure 1), I was off and running. Literally, you find yourself on the runway with an airplane moving forward. A moment of personal crisis and potential washing expenses: I spilled some tea then revved the engine, a cheap escape. I didn’t manage to stay on the runway, but I did finally manage to get the so called easy to fly plane in the air. Having read the tutorial, I realized to rev the engine up I needed to press “page up”. I know you don’t believe this incredible fact, so I have included figure 2. Yippee, my first flight. Pressing ‘v’ allows you to easily change views. This gives you a good idea where you are in orientation relative to the ground. I found the helicopters perspective the most intuitively descriptive. The next important milestone was a professional landing. After a number of tries I realized that unless you like simulated broken teeth then you need to go back to the tutorial and read the relevant procedures. So “shift + b” toggles the break and your speed needs to be around 172 km/hour at height X. And, yes, the guidelines really do work. I landed well... perhaps not where one would normally land, but pretty near. Scared a few trees and bounced up and down like jelly on a washing machine. But that’s our secret... right?


=ZOOM=A moment of personal crisis and potential washing expenses: I spilled some tea then revved the engine=


=IMAGE=f1.jpg=Figure 1: Now shall I fly the jumbo or the UFO?=


=IMAGE=f2.jpg=Figure 2: Alan makes his first flight, sort of=

After landing I was really quite motivated and practiced navigation, banking, loop the loop and all the other fun things such an easy to pilot airplane lets you do. After a couple of flight hours I had built up most of the basic skills that would be required in a real life situation. It took me ten minutes from scratch to show Nelson how to take off and land. He was really pleased, especially with the A10 looping through 3D clouds. I have the feeling that if ever I meet Nelson in battle with a TIE fighter I won’t last long. I’ve just sharpened his skills up considerably. Yes, very annoying indeed.


=ZOOM=I had built up most of the basic skills that would be required in a real life situation=


# Mapping reality

Now that I was addicted, I decided to try and expand on the range of features used. Installing extra airplanes is as simple as it will ever get. You download a tar gunzip archive file and expand the archive into the home directory of FlightGear under the subdirectory `\data\Aircraft`. The next time you run the wizard you will see the new model as an extra choice. I particularly liked the concord, X15 and YF-23 models. Though I must admit Santa Claus (figure 3) did come in a close second. There are tutorials on building your own models. So if you want to help space tourism with your own special design, why not try here?


=IMAGE=f3.jpg=Figure 3: FlightGear is known for its 100% realism. Santa Claus is coming to town=

Another nice feature of the simulator is the ability to place other fliers on the same map and potentially interact. Working direct from behind my cable modem at home I set the following parameters in the fsgun wizard for multiplayer mode:


=CODE_START=

Multiplayer tick box: (ticked)
Callsign: What ever you want.
Hostname: mpserver01.flightgear.org
in:10
out:5000

=CODE_END=

And I was in. Extra points were won by the developers of the program. A Google Maps based [service](http://mpmap01.flightgear.org/) showed me where I was in respect to the rest of the players (as shown in figure 4).


=IMAGE=f4.jpg=Figure 4: Callsign AlanB on a specially written Google maps. Notice how I appear to have crashed—15 feet=


<!--pagebreak-->


When I get the necessary time with Nelson we will practice formation flying and chicken against each other.


# The inevitable interviews

After explaining the very minimum of features I thought I would call some expert and not so expert witnesses in defense of this great product.


## Expert witness X

_Flight Simulator Engineer for almost twenty years—Allen Cook_

**AB: How long have you been a flight simulator engineer and for which companies have you worked for?**

AC: I have worked for 18.5 years for Link-Miles/Thomson/Thales Training and Simulation.

**AB: What do you think of FlightGear?**

AC: Reading the blurb, many of the techniques employed are the same as used for real flight simulators. If it does all it says with some degree of realism and accuracy, then it could provide useful training for would be pilots or navigators.

**AB: How does it all stack up against a real ultra expensive flight simulator?**

AC: These “desktop” type simulators are generally only used for procedural training or aircraft familiarisation, instrument and navigational training. The original Link simulator provided this kind of training for a single aircraft type with the exception of an out the window visual, but with some basic motion and force feedback. The patent for the original Link Aviation trainer was filed in April 1929. In order for the training to be “positive”, however, there needs to be comprehensive objective tests for each aircraft type and variant, coupled with subjective testing by a current qualified and experienced pilot. These tests need to be frequently updated and monitored in order to keep pace with navigational data bases and aircraft updates. The level of training proficiency gained from these types of devices can then augment higher level simulation or real aircraft training. If instruments or navigational or aircraft handling were inaccurate or misleading, this could provide “negative training”, which for obvious reasons would be highly undesirable for would be real-life pilots. However, as an educational or entertainment tool, it should provide a good taster of what it really takes to fly a real aircraft.

**AB: Can anything in FlightGear be improved?**

AC: Every single aspect of a simulator can always be improved. However, as mentioned above, the most important thing is to provide positive training.


## Witness Y

_A ten-year-old man flying for the first time—Nelson Berg_

**AB: So how does it feel to be a pilot?**

NB: A bit scary because you don’t know 100% what the plane is going to do.

**AB: Which airplane did you enjoy flying the most?**

NB: The A10 with the 3D clouds.

**AB: Any suggestions for improving the game?**

NB: I’d like a real arcade mode.

**AB: How hard was it to land?**

NB: Very hard.

**AB: Will you fly again?**

NB: Yes, I look forward to flying again?

**AB: Why?**

NB: Because it feels like you are part of the game. Sorry simulation.


# Conclusions

So, there you have it, from an avid ten-year-old game player. FlightGear, though it doesn’t fall under the category instantaneous gratification, does grab the attention and keeps it. Better still from a parental point of view, you have an opportunity to teach your kids the basics of flying via “positive training”. Of course, it goes without saying that you need a bit of patience yourself and some pre work. But where else can you fly a realistic model of concord for the price of electricity and some good old fashioned humiliation.


# Acknowledgements

Allen Cook currently resides in Perth, Australia, where he is a consultant hungry for new opportunities and challenges.


# Bibliography

[An excellent first tutorial](http://www.4p8.com/eric.brasseur/flight_simulator_tutorial.html)

[Atlas map server](http://atlas.sourceforge.net/)

[FlightGear home](http://www.flightgear.org)

[FlightGear WIKI](http://www.seedwiki.com/wiki/flight_gear/flight_gear.cfm)

[OpenGL](http://www.opengl.org)


