# The AEO / GEO Playbook for B2B SaaS

**How to get your content cited by AI answer engines — ChatGPT, Perplexity, Google AI Overviews & AI Mode, and Microsoft Copilot.**

> _Last reviewed: 2026-08-23. This is a living document — AI search changes fast, and this repo commits to keeping it current. Effect sizes below come from named studies; treat them as directional, not guarantees. Contested points are flagged._

Search is splitting into three overlapping jobs. This playbook covers all three and tells you where they diverge.

| Term | Optimizing for | The win condition |
|------|----------------|-------------------|
| **SEO** — Search Engine Optimization | Classic ranked "blue links" | You rank on page one |
| **AEO** — Answer Engine Optimization | Being the extracted answer (featured snippets, People-Also-Ask, voice, AI answers) | You are *the* answer |
| **GEO** — Generative Engine Optimization | Being **cited as a source** inside a generated answer | The model names and links you |

For B2B SaaS in 2026, GEO is the frontier: buyers increasingly ask an AI engine instead of clicking ten links, and the vendors the engine *cites* shape the shortlist before a human ever visits your site.

---

## 1. How AI answer engines actually choose sources

**They do not all work the same way. Optimize per-engine.** One analysis of ~680M citations found only ~11% domain overlap between ChatGPT and Perplexity — ChatGPT leans Wikipedia-heavy; Perplexity leans Reddit + very fresh pages. Do not assume one strategy transfers.

- **Google AI Overviews & AI Mode** run on the *same* ranking and quality systems as classic Search, using retrieval-augmented generation plus "query fan-out." There is **no separate checklist** to appear — a page just has to be indexed and snippet-eligible. Google is explicit that it does **not** use `llms.txt`, does **not** need content chunked into tiny pieces, does **not** need an "AI writing style," and does **not** require structured data for AI features (though schema still helps understanding). The levers Google names in that guide: unique, non-commodity, **people-first content**; a distinct point of view; and good page experience. (Google's separate *Creating helpful content* guidance and Quality Rater Guidelines add that **trust is the most important E-E-A-T component**.) _How citations now surface (Google, May 6 2026):_ AI Overviews and AI Mode place **inline links right next to the specific sentence** they support — so a clean, self-contained passage is what earns the visible link — and when the cited source is a discussion or social post, the link now shows the **creator's name/handle and the community name**, not just the domain. For B2B SaaS that sharpens the Reddit signal (§2, §4): the account you post under and the subreddit you post in are surfaced to the buyer, so authentic participation under a real identity beats an anonymous brand drop.
- **Microsoft Copilot / Bing** is more prescriptive. Bing Webmaster Tools now reports **AI Performance** — Total Citations, Average Cited Pages, Grounding Queries, and page-level Citation Activity — so you can see which of your pages Copilot/Bing AI answers actually cite. A **June 16 2026 expansion (preview)** added four views on top of those counts: **Citation Share** — *the percentage of citations attributed to your site out of all citations shown across all sites for the same grounding query*, i.e. a native competitive share-of-voice number rather than an absolute count; **Intents** (each grounding query classified Informational / Commercial / Navigational / Research / Local / etc.); **Topics** (grounding queries grouped into thematic clusters); and **Compare** (overlay a prior period to correlate citation shifts with content changes). Citation Share is the one to watch for B2B: it answers "am I winning this answer *versus my competitors*," not just "was I cited." Bing's five recommendations to get cited: (1) deepen topical expertise/authority; (2) improve structure — clear headings, tables, FAQ sections; (3) support claims with evidence, examples, data, cited sources; (4) maintain freshness with regular updates; (5) reduce format ambiguity — align text/image/video around the same entities. Copilot grounds through Bing + RAG and ranks on **relevance, engagement, and freshness**; use **IndexNow** to push updates instantly.
- **ChatGPT / Perplexity / Gemini** each retrieve differently and weight brand ubiquity and freshness heavily (see §2 and §4).

**Bottom line:** there is no magic file or trick. Crawlable, trustworthy, well-structured, evidence-backed, frequently-updated content is what gets retrieved — then GEO tactics (§2) tilt whether you get *cited*.

---

## 2. GEO tactics that measurably move citations

From the peer-reviewed **GEO: Generative Engine Optimization** study (Aggarwal et al., KDD 2024), which tested 9 methods on GEO-bench and measured visibility as Position-Adjusted Word Count. Reported effect sizes:

| Tactic | Visibility lift | Notes |
|--------|-----------------|-------|
| **Add quotations** from credible sources | **+40%** | Strongest single lever |
| **Add statistics / quantitative data** | **+33%** | Especially in Law/Government/Finance topics |
| **Fluency optimization** (cleaner writing) | **+29%** | Best combined with statistics |
| **Cite your sources** (outbound authoritative links) | **+28%** | Lower-ranked pages gain most (a rank-5 source gained ~+115%) |
| **Authoritative language** | positive | Gains concentrate in debate/history/science topics |
| **Keyword stuffing** | **negative (~ −9%)** | Classic keyword density is *counterproductive* for GEO |

Two strategic implications: effectiveness is **topic-dependent** (statistics win in analytical domains; quotations in narrative ones), and **the underdog advantage is real** — GEO tactics help lower-ranked pages disproportionately, so a page-2 result can leapfrog into the citation set.

> **Reality check (independent 2026 survey).** A critical survey of GEO covering 45 studies from 2023–2026 (Martinez, arXiv 2026) puts a sober bound on the table above: *"no reviewed technique shows a stable, longitudinal, cross-platform causal effect on organic discoverability,"* and the one effect that does replicate is narrow — only **already-retrieved content can causally alter its own citation or use**. Read plainly: these levers reliably improve how a page the engine *already pulled* gets quoted (the AEO half), but none is proven to make an engine *retrieve* you in the first place — that discovery half is what the correlational signals below speak to, not causally. The survey also found commercial GEO tools show *"low source overlap, substantial run-to-run variability, and persistent fidelity gaps."* So treat these percentages as directional levers **within** an answer, never as a discovery guarantee.

**Independent correlational research points off-page.** An Ahrefs study of ~75K brands found AI visibility correlates most with **branded web mentions (0.66–0.71)** and **YouTube mentions (~0.74)** — while raw organic traffic correlates weakly (~0.27). Brand ubiquity beats pure ranking. For B2B SaaS specifically, **Reddit drives roughly 6× more AI citations than G2**, and presence on **G2 / Capterra / TrustRadius is table stakes** (absence quietly rules you out of comparison answers).

> **Contested:** the ranking→citation link is loosening. Top-10 results supplied ~76% of AI Overview citations in mid-2025 but ~38% (Ahrefs) to as low as 17% (BrightEdge) by early 2026. Sources disagree on the number; all agree the link is weakening. Don't abandon SEO — but don't assume a #1 ranking guarantees the citation.

---

## 3. Structure content for extraction and citation

- **Answer-first.** Open every page with a self-contained 40–60 word answer to its core question, inside the first ~150 words. A large share of AI citations come from the top of the page.
- **One idea per passage.** Use descriptive H2/H3s, short paragraphs, tables, and FAQ-style Q&A blocks so an engine can lift a clean, quotable passage.
- **Name your authors.** Real bylines with real credentials and bios materially raise citation odds (~2.3× in one analysis). Add `Person`/`Author` structured data that mirrors the visible byline.
- **Organize around entities**, not keyword strings — your product, category, competitors, and the people behind them. Consistent entity naming across text, images, and video helps engines connect the dots.
- **Structured data that still matters:** `Article`, `Organization`, `BreadcrumbList`, `Product`, `Video`. Mark up only content visible on the page.
  - _Now settled (2026):_ Google **removed FAQ *rich results*** — they stopped appearing May 7 2026, the search-appearance filter, rich-result report, and Rich Results Test support were dropped in June, and **Search Console API support for them ends August 2026**. But `FAQPage` is still a valid Schema.org type Google reads to understand a page, and Bing + GEO practitioners still recommend **FAQ *structure*** because Q&A blocks are easy for engines to extract. Keep the FAQ markup and format; just don't expect the rich-result appearance.

---

## 4. Freshness, trust, and distribution

- **Refresh on a ~90-day cadence.** Pages updated within ~2 months earn materially more citations; roughly half of AI citations are under ~13 weeks old. Date your content and genuinely update it (not just the timestamp).
- **Trust is the top E-E-A-T factor.** Accurate, verifiable claims win — and AI engines will happily cite an inaccurate page, which becomes reputational risk. Fact-check harder than you did for classic SEO.
- **Build off-page brand signals:** earned media and branded mentions, a real YouTube presence, authentic participation in the subreddits your buyers read, and current G2/Capterra/TrustRadius profiles.
- **Push updates fast:** submit changed URLs via **IndexNow** so Bing/Copilot re-index quickly.

---

## 5. What *not* to do

- **Don't keyword-stuff** — it's negative for GEO and risks Google's spam systems.
- **Don't mass-produce thin AI content.** Google's **scaled content abuse** policy targets high-volume low-value pages "no matter how created" (automated, human, or hybrid). Depth and originality beat volume.
- **Don't over-invest in `llms.txt`.** It's cheap to publish and this repo ships one, but **Google says it ignores it** and no major AI crawler has confirmed reading it. It is not a substitute for crawlable HTML. Publish it; don't count on it.
- **Don't chase inauthentic mentions.** Google names these as unhelpful; fabricated buzz doesn't convert to citations and can backfire.

---

## 6. The 15-point checklist

1. Lead every page with a self-contained 40–60 word answer in the first ~150 words.
2. Inject cited statistics and quantitative data into your claims (+~33%).
3. Add direct quotations from credible experts/sources (+~40%, the strongest lever).
4. Cite and outbound-link to authoritative sources (+~28%).
5. Write unique, people-first content with a distinct point of view.
6. Attach named authors with real bios and credentials (~2.3× citations).
7. Structure with clear headings, tables, and FAQ-style Q&A blocks.
8. Refresh key pages every ~90 days and show the date.
9. Organize content around entities, not keyword strings.
10. Implement `Article`, `Organization`, and `Person` JSON-LD that mirrors visible content.
11. Build branded web mentions and a real YouTube presence (highest-correlating signals).
12. Seed and engage authentically in the subreddits your buyers read (~6× G2 for B2B SaaS).
13. Keep G2 / Capterra / TrustRadius listings current — table stakes.
14. Ensure clean crawlability and submit updates via IndexNow for Bing/Copilot.
15. Track per engine separately — and know the two reports measure different things: **GSC's Search Generative AI performance report** shows AI Overviews/AI Mode **impressions only** (visibility that your links were shown — no clicks, CTR, or query data yet), while **Bing Webmaster Tools' AI Performance report** shows actual **citations** (Total Citations, page-level Citation Activity) — and, since the June 2026 expansion, **Citation Share**, your relative share of citations for a grounding query, which is the closest thing any engine ships to a native competitive AI share-of-voice number. Never assume one strategy — or one metric — transfers.

---

## 7. Run this with the agents in this repo

- **`seo-ai-search-optimizer`** (in the [SEO Growth skill](../plugins/saas-marketing/skills/seo-growth/SKILL.md)) — audits AI visibility and builds the entity/citation strategy.
- **`content-*` agents** ([Content Marketing skill](../plugins/saas-marketing/skills/content-marketing/SKILL.md)) — draft answer-first, quotation- and statistic-rich content.
- **`entity-schema` work** via `seo-technical-auditor` — implement the JSON-LD.
- **CATALYST orchestrator** — string these together into a recurring "AEO/GEO content loop" (see [`loops/`](../loops/README.md)).

---

## Sources

- Google — [AI features & your website](https://developers.google.com/search/docs/fundamentals/ai-optimization-guide) · [Creating helpful content](https://developers.google.com/search/docs/fundamentals/creating-helpful-content) · [Spam policies](https://developers.google.com/search/blog/2024/03/core-update-spam-policies) · [FAQ structured data (rich-result deprecation)](https://developers.google.com/search/docs/appearance/structured-data/faqpage) · [How AI Mode and AI Overviews help you explore the web (inline citations + creator/handle/community attribution, May 6 2026)](https://blog.google/products-and-platforms/products/search/explore-web-generative-ai-search/)
- Google — [Search Generative AI performance report (impressions-only; AI Overviews/AI Mode)](https://support.google.com/webmasters/answer/16984139) · [Introducing the report (Search Central, June 2026)](https://developers.google.com/search/blog/2026/06/gen-ai-performance-reports)
- Bing/Microsoft — [AI Performance in Bing Webmaster Tools](https://blogs.bing.com/webmaster/February-2026/Introducing-AI-Performance-in-Bing-Webmaster-Tools-Public-Preview) · [New AI visibility insights: Intents, Topics, Citation Share, Compare (preview, June 16 2026)](https://blogs.bing.com/search/June-2026/New-AI-Visibility-Insights-in-Bing-Webmaster-Tools-Intents-Topics-Citation-Share-Compare) · [Copilot guidance for public websites](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/generative-ai-public-websites)
- GEO research — [GEO: Generative Engine Optimization (Aggarwal et al., KDD 2024)](https://arxiv.org/abs/2311.09735) · [Optimizing Visibility in Generative Engines: A Critical Survey of GEO 2023–2026 (Martinez, arXiv, July 2026 — 45 studies; no stable cross-platform causal effect on organic discoverability, causal gains bounded to already-retrieved content)](https://arxiv.org/abs/2607.14035)
- Correlational data — [Ahrefs: AI brand-visibility correlations](https://ahrefs.com/blog/ai-brand-visibility-correlations/) · [Ahrefs: AI Overview citations & top 10](https://ahrefs.com/blog/ai-overview-citations-top-10/) · [Profound: AI platform citation patterns](https://www.tryprofound.com/blog/ai-platform-citation-patterns)
- llms.txt — [llmstxt.org](https://llmstxt.org/) · [Ahrefs: what is llms.txt](https://ahrefs.com/blog/what-is-llms-txt/)

_Found something outdated? [Open an issue](https://github.com/shalintripathi/saas-marketing-agents/issues) — keeping this current is the point._
