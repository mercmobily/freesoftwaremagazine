---
title: 'Is GitHub the new dependency trap for free software?'
authors: 'Tony Mobily'
published: '2026-02-15 10:00:00'
tags: 'github,free-software,open-source,workflow,resilience'
layout: article
license: verbatim_only
section: opinions
main_image: main.png
listed: 'true'
---
Free software won the source code battle, but it is quietly losing the workflow battle. We can inspect code, fork code, patch code, and redistribute code. Great. And yet, for a huge part of our ecosystem, daily project life now depends on one proprietary platform. If that sounds uncomfortable, good: it should. This is not an anti-GitHub tantrum. I use GitHub every day -- in fact, Free Software Magazine is hosted on GitHub (!) and the publishing pipeline is based on GitHub's pull requests (!!!). This is a reality check: when one platform becomes the place where identity, contribution flow, CI, issues, releases and discoverability all converge, “open” starts to run on closed rails.

<!--break-->

# Convenience won, and for good reasons

Let me start with the part everybody knows but sometimes forgets: GitHub won because it worked.

It made collaboration easier. It made pull requests normal. It gave maintainers one place where code, issues, reviews and releases could actually flow. If you were around before this phase, you know how painful things used to be. So no, this is not an anti-GitHub piece. GitHub helped free software a lot.

The problem is what happened next.

We moved more and more of project life into one platform, until the platform became part of the product. That is where the new lock-in starts.

[[zoom:Owning your source code is not enough if your workflow depends on one proprietary gatekeeper]]

People often answer this argument with: “But it is Git, you can clone it.” Yes. You can clone the code.

What you cannot clone as easily is everything around the code.

You cannot easily move the social reputation layer attached to contributor profiles. You cannot move years of project memory -- issues, review context, labels, automations, and discussion threads -- without losing a lot of meaning. You cannot move tightly coupled CI pipelines overnight if they were built around one event model, one runner model, and one marketplace of actions. And you definitely cannot export network effects in one command.

This is why migration is usually theoretical until a crisis happens.

When teams finally try, they discover that copying the repository is the easy part.

[[zoom:Centralization is centralization, even when the user experience is excellent]]

# Why this matters right now

When one platform sits in the middle of identity, project memory, delivery pipelines and visibility, routine events become ecosystem events.

A policy shift can interrupt workflows. A moderation error can freeze project momentum. Geopolitical restrictions can block contributors with no relationship to code quality. A major outage can stall reviews, releases, and triage across thousands of projects in a few minutes.

And even when the platform is run responsibly, the governance shape is still asymmetric: one company sets roadmap, deprecations, terms, and pricing direction, and everyone else adapts.

None of this means “GitHub bad”. It means dependency has a cost, and we should treat it like any other architectural risk.

# So what do we do?

The fair counterargument is obvious: GitHub accelerated free software massively. Correct. That is exactly why this is worth discussing seriously. We gained speed and scale -- and concentrated operational risk at the same time.

The right response is pragmatic, not theatrical.

We should keep using it, but design for continuity.

Ask the question that matters: if GitHub were unavailable for 30 days, would your project still ship?

[[textbox:A one-week de-risk plan]]
Day 1: Mirror your repositories to a second forge (Forgejo, GitLab, Codeberg, self-hosted).  
Day 2: Export issue and pull request metadata and test import tooling.  
Day 3: Make CI portable; confirm at least one non-GitHub execution path works.  
Day 4: Document a release path that does not depend on GitHub-specific steps.  
Day 5: Add backup communication channels (mailing list, Matrix, status page).  
Day 6: Run one internal “GitHub-down day” rehearsal.  
Day 7: Publish continuity instructions for contributors.
[[/textbox]]

Notice what is not in that list: “delete your GitHub account.” This is not purity. This is resilience.

Also, yes, maintainers are overloaded. That is why this should be incremental: Mirrors first, pipeline portability next. One migration document. One fallback drill. Small steps, done consistently.

And if your company depends on open source, fund this work. Not just features, not just sponsorship logos: fund portability, migration tooling, and boring maintenance. Ecosystems usually fail in boring places.

Alternatives being rough is not an argument for doing nothing. It is an argument for investing and improving them, exactly like free software always did.

At the end of the day, free software is not only about legal access to source code. It is also about practical freedom to keep building and shipping when one provider has a bad week.

# Conclusion

GitHub is a powerful tool and it helped free software scale globally. That is real and worth acknowledging.

Dependency is the problem.

When one proprietary platform becomes the default operating system for open collaboration, we recreate the fragility free software was meant to reduce. Not because anyone is evil. Because convenience concentrates power.

Let's build exits before we need them. Mirror by default. Keep CI portable. Preserve project context outside one platform. Rehearse continuity.

Free software should not only be forkable in theory. It should be continuable in practice.

If we do this right, we keep the speed and usability gains of modern tooling and recover something we should never have traded away: sovereignty.
