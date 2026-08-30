---
name: seo-growth
description: "End-to-end SEO operations for B2B SaaS organic visibility. Use this skill when you need keyword research, technical SEO audits, content optimization, link building strategy, international expansion, AI/AEO optimization, schema markup, Core Web Vitals improvements, and organic traffic growth planning. Also triggers on: SEO, keyword research, technical SEO, link building, content optimization, international SEO, hreflang, x-default, multilingual site, translated pages not ranking, our German site gets no traffic, language switcher, auto-redirect by country, machine translation SEO, content parity, ccTLD vs subfolder, AI search, AEO, GEO, Core Web Vitals, schema markup, organic traffic, G2 listing, Capterra, TrustRadius, review-platform category page, best software roundup, listicle placement, directory submissions."
---

# SEO Growth Skill

## Step 0 (always first): Load brand context

**Before producing any deliverable, look for a `brand-context.md` file** in the user's project root (also check `./.claude/brand-context.md` and `./docs/brand-context.md`). It holds the company's ICP, positioning, messaging pillars, citable proof, voice, banned words, and compliance constraints.

- **If it exists:** read it in full and treat it as binding for this run. Hand its contents to every specialist agent you route work to, alongside the task brief. Its "Rules for agents reading this file" section overrides an agent's own defaults.
- **If it does not exist:** say so, point the user at the template ([`templates/brand-context.md`](../../templates/brand-context.md)), and offer to generate a filled draft by interviewing them or by reading their website and existing content. Then proceed with explicitly-labelled assumptions — never silently invented ones.

**Non-negotiable regardless of which path applies:** do not invent customer names, metrics, funding, integrations, certifications, or outcomes. Only proof recorded in `brand-context.md` (or supplied directly in the request) may be used as fact. Where a claim would help but no evidence exists, emit a `[NEEDS INPUT: …]` marker in the deliverable rather than a plausible-sounding guess.

---

## What This Is

The SEO Growth skill coordinates a team of 7 specialized agents to drive sustainable organic visibility for B2B SaaS companies. From foundational keyword research and technical audits to advanced AI search optimization and international expansion, this skill orchestrates every component of a modern SEO program. This team handles organic search strategy, execution, and measurement—enabling you to build compounding organic traffic that reduces your reliance on paid channels.

## The Team: 7 Specialist Agents

| # | Agent | File | What They Do |
|---|-------|------|-------------|
| 1 | Keyword Researcher | `agents/seo-keyword-researcher.md` | Conducts comprehensive keyword discovery identifying search volume, competition, intent, and opportunity gaps. Maps keywords to buyer journey stages (awareness, consideration, decision) and discovers the AI-answer-engine query landscape (conversational/fan-out questions) the AEO program is measured against. |
| 2 | Content Optimizer | `agents/seo-content-optimizer.md` | Optimizes existing web pages and blog articles for target keywords. Improves on-page elements (title tags, headers, body content) while maintaining natural, readable copy. |
| 3 | Technical Auditor | `agents/seo-technical-auditor.md` | Audits site health: crawlability, indexation, site speed, mobile responsiveness, Core Web Vitals, structured data, XML sitemaps, robots.txt configuration. Identifies and prioritizes technical fixes. |
| 4 | Link Building Strategist | `agents/seo-link-building-strategist.md` | Develops link building campaigns through outreach, partnerships, content-driven links, and earned media. Maps competitive link profiles and identifies high-value backlink opportunities. Also owns your presence on the third-party pages that hold your shortlist queries — "best [category] software" roundups, software directories, and review-platform category pages (G2, Capterra, TrustRadius) — including stale-entry corrections and keeping paid inclusions qualified rather than counted as earned links. |
| 5 | AI Search Optimizer | `agents/seo-ai-search-optimizer.md` | Optimizes content for AI search engines (ChatGPT, Claude search, Perplexity) and Answer Engine Optimization (AEO). Improves visibility in AI-generated summaries and snippets. |
| 6 | Local & International SEO | `agents/seo-local-and-international.md` | Expands SEO strategy to international markets and local search. Validates hreflang as a reciprocal set (self-reference, return tags, `x-default`, per-locale canonicals), diagnoses the silent failures — IP auto-redirect hiding locales from Googlebot, stale translations, cross-locale canonicals — sets machine-translation review policy against Google's scaled-content-abuse rule, and runs country-segmented Search Console reads for in-language demand. |
| 7 | Programmatic SEO Strategist | `agents/seo-programmatic-strategist.md` | Builds SEO from datasets and templates rather than drafts: integration, comparison, /vs and /alternatives and glossary pages at scale, with index-bloat and thin-content guardrails and internal linking across the set. |

## How to Use

### Routing User Requests

**Keyword Research & Strategy**
- "What keywords should we target in [industry/product category]?" → Keyword Researcher
- "Map keywords to our sales funnel" → Keyword Researcher
- "Analyze keyword opportunity across competitor domains" → Keyword Researcher
- "Identify content gaps—what are we missing?" → Keyword Researcher + Content Optimizer

**Content Optimization & Updates**
- "Optimize our top 10 underperforming pages" → Content Optimizer
- "Our page ranks #3 for [keyword], how do we get to #1?" → Content Optimizer + Technical Auditor
- "Update blog content for freshness and ranking improvement" → Content Optimizer
- "Create content clusters around [pillar topic]" → Keyword Researcher (strategy) + Content Optimizer (execution)

**Technical SEO & Site Health**
- "Conduct a full SEO audit of our website" → Technical Auditor
- "Fix our Core Web Vitals issues" → Technical Auditor
- "Implement schema markup for our product pages" → Technical Auditor
- "Diagnose why our rankings dropped" → Technical Auditor + Content Optimizer

**Link Building & Authority**
- "Build a link acquisition strategy for [industry]" → Link Building Strategist
- "Analyze our link profile vs. competitors" → Link Building Strategist
- "Launch a campaign to get featured in [industry publication]" → Link Building Strategist
- "Find high-value link opportunities in [niche]" → Link Building Strategist
- "We don't rank for 'best [category] software' — the roundups do. What do we do?" → Link Building Strategist
- "Audit our G2 / Capterra / directory listings for stale or missing entries" → Link Building Strategist

**AI & Answer Engine Optimization**
- "Optimize our content for AI search visibility" → AI Search Optimizer
- "How are we appearing in ChatGPT/Claude search results?" → AI Search Optimizer
- "Develop AEO strategy for our industry" → AI Search Optimizer
- "Improve snippet appearance in AI-generated responses" → AI Search Optimizer + Content Optimizer

**International & Local Expansion**
- "Expand our SEO strategy to [country/region]" → Local & International SEO
- "Set up multi-language content strategy" → Local & International SEO
- "Target local customers in [geographic area]" → Local & International SEO
- "Implement hreflang and multi-regional configuration" → Local & International SEO + Technical Auditor
- "Our translated pages get no traffic" / "the German site was never indexed" → Local & International SEO (start with the auto-redirect and hreflang-set checks)
- "Is machine translation safe for SEO?" / "do we need native translators?" → Local & International SEO
- "Which country should we localize for next?" → Local & International SEO (the in-language demand read) → PMM International GTM Strategist (the decision)

### Execution Model

**Phase 1: Audit & Discovery**
1. **Current State Assessment**
   - Technical Auditor scans site architecture, crawlability, indexation
   - Keyword Researcher reviews current rankings and traffic sources
   - Content Optimizer analyzes on-page optimization quality
   - Link Building Strategist maps existing backlink profile

2. **Competitive Intelligence**
   - Keyword Researcher identifies top-ranking competitors for target keywords
   - Link Building Strategist analyzes competitor link sources
   - Content Optimizer reviews competitor content depth and structure
   - AI Search Optimizer checks competitor visibility in AI search results

3. **Opportunity Mapping**
   - Keyword Researcher documents high-opportunity keyword clusters
   - Technical Auditor prioritizes critical technical fixes
   - Content Optimizer identifies content refresh candidates
   - Link Building Strategist lists high-value link prospects

**Phase 2: Strategy & Roadmap**
1. **Keyword Strategy**
   - Develop tiered keyword target list (quick wins, medium-term, long-term)
   - Map keywords to pages (avoid cannibalization)
   - Identify new content opportunities
   - Plan content cluster architecture

2. **Technical Roadmap**
   - Prioritize technical fixes by impact and effort
   - Create implementation timeline
   - Identify quick wins (metadata optimization) vs. structural changes

3. **Link Building Plan**
   - Develop content hooks for earning links
   - Identify outreach targets and partnership opportunities
   - Plan owned/earned media tactics

4. **AI/International Expansion**
   - Define AI search positioning goals
   - Outline multi-language or multi-region rollout timeline
   - Identify localization needs and keyword adjustments

**Phase 3: Execution & Optimization**
1. **Content Optimization Cycle**
   - Content Optimizer updates on-page elements for target keywords
   - Maintain Natural writing and user experience
   - Publish with proper internal linking
   - Monitor rank changes (4-8 weeks typical)

2. **Technical Implementation**
   - Technical Auditor implements fixes in priority order
   - Validate fixes (crawl tests, mobile audit, Core Web Vitals check)
   - Monitor indexation after major changes

3. **Link Outreach**
   - Link Building Strategist executes personalized outreach campaigns
   - Measure response rates and link acquisition
   - Adjust messaging and targeting based on results

4. **New Content Creation**
   - Blog posts/landing pages optimized by Content Optimizer
   - Cluster content interlinking strategy
   - Measurement plan (rankings, traffic, conversion attribution)

5. **AI/International Rollout**
   - AI Search Optimizer refines content for AI visibility
   - Local & International SEO implements hreflang, language versions
   - Regional keyword optimization by market

**Phase 4: Measurement & Iteration**
- Track rankings by keyword tier (top 10, top 20, top 50)
- Monitor organic traffic growth by segment (branded, non-branded, competitor, long-tail)
- Measure conversion rate by traffic source
- Audit Core Web Vitals monthly
- Review link acquisition pace (links per month, domain authority)
- AI search impressions and click-through rates
- Monthly SEO reviews with recommendations for next month

### Specialized Coordination Scenarios

**Launching a New Product / Market**
1. Keyword Researcher: Keyword research specific to new product/market
2. Technical Auditor: Audit new product site/section
3. Content Optimizer: Create optimized product pages, category pages, resource pages
4. Link Building Strategist: Plan launch PR and link generation
5. AI Search Optimizer: Ensure product visibility in AI search
6. Local & International SEO: If expanding to new regions

**Recovering from Ranking Drop**
1. Technical Auditor: Check for crawl errors, indexation issues, site speed regression
2. Content Optimizer: Analyze competitor content changes, identify if content quality gap
3. Link Building Strategist: Verify no negative link profile changes
4. Keyword Researcher: Confirm keyword wasn't deprioritized or removed
5. AI Search Optimizer: Check AI visibility changes (may indicate broader content shift)

**International Expansion**
1. Keyword Researcher: Multi-language keyword research, local market demand signals
2. Local & International SEO: hreflang setup, locale signals (Search Console country targeting is deprecated), regional link strategies
3. Content Optimizer: Localization and cultural relevance review
4. Technical Auditor: Multi-region site architecture (subdomains, subfolders, country domains)
5. Link Building Strategist: Local authority building in target regions
6. AI Search Optimizer: AI visibility in target language/regions

## Output Standards

### Quality Requirements

**Keyword Research**
- Minimum 100-keyword opportunity list with search volume, competition, intent classification
- Buyer journey mapping (awareness vs. consideration vs. decision keywords)
- Competitive difficulty assessment with realistic ranking timeline estimates
- Opportunity scoring (volume × opportunity × strategic fit)
- Monthly search volume verified from 2+ sources (Google Trends, Semrush, Ahrefs, Moz)

**Content Optimization**
- Title tag: 50-60 characters, includes primary keyword, compelling angle
- Meta description: 155-160 characters, includes keyword, compelling call to action
- H1: Single H1 per page, includes primary keyword naturally
- Headers: Logical hierarchy (H2, H3) with keyword variations
- Body content: 300-word minimum for target keywords, natural keyword integration
- Internal linking: Minimum 2-5 internal links per page to relevant content
- No keyword stuffing or unnatural language

**Technical Audit**
- Full crawl report: pages crawled, errors, warnings, redirects
- Core Web Vitals: Largest Contentful Paint (LCP), Interaction to Next Paint (INP), Cumulative Layout Shift (CLS) — INP replaced First Input Delay (FID) as a Core Web Vital on 2024-03-12; FID was retired on 2024-09-09 and is no longer collected
- Mobile-first indexing audit and mobile responsiveness check
- XML sitemap validation and Google Search Console integration review
- Schema markup validation (JSON-LD, Organization, Product, FAQ, etc.)
- Page speed audit with specific optimization recommendations
- Prioritized fix list: Quick wins (1 week), Medium-term (1 month), Structural (3+ months)

**Link Building**
- Competitive link analysis: Top 20 link sources for top competitors
- Prospect list: 50+ high-quality link opportunities with outreach angles
- Outreach templates: Personalized pitch templates for different link types
- Baseline: Current backlink count, domain authority, anchor text distribution
- Monthly reporting: Links acquired, new referring domains, domain authority trend

**AI Search Optimization**
- Analysis: Current visibility in ChatGPT, Claude, Perplexity, other AI search
- Content audit: Identify content ranked/featured in AI summaries
- Optimization recommendations: Structure for AI indexing, answer-first content
- Implementation: E-E-E-T (Experience, Expertise, Exhaustiveness, Trustworthiness) audit
- Monitoring: Track AI search impressions and click-through over time

**International/Local SEO**
- hreflang implementation: Correct annotation for multi-language/multi-region sites
- Keyword research: Language-specific and region-specific keyword lists
- Link strategy: Local authority building plan by region
- Schema markup: Location schema for local pages, multi-language schema setup
- Reporting: Rankings, traffic, and conversions segmented by region/language

### Performance Baselines

**Realistic Ranking Timeline**
- High-authority sites competing for keyword: 4-6 months to top 10
- Mid-authority sites, less competition: 2-4 months to top 10
- Brand-new sites: 6-12 months to see meaningful traffic
- Long-tail, low-volume keywords: 2-4 weeks possible

**Traffic Impact Expectations**
- Core Web Vitals improvements: 5-15% CTR increase from search
- Content optimization of existing pages: 10-30% traffic increase per page
- Technical fixes (crawl errors, indexation): 5-20% overall organic traffic
- New content (blogging): 10-30% monthly organic growth over 6 months

### Handoff & Deliverables

**Keyword Research**
- Spreadsheet with 100+ keywords: search volume, CPC, difficulty, intent, recommended landing page
- Buyer journey map: awareness, consideration, decision keyword categories
- Content gap analysis: topics we own vs. competitors
- Monthly research refresh recommendations

**Content Optimization**
- Before/after meta description and title tag
- Optimized page copy in Word or Google Doc
- Internal linking map showing added links and anchor text
- Implementation checklist for page updates

**Technical Audit**
- Executive summary (1-2 pages): Critical issues, quick wins, long-term roadmap
- Detailed audit report: Crawl errors, speed metrics, Core Web Vitals, schema issues
- Prioritized fix list with effort/impact assessment
- Implementation guide for each major fix

**Link Building**
- Competitive link analysis spreadsheet
- 50+ prospect outreach list with contact information and pitch angles
- Outreach email templates (3 variations)
- Baseline: current backlink count, referring domains, DA/PA scores

**AI Search Report**
- Current visibility in 4+ AI search engines
- Recommendations for content structure and optimization
- Implementation checklist for AEO best practices
- Monitoring dashboard setup instructions

**International/Local Rollout Plan**
- hreflang implementation guide
- Region/language-specific keyword lists
- Local link building opportunities by region
- Implementation timeline and technical specifications

---

**SEO is a long-term investment.** Build this relationship, provide regular feedback, and expect compounding returns over 6-12 months. Monthly check-ins and quarterly strategy reviews maximize results.
