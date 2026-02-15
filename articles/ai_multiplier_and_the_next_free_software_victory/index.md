---
title: 'AI is not killing free software. It is forcing us to level up'
authors: 'Tony Mobily'
tags: 'ai,free-software,open-source,jekyll,maintenance'
layout: article
license: verbatim_only
section: opinions
main_image: main.png
listed: 'true'
---
Free Software Magazine is alive right now because we had AI at hand when we needed it. We moved from an old proprietary publishing system to Jekyll in less than a day -- yes,  less than a day! If we had done the same move a few years ago, it would have taken weeks of brittle scripting, manual checks, and the usual migration pain that drains all energy from a project. I am not saying AI magically did it all for us. I am saying it changed the economics of effort so dramatically that a move we kept postponing suddenly became feasible.

<!--break-->

# The migration that should have taken weeks

Let me start from the concrete case, because otherwise this discussion becomes abstract very quickly.

For a long time, FSM carried a lot of history. It was valuable, but it was also technical debt. In the very first version of the web site, back in 2004, we asked authors to write articles in... XML! (Markdown was being creatd _that year_). We developed legacy formats, old conventions, content transforms that had grown layer by layer, and pieces of workflow that depended on tools we no longer wanted to depend on. (Drupal is in this mix too...). The very last iteration was with Ryver, which was an alternative to Jekyll. Yes, I personally reinvented the wheel there, but it was for good reason: at the time, _decades_ ago, Jekyll didn't perform well enough for a site as big as FSM. Ryver, on the other hand, would rendere the whole thing in seconds. (Not that it matters, but Ryver _still_ outperforms Jekyll by a lot). 

When we decided to move to revive Free Software Magazine, Ryver wouldn't even run. I looked into Jekyll and they had massive performance improvements. It also proved to be a well maintained piece of software. So, Jekyll it was! Trouble was, we were not moving a toy blog with five posts. We were moving a large archive, with old syntax, edge cases, and the expectation that readers should not notice breakage. Ryver handled it all, but it was... hacky. Historically, this is where teams lose momentum. You start enthusiastic, then spend days fixing tiny migration details, then one week later you are still cleaning strange corner cases in old markup.

This time, the path was completely different.

AI helped us map old patterns to new formats quickly. It helped us draft transform logic, review repetitive edits, generate tests for known conversions, and produce checks we could run repeatedly. It also helped with the most boring part of migration work: explaining code to ourselves while we were changing it. That matters more than people admit. The bottleneck is very often cognitive load, not keyboard speed.

[[zoom:AI did not replace our migration work; it removed the glue work that usually kills momentum]]

We still had to think. We still had to verify output. We still had to decide what was acceptable and what was not. But we stopped paying the huge "manual translation tax" that used to be unavoidable.

Could we have done it without AI? Yes, of course. We would have done it eventually. But the timeline would have been radically different, and the opportunity cost would have been brutal. Every week spent on migration mechanics is a week not spent writing, editing, commissioning, reviewing, and building the next thing.

# Why people are worried, and why they are not crazy

Now, there are countless discussions saying AI is killing free software. I read those discussions. I do not dismiss them.

The first criticism is quality: "the code it creates is poor". Sometimes that is absolutely true. You can get confident nonsense, shallow architecture, duplicated logic, fake APIs, and very polished garbage. If you accept output blindly, you are asking for trouble.

The second criticism is process decay: people stop reading docs, stop understanding fundamentals, and ship whatever compiles. This is also true in many teams. We now have a new failure mode where someone prompts first and thinks later.

And then there is the business pressure angle, which people too often ignore. Look at [this PR comment](https://github.com/tailwindlabs/tailwindcss.com/pull/2388#issuecomment-3717222957). Whatever your technical position is, it reads like someone under real commercial stress trying to keep things moving. This is important. Behind many questionable technical choices, there is not stupidity. There is pressure, deadlines, and a payroll to meet.

[[zoom:A stressed founder does not need ideology at 2 AM; they need progress by morning]]

If we want to have an honest debate about AI and free software, we need to include that reality. People under stress will use the tool that helps them ship. If free software communities answer only with moral outrage, they lose the room instantly.

# AI is a multiplier, not a replacement

My view is simple, and I have not changed it despite all the hype.

AI is a multiplier.

Give it to a capable developer, and that person can do ten times more than before. Not because the model is "smarter" than them, but because it removes latency: boilerplate, routine translation, repetitive documentation, test scaffolding, refactoring suggestions, and the first draft of almost everything.

Give the same tool to a mediocre developer with weak discipline, and the result can be even worse than before. They can now produce bad code faster, with higher confidence, and spread mistakes at scale.

[[zoom:AI is a multiplier, and multipliers amplify discipline just as quickly as they amplify shortcuts]]

This should not surprise anybody. We already know this pattern from other tools:

* Fast package managers do not guarantee good dependency choices.
* Easy cloud deployment does not guarantee good architecture.
* Powerful frameworks do not guarantee good product decisions.

AI is in the same category. It changes throughput, not judgement.

So, what does that mean for teams? It means quality standards become more important, not less.

If your review process is weak, AI will expose that weakness.
If your tests are weak, AI will flood them with unverified assumptions.
If your maintainers are overloaded, AI will increase incoming noise.

But if your process is sound, AI can turn a small team into a very strong one.

# Why this can be a huge win for free software

Now the part that matters most to me.

I think AI can be a huge win for free software, for one fundamental reason: it lowers the cost of creation and maintenance at the same time.

Free software has always had an asymmetric challenge. Proprietary vendors can throw paid teams at boring but essential work. Community projects often struggle with that exact boring layer: docs, packaging, onboarding notes, cross-platform quirks, test maintenance, issue triage, release notes, and migration guides.

(I know a thing or two about triaging, having worked through the 1000+ backlog of duplicate issues in Knex, for which I am now a humble maintainer).

AI is very good at assisting exactly in those areas when used properly.

That means we can have more software written more quickly. It means side projects with real value can move from idea to usable release before contributors burn out. It means a maintainer can spend less time on repetitive edits and more time on design, governance, and community.

Will there be junk projects? Yes, plenty. But we already had junk projects before AI. Noise is not new. What changes now is the number of useful experiments that can survive long enough to become real tools.

The free software world has always won when experimentation was cheap. Linux distributions multiplied. Desktop environments multiplied. Scripting languages multiplied. Package ecosystems multiplied. We argued constantly, and still moved forward because trying ideas was affordable.

AI can push us back into that mode, this time with less friction between idea and first implementation.

# Maintenance is where AI quietly changes everything

Most people discuss AI as a coding tool. I think its biggest effect in free software will be maintenance.

Maintenance is where projects slowly die. Not with a dramatic event, but with unanswered issues, stale docs, old APIs, and fewer people who still understand the internals.

AI can help here in practical, repeatable ways:

* Summarising long issue threads so maintainers can decide quickly.
* Reproducing bug reports into minimal test cases.
* Drafting migration notes when breaking changes are unavoidable.
* Proposing first-pass patches for small compatibility fixes.
* Explaining old code paths in plain language for new contributors.

None of this removes the need for maintainers. It makes maintainers less exhausted.

[[textbox:A practical AI workflow for maintainers]]
When a new bug report arrives, we can run a lightweight process:

1. Ask AI to restate the report as a reproducible scenario.
1. Ask for a minimal failing test, not a full patch.
1. Validate the test manually.
1. If valid, ask for candidate fixes with tradeoffs.
1. Review each fix against project conventions.
1. Accept or reject with explicit rationale in the PR.

This keeps AI in an assistant role and preserves human ownership of quality.
[[/textbox]]

The key is discipline. If AI is allowed to bypass review, quality drops. If AI is used to accelerate a strong review loop, quality can improve.

# Picking up a project is about to get much easier

Another under-discussed area is project adoption.

How many promising free software projects lose potential contributors because onboarding is painful? Too many.

You open a repository and see:

* 3,000 commits
* six directories with historical names
* setup instructions for three Linux distributions, two of which are outdated
* architecture docs that assume knowledge you do not have

Most people close the tab.

Now imagine that same contributor can ask for:

* "Explain this repository in layers, from high-level architecture to concrete modules."
* "Walk me through how to run tests on Ubuntu 24.04."
* "Show me three beginner-friendly issues and what files they touch."
* "Explain this function like I am new to this codebase, then link to related files."

This is not science fiction. This is already possible, and it can drastically reduce time to first meaningful contribution.

Free software projects are not just code. They are social systems. Faster onboarding means more contributors. More contributors means lower bus factor. Lower bus factor means healthier projects.

So yes, AI can make bad developers worse. But it can also make good contributors productive sooner, and that is a massive strategic advantage for community-driven software.

# The real battle: open models, open training material

If there is one priority I want to insist on, it is this one.

The focus should be on more good free software, and on the availability of truly open source models trained on open source materials.

Right now, too much AI value is concentrated behind opaque systems:

* unclear training datasets
* unclear licensing posture
* unclear constraints on redistribution and local fine tuning
* unclear governance over model evolution

That is not where free software should stop. We should treat this as the next frontier.

We need models that can be inspected, modified, redistributed, and improved in public. We need dataset transparency. We need reproducible training pipelines where possible. We need licensing terms that do not punish builders who want to run these systems locally and integrate them in free software workflows.

[[zoom:The next free software victory is not AI itself, but truly open models trained on truly open material]]

If we get this right, the result is not just "AI for coding." The result is a durable, open AI layer for everything: education, accessibility tooling, documentation assistants, local automation, and domain-specific systems that communities can own.

If we get this wrong, we risk rebuilding old dependency traps with new branding.

# Conclusion

Free Software Magazine exists right now thanks to AI-assisted work. That is not a theory, and it is not marketing language. We moved from a proprietary setup to Jekyll in less than a day. That speed mattered because momentum matters.

Do the criticisms of AI have merit? Absolutely. Generated code can be weak. People can skip documentation. Teams can confuse speed with quality. But these are management and engineering problems, not reasons to abandon a powerful tool.

AI is a multiplier. For capable developers, it can multiply output dramatically. For weak practices, it can multiply damage. That is exactly why free software communities should lead with standards, maintainership discipline, and open infrastructure.

The opportunity is huge: more software, faster maintenance, easier project onboarding, and lower friction for contributors. The strategic target is even bigger: real open models trained on real open material.

That would be our next victory. And this time, if we play it well, we do not need to ask permission.
