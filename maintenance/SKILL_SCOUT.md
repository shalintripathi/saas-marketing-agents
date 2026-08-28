# Skill Scout — market intelligence & adoption

The second recurring job (the first is [ROUTINE.md](ROUTINE.md), general maintenance).
Its mission: **keep this repo the best open-source marketing-skill collection by continuously
learning from the market.** Monitor GitHub and the web for high-value / trending marketing
skills, compare them to what we already have, and then do one of two things:

1. **Enhance** — when someone has published a higher-value open-source skill for something we
   *already* cover, learn from it and improve ours.
2. **Add** — when a genuinely valuable marketing skill is *missing* from this repo, add it.

Quality over quantity. A quiet run (nothing worth adopting) is a valid, good outcome — never
manufacture a change to look busy.

---

## Each run, in order

1. **Sync & inventory.** `git checkout main && git pull --ff-only`. Read [AGENTS_INDEX.md](../AGENTS_INDEX.md)
   (our 74 agents) and list `plugins/saas-marketing/skills/` (our 19 skills) so you know what we have.
   Read [scout-ledger.md](scout-ledger.md) so you don't re-evaluate the same sources every run.
2. **Scout.** Search GitHub + the web for top/trending open-source marketing skills, agents, and
   prompt collections. Rotate the focus discipline each run (content/SEO · paid/social ·
   email/analytics/ops · PMM/sales/GTM) so the whole space gets covered over time, and always
   re-check the known collections for meaningful updates. Prefer things updated in the last ~6
   months with real substance. A trending repo is **not** automatically better than ours — be skeptical.
3. **Compare.** For each notable find, classify against our inventory: **enhance** (we have it but
   theirs is better in some respect), **add** (we're missing it), or **have** (already covered well).
4. **Act on ONE thing** — the single highest-value opportunity this run:
   - **Enhance:** rewrite/extend our agent or skill in *our* format and voice, incorporating the
     ideas/structure/best-practices worth learning. Lint it (`bash scripts/lint-agents.sh <file>`),
     keep dual-located copies in sync, commit.
   - **Add (a genuine gap):** **write and ship the new agent** in our schema (frontmatter + Identity /
     Core Mission / Critical Rules / Deliverables / Success Metrics), lint it, register it in
     `AGENTS_INDEX.md` and the owning skill's agent table, and commit. Cap: **≤1 new agent per run.**
     Adding is expected, not exceptional — a repo that only ever edits itself stops growing. Before
     adding, prove the gap: no existing agent owns the role (check `AGENTS_INDEX.md`), the role is
     durable rather than a fad, and there's real demand evidence. If it warrants a **new discipline**
     directory, create it and note the structural change in the run log.
   - **Add (license-risky or structurally large):** do **not** auto-add. File a backlog item under
     "skill curation" **and** open a GitHub issue proposing it, with sources — let a human decide.
5. **Make it findable.** Apply the [Discoverability Standard](DISCOVERABILITY.md): a new agent that nobody
   can find helps nobody. Its **name and the problem it solves** must reach the README (not just its own
   directory), `AGENTS_INDEX.md`, `llms.txt`, and the owning skill's `description:` frontmatter — and if the
   agent or skill count changed, update the **GitHub About description** and README badges in the same run.
6. **Record.** Append to [scout-ledger.md](scout-ledger.md) every source you evaluated and the verdict
   (adopted / enhanced-ours / dismissed / watch). Append a dated [RUN_LOG.md](RUN_LOG.md) entry; add a
   `CHANGELOG.md` `[Unreleased]` bullet if user-facing; update [backlog.md](backlog.md).
7. **Notify.** Send a push notification summarizing what changed and its source(s). If the run was a
   genuine no-op, stop quietly (no notification).

---

## Licensing & attribution — non-negotiable

We build on the community; we never plagiarize or break a license.

- **Ideas are free.** Concepts, structure, terminology, workflows, and best-practices are not
  copyrightable — learn them freely from anywhere.
- **Expression is not.** Never copy prose, prompts, or file content verbatim. Everything we ship is
  **written from scratch in our own format and voice.**
- **Permissive sources** (MIT, Apache-2.0, BSD, ISC, CC-BY, CC0, Unlicense): if you directly adapt
  material, add a short `Adapted from / inspired by <name> (<url>) — <license>` note and comply with the
  license's notice requirements.
- **Restrictive, no-license, or copyleft/NC/ND sources:** **ideas only.** Do not create a derivative
  of their expression. Credit the inspiration; do not adopt their text.
- **When in doubt, treat it as ideas-only and cite the source.** Prefer over-crediting.

## Other hard guardrails

- **Never** commit personal or sensitive information — public attribution ("Shivaa Tripathi" /
  "shalintripathi") only.
- **No fabricated metrics or claims.** Every statistic/quote names a real source (URL) with a read-date;
  flag contested claims.
- **No empty or padding commits.** Nothing worth adopting this run → no commit.
- **De-dupe.** Check the inventory before adding; don't duplicate an agent we already have.
- **One high-quality change per run.** Propose bigger moves as issues, don't cram them into a run.
- **Never** post to social/forums or submit to third parties (that's the human's job / the promotion track).

---

## The scout ledger

[scout-ledger.md](scout-ledger.md) is the persistent memory of this job: one row per source evaluated,
so the scout compounds knowledge instead of re-scanning the same repos. Verdicts: `adopted-new`,
`enhanced-ours`, `dismissed` (with why), `watch` (revisit later).
