# Discoverability Standard

A repo nobody can find, and nobody can understand once they find it, has no value — however good the
work inside it is. Describing this project well is not decoration on top of the real work; it **is**
part of the work. Every run applies this standard.

Two failures to design against:

1. **Findability** — a marketer searching GitHub, Google, or an AI assistant for the thing we actually
   have never sees us, because the words they searched for appear nowhere in our indexed surfaces.
2. **Legibility** — someone lands on the repo and cannot tell within one screen what it is, whether it
   solves their problem, or how to start. They leave.

---

## The surfaces that get indexed (keep every one current)

Ranked by how much reach they carry. When the project changes, these are what must change with it.

| Surface | Why it matters | Rule |
|---|---|---|
| **GitHub repo description** (the About box) | The single most-read line. Shown in GitHub search results, topic pages, Google snippets, and every social unfurl. | Must name what it is, who it's for, and the real counts. Update it **in the same run** that changes those counts. Max 350 characters — use them. |
| **GitHub topics** | Topic pages are browsed directly and feed GitHub's own search. | Keep the 20-topic cap full and relevant. Re-check when a new discipline is added. |
| **README first screen** (title, tagline, badges, first paragraph) | Decides whether a visitor stays. Also the text most likely to be quoted by an AI assistant. | Say what it is, who it's for, and how to install — above the fold, no scrolling. |
| **README body** | The largest keyword surface we own, and the page most likely to be retrieved and cited. | **Name things.** See "Name every specific" below. |
| **`AGENTS_INDEX.md`** | The complete, structured inventory. | Regenerate whenever an agent is added, renamed, or re-described. |
| **`llms.txt`** | Written for AI crawlers and assistants — the audience this repo is itself about. | Keep counts, skill list, and links exact. |
| **Skill `description:` frontmatter** | Determines whether the skill triggers at all when a user describes a task in their own words. | Include the natural phrases a marketer would actually type, not just formal discipline names. **Hard cap: 1,024 characters** (Agent Skills spec; Claude Code's listing also cuts at 1,536, so anything past that was never seen). Lead with the use case. To add a phrase at the cap, swap out a weaker one and put the longer list under `## More phrases that route here` in the skill body. `scripts/check-skill-descriptions.sh` enforces this in CI. |
| **Plugin + marketplace manifests** | Shown in the plugin manager at install time. | Keep in sync with the repo description. |
| **Commit messages** | Indexed, and read by anyone evaluating whether the project is alive. | Say what changed and why it matters to a user — not just which file moved. |

---

## Name every specific

The strongest discoverability lever available to this repo, and the cheapest.

A visitor asking *"is there a pricing agent?"* and a search engine matching *"willingness to pay"* both
fail against a page that says only "7 product marketing agents." They both succeed against a page that
names **Pricing & Packaging Strategist**. Abstractions are invisible; specifics are findable.

So: name the agents, the skills, the frameworks (MEDDPICC, Van Westendorp, Jobs-to-be-Done), the
standards (EU AI Act Article 50, C2PA, MCP, AP2), the platforms (Gartner Magic Quadrant, AWS
Marketplace, Bing Webmaster Tools), and the concepts (PQL, NRR, adstock, index bloat). Every one is a
term someone searches for, and every one tells a human something true about what is inside.

This is the same principle the repo's own [AEO/GEO playbook](../guides/aeo-geo-playbook.md) teaches:
specific, self-contained, well-labelled passages get cited; vague ones get skipped. Apply our own advice.

**Never** pad with words that carry no information. Length is not the goal — *specificity* is. A longer
sentence that names nothing is worse than a short one that names something real.

---

## Every-run checklist

Before committing, ask:

- [ ] **Did a count, name, or capability change?** Then update the GitHub About description, README
      (incl. badges), `AGENTS_INDEX.md`, `llms.txt`, both manifests, and any skill table that states it.
      Grep for the old number across the repo — stale counts are the most common defect here.
- [ ] **Is the new thing findable by the words a user would search?** If a new agent, skill, or guide
      shipped, its name and the problem it solves must appear in the README, not only in a subdirectory.
- [ ] **Would a first-time visitor understand this change from the README alone?** If it only makes
      sense to someone who already knows the repo, rewrite it.
- [ ] **Does the commit message state the user-facing benefit**, not just the mechanical change?
- [ ] **Anything now inaccurate?** An overstated claim is worse than an unfindable one. Fix, don't inflate.

## Boundaries

Discoverability work is honest description, never manipulation:

- No fabricated metrics, testimonials, adoption numbers, or "used by" claims.
- No keyword stuffing, hidden text, or filler prose. (Our own playbook notes that keyword stuffing
  *reduces* generative-engine visibility — it fails on its own terms as well as ethically.)
- No inflated superlatives we cannot support. Describe precisely what exists; that is enough.
- Promotion to third parties (awesome-lists, forums, social) stays on the human-approved track — this
  standard governs how we describe the repo **in the repo**, not where we post it.
