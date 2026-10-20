# AEO/GEO Checklist — applied to the Incident Timeline launch content

> Produced by: **AI Search Optimizer** 🤖 (`seo-ai-search-optimizer`) · CATALYST-Sprint, Phase 3
> *Demo note: Acme Uptime is fictional; acmeuptime.example does not resolve — checks below are specced for the real site a real user would run this against.*

Audit order is fixed: **reachable → recognized → quotable.** A perfect citability score on a URL an engine can't fetch is worth zero.

## 1. Reachable — access before citation

- [ ] **robots.txt names the right agents.** Allow the *retrieval* and *user-triggered* agents (`OAI-SearchBot`, `ChatGPT-User`, `Claude-SearchBot`, `Claude-User`, `PerplexityBot`, `Perplexity-User`, `Googlebot`). Training crawlers (`GPTBot`, `ClaudeBot`, `Google-Extended`) are a separate *licensing* decision — `[NEEDS INPUT: company policy on training-crawler access]`. Never block retrieval by accident while meaning to opt out of training; check named groups, since a permissive wildcard doesn't rescue an agent named in a restrictive one.
- [ ] **Edge layer checked.** WAF/CDN bot rules can 403 agents robots.txt welcomes. Read the live rule set — `[NEEDS INPUT: CDN/WAF config review]`.
- [ ] **Render check.** Fetch the launch blog with JS disabled: answer capsule, byline, and JSON-LD must exist in the raw HTML. Assume retrieval agents don't hydrate.
- [ ] **Log verification.** `[NEEDS INPUT: ~30 days of server/edge logs]` — per named agent: request count, status mix, last seen. Report each as reachable / blocked / **never-seen** — and never round never-seen up to reachable.

## 2. Recognized — the entity lives off your site

- [ ] **Canonical fact record pinned:** Acme Uptime · category noun: **incident communication** (use it identically everywhere — "Acme Uptime, an incident-communication tool") · bootstrapped, 14 employees · `[NEEDS INPUT: HQ location, founding year — not in brand context]`.
- [ ] **`sameAs` set on the entity home** (about page), each URL verified live: `[NEEDS INPUT: G2, Capterra, Crunchbase, LinkedIn company page URLs]`. Then diff each profile against the fact record — a `sameAs` pointing at profiles that disagree just makes the inconsistency machine-readable.
- [ ] **Launch = a dated event → profile sweep.** This launch ships with a profile-update list (LinkedIn description, review-site listings, directory entries mentioning the feature set) or the announcement itself manufactures fact drift.
- [ ] **Brand-question recognition test**, per engine ("What is Acme Uptime?", "Is Acme Uptime a monitoring tool?" — the correct answer is *no*, and a wrong yes is a recognized-and-wrong defect to fix **first**, before working unknowns).
- [ ] No self-authored Wikipedia work — Wikidata item is fine; Wikipedia is earned, not written.

## 3. Quotable — passage-citability score of the actual blog draft (`02-launch-blog.md`)

| Dimension | Pts | Draft scores | Notes |
|---|---:|---:|---|
| Self-contained answer capsule (40–60 words, first 150) | 20 | **20** | Capsule present, 48 words, no anaphora |
| Direct quotation, credible named source (~+40%, strongest lever) | 15 | **0** | `[NEEDS INPUT: named beta-customer quote]` — marker already in draft |
| Cited statistic with source + date (~+33%) | 15 | **7** | 90-sec median present but internal & fictional-labeled; a citable public methodology note would earn full marks — `[NEEDS INPUT: publish how the median is measured]` |
| Outbound authoritative citations (~+28%) | 15 | **0** | `[NEEDS INPUT: 2–3 primary sources — e.g., published postmortem-practice references]` |
| Extractable structure (H2/H3, table or FAQ block) | 15 | **13** | Clean H2s + FAQ appended; FAQ tier answer pending |
| Named author + bio + `Person`/`Author` JSON-LD (~2.3× odds) | 10 | **0** | `[NEEDS INPUT: author byline]` — marker in draft |
| Freshness ≤90 days | 10 | **10** | New page; 90-day refresh committed in production notes |
| Keyword stuffing penalty (~−9%) | −10 | **0** | Clean — no stuffing |
| **Total** | 100 | **50 → rebuild-zone until inputs land; projected ~85 with quote, byline, and citations filled** | The gap is *evidence*, not writing — exactly what the `[NEEDS INPUT]` markers exist to collect |

Effect sizes: Aggarwal et al., "GEO: Generative Engine Optimization" (KDD 2024) — directional levers, not guarantees; they apply to content the engine already retrieved.

## 4. Tracked question set (share-of-voice heatmap, rows × engines)

Engines: ChatGPT, Perplexity, Google AI Overviews, Gemini, Copilot — tracked **separately** (ChatGPT and Perplexity share only ~11% of cited domains). Sample each question 3–5× fresh sessions, record citation *frequency*, log sample size + date. Baseline **before** launch day.

1. "best status page tool for B2B SaaS"
2. "how to communicate with customers during an incident"
3. "status page alternatives to a green dot / uptime indicator"
4. "what is an incident timeline"
5. "how fast should you post incident updates"
6. "tools to reduce 'is it down' support tickets"
7. "how to publish a postmortem customers can find"
8. "Acme Uptime" (brand-recognition row — graded on description accuracy, not presence)

## 5. Measuring arrival (honesty clause)

AI-referred traffic largely arrives with **no referrer** and files under Direct — the measured AI channel is a **floor, not a total**. Build the AI channel group and the observed/modeled/missing decomposition with the Marketing Ops Architect (their instrument, our interpretation); judge the segment by conversion quality, never defund on its session count. UTM-tag only links we control (docs, profiles, syndicated content) — a UTM can't reach a link an assistant composes.
