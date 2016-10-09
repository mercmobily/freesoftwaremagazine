---
nid: '1600'
title: 'Premature synchronicity'
authors: 'Alan Berg'
published: '2006-06-11 16:37:49'
license: verbatim_only
section: opinions
listed: 'true'

---
I have noticed in life when you have issues that often a solution appears from the same environment at the same moment. Synchronicity challenges you to move to the next level of efficiency and quality. Problems force you to reroute and grow in new ways and directions. Once the fields have burnt the wheat may grow. Of course I would love to be able to pick my problems, hum, I mean potential solutions and have them pitched at only a slightly higher level than that of the background noise. This week I was lucky to find myself in such a mild training situation. Not a problem, but rather a lack of a communication method. As a developer in my professional life, sometimes, admittedly rarely you have to fit square shaped software into a round shaped organization.

I am involved at the fringes in helping to deploy a dynamically growing almost free software product. The product is defended by an educational license that has an open, positive ecosphere. The code is being developed by really nice, warm and intelligent people at a velocity that would have been frowned on by software engineers ten years ago. The velocity of code change is high compared with the normal definition of a stable branch. Worst still is that there is a real need for the product now, this minute, leaving me with a feeling of sitting on a code base equivalent of a roller coaster with explosives attached to the wheels. Luckily, beyond any reasonable doubt, the developers know what they are doing and the roller coaster is more like a tank and the explosives fire crackers, but this will not always be the case for free software deployments. Quality can vary tremendously.

Being a deeply experienced professional (I would say that I am writing the article!), I don't like taking unnecessary risks. However, the difference in knowledge domain between the various decision making types can cause difficulty in overriding deployment cycle expectations. This is a truism for any organization above a certain critical mass. Yes, I realize that the functional requirements are fulfilled. However, you know that bugs will exist in some products at some point. You know until the equivalent of service pack 1 that the pain factor (or should I say fear factor)--especially for the help desk people--may be loud and brash.

So how would you communicate this historically repeated obviousness? Scratching my head and my virtual toes, I decided to change the conversation. Not that this kind of effort is required in this particular case, but maybe in the future... How about using metrics with units not associated with the size of the Universe or the numbers of atoms so in? How about throwing real numbers at people and see if they would react objectively? Very lucky for me, myself and I, I had just read a book about code quality. You may read the review of it soon. The book is very detailed and points to excellent tools. Unbelievable, software engineering has advanced since my computation engineering education seventeen years ago! Yes the immortal youth is now old and weather worn to a hardened core. I found within minutes the brilliant, elegant, and (most important for me) simple to use tool [sloccount](http://www.dwheeler.com/sloccount/),and parsed the source code for various branches of the code's prehistory.

So there was a base of 40,000 lines for a specific component of the 400,000 line product. Aha, so 900 extra classes were added in the last QA cycle. Now we can communicate! Applying [sloc compare](http://mindx.josefspillner.de/kde/stats/) I can send intuitively obvious pretty pictures to the people that count. The lesson for me as a free software biased engineer is that although premature optimization of code is the root of all evil, premature optimization of communication is a valid approach to organizational bliss. The next time I need to inform deployment decision makers I will send a picture!
