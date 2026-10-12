---
name: events-ops
description: "Field marketing, events, and webinars for B2B SaaS. Use this skill for conference and sponsorship selection, booth strategy, owned events and roadshows, executive dinners, the webinar program, and event-sourced pipeline measurement. Also triggers on: field marketing, events, conference, trade show, booth, sponsorship, roadshow, executive dinner, webinar, webinar follow-up, webinar lead handoff, event ROI, event pipeline, user conference, meetups."
---

# Events & Field Marketing Operations

## Step 0 (always first): Load brand context

**Before producing any deliverable, look for a `brand-context.md` file** in the user's project root (also check `./.claude/brand-context.md` and `./docs/brand-context.md`). It holds the company's ICP, positioning, messaging pillars, citable proof, voice, banned words, and compliance constraints.

- **If it exists:** read it in full and treat it as binding for this run. Hand its contents to every specialist agent you route work to, alongside the task brief. Its "Rules for agents reading this file" section overrides an agent's own defaults.
- **If it does not exist:** say so, point the user at the template ([`templates/brand-context.md`](../../templates/brand-context.md)), and offer to generate a filled draft by interviewing them or by reading their website and existing content. Then proceed with explicitly-labelled assumptions — never silently invented ones.

**Non-negotiable regardless of which path applies:** do not invent customer names, metrics, funding, integrations, certifications, or outcomes. Only proof recorded in `brand-context.md` (or supplied directly in the request) may be used as fact. Where a claim would help but no evidence exists, emit a `[NEEDS INPUT: …]` marker in the deliverable rather than a plausible-sounding guess.

---

## What This Is

Events & Field Marketing Operations turns rooms into pipeline. It decides which conferences to buy and at what tier, what the booth is actually for, when an owned event beats a sponsorship, and how the webinar program runs as a repeatable engine rather than a series of one-offs — then proves whether any of it paid for itself.

## The Team: 1 Specialist Agent

| # | Agent | File | What They Do |
|---|-------|------|-------------|
| 1 | Field Marketing & Events Strategist | `agents/events-field-marketing-strategist.md` | Owns conference and sponsorship selection and tiering, booth strategy and staffing, owned events (roadshows, executive dinners, user conferences), the webinar program as a repeatable engine, field-to-sales handoff choreography, and event-sourced vs. event-influenced pipeline measurement. |

## How to Use

### Routing User Requests

**Conferences & sponsorships** → Field Marketing & Events Strategist
- "Which conferences should we sponsor next year, and at what tier?"
- "What should our booth actually be for?"
- "Design the pre-show, at-show, and post-show motion"

**Owned events & webinars** → Field Marketing & Events Strategist
- "Plan an executive dinner series in three regions"
- "Turn our webinar program into a repeatable engine"
- "Which of our webinar registrants should sales actually call?"
- "Design a roadshow that supports the enterprise pipeline"

### Working Method

1. **Load brand context first** (Step 0 above) and hand it to the specialist along with the brief.
2. **Route to the specialist** whose remit matches the request. Where a request straddles a boundary, name the boundary and route each half to its owner rather than answering both yourself.
3. **Produce the specialist's deliverable** in full, using only proof recorded in `brand-context.md` or supplied in the request. Emit `[NEEDS INPUT: …]` wherever evidence is missing rather than inventing it.
4. **Name the handoffs.** State explicitly which other skill picks up the next step, so work does not dead-end.

**Boundaries this skill respects.** `pm-campaign-coordinator` sequences cross-functional work and dependencies; this skill carries the event-domain craft — what to buy, what it is for, and whether it paid. Booth creative and stage design brief out to the design skill; follow-up email sequences brief out to the email skill.

## Output Standards

- Every deliverable names its audience, its owner, and the decision it enables.
- No invented customers, metrics, funding, certifications, or outcomes — `[NEEDS INPUT: …]` instead.
- Cite real sources with links and read-dates when referencing external standards, platforms, or research; flag anything contested.
- Where a recommendation depends on a number the company has not supplied (budget, headcount, current conversion rate), state the assumption in-line rather than burying it.
