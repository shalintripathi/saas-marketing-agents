# Positioning & Messaging — Incident Timeline

> Produced by: **Product Positioning Strategist** 🎯 + **Messaging Architect** 💬 (`pmm-positioning-strategist`, `pmm-messaging-architect`) · CATALYST-Sprint, Phase 1
> *Demo note: Acme Uptime is fictional; both cited metrics are labeled fictional in `brand-context.md`.*

## 1. Framework choice (named, and why)

**April Dunford, *Obviously Awesome*** — worked in order: competitive alternatives → unique attributes → value → target market → category. Chosen because Incident Timeline is a feature launch inside an established category (status pages), where the job is framing, not category creation. *Crossing the Chasm* was considered and rejected: a feature inside an established category rarely has a chasm to cross, and forcing the model where it doesn't fit is how positioning work goes wrong.

## 2. The five components, applied

| Component | For Incident Timeline |
|---|---|
| **Competitive alternatives** | A rarely-updated status page + hand-written update tweets + support macros. The real competitor is "the green dot and hope." |
| **Unique attributes** | A public, live-updating incident timeline embedded in the status page: every update stamped, attributed, and diffable; per-incident follow-ups for subscribers; the postmortem attaches to the same timeline afterward. |
| **Value those attributes enable** | The update-writing burden during an incident goes away; customers follow a live, honest record instead of refreshing a green dot they don't believe; support stops answering "is it down?" tickets already answered in Slack. |
| **Who cares most** | SRE leads / Heads of Platform at 50–500-person B2B SaaS companies — on-call rotation, incident response in Slack, measured on MTTR and uptime SLOs (and, informally, on how loudly customers complain). |
| **Market category** | Incident communication (not monitoring — a boundary we state out loud). |

**Core positioning statement** (from brand context, unchanged — the launch inherits it):

> For SRE leads at 50–500-person SaaS companies who lose engineering time to incident communication, Acme Uptime is an incident-communication tool that turns your live incident channel into customer-ready updates. Unlike a static status page, we make the timeline the product.

**Launch-level framing:** Incident Timeline is the "timeline is the product" claim made visible. It is positioned *within* the existing narrative, not as a new one (positioning stickiness: new features integrate into the house, they don't fork it).

## 3. Message house (pillars locked, from brand context)

| Pillar | Launch sub-message | Proof point |
|---|---|---|
| **1. Write it once.** | Updates drafted from your own incident channel, reviewed by a human, published to the timeline — and sent everywhere (status page, email, Slack, RSS). | Median time from incident-channel message to published customer update: **90 seconds** *(fictional demo metric)* |
| **2. The timeline is the trust.** | Every update stamped, attributed, diffable. Subscribers get per-incident follow-ups. The postmortem attaches to the same timeline. A record customers can follow beats a green dot nobody believes. | **212 companies on paid plans** *(fictional demo metric)*; `[NEEDS INPUT: a named customer willing to say the timeline changed how their customers behave during incidents]` |
| **3. Built for the on-call hour.** | Every design decision judged by one test: does it help at 3 a.m., mid-incident? | `[NEEDS INPUT: beta-usage evidence — e.g., timelines published during real incidents in beta, with count and date range]` |

**Why now** (usable as fact, from brand context): customers stopped trusting green dots, and buyers increasingly check how vendors communicate during incidents before signing.

## 4. Persona entry point — SRE Lead / Head of Platform

- **Their words, not ours** (verbatim from brand context — the customer language bank rule): *"During an incident the last thing I have time for is writing customer updates."* / *"Support gets buried in 'is it down?' tickets that we already answered in Slack."*
- **Leading pillar:** Write it once. (Their stated pain is the writing burden; trust is the payoff, not the door.)
- **The skeptic's objection, answered head-on:** *"Our status page is a formality nobody reads."* — Correct, and that's the point: nobody reads it because it's a green dot with no information. A live timeline is the version worth reading — and the version prospects now check before they sign.
- **Honest boundaries (state them; this audience checks):** we are not a monitoring tool, and there is no SSO/SLA contract tier yet. Engineers trust vendors who say what they don't do.

## 5. Capability claim register (grade before anything ships)

Existence in a doc never rounds to WORKS — a human owner confirms each grade.

| Claim in copy | Source of truth | Grade | Condition to state |
|---|---|---|---|
| Updates stamped, attributed, diffable | brand-context §8 | WORKS, pending `[NEEDS INPUT: product owner sign-off]` | — |
| Per-incident subscriber follow-ups | brand-context §8 | WORKS, pending `[NEEDS INPUT: product owner sign-off]` | — |
| Postmortem attaches to same timeline | brand-context §8 | WORKS, pending `[NEEDS INPUT: product owner sign-off]` | — |
| Drafted from incident channel, human-reviewed, sent to status page/email/Slack/RSS | brand-context pillar 1 | WORKS, pending `[NEEDS INPUT: product owner sign-off]` | — |
| Available on which pricing tiers? | entitlement config | **UNKNOWN** — `[NEEDS INPUT: tier availability — if gated, every mention of pricing must state the condition]` | Copy may not imply all-tiers until confirmed |

## 6. Compliance check

- Banned words: **0 occurrences** across this file and all downstream deliverables (checked: revolutionary, game-changing, seamless, best-in-class, world-class, AI-powered-as-headline, "we apologize for any inconvenience").
- Approved vocabulary in use: incident, timeline, update, on-call, postmortem.
- Every metric traces to brand-context §7 or carries a `[NEEDS INPUT]` marker. Zero synthesized customer quotes.
