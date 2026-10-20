# Measurement Plan — Incident Timeline launch

> Produced by: **Marketing Performance Analyst** 📈 (`analytics-performance-analyst`) · CATALYST-Sprint, Phase 5 (pre-wired in Phase 3)
> *Demo note: Acme Uptime is fictional. This plan asserts **no** benchmark figures — every target reads against Acme's own baseline, which is why the baseline rows carry `[NEEDS INPUT]` markers instead of invented numbers.*

## 0. Pre-launch instrument check (blocks launch if red)

The pre-mortem names "nobody can tell afterwards whether it worked" as a launch failure with a pre-launch test. So, before launch day:

- [ ] Events exist and fire: `timeline_enabled`, `timeline_viewed (public)`, `incident_update_published`, blog pageview, email click, signup-start, signup-complete — `[NEEDS INPUT: confirm against tracking plan with Marketing Ops Architect]`
- [ ] Definitions written down (below) and agreed by `[NEEDS INPUT: metric owner per row]`
- [ ] Series-break register checked: no scoring, channel-grouping, or consent changes land during the read window — if one must, it's dated and annotated on every chart it touches
- [ ] Baselines captured for every metric **before** Day 0

## 1. Two horizons (never close the launch on launch-week numbers)

| Pass | When | Question it answers |
|---|---|---|
| **Execution read** | Days 0–14 | Did the machine run? (sends, posts, traffic, activation starts) |
| **Outcome read** | One full sales cycle after launch — `[NEEDS INPUT: Acme's measured median sales cycle]` | Did the launch become a reason anyone bought or stayed? |

Launch-week outcomes resolve in days; the failures that matter resolve on the deal clock. The outcome read goes on the calendar **now**, or it quietly never happens.

## 2. Metric definitions (precise, with maturity windows)

| # | Metric | Definition (exact) | Source | Horizon / maturity | Target |
|---|---|---|---|---|---|
| 1 | **Timeline activation** (leading) | % of active paid customers with `timeline_enabled` fired, cumulative | product events | readable weekly; report with counts (n of 212 *(fictional demo metric)*) | `[NEEDS INPUT: adoption goal from product owner]` |
| 2 | **Incidents published to a timeline** (leading) | count of incidents with ≥1 public timeline update | product events | weekly | trend vs. zero baseline |
| 3 | **Blog engagement** | sessions on launch post + scroll-through; qualified = ICP segment where resolvable | web analytics | readable in 48h | vs. own prior launch posts `[NEEDS INPUT: prior-post baseline]` |
| 4 | **Email → enable clicks** | unique clicks on the single CTA (not opens — see §4) | ESP | readable in 72h | directional at n≈212 *(fictional demo metric)* — report counts, not rates alone |
| 5 | **LinkedIn first-hour → 24h reach** | median engagements at 60 min vs. 24h reach, per post, with counts | page analytics | per post | establishes our own first-hour curve — no imported benchmark |
| 6 | **Signups influenced** (lagging) | signup-completes with a launch-content touch in path (model named on the report) | analytics + billing | **mature only after wks 4–6** — early reads are understated *by construction* | vs. pre-launch signup baseline `[NEEDS INPUT: baseline]` |
| 7 | **"Is it down?" ticket deflection** (lagging, the product's own promise) | support tickets tagged is-it-down per incident, before vs. after timeline enabled, per customer | support desk | needs ≥ several incidents; small-n → directional | `[NEEDS INPUT: support-desk tag baseline]` |
| 8 | **AI/AEO floor** | AI-channel sessions + tracked-question citation frequency (from `05`) | GA4 channel group + heatmap | monthly; **floor, not total** | vs. pre-launch heatmap baseline |

## 3. Tripwire (from the pre-mortem, response written now)

- **Risk:** adoption stalls. **Observable:** metric #1 below `[NEEDS INPUT: threshold]` at day 30. **Watcher:** `[NEEDS INPUT: named person, not a function]`. **Prepared response:** in-app prompt + targeted re-send of `03` to non-enablers — drafted before launch, not in week two of a bad launch.

## 4. Honest-instrument rules for this launch

- **Email opens are machine-contaminated** (privacy proxies fetch pixels; no human involved). Decide subject-line results on clicks; at this list size most tests won't power a winner — a logged no-difference is a finding, not a failed month.
- **A flat number is two flows.** If the customer count reads flat post-launch, decompose: new + resurrected − churned, reconciled exactly to the net. A launch can add customers while churn cancels them — the net conceals exactly the thing we want to know.
- **Maturity before verdicts.** No "the launch didn't drive signups" claims from week-2 data; metric #6's window makes early cohorts understated every time, forever. A cohort too young to have converted has not failed to convert.
- **Anomalies close in one of five verdicts** — measurement change / behavioral change / mixed / expected variation / unresolved — and *unresolved with a named next check* is a professional answer. Unknown never rounds to explained.
- **Small denominators:** 212 customers *(fictional demo metric)* means percentage moves ride tiny counts. Every rate ships with its count; percentage thresholds carry an absolute floor.
- **Causality needs a control.** "Timeline customers churn less" is a self-selection trap until compared like-for-like. Flag it exploratory until it survives an independent period.

## 5. Reporting cadence

- **Daily (launch week):** execution dashboard — channels live, tracking firing, metrics 3–5.
- **Day 14:** execution retrospective (two ledgers: *what happened* / *what we'd decide differently* — at least one owned decision change, or it was a debrief).
- **One sales cycle:** outcome pass — reopen the pre-mortem register row by row; record which predicted risks materialized *and which real failures nobody named*.
