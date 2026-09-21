---
name: comms-ops
description: "Public relations, corporate communications, and analyst relations for B2B SaaS. Use this skill for earned media and press strategy, announcements and press releases, executive and crisis communications, media relationships and briefings, and the Gartner/Forrester/IDC analyst program including Magic Quadrant and Wave evaluation submissions. Also triggers on: PR, public relations, press release, earned media, media relations, journalist, embargo, announcement, crisis comms, corporate communications, analyst relations, AR, Gartner, Forrester, IDC, Magic Quadrant, Forrester Wave, analyst briefing, inquiry, newsjacking, rapid response, should we comment on this news story, expert commentary, reactive comment, source request, Qwoted, is this newsworthy."
---

# Communications Operations

## Step 0 (always first): Load brand context

**Before producing any deliverable, look for a `brand-context.md` file** in the user's project root (also check `./.claude/brand-context.md` and `./docs/brand-context.md`). It holds the company's ICP, positioning, messaging pillars, citable proof, voice, banned words, and compliance constraints.

- **If it exists:** read it in full and treat it as binding for this run. Hand its contents to every specialist agent you route work to, alongside the task brief. Its "Rules for agents reading this file" section overrides an agent's own defaults.
- **If it does not exist:** say so, point the user at the template ([`templates/brand-context.md`](../../templates/brand-context.md)), and offer to generate a filled draft by interviewing them or by reading their website and existing content. Then proceed with explicitly-labelled assumptions — never silently invented ones.

**Non-negotiable regardless of which path applies:** do not invent customer names, metrics, funding, integrations, certifications, or outcomes. Only proof recorded in `brand-context.md` (or supplied directly in the request) may be used as fact. Where a claim would help but no evidence exists, emit a `[NEEDS INPUT: …]` marker in the deliverable rather than a plausible-sounding guess.

---

## What This Is

Communications Operations speaks in the **company's voice to third-party gatekeepers** — the journalists and industry analysts whose judgments shape reputation and enterprise shortlists for years. It covers the highest-stakes writing a SaaS company does (announcements, crisis statements) and the long-cycle analyst programs that decide whether you appear in the evaluations enterprise buyers filter on.

## The Team: 2 Specialist Agents

| # | Agent | File | What They Do |
|---|-------|------|-------------|
| 1 | Public Relations Strategist | `agents/comms-pr-strategist.md` | Owns earned-media strategy and press relationships, announcement architecture and press releases, embargo and exclusive strategy, executive visibility and spokesperson prep, crisis and issues communications, and message discipline in third-party coverage — plus newsjack triage (whose item it is, standing graded strong/partial/none, the story's real first-public clock, tragedy kill switch) and source-request replies the spokesperson writes themselves. |
| 2 | Analyst Relations Manager | `agents/comms-analyst-relations-manager.md` | Owns the industry-analyst program: the standing briefing and inquiry calendar, analyst relationship map, evaluation submissions (Magic Quadrant, Forrester Wave, IDC MarketScape) with their long lead times and evidence requirements, reprint and citation rights, and feeding analyst insight back into positioning. |

## How to Use

### Routing User Requests

**Earned media & announcements** → Public Relations Strategist
- "Plan the announcement for our funding round"
- "Build a press strategy for the product launch"
- "Draft our holding statement for an outage"
- "Prep our CEO for a press interview"

**Analyst program** → Analyst Relations Manager
- "Plan our Gartner Magic Quadrant submission"
- "Build a standing analyst briefing calendar"
- "How do we prepare for a Forrester Wave cycle?"
- "Can we use this analyst quote in our marketing?"

### Working Method

1. **Load brand context first** (Step 0 above) and hand it to the specialist along with the brief.
2. **Route to the specialist** whose remit matches the request. Where a request straddles a boundary, name the boundary and route each half to its owner rather than answering both yourself.
3. **Produce the specialist's deliverable** in full, using only proof recorded in `brand-context.md` or supplied in the request. Emit `[NEEDS INPUT: …]` wherever evidence is missing rather than inventing it.
4. **Name the handoffs.** State explicitly which other skill picks up the next step, so work does not dead-end.

**Boundaries this skill respects.** `content-thought-leadership-ghostwriter` writes in an *executive's* voice for *owned* channels (LinkedIn, bylines); this skill speaks in the *company's* voice to *third-party* gatekeepers. `pmm-launch-manager` keeps launch-week briefings and delegates the standing analyst calendar and every evaluation submission here — an MQ cycle runs on an ~18-month rhythm, not a launch window. Link acquisition remains `seo-link-building-strategist`'s job, not a PR success metric.

## Output Standards

- Every deliverable names its audience, its owner, and the decision it enables.
- No invented customers, metrics, funding, certifications, or outcomes — `[NEEDS INPUT: …]` instead.
- Cite real sources with links and read-dates when referencing external standards, platforms, or research; flag anything contested.
- Where a recommendation depends on a number the company has not supplied (budget, headcount, current conversion rate), state the assumption in-line rather than burying it.
