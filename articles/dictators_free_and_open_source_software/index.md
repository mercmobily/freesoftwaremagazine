---
nid: '2939'
title: 'Dictators in free and open source software'
authors: 'Tony Mobily'
published: '2008-07-22 14:29:59'
tags: 'software,development,bdfl'
license: verbatim_only
section: opinions
listed: 'true'

---
Some people seem to challenge the idea that most (if not all) free software projects need a benevolent dictator--that is, somebody who has the last say on every decision. They are quick to point out Linus Torvalds' past "mistakes" (see the speech marks): using BitKeeper to manage the kernel, not allowing "pluggable" schedulers in Linux, etc. As a software developer, I feel that a dictator is absolutely necessary in every free software project. Here is why.

# Respect earned by the BDFL

The first reason is probably the most important one: respect. The benevolent dictator for life (BDFL from now on) needs to make decisions -- in fact, a lot of decisions -- and at the same time maintain other people's respect. Decisions are not always popular, and are not always right (especially in other people's eyes). However, the BDFL needs to have the personal and technical charisma in order to keep the team's respect. Nobody would ever dream of forking Linux, because very few Linux developers would abandon Linus and follow the forker. This is true for most projects, and that's why forking is so rare. It must be said, however, that sometimes the BDFL does manages to alienate the development team so much that somebody ends up forking and bringing over most of the original developers. At that point, normally a new project is created (with a new name and inheriting the codebase) and the old one disappears after a while. This is a _good_ thing: the DBFL is there because the crowd _wants_ him or her to be there. It's a dictatorship, but it's an odd one: anybody can walk away at any point, create a new state, or join another one.

# Knowledge

The BDFL knows the project inside-out. He or she is the person who will know if a decision will break the project's foundations -- and who knows how to solve a problem keeping the structure as solid as it needs to be. I see this with Drigg (a popular project I maintain) pretty much every week: I realise that my deep knowledge of the project protects it from bad patches and bad feature requests. A BDFL is crucial -- and he or she _needs_ to be the person in charge of making decisions. In commercial software, a dummy-like manager (who doesn't know how to code) will sometimes manage to impose some features or modifications that will necessarily break the software's structure. This happened to me as well -- and I think it happened to most people who worked on proprietary, client-based software.

# Speed

Free software development is often really fast. Sometimes design and technical decisions need to be made very quickly. While the BDFL can ask for opinions, he or she will be in charge of the final decision. The saying "A Camel is a horse designed by committee" is probably a little too harsh --it obviously depends on the committee -- but it's generally (and sadly) true. Decisions need to be made, and looking at some project's mailing lists, you really wish people stopped discussing things, and somebody said "enough, we'll do it this way".

# Workloads

Making feature requests is a fundamental right. (Please note that demanding features isn't.) Team members can talk about those feature requests and discuss how to implement them. However, code is better. If a user makes a request, and one of the other coders thinks it's a priority, much can be discussed forever, but normally "something must be coded if you want something to happen". A team member will gain respect and credibility if he or she comes up with a patch, _and_ the patch doesn't break the project's structure. This means that contributing team members will take on things they care the most about, and will need to code those things in such a way that the BDFL won't reject them. This helps both the code and people's motivations. And other team members' code needs to be _good_. Which brings us to the next point...

# Sending good patches, and consistency

If a developer knows that his or her patches will be reviewed by somebody who knows the project intimately, and will look for problems, then his or her patches will be better.
If instead of the BDFL there's a committee who will decide on each patch by voting, bad patches will end up in the codebase -- patches that will cripple the project's structure, or will have some obscure, hard-to-debug side effects. This can also happen if the BDFL is behaving like a trusting and caring father rather than like a BDFL. And yes, I have accepted patches a little too quickly sometimes, and found myself in this very situation.

# Keeping things non-political

A committee will bring politics to the projects. This equation is often true: Politics + Technical project = Disaster. If a committee decides on patches etc., a bunch of members might end up teaming up to get things through for reasons that are not purely technical (see: returned favours, asked favours, and so on). It's true that the BDFL might make political decisions, but they will always focus on the political decisions of one person -- the BDFL himself or herself -- who will know that any bad technical decision will cost the project a lot of development efforts.

# To conclude...

I am not a big fan of committees. I believe that a merit-based oligarchy with a BDFL is much more functional, and gets things done much more quickly. I have managed a free software project for nearly a year, and have experienced -- although in a much smaller scale -- what many free software maintainers face every day. If you don't agree with these ideas, you can try forking a project and managing it through a committee. But, you aree likely to end up with a dromedary rather than a horse.

Feel free to prove me wrong.