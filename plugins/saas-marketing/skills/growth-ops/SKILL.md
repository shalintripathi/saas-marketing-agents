---
name: growth-ops
description: "Product-led growth and customer-base growth for B2B SaaS. Use this skill for self-serve funnel work (activation, time-to-value, free trial vs freemium, PQL definition, in-product upgrade moments, sales-assist triggers), for the self-guided interactive product demo that runs in front of the login wall (demo portfolio and flow design, gated vs ungated policy, demo seed data and privacy, keeping a published demo in sync with the shipping product, step-level demo analytics), and for growing revenue from existing customers (adoption, expansion, churn-save, renewal marketing, net revenue retention). Also triggers on: PLG, product-led growth, activation, aha moment, time to value, free trial, freemium, PQL, product qualified lead, onboarding, self-serve, customer marketing, expansion revenue, upsell, cross-sell, churn, retention, NRR, renewal, interactive demo, self-guided demo, product tour, click-through demo, demo automation, demo library, should our demo be gated, ungated demo, demo without a sales call, our demo is out of date, demo shows the old UI, put a demo on our homepage, demo completion rate, demo drop-off, try before you talk to sales."
---

# Growth Operations

## Step 0 (always first): Load brand context

**Before producing any deliverable, look for a `brand-context.md` file** in the user's project root (also check `./.claude/brand-context.md` and `./docs/brand-context.md`). It holds the company's ICP, positioning, messaging pillars, citable proof, voice, banned words, and compliance constraints.

- **If it exists:** read it in full and treat it as binding for this run. Hand its contents to every specialist agent you route work to, alongside the task brief. Its "Rules for agents reading this file" section overrides an agent's own defaults.
- **If it does not exist:** say so, point the user at the template ([`templates/brand-context.md`](../../templates/brand-context.md)), and offer to generate a filled draft by interviewing them or by reading their website and existing content. Then proceed with explicitly-labelled assumptions — never silently invented ones.

**Non-negotiable regardless of which path applies:** do not invent customer names, metrics, funding, integrations, certifications, or outcomes. Only proof recorded in `brand-context.md` (or supplied directly in the request) may be used as fact. Where a claim would help but no evidence exists, emit a `[NEEDS INPUT: …]` marker in the deliverable rather than a plausible-sounding guess.

---

## What This Is

Growth Operations owns the two revenue surfaces that sit outside the classic top-of-funnel: the **self-serve funnel inside the product** (signup → activation → first paid invoice) and the **installed base** (adoption, expansion, churn-save, renewal). Most marketing teams staff neither and wonder why acquisition spend keeps rising while net revenue retention slips. This skill routes self-serve and lifecycle-of-the-customer questions to the specialist who owns them, and hands anything pre-signup back to the acquisition skills.

## The Team: 3 Specialist Agents

| # | Agent | File | What They Do |
|---|-------|------|-------------|
| 1 | PLG Activation Strategist | `agents/growth-plg-activation-strategist.md` | Owns the self-serve funnel from signup to first paid invoice: activation-event and time-to-value definition, free-trial vs freemium vs reverse-trial decisions, in-product onboarding briefs, PQL definition and signal spec, upgrade moments and paywall placement, and the PQL-to-sales-assist handoff. |
| 2 | Interactive Demo Strategist | `agents/growth-interactive-demo-strategist.md` | Owns the self-guided interactive demo — the product experience in front of the login wall: the demo portfolio and the job each demo does, flow scripts and checkpoints, gate policy read as a measurement decision, build modality and its freshness debt, a register giving every published demo an owner, a release-bound re-capture trigger and an expiry, purpose-built seed data with no live-account capture, step-level instrumentation with stated denominators, and the controlled comparison required before a demo uplift is called a cause. |
| 3 | Customer Marketing Lead | `agents/growth-customer-marketing-lead.md` | Owns net revenue retention as a marketing target: feature-adoption campaigns, expansion and cross-sell plays to the installed base, churn-save and win-back programs, renewal marketing, and customer-base segmentation by health and expansion potential. |

## How to Use

### Routing User Requests

**Self-serve funnel & activation** → PLG Activation Strategist
- "Define our activation event and time-to-value"
- "Should we run a free trial, freemium, or a reverse trial?"
- "Design our PQL definition and the signals behind it"
- "Where should the paywall and upgrade prompts sit?"

**Self-guided demo, before signup** → Interactive Demo Strategist
- "Should our interactive demo be gated or ungated?"
- "Our demo still shows the old UI — how do we stop that happening?"
- "Which product tours should we build, and for which buyer role?"
- "Why do people drop out of our demo at step three?"
- "Can we say the demo doubled our conversion rate?"

**Existing-customer revenue** → Customer Marketing Lead
- "Build an expansion campaign for our installed base"
- "Design a churn-save program for at-risk accounts"
- "Plan renewal marketing for the next quarter"
- "Drive adoption of the feature we shipped last month"

### Working Method

1. **Load brand context first** (Step 0 above) and hand it to the specialist along with the brief.
2. **Route to the specialist** whose remit matches the request. Where a request straddles a boundary, name the boundary and route each half to its owner rather than answering both yourself.
3. **Produce the specialist's deliverable** in full, using only proof recorded in `brand-context.md` or supplied in the request. Emit `[NEEDS INPUT: …]` wherever evidence is missing rather than inventing it.
4. **Name the handoffs.** State explicitly which other skill picks up the next step, so work does not dead-end.

**Boundaries this skill respects.** The login wall is the line between the PLG strategist (behind it) and the Interactive Demo Strategist (in front of it), and neither crosses it. Pre-signup *pages* belong to `design-ui-landing-page-specialist` and *all* experiment statistics to `analytics-conversion-rate-optimizer` — the PLG strategist supplies hypotheses, never its own significance thresholds or stopping rules. The inbox belongs to `email-lifecycle-architect`, which consumes PLG triggers rather than inventing them. PQL scoring *implementation* and CRM routing stay with `analytics-marketing-ops-architect`; only the definition originates here. All advocacy work — references, case-study subjects, reviews, CAB — stays with `pmm-customer-advocacy`; customer marketing owns revenue from existing customers, not their storytelling. The **gated, live, human-run** demo inside a sales cycle — plus proof-of-concept design and security-questionnaire evidence — belongs to `sales-solutions-engineer`, never to the Interactive Demo Strategist; the scripted linear product video belongs to `content-video-script-writer`.

## Output Standards

- Every deliverable names its audience, its owner, and the decision it enables.
- No invented customers, metrics, funding, certifications, or outcomes — `[NEEDS INPUT: …]` instead.
- Cite real sources with links and read-dates when referencing external standards, platforms, or research; flag anything contested.
- Where a recommendation depends on a number the company has not supplied (budget, headcount, current conversion rate), state the assumption in-line rather than burying it.
