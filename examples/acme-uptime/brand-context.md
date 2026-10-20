# Brand Context — Acme Uptime

> **DEMO NOTE: Acme Uptime is a fictional company** invented to demonstrate the saas-marketing-agents plugin. Every fact below is made up for the demo and is labeled as such wherever it appears publicly.

---

## Rules for agents reading this file

These are binding on every agent and take precedence over the agent's own defaults:

1. **Never invent facts about this company.** Customer names, revenue, headcount, funding, logos, integrations, certifications, and performance numbers may only be used if they appear below or the user supplies them in the request. If a claim would strengthen the copy but isn't here, leave a `[NEEDS INPUT: …]` marker instead of guessing.
2. **Only use metrics from "Proof we can actually cite."** Anything else is an unsubstantiated claim.
3. **Honor the voice, terminology, and banned-words lists.** These are not suggestions.
4. **If a section below is empty,** ask or flag the assumption — don't invent.

---

## 1. Company & product

- **Company name:** Acme Uptime
- **Website:** https://acmeuptime.example (fictional)
- **What we sell (one sentence, no jargon):** Hosted status pages and incident communication that keep customers informed while your team fixes the outage.
- **Category we compete in:** status page / incident communication
- **Stage & size:** bootstrapped, 14 employees
- **Pricing model:** self-serve tiers ($29–$299/mo), no annual lock-in
- **Go-to-market motion:** product-led

## 2. Ideal customer profile (ICP)

- **Company type:** B2B SaaS running customer-facing services
- **Company size:** 50–500 employees
- **Geography:** North America + EU
- **Technical or operational triggers:** has an on-call rotation; runs incident response in Slack; customers file "is it down?" tickets during outages
- **Who we explicitly do *not* sell to:** enterprises wanting SSO/SLA contracts and dedicated support (not yet); consumer apps

## 3. Buyer personas

### "SRE Lead / Head of Platform"
- **Role in the deal:** champion and usual buyer
- **What they're measured on:** MTTR, uptime SLOs, and — informally — how loudly customers complain during incidents
- **Top pains, in their language:** "During an incident the last thing I have time for is writing customer updates." "Support gets buried in 'is it down?' tickets that we already answered in Slack."
- **What makes them skeptical of us:** "Our status page is a formality nobody reads; why pay for a better one?"
- **Where they actually spend attention:** SRE Weekly, r/sre, incident.io/PagerDuty ecosystem blogs, SREcon

## 4. Positioning

- **Positioning statement:** For SRE leads at 50–500-person SaaS companies who lose engineering time to incident communication, Acme Uptime is an incident-communication tool that turns your live incident channel into customer-ready updates. Unlike a static status page, we make the timeline the product.
- **The status quo we replace:** a rarely-updated status page plus hand-written update tweets and support macros
- **Why we win, honestly:** the update-writing burden during an incident goes away; customers see a live, honest timeline instead of a green dot that's lying
- **Where we lose, honestly:** enterprise procurement (no SSO/SLA yet); teams who want deep monitoring — we are not a monitoring tool

## 5. Messaging pillars

1. **Write it once.** Incident updates drafted from your own incident channel — reviewed by a human, sent everywhere (status page, email, Slack, RSS).
2. **The timeline is the trust.** A live incident timeline customers can actually follow beats a green dot nobody believes.
3. **Built for the on-call hour.** Every feature is judged by one test: does it help at 3 a.m., mid-incident?

## 6. Voice & tone

- **Voice:** plain, calm, engineer-to-engineer; dry humor allowed outside incident contexts, never during
- **We say:** incident, timeline, update, on-call, postmortem
- **Banned words:** revolutionary, game-changing, seamless, best-in-class, world-class, AI-powered (as a headline claim), "we apologize for any inconvenience"

## 7. Proof we can actually cite

- (fictional, for demo) 212 companies on paid plans
- (fictional, for demo) Median time from incident-channel message to published customer update: 90 seconds
- Nothing else — anything further must be flagged `[NEEDS INPUT]`.

## 8. Launch at hand

- **New feature: Incident Timeline** — a public, live-updating incident timeline embedded in the status page: each update stamped, attributed, and diffable; subscribers get per-incident follow-ups; postmortem links attach to the same timeline afterward.
- **Why now:** customers stopped trusting green dots; buyers increasingly check how vendors communicate during incidents before signing.
