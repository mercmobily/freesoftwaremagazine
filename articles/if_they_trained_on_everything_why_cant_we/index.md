---
title: 'Corporations trained AI on everything they could, so why can''t we?'
authors: 'Tony Mobily'
published: '2026-02-14 10:00:00'
tags: 'ai,free-software,training-data,copyright,open-models'
layout: article
license: verbatim_only
section: opinions
main_image: main.png
listed: 'true'
---
AI is everywhere. It is in search, in email, in support systems, in code editors, in photo tools, in your phone and, yes, right here in this very article. We can still pretend we are “evaluating” AI from the outside, but that ship has sailed. Most of us already use it every day, and a huge number of people depend on it for work.

The real scandal is not that AI exists. The real scandal is the double standard around how it was built. Lawsuits, leaked material, and investigative reporting strongly suggest that companies now shipping dominant models ingested massive amounts of text before the legal dust settled, and now everyone else is told to stay in line. So here is the uncomfortable question this article asks from a free software point of view: if they did it, why can’t we do it too, openly, accountably, and better?

<!--break-->

# The code part is not the big mystery

There is a myth I keep seeing: that AI magic is hidden in some impossibly complex code, known only to a priesthood of hyperspecialized engineers.

That is not really true.

The modern wave did not start from zero, but one paper became the key inflection point everyone now quotes: Google's 2017 transformer paper, "Attention Is All You Need". It was a genuine breakthrough, but if you look under the hood the core ideas are not black magic. Tokens go in. Vectors get transformed. Attention weights calculate relevance. Layers stack. Gradients flow backward. Repeat this process on absurd amounts of data and hardware, and you get a model that can predict the next token very well.

That is basically it.

Yes, there are important engineering details: distributed training, optimization tricks, quantization, inference kernels, alignment layers, routing, and evaluation pipelines. These matter. But once this engineering is in place, the hardest part is no longer just writing code.

[[zoom:The core math is hard work, not divine revelation]]

An experienced team with enough compute can implement a strong model pipeline today using published techniques and open tooling. That gets you to a model that runs. It does not automatically get you to a model that is useful.

After the programming phase comes the tuning phase: the long, messy, expensive last mile where you keep training, testing, correcting, and retraining until the model behaves well in real situations. This is where teams shape tone, reduce obvious mistakes, improve reliability, and make the model actually helpful rather than just impressive in a demo.

So if code is not the main bottleneck, what is?

# The difficult part is the art

The hard part is making models do something meaningful for humans.

I call it art because it combines things that are not cleanly reducible to one discipline:

* selecting and cleaning training data so quality does not collapse
* creating labeling guidelines that thousands of annotators can apply consistently
* generating preference data so the model learns what a good answer looks like
* building evaluation suites that measure usefulness, not just benchmark scores
* red-teaming prompts to find failure modes before users find them
* writing behavior and safety policies the model is expected to follow
* repeatedly tuning the model from real usage and error reports

If you have used enough assistants, you know exactly what I mean. Two tools built on similar underlying models can feel completely different in practice: one helpful, one chaotic. One humble and precise, one confident and wrong.

The code got them to "it runs". The art gets them to "it helps".

# The crux: training data

Now we get to the uncomfortable center of this entire debate.

Training data.

No serious AI company is fully transparent about everything that went in. You might see broad categories, licensing statements, safety language, or partial disclosures. But complete, auditable, item-by-item provenance at scale? Almost never.

And this is where the contradiction becomes impossible to ignore.

On one side, developers are told: "You cannot train on copyrighted material without permission." On the other side, we have recurring reports and legal allegations that major players used gigantic datasets containing copyrighted works anyway, including [newly unredacted court documents reported by WIRED about internal Meta discussions around torrenting LibGen data](https://www.wired.com/story/new-documents-unredacted-meta-copyright-ai-lawsuit/).

Whether every report is perfectly accurate in every detail is almost secondary at this point. The signal is clear: enormous datasets were assembled fast, aggressively, and often in legal gray zones.

[[zoom:Everybody wants to enforce strict rules after crossing the finish line]]

That creates a structural unfairness. Big companies train first, then everyone else gets lectured on compliance.

# Space and bandwidth are cheap. Law is not.

From a pure systems perspective, ingesting huge corpora is no longer the impossible task it used to be.

Storage is cheap. Bandwidth is cheap. Distributed compute is accessible. Open source training stacks are improving quickly.

Technically, large-scale training is becoming more feasible every year.

Legally, it remains explosive.

This mismatch is what drives frustration. The technology says "go"; the legal framework says "stop". Enforcement appears selective.

And yes, some of this activity is illegal, depending on jurisdiction and dataset composition. We should not pretend otherwise.

But we should also not pretend that legality has been applied consistently across actors with radically different resources.

# The absurd double standard

Here is the absurdity in one sentence:

Companies that already built dominant AI systems likely benefited from broad ingestion of copyrighted material, yet independent developers and free software communities are expected to compete under constraints those companies did not fully respect.

If that sounds bitter, it is because it is.

I am not advocating chaos. I am pointing at the policy paradox:

* First generation wins by moving fast in legal ambiguity.
* Second generation is told to move slowly in strict compliance.
* Market concentration hardens.

This is not a recipe for a healthy ecosystem. It is a recipe for permanent incumbency.

# First nirvana: a truly open text archive

If we want a credible free software path for AI, we need a legal and technical commons for training.

The first nirvana would be a fully readable, machine-friendly, open archive of books and long-form texts at massive scale, Project Gutenberg style, in simple text formats.

Yes, I am deliberately pushing the boundary of what that implies in practice. Today, many people privately use shadow libraries while publicly pretending this is not happening. That hypocrisy helps nobody.

What we need is not silence. We need policy, and compensation models that acknowledge reality and make access governable.

Imagine an archive where rights status and licensing terms are explicit, machine readability is first-class, and attribution records are preserved.

That would transform the conversation from piracy panic to infrastructure design.

# Second nirvana: distributed training hives

The second nirvana is decentralized training participation.

Imagine a distributed AI network where individuals and organizations donate compute, bandwidth, and approved data slices into a federated training ecosystem for open models.

Not one company. Not one opaque pipeline. Not one black box checkpoint dropped from the sky. Instead, a hive.

Could this be abused? Absolutely. Could it be inefficient in early phases? Of course. Would governance be hard? Extremely.

But it would align with free software instincts: shared ownership, transparent protocols, reproducible processes, and distributed control centers.

[[textbox:What a realistic distributed training hive would need]]
1. Signed dataset manifests with provenance metadata.  
1. Verifiable training jobs and contribution receipts.  
1. Federated evaluation benchmarks, not one central score.  
1. Governance bodies with technical and legal representation.  
1. Funding for long-term maintenance, not only hype-stage launches.
[[/textbox]]

This is not impossible. It is mainly organizationally hard.

# Illegal? Unethical? Destructive? We do not fully know yet

This is where I want to be intellectually honest. Is broad ingestion of copyrighted material for training illegal in all cases? Jurisdictions differ. Is it unethical? Depends on your philosophy of authorship, consent, market power, and public benefit. Is it destructive? In some sectors it may be. In others it may increase output and lower barriers.

The truth is: we are in the middle of the transition, not at the end. Certainty is often performance. What is not uncertain is usage. Most of us use AI tools daily in one form or another. Many businesses now depend on them. Students depend on them. Writers, developers, designers, analysts, support teams, everyone is already adapting.

So the "just stop AI" answer is not serious policy. It is nostalgia in policy clothing.

# The question I cannot avoid

Big corporations used copyrighted material to train their AI systems. _If they did it, why not us?_

I am not asking this as a call to lawlessness. I am asking this as a demand for symmetry. If large-scale data ingestion is the historical reality behind modern AI, then the answer cannot be:

"It was fine when incumbents did it under opacity, but forbidden when communities do it under transparency."

That is not ethics. That is market protection. Free software should fight for a better framework. Without this, we are left with a future where AI is "everywhere" but meaningful control remains concentrated.

# Conclusion

AI is already part of our technical and creative environment. Pretending otherwise is a waste of time.

The code is not the deepest moat anymore. The art of productizing AI is hard, yes, but tractable. The real battlefield is data access, legality, legitimacy, and governance. Right now, the ecosystem runs on contradiction: enormous systems likely built from broad ingestion, then strict moral/legal gatekeeping for everyone else.

If we accept that contradiction, free software loses by design. So yes, I will keep asking the uncomfortable question: _If they did it, why not us?_

And I will keep adding the second half:

If we do it, let us do it better - transparently, collaboratively, and with rules that don't protect just the winners.
