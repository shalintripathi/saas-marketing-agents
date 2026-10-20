# CATALYST Routing Plan — Incident Timeline Launch

> Produced by: **CATALYST Orchestrator** (`saas-marketing:catalyst-orchestrator`), launch sequencing by **Product Launch Manager** (`pmm-launch-manager`)
> *Demo note: Acme Uptime is a fictional company; all facts come from `brand-context.md`.*

## Brief

> "Plan and produce a product-launch campaign for our new Incident Timeline feature, targeting SRE leads at 50–500-person SaaS companies."

## Step 0 — Brand context

`brand-context.md` found at project root and loaded in full. Its rules are **binding on every agent in this plan**: no invented facts, only the two citable proof points, `[NEEDS INPUT: …]` markers wherever a claim lacks evidence, voice and banned-words lists honored. The context was passed to every specialist below alongside their task brief.

## Mode selection: CATALYST-Sprint

| Mode considered | Verdict | Why |
|---|---|---|
| CATALYST-Full | Rejected | Annual planning / new-market scale. This is one feature launch, not a GTM refresh. |
| **CATALYST-Sprint** | **Selected** | The decision matrix routes "major product launches" to Sprint: focused 2–4 week campaign, 5–7 specialists, existing positioning reused. |
| CATALYST-Micro | Rejected | Micro is single-channel/urgent. This launch needs six coordinated disciplines. |

**Phase path:** Phase 1 (strategy review — positioning already exists in brand context, so validate rather than rebuild) → Phase 3 (build, parallel) → Phase 4 (launch) → Phase 5 (measure, pre-wired before launch day).

Disciplines deliberately **not** activated: paid media, ABM, events, partnerships, sales enablement, design — a product-led, bootstrapped, self-serve launch to a channel-savvy SRE audience doesn't need them, and Sprint mode says use a focused subset.

## Routing table (persona → sub-task)

| # | Agent persona | Skill | Sub-task | Deliverable |
|---|---|---|---|---|
| 1 | **Product Positioning Strategist** 🎯 + **Messaging Architect** 💬 | product-marketing-ops | Launch positioning (Obviously Awesome frame), message house, proof-point map, capability claim register | `01-positioning-and-messaging.md` |
| 2 | **Content Blog Strategist** ✍️ | content-marketing | Launch announcement blog: reader/keyword brief, answer-first draft, Publish/Hold/Cut disposition | `02-launch-blog.md` |
| 3 | **Email Copywriter & Conversion Specialist** ✉️ | email-marketing-ops | Customer launch email: subject-line variants, preview text, scannable body, single CTA | `03-launch-email.md` |
| 4 | **LinkedIn Organic Strategist** 💼 | social-media-ops | 3 LinkedIn post drafts + first-hour distribution plan (drafts only — a human posts) | `04-linkedin-posts.md` |
| 5 | **AI Search Optimizer** 🤖 | seo-growth | AEO/GEO checklist applied to the launch content: reachable → recognized → quotable, citability score of the blog draft | `05-aeo-geo-checklist.md` |
| 6 | **Marketing Performance Analyst** 📈 | marketing-analytics | Launch measurement plan: metric definitions, two-horizon read (launch week vs. one sales cycle), instrument checks | `06-measurement-plan.md` |
| — | **Product Launch Manager** 🚀 | product-marketing-ops | Cross-functional sequencing and pre-mortem hooks (embedded below, not a separate file) | this file |

## Handoff protocol (Phase 1 → 3 → 4)

1. **Messaging locks first.** The message house in `01` is the single source for every downstream claim. Pillars are locked; each channel varies only its entry point.
2. **Content and AEO pair.** The blog's answer capsule is written to the AI Search Optimizer's spec (40–60 word self-contained answer), and the citability score in `05` is run against the actual draft in `02`.
3. **Measurement is pre-wired.** Per the launch pre-mortem discipline ("nobody can tell afterwards whether it worked" is a named failure), the Performance Analyst confirms events and definitions exist *before* launch day — see `06`.

## Launch sequence (Product Launch Manager)

- **Day 0:** customer email (`03`) + blog live (`02`) + LinkedIn post 1 from company page with *Notify Employees* (the once-per-day lever, reserved for exactly this).
- **Day 1:** LinkedIn post 2 (exec personal profile).
- **Day 3:** LinkedIn post 3. Community note: r/sre and SRE Weekly are where this persona actually reads — earn a mention, don't spam one. `[NEEDS INPUT: which team member owns authentic r/sre participation]`
- **Launch date:** `[NEEDS INPUT: hard launch date — lock it, then work dependencies backward]`
- **Pre-mortem:** run before readiness sign-off, facilitated by someone who doesn't own the date. Two seeded blocking-risk candidates: (a) message doesn't land with skeptics who think "our status page is a formality" — pre-launch test: 5 customer conversations, owned by `[NEEDS INPUT: owner]`; (b) feature adoption stalls post-launch — tripwire threshold and watcher defined in `06`.

## Quality gate (applies to every file)

- Claims trace to `brand-context.md` or carry a visible `[NEEDS INPUT: …]` marker — no plausible-sounding guesses.
- Only citable proof: **212 companies on paid plans** and **90-second median from incident-channel message to published update** (both fictional, labeled in brand context).
- Banned words checked: revolutionary, game-changing, seamless, best-in-class, world-class, "AI-powered" as a headline claim, "we apologize for any inconvenience" — zero occurrences.
- Voice: plain, calm, engineer-to-engineer. Dry humor allowed outside incident contexts, never during.
