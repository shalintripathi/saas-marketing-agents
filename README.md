<div align="center">

# 🚀 SaaS Marketing Agents

**An open-source AI marketing team for B2B SaaS — 75 specialist agents, one orchestrator, real playbooks.**

Install a full B2B SaaS marketing org into Claude Code: 75 role-based agent personas, packaged as **19 skills**, coordinated by the **CATALYST** multi-agent orchestrator — with worked ABM, launch & demand-gen workflows and an actively-maintained **AEO/GEO** playbook for the AI-search era.

[![Stars](https://img.shields.io/github/stars/shalintripathi/saas-marketing-agents?style=social)](https://github.com/shalintripathi/saas-marketing-agents/stargazers)
[![License: MIT](https://img.shields.io/github/license/shalintripathi/saas-marketing-agents)](LICENSE)
[![Last commit](https://img.shields.io/github/last-commit/shalintripathi/saas-marketing-agents)](https://github.com/shalintripathi/saas-marketing-agents/commits)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://makeapullrequest.com)
[![Agents](https://img.shields.io/badge/agents-75-blue)](AGENTS_INDEX.md)
[![Skills](https://img.shields.io/badge/Claude%20skills-19-8A2BE2)](plugins/saas-marketing)
[![Built for Claude Code](https://img.shields.io/badge/built%20for-Claude%20Code-D97757)](https://claude.com/claude-code)

[Quick start](#-quick-start) · [The 75 agents](#-the-team-75-specialist-agents) · [Skills](#-skills) · [CATALYST](#️-catalyst-orchestrator) · [Loops](#-marketing-loops) · [AEO/GEO](#-built-for-ai-search-aeogeo) · [Contributing](#-contributing)

<img src="assets/catalyst-demo.svg" alt="The CATALYST orchestrator takes one product-launch brief, loads brand-context.md, selects CATALYST-Sprint mode, and routes the work to named specialist agents across product marketing, content, SEO/AEO, design, paid media, social, email, sales enablement, and analytics." width="880">

<sub>Illustration of the routing flow — every agent shown is a real agent in this repo.</sub>

</div>

---

## What this is

Most "marketing prompt" collections are a flat grab-bag: you get 50 clever prompts, but **you're still the manager** — deciding which to run, in what order, and how the outputs fit together.

This is the opposite. It's a marketing team shaped like a real **B2B SaaS marketing org** — 75 specialist agents with defined roles and hand-offs, plus an orchestrator that turns one brief into assigned sub-tasks. You brief the team; it routes the work.

- 🧑‍💼 **75 role-based agents** across 17 disciplines — content, SEO/AEO, paid media, social, email, design, sales enablement, product marketing, account-based marketing (ABM), growth/PLG, analytics, comms & analyst relations, partnerships, events & field, developer marketing, project management, and client ops — coordinated by the CATALYST orchestrator.
- 🎛️ **CATALYST orchestrator** — coordinates the specialists for large, multi-channel initiatives.
- 🔁 **Worked workflows & loops** — ABM, product launch, demand gen, and a weekly content engine you can actually run.
- 🤖 **AI-search native** — a sourced [AEO/GEO playbook](guides/aeo-geo-playbook.md) we maintain, so your content gets *cited* by ChatGPT, Perplexity, Google AI Overviews, and Copilot.
- 🧩 **Runs anywhere** — installable as a Claude Code plugin, or copy the plain-Markdown agents into Cursor, Copilot, Aider, or Windsurf.

---

## ⚡ Quick start

### Install as a Claude Code plugin (recommended)

```
/plugin marketplace add shalintripathi/saas-marketing-agents
/plugin install saas-marketing@saas-marketing-agents
```

That's it — the 19 skills load as `/saas-marketing:<skill>` (e.g. `/saas-marketing:seo-growth`, `/saas-marketing:catalyst-orchestrator`). Then just describe what you need:

> "Plan a product-launch campaign for [feature] targeting [ICP]."

The orchestrator routes positioning to product marketing, assets to content & design, distribution to social/email/paid, and measurement to analytics.

### Then: tell it who you are (15 minutes, biggest quality jump)

Copy [`templates/brand-context.md`](templates/brand-context.md) to `brand-context.md` in your project root and fill it in — ICP, positioning, messaging pillars, voice, banned words, and the proof you can actually cite.

CATALYST reads it before routing anything and passes it to every specialist, so output sounds like *your* company rather than generic B2B SaaS. It also bounds what the agents may assert: customer names, metrics, and certifications not recorded there are surfaced as `[NEEDS INPUT: …]` instead of being invented.

### Or use the files directly

Every agent is plain Markdown, so it works in any AI tool:

```bash
git clone https://github.com/shalintripathi/saas-marketing-agents.git
cd saas-marketing-agents

# Claude Code / Cursor / Copilot / Aider / Windsurf — reference an agent file:
#   content/content-blog-strategist.md
#   seo/seo-ai-search-optimizer.md

# Or install the skills locally without the marketplace:
./scripts/install.sh --tool cowork
```

See the [Integrations Guide](integrations/README.md) for tool-by-tool setup.

---

## 📋 The team (75 specialist agents)

Every agent is a named role with its own remit, critical rules, and deliverables — click any one to read it.

| Discipline | Agents |
|-----------|--------|
| **Content Marketing** (7) | [Content Blog Strategist](content/content-blog-strategist.md) · [Content Case Study Producer](content/content-case-study-producer.md) · [Content Copywriter](content/content-copywriter.md) · [Content Newsletter Curator](content/content-newsletter-curator.md) · [Content Thought Leadership Ghostwriter](content/content-thought-leadership-ghostwriter.md) · [Content Video Script Writer](content/content-video-script-writer.md) · [Content Whitepaper Architect](content/content-whitepaper-architect.md) |
| **SEO & Organic Growth** (7) | [AI Search Optimizer](seo/seo-ai-search-optimizer.md) · [Content Optimizer](seo/seo-content-optimizer.md) · [Keyword Researcher](seo/seo-keyword-researcher.md) · [Link Building Strategist](seo/seo-link-building-strategist.md) · [Local & International SEO Specialist](seo/seo-local-and-international.md) · [Programmatic SEO Strategist](seo/seo-programmatic-strategist.md) · [Technical SEO Auditor](seo/seo-technical-auditor.md) |
| **Paid Media** (7) | [Attribution Analyst](paid-media/paid-media-attribution-analyst.md) · [Budget Optimizer](paid-media/paid-media-budget-optimizer.md) · [Creative Strategist](paid-media/paid-media-creative-strategist.md) · [PPC Strategist](paid-media/paid-media-ppc-strategist.md) · [Programmatic Media Buyer](paid-media/paid-media-programmatic-buyer.md) · [Social Ads Specialist](paid-media/paid-media-social-ads-specialist.md) · [Sponsorship & Syndication Buyer](paid-media/paid-media-sponsorship-syndication-buyer.md) |
| **Social Media** (7) | [Community Strategist](social/social-community-builder.md) · [B2B Influencer & Creator Partnerships Manager](social/social-influencer-partnerships.md) · [LinkedIn Organic Strategist](social/social-linkedin-strategist.md) · [Podcast & Audio Strategist](social/social-podcast-strategist.md) · [Reddit Community Specialist](social/social-reddit-specialist.md) · [Twitter/X Strategist](social/social-twitter-strategist.md) · [YouTube Producer & Content Strategist](social/social-youtube-producer.md) |
| **Email Marketing** (5) | [Marketing Automation Engineer](email/email-automation-engineer.md) · [Email Copywriter & Conversion Specialist](email/email-copywriter.md) · [Email Deliverability Specialist](email/email-deliverability-specialist.md) · [Email Lifecycle Architect](email/email-lifecycle-architect.md) · [Newsletter Growth & Monetization Strategist](email/email-newsletter-growth-strategist.md) |
| **Design** (5) | [Ad Creative Producer](design/design-ad-creative-producer.md) · [Brand Identity Strategist](design/design-brand-identity-strategist.md) · [Content Visual Designer](design/design-content-visual-designer.md) · [Presentation Designer](design/design-presentation-designer.md) · [UI Landing Page Specialist](design/design-ui-landing-page-specialist.md) |
| **Sales Enablement** (7) | [Deal Strategist](sales/sales-deal-strategist.md) · [Discovery Coach](sales/sales-discovery-coach.md) · [Enablement Content Creator](sales/sales-enablement-content-creator.md) · [Outbound Strategist](sales/sales-outbound-strategist.md) · [Pipeline Analyst](sales/sales-pipeline-analyst.md) · [Proposal Architect](sales/sales-proposal-architect.md) · [Solutions Engineer](sales/sales-solutions-engineer.md) |
| **Product Marketing** (8) | [Agent Readiness Strategist](product-marketing/pmm-agent-readiness-strategist.md) · [Competitive Intelligence Specialist](product-marketing/pmm-competitive-intelligence.md) · [Customer Advocacy Manager](product-marketing/pmm-customer-advocacy.md) · [International GTM Strategist](product-marketing/pmm-international-gtm-strategist.md) · [Product Launch Manager](product-marketing/pmm-launch-manager.md) · [Messaging Architect](product-marketing/pmm-messaging-architect.md) · [Product Positioning Strategist](product-marketing/pmm-positioning-strategist.md) · [Pricing & Packaging Strategist](product-marketing/pmm-pricing-packaging-strategist.md) |
| **Account-Based Marketing** (1) | [Account-Based Marketing Strategist](abm/abm-account-based-strategist.md) |
| **Growth** (2) | [Customer Marketing Lead](growth/growth-customer-marketing-lead.md) · [PLG Activation Strategist](growth/growth-plg-activation-strategist.md) |
| **Analytics** (6) | [Conversion Rate Optimizer](analytics/analytics-conversion-rate-optimizer.md) · [Customer Insights Researcher](analytics/analytics-customer-insights-researcher.md) · [Marketing Data Storyteller](analytics/analytics-data-storyteller.md) · [Marketing Ops Architect](analytics/analytics-marketing-ops-architect.md) · [Marketing Performance Analyst](analytics/analytics-performance-analyst.md) · [MarTech Stack Strategist](analytics/analytics-martech-stack-strategist.md) |
| **Communications** (2) | [Analyst Relations Manager](comms/comms-analyst-relations-manager.md) · [Public Relations Strategist](comms/comms-pr-strategist.md) |
| **Partnerships** (1) | [Partner Ecosystem Marketer](partnerships/partner-ecosystem-marketer.md) |
| **Events & Field Marketing** (1) | [Field Marketing & Events Strategist](events/events-field-marketing-strategist.md) |
| **Developer Marketing** (1) | [Developer Audience Strategist](developer-marketing/devmkt-developer-audience-strategist.md) |
| **Project Management** (4) | [Campaign Coordinator](project-management/pm-campaign-coordinator.md) · [Client Success Manager](project-management/pm-client-success-manager.md) · [Marketing Agile Facilitator](project-management/pm-marketing-ops-scrum-master.md) · [Resource Allocator](project-management/pm-resource-allocator.md) |
| **Client Operations** (4) | [Financial Tracker](client-ops/ops-financial-tracker.md) · [Legal Compliance Officer](client-ops/ops-legal-compliance.md) · [Quality Assurance Manager](client-ops/ops-quality-assurance.md) · [Reporting Specialist](client-ops/ops-reporting-specialist.md) |

_These 17 disciplines hold all 75 specialist agents. On top sits the **[CATALYST orchestrator](#️-catalyst-orchestrator)**, which coordinates them._

**→ Full [Agent Index](AGENTS_INDEX.md)** — every agent with a one-line description of what it does and when to reach for it.

---

## 🧩 Skills

The agents are grouped into **19 installable skills**, each triggered by natural language:

| Skill | Agents | Triggers on |
|-------|--------|-------------|
| **CATALYST Orchestrator** | all 75 | "GTM launch", "campaign plan", "marketing strategy" |
| **SaaS Marketing Suite** (router) | — | "help with marketing", "what can you do" |
| **Content Marketing** | 7 | "blog", "case study", "whitepaper", "newsletter" |
| **SEO Growth** | 7 | "SEO audit", "keyword research", "AEO", "link building", "programmatic SEO", "hreflang", "our translated pages get no traffic", "G2 / Capterra listing", "get into a 'best software' roundup", "directory submissions" |
| **Paid Media Ops** | 7 | "Google Ads", "LinkedIn Ads", "ROAS", "attribution", "newsletter sponsorship", "content syndication" |
| **Social Media Ops** | 7 | "LinkedIn strategy", "YouTube", "community", "podcast", "show notes", "podcast guesting", "vet this influencer", "is this creator's engagement real", "sponsored post disclosure" |
| **Email Marketing Ops** | 5 | "email sequence", "nurture", "deliverability" |
| **Design Ops** | 5 | "landing page", "brand identity", "ad creative" |
| **Sales Enablement** | 7 | "outbound", "battle card", "proposal", "MEDDPICC", "demo plan", "proof of concept", "security questionnaire" |
| **Product Marketing Ops** | 8 | "positioning", "product launch", "competitive intel", "win/loss interviews", "why we lose deals", "pricing", "packaging", "agent readiness", "expand into Europe", "market entry", "which country next", "localization" |
| **Marketing Analytics** | 6 | "CRO", "A/B testing", "sample size", "not enough traffic to test", "dashboards", "attribution", "tracking plan", "GA4 audit", "martech stack audit", "too many tools", "build vs buy", "ESP/CRM migration", "switching cost" |
| **Marketing Project Mgmt** | 4 | "sprint planning", "resource allocation", "QBR" |
| **Client Operations** | 4 | "client reporting", "QA", "compliance", "budget" |
| **Growth Ops** | 2 | "PLG", "activation", "PQL", "free trial", "expansion", "churn", "NRR" |
| **ABM Ops** | 1 | "ABM", "target account list", "account tiering", "named accounts", "intent data", "account coverage" |
| **Comms Ops** | 2 | "PR", "press release", "analyst relations", "Gartner", "Forrester" |
| **Partnerships Ops** | 1 | "co-marketing", "channel", "integration launch", "AWS Marketplace" |
| **Events Ops** | 1 | "conference", "booth", "field marketing", "webinar", "roadshow" |
| **Developer Marketing Ops** | 1 | "developer marketing", "DevRel", "docs", "SDK", "quickstart" |

Skill sources live in [`plugins/saas-marketing/skills/`](plugins/saas-marketing/skills).

---

## 🎛️ CATALYST orchestrator

**CATALYST** is the coordination layer that runs a multi-agent campaign end to end:

**C**oordination · **A**nalysis · **T**argeting · **A**daptation · **L**everaging · **Y**ield · **S**trategy · **T**eamwork

Instead of prompting each specialist by hand, you give CATALYST a brief and it decomposes the work, assigns specialists, and manages the hand-offs. See the [Workflow Guide](WORKFLOW_GUIDE.md) and the [phased playbooks](strategy/playbooks/).

---

## 🔁 Marketing loops

Workflows are one-shot; **loops repeat**. The [`loops/`](loops/README.md) library holds recurring, agent-run workflows on a cadence:

- **[Weekly Content Engine](loops/weekly-content-engine-loop.md)** — every week, ship one publish-ready, AEO/GEO-optimized asset + its distribution plan, with zero manual coordination.
- **[Weekly Competitive Intel](loops/weekly-competitive-intel-loop.md)** — every week, diff your competitor watchlist against last week, triage what actually changed by severity, and update only the battle cards the change invalidates. Most weeks the honest answer is "nothing moved," and the loop says so.
- **[Monthly ABM](loops/monthly-abm-loop.md)** — every month, re-score your target accounts against new signals, refresh tiered messaging, ship the next multi-channel touch, and retire what isn't working. Carries an account ledger between runs so coverage compounds.
- _A quarterly launch loop is on the [roadmap](ROADMAP.md)._

---

## 📚 Example workflows

Full worked campaigns live in [`examples/`](examples/README.md):

- [Product launch](examples/workflow-product-launch.md) · [ABM campaign](examples/workflow-abm-campaign.md) · [Demand-gen campaign](examples/workflow-demand-gen-campaign.md) · [Content engine](examples/workflow-content-engine.md)

---

## 🔎 Built for AI search (AEO/GEO)

Buyers increasingly ask an AI engine instead of clicking ten links — so the vendors an engine *cites* shape the shortlist. The **[AEO/GEO Playbook](guides/aeo-geo-playbook.md)** is a sourced, practitioner-grade guide to getting cited by ChatGPT, Perplexity, Google AI Overviews, and Copilot: what measurably works (quotations, statistics, cited sources), how each engine differs, and what *not* to do. It's a **living document** we intend to keep current as the answer engines change.

---

## 🤝 Contributing

Contributions are welcome — new agents, better agents, new loops, and freshness fixes. See [CONTRIBUTING.md](CONTRIBUTING.md), the [ROADMAP](ROADMAP.md), and the [CODE_OF_CONDUCT](CODE_OF_CONDUCT.md). Good first contributions are listed in the [maintenance backlog](maintenance/backlog.md).

---

## ⭐ Star this repo

If this saves you time, a star genuinely helps other marketers find it — and it's the signal that tells us which parts to invest in next. Thank you.

---

## 📄 License

[MIT](LICENSE) — free to use, modify, and distribute.

<div align="center">

Built by [**Shivaa Tripathi**](https://github.com/shalintripathi) · [Report an issue](https://github.com/shalintripathi/saas-marketing-agents/issues) · [Changelog](CHANGELOG.md)

</div>
