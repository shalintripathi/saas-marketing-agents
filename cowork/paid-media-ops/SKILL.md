---
name: paid-media-ops
description: "Full-funnel paid advertising operations for B2B SaaS. Use this skill for PPC strategy, Google Ads optimization, LinkedIn Ads, social media advertising, programmatic buying, creative strategy, attribution modeling, budget allocation, ROAS improvement, and media spend optimization. Also triggers on: PPC, Google Ads, LinkedIn Ads, social ads, programmatic, ad creative, attribution, media budget, paid campaigns, ROAS, CPA, ad spend."
---

# Paid Media Operations Skill

## What This Is

The Paid Media Operations skill brings together 6 specialized agents to manage end-to-end paid advertising for B2B SaaS companies. From strategic budget allocation and campaign setup to daily optimization, creative strategy, and attribution analysis, this team handles Google Ads, LinkedIn Ads, social advertising, and programmatic buying. This skill enables you to achieve predictable cost-per-acquisition, maximize return on ad spend (ROAS), and scale acquisition channels with confidence.

## The Team: 6 Specialist Agents

| # | Agent | File | What They Do |
|---|-------|------|-------------|
| 1 | PPC Strategist | `agents/paid-media-ppc-strategist.md` | Designs Google Ads account structure, campaign strategy, keyword lists, bidding strategies, and ad copy. Manages account setup, optimization, and ongoing QA. Handles search and Shopping campaigns. |
| 2 | Budget Optimizer | `agents/paid-media-budget-optimizer.md` | Analyzes spend patterns, identifies underperforming campaigns, reallocates budget to high-ROAS channels, models growth scenarios, and forecasts revenue impact of budget changes. |
| 3 | Creative Strategist | `agents/paid-media-creative-strategist.md` | Develops ad creative strategy across visual, copy, and messaging. Creates landing page concepts, A/B test plans, and creative hypotheses. Directs copywriter and designer resources. |
| 4 | Social Ads Specialist | `agents/paid-media-social-ads-specialist.md` | Manages Facebook, Instagram, LinkedIn, and Twitter advertising. Develops audience targeting strategies, lookalike and custom audiences, and social-specific creative optimization. |
| 5 | Programmatic Buyer | `agents/paid-media-programmatic-buyer.md` | Manages programmatic display, audio, and video campaigns across exchanges and DMPs. Handles audience segmentation, bid strategies, and brand safety controls. |
| 6 | Attribution Analyst | `agents/paid-media-attribution-analyst.md` | Models multi-touch attribution, analyzes conversion paths, tracks CPA by channel and campaign, and reports true ROAS. Identifies attribution data gaps and improves measurement. |

## How to Use

### Routing User Requests

**Google Ads & Search Campaigns**
- "Set up a Google Ads account from scratch" → PPC Strategist
- "Build keyword lists and campaign structure for [product/market]" → PPC Strategist
- "Our Google Ads CPA is too high—how do we optimize?" → Budget Optimizer + PPC Strategist + Creative Strategist
- "Which keywords are wasting budget?" → PPC Strategist + Attribution Analyst
- "Scale our search budget while maintaining ROAS" → Budget Optimizer + PPC Strategist

**Social & LinkedIn Advertising**
- "Set up LinkedIn Ads to reach [target persona]" → Social Ads Specialist
- "Develop a LinkedIn thought leadership campaign" → Creative Strategist + Social Ads Specialist
- "Our Facebook ads CPA increased—diagnose and fix" → Social Ads Specialist + Creative Strategist
- "Build audience targeting strategy for [product tier]" → Social Ads Specialist
- "Create lookalike audiences from our best customers" → Social Ads Specialist + Attribution Analyst

**Programmatic & Display Advertising**
- "Launch a programmatic display campaign" → Programmatic Buyer
- "Target industry professionals with audio/display ads" → Programmatic Buyer
- "Set up brand safety controls for programmatic" → Programmatic Buyer
- "Run retargeting campaigns across display network" → Programmatic Buyer

**Creative Strategy & Testing**
- "Develop creative strategy for [campaign/product]" → Creative Strategist
- "Design an A/B test plan for ad variations" → Creative Strategist
- "Our ads aren't converting—what should we test?" → Creative Strategist + Social Ads Specialist
- "Create messaging angles for different buyer personas" → Creative Strategist

**Budget & Reporting**
- "How should we allocate our $50K monthly ad budget?" → Budget Optimizer + Attribution Analyst
- "Which channels are most profitable?" → Attribution Analyst
- "Build a dashboard to track ROAS by campaign/channel" → Attribution Analyst
- "Forecast revenue if we increase ad spend by [amount]" → Budget Optimizer + Attribution Analyst
- "What's our true customer acquisition cost?" → Attribution Analyst

**Full Funnel Coordination**
- "Build a complete paid advertising strategy" → PPC Strategist (search) + Social Ads Specialist (mid-funnel) + Creative Strategist (messaging) + Budget Optimizer (allocation) + Attribution Analyst (measurement)
- "Rebalance budget across all channels" → Budget Optimizer + Attribution Analyst + all channel specialists
- "Launch integrated campaign across Google + LinkedIn + Facebook" → All agents coordinate

### Execution Model

**Phase 1: Strategy & Planning**
1. **Define Advertising Goals**
   - Target CPA or ROAS goal
   - Expected monthly budget and runway
   - Funnel stage focus (awareness, consideration, decision, retention)
   - Revenue impact (bookings, ARR, customer count)

2. **Audience & Market Analysis**
   - Define target personas (title, company size, industry, pain point)
   - Identify addressable market (TAM and current penetration)
   - Competitive landscape (who else is advertising, messaging, bids)
   - Seasonality and demand patterns

3. **Channel Selection & Allocation**
   - Budget Optimizer: Recommends channel mix (search vs. social vs. display)
   - Attribution Analyst: Models expected ROAS by channel
   - Preliminary budget allocation by channel and quarter
   - Key performance targets (CPA, CAC, LTV ratio)

4. **Creative & Messaging Strategy**
   - Creative Strategist: Develops 3-5 core messaging angles
   - Identify landing page concepts and conversion optimization
   - Competitor creative benchmarking
   - A/B test plan for creative variations

**Phase 2: Campaign Setup & Launch**
1. **Search (Google Ads)**
   - PPC Strategist: Account structure (campaigns, ad groups, keywords)
   - Keyword list development (brand, category, competitor, long-tail)
   - Ad copy writing (headlines, descriptions, extensions)
   - Landing page alignment and UTM tracking
   - Bid strategy selection (Target CPA, Target ROAS, Manual CPC)

2. **Social (LinkedIn, Facebook, Instagram, Twitter)**
   - Social Ads Specialist: Account and campaign setup
   - Audience segmentation (job titles, company size, interests, lookalikes)
   - Ad copy and creative specifications
   - Landing pages or lead form configuration
   - Pixel/conversion tracking implementation

3. **Programmatic (Display, Audio, Video)**
   - Programmatic Buyer: Exchange/platform selection (Google DV360, Adobe, others)
   - Audience list building and DMP integration
   - Creative asset specifications and upload
   - Brand safety settings and placement exclusions
   - Bid strategy and pacing configuration

4. **Attribution & Measurement**
   - Attribution Analyst: Configure tracking (UTM parameters, pixel setup, CRM integration)
   - Define conversion events (form submit, demo request, trial signup, closed won)
   - Attribution model selection (first-touch, last-touch, data-driven)
   - Dashboard setup for real-time monitoring

**Phase 3: Optimization & Scaling**
1. **Daily/Weekly Optimization**
   - PPC Strategist: Pause underperforming keywords, adjust bids on high-performers
   - Social Ads Specialist: Monitor frequency, adjust audience targeting, turn off underperforming placements
   - Programmatic Buyer: Adjust bids, update audience exclusions, pause underperforming placements
   - Attribution Analyst: Daily CPA/ROAS tracking, flag performance drops

2. **Creative Iteration**
   - Creative Strategist: Launch A/B tests based on learnings
   - Test single variables: headline, image, CTA, landing page
   - Rotate fresh creative every 2-4 weeks (combat ad fatigue)
   - Social Ads Specialist: Monitor engagement metrics (CTR, conversion rate by creative)

3. **Budget Reallocation**
   - Attribution Analyst: Identifies highest-ROAS channels weekly
   - Budget Optimizer: Reallocates budget from low-ROAS to high-ROAS channels
   - Scale winning channels incrementally (avoid budget shock)
   - Reduce underperforming channels or pause entirely

4. **Performance Troubleshooting**
   - CPA increasing? Check: landing page conversion rate drop, audience fatigue (too much frequency), bid inflation (competition)
   - ROAS declining? Check: keyword/audience quality shift, creative fatigue, product/offer issue
   - Low volume? Check: budget constraints, bid strategy too conservative, targeting too narrow

**Phase 4: Reporting & Review**
- Weekly: CPA/ROAS by channel, spend pacing vs. budget, top-performing keywords/audiences
- Monthly: Attribution modeling, customer LTV by channel, payback period, contribution to pipeline
- Quarterly: Strategic review, budget reallocation recommendations, creative performance trends, channel mix optimization
- Annual: Full-year ROI analysis, growth projections, strategic priorities for next year

### Advanced Scenarios

**Scaling a Winning Channel**
1. Budget Optimizer: Increase budget by 20-30% incrementally
2. PPC Strategist / Social Ads Specialist: Expand keyword/audience targeting
3. Creative Strategist: Increase creative production to avoid ad fatigue
4. Attribution Analyst: Monitor CPA closely for any deterioration
5. Pace increases over 4-6 weeks, not overnight

**New Product Launch**
1. Creative Strategist: Develop messaging and positioning for new product
2. PPC Strategist: Build search campaign with product-specific keywords
3. Social Ads Specialist: Build LinkedIn + Facebook campaigns targeting decision-makers
4. Programmatic Buyer: Retarget site visitors with product education content
5. Budget Optimizer: Allocate 30-50% of budget to new product initially
6. Attribution Analyst: Track CAC for new product separately

**Account Consolidation & Rebalancing**
1. Attribution Analyst: Audit all existing campaigns, calculate true ROAS by channel
2. Budget Optimizer: Model new budget allocation based on ROAS data
3. All specialists: Pause underperforming campaigns, consolidate overlapping efforts
4. Redirect consolidated budget to highest-ROAS initiatives
5. Clean up tracking and reporting structure

**Seasonal Demand Spikes**
1. Budget Optimizer: Forecast demand increase and budget needs
2. PPC Strategist: Increase bid amounts and budget allocation to search
3. Social Ads Specialist: Increase frequency and budget for social campaigns
4. Creative Strategist: Launch seasonal creative angles
5. Programmatic Buyer: Increase display/video impression buying
6. Timeline: Ramp budget 2-3 weeks before peak demand

## Output Standards

### Quality Requirements

**Search Campaign Strategy**
- Keyword lists: Minimum 500 keywords for competitive markets, segmented by intent
- Ad copy: Multiple variations per ad group (A/B tested), natural language with keyword inclusion
- Account structure: Clear campaign/ad group/keyword hierarchy avoiding cannibalization
- Bid strategy: Justified selection (Target CPA vs. Manual CPC vs. Target ROAS)
- Landing page alignment: Each keyword/ad maps to relevant landing page content

**Social & LinkedIn Campaigns**
- Audience definition: Specific persona with 1-5 targeting dimensions (title, industry, company size, interests)
- Ad copy: Conversational tone aligned to social platform norms
- Lookalike audiences: Built from high-value customer segments (LTV > threshold)
- Creative specifications: Correct dimensions, file sizes, and compliance with platform guidelines
- Tracking: Pixel installed, events firing, UTM parameters tracking correctly

**Programmatic Campaigns**
- Audience segmentation: Clear definition, size estimate, addressable universe
- Bid strategy: Context-appropriate (CPM, vCPM, CPA, CPC)
- Brand safety: Exclusion lists, contextual targeting, whitelisted/blacklisted placements
- Creative: HTML5, video, or image files meeting platform specs
- Tracking: Conversion pixels, viewability measurement, brand safety reporting

**Creative Strategy**
- Messaging angles: 3-5 distinct value propositions tested
- A/B test plan: Single-variable tests with sample size calculations
- Competitive creative audit: 5-10 competitors analyzed for positioning gaps
- Creative refresh schedule: Monthly rotation to avoid ad fatigue
- Performance benchmarks: CTR, conversion rate, CPA by creative variant

**Attribution & Reporting**
- Multi-touch attribution: First-touch, last-touch, and data-driven models compared
- Conversion path analysis: Understanding how customers interact with multiple touchpoints
- CPA by channel: Calculated including indirect conversions
- ROAS calculation: Revenue credited to ads divided by total ad spend
- Dashboard: Real-time tracking of CPA, ROAS, spend pacing, volume by channel
- Monthly reporting: Year-to-date performance vs. targets, variance analysis

**Budget Optimization**
- Historical performance: At least 2 months of data analyzed to establish baselines
- ROAS by channel: Clear ranking of profitability and scaling potential
- Growth modeling: Scenarios for various budget increases (10%, 25%, 50%)
- Reallocation recommendations: Quantified impact of proposed changes
- Confidence level: High confidence recommendations have 2+ months of consistent data

### Key Metrics & Targets

**Acquisition Metrics**
- Cost Per Acquisition (CPA): Campaign-specific target, benchmarked against industry
- Return on Ad Spend (ROAS): Minimum 2:1 to 3:1 for acquisition campaigns
- Customer Acquisition Cost (CAC): Total ad spend divided by new customers, annual basis
- Click-Through Rate (CTR): 1-3% typical for search, 0.3-1.5% for display
- Conversion Rate: 2-5% typical for B2B SaaS, varies by audience temperature

**Efficiency Metrics**
- Cost Per Click (CPC): By keyword/audience, tracks bid inflation
- Cost Per Lead: Form submissions, trial signups, demo requests
- Payback Period: Months to recover customer acquisition cost from LTV
- LTV:CAC Ratio: Target 3:1 or higher for sustainable growth

**Engagement Metrics**
- Video completion rate: 25-50% for ads, varies by length
- Landing page bounce rate: <40% for high-quality traffic
- Form abandonment rate: Track at each form field level
- Email open/click rates: For nurture sequences following ad click

### Performance Baselines

**Realistic ROAS by Channel (B2B SaaS)**
- Search (Google Ads): 2-4:1 for new keywords, 4-6:1+ for optimized campaigns
- LinkedIn Ads: 1.5-3:1 (higher intent but higher CPC)
- Facebook/Instagram: 1-2:1 (lower intent, lower CPC, retargeting higher)
- Programmatic Display: 0.5-1.5:1 (brand awareness focus, not direct response)
- Video (YouTube): 1-2:1 (awareness, longer sales cycle)

**Time to Profitability**
- Week 1-2: Campaigns live, expect high CPAs while learning
- Week 3-4: Data emerging, initial optimizations, CPA should start declining
- Month 2: Clear trends visible, significant optimizations, approaching target CPA
- Month 3: Campaigns mature, consistent ROAS, ready to scale

### Handoff & Deliverables

**Campaign Setup Checklist**
- Account structure diagram with campaigns, ad groups, keywords
- 20-50 variations of ad copy per campaign (for A/B testing)
- Landing page recommendations and wireframes
- Tracking setup guide: UTM parameters, pixel installation, CRM integration
- Daily/weekly optimization playbook

**Budget Allocation Plan**
- Channel mix recommendation with percentages
- Monthly budget distribution across campaigns
- Seasonal adjustment calendar (if applicable)
- Growth scenarios: 20%, 50%, 100% budget increase projections
- Payback period and revenue impact analysis

**Reporting Dashboard**
- Real-time CPA, ROAS, spend, volume by channel
- Trend charts: Weekly CPA/ROAS movement
- Top performers: Keywords, audiences, creatives ranked by efficiency
- Alerts: Campaigns exceeding CPA target, underutilized budgets
- Monthly variance report: Actual vs. target, action items

**Creative Brief**
- 3-5 messaging angles with hypotheses
- Competitor creative analysis and positioning gaps
- A/B test roadmap: Variables to test, sample size requirements
- Creative asset specifications (dimensions, file sizes, formats)
- Expected results and success criteria

**Attribution Model**
- Conversion path samples showing multi-touch journeys
- First-touch vs. last-touch vs. data-driven model comparison
- Channel contribution analysis
- CPA by stage (lead, qualified opportunity, customer)
- Dashboard setup for ongoing tracking

---

**Paid media requires continuous optimization.** Establish weekly check-ins, react quickly to performance shifts, and iterate on creative and targeting. Budget discipline and attribution clarity drive sustainable growth.
