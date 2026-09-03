---
name: content-marketing
description: "Master orchestrator for B2B SaaS content creation and the editorial production system behind it. Use this skill to produce blog articles, whitepapers, case studies, video scripts, newsletters and ghostwritten thought leadership, to develop content strategy, and to run the publishing line itself — content briefs, editorial calendars and production capacity, review and approval workflow, subject-matter-expert access, the style guide, an AI-drafting policy, and a content inventory with owners. Also triggers on: blog, article, case study, whitepaper, newsletter, video script, ghostwriting, content calendar, editorial, thought leadership, content strategy, content brief, content operations, content ops, editorial workflow, managing editor, who reviews this, our content pipeline is stuck, content is stuck in review, content audit, content inventory, content governance, style guide, house style, SME interview, expert interview, freelance writers, AI content policy, how much content can we actually produce."
---

# Content Marketing Skill

## Step 0 (always first): Load brand context

**Before producing any deliverable, look for a `brand-context.md` file** in the user's project root (also check `./.claude/brand-context.md` and `./docs/brand-context.md`). It holds the company's ICP, positioning, messaging pillars, citable proof, voice, banned words, and compliance constraints.

- **If it exists:** read it in full and treat it as binding for this run. Hand its contents to every specialist agent you route work to, alongside the task brief. Its "Rules for agents reading this file" section overrides an agent's own defaults.
- **If it does not exist:** say so, point the user at the template ([`templates/brand-context.md`](../../templates/brand-context.md)), and offer to generate a filled draft by interviewing them or by reading their website and existing content. Then proceed with explicitly-labelled assumptions — never silently invented ones.

**Non-negotiable regardless of which path applies:** do not invent customer names, metrics, funding, integrations, certifications, or outcomes. Only proof recorded in `brand-context.md` (or supplied directly in the request) may be used as fact. Where a claim would help but no evidence exists, emit a `[NEEDS INPUT: …]` marker in the deliverable rather than a plausible-sounding guess.

---

## What This Is

The Content Marketing skill coordinates a team of 8 specialist agents to produce publication-ready content across multiple formats and channels. From long-form whitepapers and case studies to video scripts, newsletters, and executive thought leadership pieces, this skill orchestrates the entire content creation workflow for B2B SaaS companies. Each agent brings specialized expertise in their content format, enabling you to delegate confidently and scale your content operations.

## The Team: 8 Specialist Agents

| # | Agent | File | What They Do |
|---|-------|------|-------------|
| 1 | Blog Strategist | `agents/content-blog-strategist.md` | Plans editorial calendars, researches topics, outlines blog posts, and ensures SEO alignment with search intent. Handles long-form articles (1,500-3,000+ words) optimized for organic reach. |
| 2 | Case Study Producer | `agents/content-case-study-producer.md` | Structures customer success stories into compelling case studies with data, metrics, testimonials, and narrative arcs. Extracts ROI and transformation angles from customer interviews. |
| 3 | Whitepaper Architect | `agents/content-whitepaper-architect.md` | Designs in-depth research documents (8,000-15,000 words) with rigorous structure, credibility signals, and gated content optimization. Creates lead magnets with authority and perceived value. |
| 4 | Copywriter | `agents/content-copywriter.md` | Writes high-converting copy across landing pages, CTAs, product descriptions, and promotional content. Balances brand voice with persuasive messaging and value proposition clarity. |
| 5 | Video Script Writer | `agents/content-video-script-writer.md` | Creates scripts for product demos, explainers, customer testimonials, and educational videos optimized for YouTube and social platforms. Includes visual direction and pacing notes. |
| 6 | Newsletter Curator | `agents/content-newsletter-curator.md` | Develops email newsletter strategies, curates industry insights, writes engaging email copy, and designs nurture sequences that drive engagement and conversions. |
| 7 | Thought Leadership Ghostwriter | `agents/content-thought-leadership-ghostwriter.md` | Authors executive-level articles, opinion pieces, and bylined content attributed to company leadership. Establishes authority through authentic voice and market insights. |
| 8 | Content Operations Manager | `agents/content-operations-manager.md` | Runs the production line the other seven work on: the brief standard that names the claim before anything is assigned, capacity planned against the real constraint (SME access and review, not writing), a review chain with named roles and turnarounds, Hold and Kill as real states, the versioned style guide, the AI-drafting accountability policy, and a content inventory where every live URL has an owner and a last-reviewed date. |

## How to Use

### Routing User Requests

**Blog & Long-Form Content**
- "We need 5 blog posts covering [topics]" → Blog Strategist (outline) → Copywriter (drafting)
- "Research and outline a 3,000-word guide on [topic]" → Blog Strategist
- "Optimize this blog post for SEO" → Blog Strategist (with existing article)

**Case Studies & Customer Stories**
- "Turn this customer success story into a case study" → Case Study Producer
- "We need case studies showing ROI in [industry vertical]" → Case Study Producer
- "Create a customer testimonial video script" → Video Script Writer (in tandem)

**Thought Leadership & Executive Content**
- "Write an op-ed for our CEO on [topic]" → Thought Leadership Ghostwriter
- "Develop an authored article for industry publication" → Thought Leadership Ghostwriter
- "Create thought leadership positioning around [trend]" → Thought Leadership Ghostwriter

**Research & Authority Documents**
- "We need a 12,000-word whitepaper on [topic]" → Whitepaper Architect
- "Create a benchmark report/original research document" → Whitepaper Architect
- "Design a lead magnet with depth and credibility" → Whitepaper Architect

**Video & Multimedia Scripts**
- "Write scripts for a 3-part product demo series" → Video Script Writer
- "Create educational video content for YouTube channel" → Video Script Writer
- "Script a customer testimonial/success story video" → Video Script Writer

**Email & Newsletter**
- "Develop our monthly newsletter strategy and calendar" → Newsletter Curator
- "Write a 4-email nurture sequence on [topic]" → Newsletter Curator
- "Design a re-engagement email campaign" → Newsletter Curator

**Editorial Operations & Content Governance**
- "Our content pipeline keeps stalling / everything is stuck in review" → Content Operations Manager (measure cycle time by stage, find the real constraint)
- "Write us a content brief standard / template" → Content Operations Manager
- "How much content can we actually produce next quarter?" → Content Operations Manager (capacity against the constraint, not writer hours)
- "Who needs to review this, and how long do they get?" → Content Operations Manager (review charter; `ops-quality-assurance` owns the quality rubric and sign-off)
- "We need a style guide / our terminology is inconsistent" → Content Operations Manager (house style; product language routes to `pmm-messaging-architect`)
- "Set our policy for AI-assisted drafting" → Content Operations Manager (disclosure routes to `ops-legal-compliance`)
- "Which of our published pages are now wrong / who owns this page?" → Content Operations Manager (content inventory; the refresh-or-retire decision routes to `seo-content-optimizer`)
- "We're bringing on freelance writers" → Content Operations Manager (brief, SME access, rights and originality with `ops-legal-compliance`)
- "Get our SMEs into the process" → Content Operations Manager (scheduled, recorded interview bank)

**Copywriting & Conversion**
- "Write homepage copy that explains our value prop" → Copywriter
- "Improve CTAs and landing page copy" → Copywriter
- "Create promotional email copy for campaign" → Copywriter

### Execution Model

**Phase 1: Brief & Strategy**
1. Clarify content objective (awareness, consideration, conversion, retention)
2. Define audience persona (role, industry, pain point, decision process)
3. Identify content format and channel (blog vs. gated whitepaper vs. video)
4. Confirm deadlines, approval workflows, and revision cycles
5. Gather competitive context, brand guidelines, and any reference materials

**Phase 2: Research & Outlining**
- For blogs: Blog Strategist conducts keyword research, maps search intent, structures outline
- For whitepapers: Whitepaper Architect identifies research angle, credibility sources, data points
- For case studies: Case Study Producer extracts customer metrics, testimonials, transformation narrative
- For video scripts: Video Script Writer maps visual flow, timing, on-screen text, CTA placement
- For thought leadership: Ghostwriter researches market trends, competitive positioning, unique angle
- For newsletters: Newsletter Curator audits audience segments, defines content mix, plans issue calendar

**Phase 3: First Draft**
- Copywriter delivers initial draft for most formats (blogs, case studies, emails)
- Whitepaper Architect produces full first draft with citations and internal linking
- Video Script Writer delivers formatted script with [VISUAL] and [SOUND] annotations
- Thought Leadership Ghostwriter delivers authentic voice-matched draft
- Newsletter Curator provides template and sample 3-month calendar

**Phase 4: Feedback & Revision**
- Review against brand voice, accuracy, and strategic alignment
- Mark up drafts for agent refinement (length, tone, emphasis, data points)
- Agents execute 1-2 revision rounds within scope

**Phase 5: Optimization & Final**
- Blog posts: SEO final check (headings, metadata, internal links)
- Case studies: Ensure metrics are prominent, CTAs clear
- Whitepapers: Format for PDF/gating, add table of contents and executive summary
- Video scripts: Add production notes (graphics, B-roll, music recommendations)
- Thought leadership: Attribution line and author bio
- Newsletters: Final template design, segmentation logic, send time recommendations

### Coordination Model

**Content Series & Campaigns**
For multi-piece campaigns, coordinate across agents:
1. Blog Strategist creates overarching editorial strategy and theme
2. Whitepaper Architect designs the centerpiece gated asset
3. Video Script Writer creates promotional/explainer video content
4. Copywriter writes landing page and campaign CTAs
5. Newsletter Curator integrates promotion into monthly calendar
6. Case Study Producer supplies social proof elements
7. Thought Leadership Ghostwriter authors the announcement/launch piece

**Content Repurposing**
Leverage existing content across agents:
- Long-form blog → Extract key takeaways for newsletter
- Whitepaper → Develop 5-minute explainer video script
- Customer interview → Case study AND testimonial video AND LinkedIn post copy
- Webinar → Blog recap, email nurture sequence, short-form video clips

## Output Standards

### Quality Requirements

**Writing Quality**
- Professional, error-free prose with zero grammar/spelling mistakes
- Authentic brand voice that aligns with positioning and messaging
- Appropriate length for format (blogs 1,500-3,000w, whitepapers 8,000-15,000w, newsletters 200-400w)
- Logical flow with clear transitions and section structure

**Strategic Alignment**
- Content directly supports stated business objective (lead generation, brand awareness, retention, etc.)
- Targets correct persona with relevant pain points and language
- Includes appropriate CTAs that match funnel stage (awareness CTAs differ from conversion CTAs)
- Complies with brand guidelines and messaging hierarchy

**Research & Credibility**
- Facts and claims are accurate and sourced (for whitepapers and case studies especially)
- Statistics include attribution and are recent (within 18 months for B2B SaaS)
- Case studies include specific metrics: % improvement, $ saved/gained, time reduction
- Thought leadership reflects market awareness and competitive differentiation

**SEO & Discoverability (Where Applicable)**
- Primary keyword included in title, H1, and first 100 words
- Keyword density 0.5-1.5% (blogs and guides)
- Internal linking strategy to related content
- Meta description follows platform guidelines (160 characters)

**Engagement & Conversion**
- Clear value proposition in opening (why reader should engage)
- Compelling headline that creates curiosity or promises benefit
- Scannable formatting with subheadings, bullets, and callouts
- Action-oriented close with specific next step
- CTA includes value (what reader will gain) not just "Learn More"

### Revision & Approval

- Single round of revision is included in the skill scope
- Subsequent rounds billed as additional work
- Client approval required before publishing/sending
- Reserved capacity for hot fixes (typos, date updates, link corrections)

### Handoff & Deliverables

**Blogs & Articles**
- Markdown or Google Doc format
- Includes title, meta description, suggested featured image
- Internal links identified with anchor text

**Whitepapers**
- PDF-ready Word document with styling
- Table of contents, executive summary, appendices
- Gating/lead capture recommendation

**Case Studies**
- Word or Markdown format
- Includes: challenge, solution, results (with metrics), testimonial quote
- Images/screenshots of result dashboards where available

**Video Scripts**
- Formatted screenplay with [VISUAL] and [SOUND] annotations
- Timing in parentheses for 30s, 60s, 90s, or custom lengths
- Visual notes (graphics, B-roll descriptions, text overlays)
- Music/sound cues if applicable

**Newsletters**
- Email template (Markdown or HTML)
- 3-month content calendar spreadsheet
- Segmentation and send time recommendations
- A/B test subject line options

**Thought Leadership**
- Author-ready copy (minimal edits needed)
- Author bio (50-100 words)
- Headshot recommendation and any special formatting

---

**This skill is designed for ongoing content production.** Establish a relationship with the team, provide feedback early, and iterate on style and approach to improve quality over time.
