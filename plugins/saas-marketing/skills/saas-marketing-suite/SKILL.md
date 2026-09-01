---
name: saas-marketing-suite
description: "Complete B2B SaaS marketing agency powered by 76 AI agents across 17 specialties. This is the entry point for ALL marketing requests. Routes to the right specialist team: content marketing, SEO, paid media, social media, email marketing, design, sales enablement (including technical presales — demos, proofs of concept, security questionnaires), product marketing, account-based marketing (ABM), growth, analytics, project management, or client operations. Use this skill when the request spans multiple disciplines or when unsure which specialist to invoke. Also triggers on: marketing help, marketing team, marketing agency, what can you do, marketing capabilities."
---

# SaaS Marketing Suite: Complete Agency Router

## Step 0 (always first): Load brand context

**Before producing any deliverable, look for a `brand-context.md` file** in the user's project root (also check `./.claude/brand-context.md` and `./docs/brand-context.md`). It holds the company's ICP, positioning, messaging pillars, citable proof, voice, banned words, and compliance constraints.

- **If it exists:** read it in full and treat it as binding for this run. Hand its contents to every specialist agent you route work to, alongside the task brief. Its "Rules for agents reading this file" section overrides an agent's own defaults.
- **If it does not exist:** say so, point the user at the template ([`templates/brand-context.md`](../../templates/brand-context.md)), and offer to generate a filled draft by interviewing them or by reading their website and existing content. Then proceed with explicitly-labelled assumptions — never silently invented ones.

**Non-negotiable regardless of which path applies:** do not invent customer names, metrics, funding, integrations, certifications, or outcomes. Only proof recorded in `brand-context.md` (or supplied directly in the request) may be used as fact. Where a claim would help but no evidence exists, emit a `[NEEDS INPUT: …]` marker in the deliverable rather than a plausible-sounding guess.

---

## What This Is

The SaaS Marketing Suite is the entry point for ANY B2B SaaS marketing request. It's a complete agency powered by 76 specialist agents across 17 functional disciplines. When you don't know which team to ask or your request spans multiple disciplines, you invoke this skill and it routes to the right specialists.

Think of it as your full-service marketing department:
- **Need content?** Route to Content Marketing
- **Need to improve rankings?** Route to SEO & Growth
- **Need to drive paid demand?** Route to Paid Media Operations
- **Need to build social presence?** Route to Social Media Operations
- **Need an email campaign?** Route to Email Marketing Operations
- **Need creative and design?** Route to Design Operations
- **Need to support sales?** Route to Sales Enablement
- **Need to position your product?** Route to Product Marketing
- **Need performance insights?** Route to Marketing Analytics
- **Need to manage complex campaigns?** Route to Project Management
- **Need quality checks and compliance?** Route to Client Operations
- **Need self-serve growth or expansion revenue?** Route to Growth Operations
- **Need press or analyst coverage?** Route to Communications Operations
- **Need partner or marketplace motion?** Route to Partnerships Operations
- **Need events, conferences, or webinars?** Route to Events & Field Marketing
- **Marketing to developers?** Route to Developer Marketing Operations
- **Need comprehensive strategy and planning?** Route to CATALYST Orchestrator

The skill includes a routing decision matrix to identify which team(s) you need based on your request.

## The Complete Team: 76 Specialist Agents Across 17 Disciplines

### Core Marketing Disciplines

| Category | # Agents | What They Do |
|----------|----------|-------------|
| **Content Marketing** | 7 | Blog content, whitepapers, case studies, guides, email content, infographics, content optimization |
| **SEO & Growth** | 7 | Technical SEO, keyword research, on-page optimization, link building, AI/AEO optimization, international, programmatic SEO |
| **Paid Media Operations** | 7 | PPC campaigns, LinkedIn ads, Facebook/Instagram ads, audience targeting, creative testing, bid optimization, newsletter/podcast sponsorships, paid G2/Capterra listings, content syndication |
| **Social Media Operations** | 7 | LinkedIn strategy, Twitter/X content, YouTube, Reddit, community management, influencer partnerships, B2B podcast strategy and guest booking |
| **Email Marketing Operations** | 5 | Email campaigns, nurture sequences, segmentation, automation, deliverability, personalization |
| **Design Operations** | 5 | Visual design, brand identity, design systems, creative direction, design templates |
| **Sales Enablement** | 7 | Sales materials, battle cards, objection handling, sales training, competitive positioning, deal support, technical presales — demos, proofs of concept, security questionnaires |
| **Product Marketing** | 9 | Product positioning, feature messaging, launch strategy, competitive intel, customer advocacy, pricing & packaging, agent readiness, international market entry and localization, brand marketing and demand creation (brand-vs-performance split, category entry points, brand measurement) |
| **Marketing Analytics** | 6 | Performance reporting, attribution modeling, forecasting, CRO optimization, data storytelling, martech stack and platform-migration strategy |
| **Marketing Project Management** | 4 | Campaign coordination, timeline management, resource allocation, stakeholder communication, risk management |
| **Client Operations** | 4 | Client reporting, QA/compliance, budget tracking, legal compliance, audit trails, brand quality |
| **Account-Based Marketing** | 1 | The target account list and its 1:1/1:few/1:many tiers, capacity-sized coverage, signals-to-actions, the per-tier orchestration contract, and account coverage/penetration measurement |
| **Growth** | 2 | PLG activation (signup to first invoice, PQL definition, in-product upgrade moments) and customer marketing (adoption, expansion, churn-save, NRR) |
| **Communications** | 2 | PR and earned media, announcements, crisis comms, and the industry-analyst program (Magic Quadrant, Forrester Wave, IDC) |
| **Partnerships** | 1 | Co-marketing with tech alliances and channel partners, integration launches, cloud-marketplace GTM |
| **Events & Field Marketing** | 1 | Conference and sponsorship selection, booths, owned events and roadshows, the webinar engine, event-sourced pipeline |
| **Developer Marketing** | 1 | Docs as a marketing surface, quickstarts and time-to-first-call, SDKs, open source, DevRel |

**Total: 76 Specialist Agents** across 17 disciplines, plus the **CATALYST orchestrator** that coordinates them.

---

## How to Use: Request Routing Decision Matrix

### Decision Tree: How to Find Your Team

```
START: What is your primary need?

├─ "I need to create content" → Content Marketing
│  └─ Blog posts? Whitepapers? Case studies? Email content?
│
├─ "I need more website traffic" → SEO & Growth
│  └─ Improve rankings? Fix technical SEO? Keyword research?
│
├─ "I need leads from paid advertising" → Paid Media Operations
│  └─ Google Ads? LinkedIn? Facebook ads? Audience targeting?
│
├─ "I need to build social presence" → Social Media Operations
│  └─ LinkedIn strategy? Twitter content? Community engagement?
│
├─ "I need an email campaign" → Email Marketing Operations
│  └─ Nurture sequence? Newsletter? Segmentation?
│
├─ "I need design and creative" → Design Operations
│  └─ Visual designs? Brand guidelines? Templates? Landing pages?
│
├─ "I need to support my sales team" → Sales Enablement
│  └─ Battle cards? Objection handling? Sales decks? Demo plan, POC scope, security questionnaire?
│
├─ "I need to position and launch my product" → Product Marketing
│  └─ Positioning? Feature messaging? Go-to-market?
│
├─ "I need to understand our performance" → Marketing Analytics
│  └─ Dashboards? Attribution? Forecasting? ROI analysis?
│
├─ "I need to manage a complex campaign" → Project Management
│  └─ Timeline? Coordination? Multiple teams?
│
├─ "I need quality checks and compliance" → Client Operations
│  └─ QA review? Legal compliance? Reporting? Budget tracking?
│
├─ "I need to develop strategy" → Strategy & Planning
│  └─ Positioning? Messaging? Audience segmentation? Channel strategy?
│
└─ "I need EVERYTHING coordinated together" → CATALYST Orchestrator
   └─ Full GTM launch? Annual marketing plan? Multi-phase campaign?
```

---

## Detailed Routing Guide: By Request Type

### Content-Related Requests

**Request**: "I need blog content about X topic"
- **Primary Route**: Content Marketing → Blog Content Strategist
- **Supporting Routes**: SEO (keyword research), Analytics (repurposing)
- **Timeline**: 5-7 days per post

**Request**: "We need a whitepaper to support our sales process"
- **Primary Route**: Content Marketing → Whitepaper Author
- **Supporting Routes**: Product Marketing (positioning input), Sales Enablement (sales angle)
- **Timeline**: 2-3 weeks

**Request**: "Create a case study from our customer success"
- **Primary Route**: Content Marketing → Case Study Producer
- **Supporting Routes**: Product Marketing (positioning), Analytics (metrics)
- **Timeline**: 1-2 weeks

**Request**: "I need an email nurture sequence"
- **Primary Route**: Email Marketing Operations → Email Content Specialist
- **Supporting Routes**: Content Marketing (longer content pieces), Design (templates)
- **Timeline**: 1 week

**Request**: "Build a content calendar for the year"
- **Primary Route**: Content Marketing → Blog Content Strategist + Project Management → Campaign Coordinator
- **Supporting Routes**: SEO (keyword opportunities), Strategy (messaging alignment)
- **Timeline**: 1-2 weeks

---

### SEO & Visibility Requests

**Request**: "Our website ranks for nothing. Audit our SEO"
- **Primary Route**: SEO & Growth → SEO Technical Auditor
- **Supporting Routes**: Content Marketing (content gap analysis), Analytics (performance tracking)
- **Timeline**: 1 week

**Request**: "We need to rank for these keywords"
- **Primary Route**: SEO & Growth → Keyword Research Specialist
- **Supporting Routes**: Content Marketing (create optimized content), Analytics (track rankings)
- **Timeline**: Ongoing (3-6 months to see results)

**Request**: "Improve our organic visibility for product keywords"
- **Primary Route**: SEO & Growth → On-Page Optimizer
- **Supporting Routes**: Product Marketing (positioning), Content Marketing (landing pages)
- **Timeline**: Ongoing (2-4 weeks to see results)

**Request**: "Create a link building strategy"
- **Primary Route**: SEO & Growth → Link Building Specialist
- **Supporting Routes**: Content Marketing (content to attract links)
- **Timeline**: Ongoing (3-6 months for sustainable growth)

---

### Paid Media Requests

**Request**: "Set up a Google Ads campaign for X product"
- **Primary Route**: Paid Media Operations → PPC Strategist
- **Supporting Routes**: Design (ad creative), Analytics (performance tracking)
- **Timeline**: 1-2 weeks to launch

**Request**: "We need to be on LinkedIn advertising"
- **Primary Route**: Paid Media Operations → LinkedIn Ads Specialist
- **Supporting Routes**: Design (creative production), Analytics (audience targeting)
- **Timeline**: 1-2 weeks to launch

**Request**: "Optimize our paid media spend"
- **Primary Route**: Paid Media Operations → Bid Strategy Analyst
- **Supporting Routes**: Analytics (performance data), Content (ad copy variations)
- **Timeline**: Ongoing (weekly optimization cycles)

**Request**: "Build audience targeting for our campaign"
- **Primary Route**: Paid Media Operations → Audience Builder
- **Supporting Routes**: Strategy (audience segmentation), Analytics (audience analytics)
- **Timeline**: 3-5 days

---

### Social Media Requests

**Request**: "Build a LinkedIn strategy and content calendar"
- **Primary Route**: Social Media Operations → LinkedIn Strategy Lead
- **Supporting Routes**: Content Marketing (content ideas), Design (visual templates)
- **Timeline**: 1-2 weeks

**Request**: "We need to grow our Twitter presence"
- **Primary Route**: Social Media Operations → Twitter/X Content Lead
- **Supporting Routes**: Content Marketing (content creation)
- **Timeline**: 4-8 weeks to see growth

**Request**: "Create a social media content calendar"
- **Primary Route**: Social Media Operations → Social Content Calendar Manager
- **Supporting Routes**: Content Marketing (content ideas), Design (graphics)
- **Timeline**: 1 week per 90 days

**Request**: "Monitor social listening and competitor activity"
- **Primary Route**: Social Media Operations → Social Listening Analyst
- **Supporting Routes**: Strategy (competitive analysis)
- **Timeline**: Ongoing

---

### Email Marketing Requests

**Request**: "Set up email automation for leads"
- **Primary Route**: Email Marketing Operations → Email Automation Specialist
- **Supporting Routes**: Content (email copy), Design (email templates)
- **Timeline**: 1-2 weeks

**Request**: "Design an email nurture for prospects"
- **Primary Route**: Email Marketing Operations → Email Content Specialist
- **Supporting Routes**: Content Marketing (longer content), Design (templates)
- **Timeline**: 1 week

**Request**: "Improve our email deliverability and open rates"
- **Primary Route**: Email Marketing Operations → Email Deliverability Specialist
- **Supporting Routes**: Analytics (performance tracking)
- **Timeline**: 2-4 weeks to see improvement

**Request**: "Segment our email list and create targeted campaigns"
- **Primary Route**: Email Marketing Operations → Email Segmentation Specialist
- **Supporting Routes**: Analytics (audience analytics), Content (messaging)
- **Timeline**: 1-2 weeks

---

### Design & Creative Requests

**Request**: "Create our brand guidelines"
- **Primary Route**: Design Operations → Brand Identity Strategist
- **Supporting Routes**: Strategy (messaging), Content (voice and tone)
- **Timeline**: 2-3 weeks

**Request**: "Design landing pages for our campaign"
- **Primary Route**: Design Operations → Visual Design Lead
- **Supporting Routes**: Content Marketing (copy), Paid Media (ad creative variants)
- **Timeline**: 1 week per 3-5 pages

**Request**: "Create ad creative for our paid campaign"
- **Primary Route**: Design Operations → Creative Director
- **Supporting Routes**: Paid Media (targeting), Content (ad copy)
- **Timeline**: 3-5 days

**Request**: "Build a design system and component library"
- **Primary Route**: Design Operations → Design Systems Manager
- **Supporting Routes**: Brand Identity (brand foundations)
- **Timeline**: 2-4 weeks

---

### Sales Enablement Requests

**Request**: "Create sales battle cards for our main competitors"
- **Primary Route**: Sales Enablement → Competitive Battle Card Creator
- **Supporting Routes**: Strategy (competitive analysis), Product Marketing (positioning)
- **Timeline**: 1 week per competitor

**Request**: "Build training for sales on our messaging"
- **Primary Route**: Sales Enablement → Sales Training Developer
- **Supporting Routes**: Product Marketing (positioning), Strategy (messaging)
- **Timeline**: 1-2 weeks

**Request**: "Create one-pagers for our product features"
- **Primary Route**: Sales Enablement → Sales Collateral Designer
- **Supporting Routes**: Product Marketing (positioning), Design (templates)
- **Timeline**: 3-5 days per feature

**Request**: "Develop objection handling for 'we'll do it in-house'"
- **Primary Route**: Sales Enablement → Objection Handler
- **Supporting Routes**: Strategy (positioning), Product Marketing (value prop)
- **Timeline**: 3-5 days

**Request**: "Scope a proof of concept and plan the demo for a security-led evaluation"
- **Primary Route**: Sales Enablement → Solutions Engineer
- **Supporting Routes**: Client Operations (legal/compliance review of security commitments), Product Marketing (competitive positioning)
- **Timeline**: 3-5 days for the demo plan and POC charter; the POC itself runs to its signed dates

---

### Product Marketing Requests

**Request**: "Develop positioning for our new product"
- **Primary Route**: Product Marketing → Product Positioning Specialist
- **Supporting Routes**: Strategy (customer insights), Content (messaging documentation)
- **Timeline**: 2-3 weeks

**Request**: "Plan the go-to-market launch for our new feature"
- **Primary Route**: Product Marketing → Product Launch Manager
- **Supporting Routes**: Content (launch content), Design (marketing collateral)
- **Timeline**: 4-6 weeks pre-launch

**Request**: "Create messaging for our value proposition"
- **Primary Route**: Product Marketing → Messaging Architect
- **Supporting Routes**: Strategy (audience insights), Content (customer quotes)
- **Timeline**: 1-2 weeks

**Request**: "Which country should we expand into next, and how far should we localize?"
- **Primary Route**: Product Marketing → International GTM Strategist
- **Supporting Routes**: SEO & Growth (hreflang and multi-market site architecture), Product Marketing (local price architecture), Client Operations (legal determination on data protection and outbound legality), Partnerships (local partner), Events & Field (in-region events)
- **Timeline**: 2-4 weeks to a market-entry plan

**Request**: "Build a case study that demonstrates product value"
- **Primary Route**: Product Marketing → Case Study Producer
- **Supporting Routes**: Content Marketing (case study writing)
- **Timeline**: 1-2 weeks

---

### Analytics & Performance Requests

**Request**: "Set up a marketing dashboard and KPI framework"
- **Primary Route**: Marketing Analytics → Performance Analyst
- **Supporting Routes**: Client Operations (reporting spec)
- **Timeline**: 1-2 weeks

**Request**: "Analyze campaign performance and recommend optimizations"
- **Primary Route**: Marketing Analytics → CRO Specialist
- **Supporting Routes**: All channels (for implementation)
- **Timeline**: Ongoing (weekly analysis cycles)

**Request**: "Build attribution model to understand channel contribution"
- **Primary Route**: Marketing Analytics → Attribution Analyst
- **Supporting Routes**: Analytics infrastructure team
- **Timeline**: 2-3 weeks

**Request**: "Create a forecast for next quarter's demand"
- **Primary Route**: Marketing Analytics → Forecasting Analyst
- **Supporting Routes**: Strategy (plan input), Client Operations (budget tracking)
- **Timeline**: 1 week

---

### Project Management & Coordination Requests

**Request**: "Coordinate a multi-channel campaign across our team"
- **Primary Route**: Project Management → Campaign Coordinator
- **Supporting Routes**: All category teams (execution)
- **Timeline**: Depends on campaign scope

**Request**: "We need a project plan and timeline for our Q2 marketing"
- **Primary Route**: Project Management → Program Manager
- **Supporting Routes**: Strategy (plan input), all teams (resource planning)
- **Timeline**: 1 week

**Request**: "Manage resource allocation across our marketing initiatives"
- **Primary Route**: Project Management → Resource Planner
- **Supporting Routes**: All teams (capacity input)
- **Timeline**: Ongoing

---

### Client Operations Requests

**Request**: "QA our landing pages before launch"
- **Primary Route**: Client Operations → Quality Assurance Manager
- **Supporting Routes**: Design (technical review)
- **Timeline**: 1-2 days

**Request**: "Ensure our campaign complies with GDPR and CAN-SPAM"
- **Primary Route**: Client Operations → Legal Compliance Officer
- **Supporting Routes**: Email team (compliance review)
- **Timeline**: 1-2 days

**Request**: "Set up client reporting and dashboards"
- **Primary Route**: Client Operations → Reporting Specialist
- **Supporting Routes**: Analytics (data sources), Finance (budget tracking)
- **Timeline**: 1-2 weeks

**Request**: "Track our marketing spend and optimize budget allocation"
- **Primary Route**: Client Operations → Financial Tracker
- **Supporting Routes**: Paid Media (spend data), Analytics (ROI analysis)
- **Timeline**: Ongoing (monthly analysis)

---

### Strategy & Planning Requests

**Request**: "We need to understand our competitive positioning"
- **Primary Route**: Strategy & Planning → Competitive Intelligence Analyst
- **Supporting Routes**: Product Marketing (positioning), Content (messaging)
- **Timeline**: 1-2 weeks

**Request**: "Help us understand our customer better"
- **Primary Route**: Strategy & Planning → Customer Insights Researcher
- **Supporting Routes**: Paid Media (audience targeting), Content (messaging)
- **Timeline**: 2-3 weeks

**Request**: "Develop a channel strategy for 2026"
- **Primary Route**: Strategy & Planning → Channel Strategy Planner
- **Supporting Routes**: Analytics (performance data), Project Management (resource planning)
- **Timeline**: 1-2 weeks

**Request**: "Build our audience segmentation and personas"
- **Primary Route**: Strategy & Planning → Audience Segmentation Specialist
- **Supporting Routes**: Customer Insights, all channels (targeting)
- **Timeline**: 1-2 weeks

---

### Large Scope Requests → CATALYST Orchestrator

**Request**: "Plan and execute our full GTM launch"
- **Route**: CATALYST Orchestrator (CATALYST-Full mode)
- **Scope**: All 76 agents across all 17 disciplines
- **Timeline**: 12+ weeks end-to-end

**Request**: "Create our annual marketing strategy and plan"
- **Route**: CATALYST Orchestrator (CATALYST-Full mode)
- **Scope**: Strategy & Planning phase + full year roadmap
- **Timeline**: 4-6 weeks to create plan

**Request**: "Plan and execute Q2 marketing campaigns"
- **Route**: CATALYST Orchestrator (CATALYST-Sprint mode)
- **Scope**: 20-30 agents, focused execution
- **Timeline**: 2-4 weeks

**Request**: "We need a landing page, email, and ads for a webinar next week"
- **Route**: CATALYST Orchestrator (CATALYST-Micro mode)
- **Scope**: 5-10 agents, rapid execution
- **Timeline**: 1-5 days

---

## Quick Reference: Agent Count by Category

| Category | Agents |
|----------|--------|
| Content Marketing | 7 |
| SEO & Growth | 7 |
| Paid Media Operations | 7 |
| Social Media Operations | 7 |
| Email Marketing Operations | 5 |
| Design Operations | 5 |
| Sales Enablement | 7 |
| Product Marketing | 9 |
| Marketing Analytics | 6 |
| Marketing Project Management | 4 |
| Client Operations | 4 |
| Account-Based Marketing | 1 |
| Growth | 2 |
| Communications | 2 |
| Partnerships | 1 |
| Events & Field Marketing | 1 |
| Developer Marketing | 1 |
| **TOTAL** | **76** |

---

## Decision Matrix: Single Skill vs. CATALYST Orchestrator

### Use Specific Category Skill When:
- Request is for a **single discipline** (e.g., "write a blog post", "create a landing page")
- Timeline is **urgent** (tactical execution needed immediately)
- You have **clear strategy** already defined
- You're **supplementing** a larger campaign with a specific asset

### Use CATALYST Orchestrator When:
- Request spans **multiple disciplines** (content, SEO, paid, social together)
- You need **comprehensive strategy** before execution
- Timeline is **planned** (not tactical/urgent)
- You're launching **major campaigns or GTM initiatives**
- You need **coordination and quality gates** between phases
- You need **discovery and strategy** before tactics

---

## How to Request: Example Commands

### Single Skill Requests
- "Write a technical blog post about [topic]" → Content Marketing
- "Build a PPC campaign for [product]" → Paid Media Operations
- "Create sales battle cards for our competitors" → Sales Enablement
- "Set up LinkedIn content calendar" → Social Media Operations
- "Audit our SEO" → SEO & Growth

### Multi-Skill Requests
- "We need content, ads, and email for a demand gen campaign" → Project Management (to coordinate) + multiple category skills
- "Create landing pages, design, and manage paid media" → Design Operations + Paid Media Operations + Project Management

### CATALYST Requests
- "Plan our full GTM launch" → CATALYST Orchestrator
- "We need strategy, content, SEO, and analytics for Q2" → CATALYST Orchestrator (CATALYST-Sprint)
- "Emergency: landing page, email, ads for webinar in 3 days" → CATALYST Orchestrator (CATALYST-Micro)

---

## When You're Not Sure

If you're unsure which skill to invoke:

1. **Check if it's about strategy or multi-discipline** → CATALYST Orchestrator
2. **Check if it's a specific asset** → Find matching category skill (Content, SEO, Paid, Social, Email, Design, Sales, Product, Analytics, Project Management, Client Ops)
3. **Check if it needs quality/compliance review** → Client Operations
4. **Ask**: "What's the primary output I need?" This usually points to the right team

---

## Getting Help

- **Need high-level overview?** This page outlines everything
- **Ready to execute?** Click the category skill name to invoke that team
- **Need comprehensive strategy?** Invoke CATALYST Orchestrator
- **Unsure which team?** Follow the Decision Tree above or ask in plain language—we'll route correctly
