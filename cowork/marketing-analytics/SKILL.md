---
name: marketing-analytics
description: "Marketing analytics and data-driven optimization for B2B SaaS campaigns. Use this skill when analyzing marketing performance, optimizing conversion rates, running A/B tests, conducting customer research, creating marketing dashboards, building attribution models, analyzing funnel metrics, or storytelling with data. Also triggers on: marketing ops, performance analytics, CRO, conversion rate, A/B testing, data storytelling, customer insights, marketing dashboards, attribution, funnel metrics."
---

# Marketing Analytics

## What This Is

Marketing Analytics brings together performance analysts, conversion rate optimization specialists, customer insights researchers, data storytellers, and marketing operations architects to transform data into decisions. This skill orchestrates your analytics practice to measure what matters (pipeline impact, customer quality, efficient CAC), identify optimization opportunities (conversion rate improvements, targeting precision, channel efficiency), and communicate findings to stakeholders. Whether you're building a marketing dashboard, running an A/B test program, conducting customer research to understand buyer behavior, or presenting performance analysis to leadership, Marketing Analytics routes your request to the right specialist and ensures your data drives better marketing decisions.

## The Team: 5 Specialist Agents

| # | Agent | File | What They Do |
|---|-------|------|-------------|
| 1 | Performance Analyst | `agents/analytics-performance-analyst.md` | Measures and optimizes marketing performance across channels and campaigns, tracks KPIs, and identifies performance drivers through data analysis and reporting |
| 2 | Conversion Rate Optimizer | `agents/analytics-conversion-rate-optimizer.md` | Designs and executes CRO testing programs, analyzes conversion funnels, identifies friction points, and optimizes user experience for higher conversion rates |
| 3 | Customer Insights Researcher | `agents/analytics-customer-insights-researcher.md` | Conducts customer research (surveys, interviews, behavioral analysis) to understand buyer needs, motivations, and decision-making behavior |
| 4 | Data Storyteller | `agents/analytics-data-storyteller.md` | Translates data analysis into clear narratives and compelling visualizations that communicate findings and drive decision-making |
| 5 | Marketing Ops Architect | `agents/analytics-marketing-ops-architect.md` | Designs marketing operations infrastructure, implements tracking and attribution, and builds dashboards and reporting systems that enable data-driven marketing |

## How to Use

### Routing User Requests

**Marketing Performance Analysis** → Performance Analyst
- "Analyze the performance of our latest demand generation campaign"
- "Create a monthly marketing dashboard showing KPIs by channel"
- "Identify which channels are driving the most qualified pipeline"
- "Compare performance across campaigns to identify what's working"

**Conversion Rate Optimization** → Conversion Rate Optimizer
- "Design a CRO testing program for our landing pages"
- "Analyze our conversion funnel and identify where prospects drop off"
- "Run A/B test comparing headline variations on our homepage"
- "Optimize form fields to increase lead capture completion rate"

**Customer Research & Insights** → Customer Insights Researcher
- "Conduct survey research to understand what messages resonate with our target buyer"
- "Interview customers to understand decision process and evaluation criteria"
- "Analyze user behavior data to identify content preferences"
- "Research competitive buyer perception to understand market positioning opportunity"

**Data Communication & Visualization** → Data Storyteller
- "Create a visual dashboard showing marketing funnel metrics"
- "Present Q3 performance analysis to executive leadership"
- "Design infographic summarizing campaign results for stakeholders"
- "Build a customer journey visualization based on analytics data"

**Marketing Systems & Infrastructure** → Marketing Ops Architect
- "Design our marketing attribution model (multi-touch vs. first-touch vs. last-touch)"
- "Build a marketing dashboard infrastructure with real-time data updates"
- "Implement tracking and data collection for marketing funnel"
- "Create a data dictionary and standardized metrics definitions for marketing"

### Execution Model

**Phase 1: Baseline & Measurement (1-2 weeks)**
- Marketing Ops Architect establishes current measurement infrastructure: what's being tracked, what's missing, data quality issues
- Performance Analyst establishes baseline metrics: current funnel conversion rate, cost per lead, cost per acquisition, channel performance
- Identify measurement gaps: what's not being tracked that should be (first-touch vs. last-touch, buyer quality signals, sales pipeline influence)
- Define KPIs and success metrics for next phase of work

**Phase 2: Analysis & Diagnosis (2-3 weeks)**
- Performance Analyst analyzes historical performance data to identify trends, patterns, anomalies
- Customer Insights Researcher conducts qualitative research (surveys, interviews) to understand why metrics look the way they do
- Conversion Rate Optimizer identifies conversion funnel bottlenecks: where do prospects drop off most
- Develop hypothesis for optimization opportunities
- Data Storyteller synthesizes findings into narrative and visualizations

**Phase 3: Experimentation & Testing (4-12 weeks depending on scope)**
- Conversion Rate Optimizer designs and launches A/B testing program with prioritized hypotheses
- Marketing Ops Architect ensures testing infrastructure (statistical significance tracking, proper audience segmentation, variant tracking)
- Customer Insights Researcher collects feedback on tested variations (surveys, interviews to understand why winners won)
- Performance Analyst monitors test results weekly, identifies winners, and tracks cumulative impact
- Data Storyteller communicates test results and learnings to stakeholders

**Phase 4: Optimization & Scaling (ongoing)**
- Scale winning variations (increase traffic to better-performing page, increase spend on better-performing channel)
- Iterate next set of tests based on learning from prior tests
- Customer Insights Researcher continuously monitors sentiment and satisfaction (NPS, CSAT, customer interviews)
- Performance Analyst tracks improvement impact on downstream metrics (pipeline quality, customer lifetime value)
- Marketing Ops Architect maintains data freshness and dashboard accuracy

### Testing Methodology

**CRO Testing Framework**
1. Hypothesis formation (based on data analysis or customer research insight)
   - Expected: Landing page headline focusing on outcome (vs. feature) will increase conversion rate
   - Why: Customer research showed buyers care about time savings more than features
   - Metric: Track conversion rate, form completion rate, downstream pipeline quality

2. Test design (control, test variant, sample size, duration)
   - Control: current page (baseline performance)
   - Variant: new headline focusing on outcome
   - Sample size: 100 conversions per variant to reach 95% statistical significance
   - Duration: 2 weeks or until sample size achieved

3. Execution (launch test, monitor for data quality)
   - Route 50% traffic to control, 50% to variant
   - Ensure proper tracking implementation (no missing conversions, no duplicate counts)
   - Monitor daily for anomalies (traffic drop, conversion spike indicating technical error)

4. Analysis (determine winner, measure impact, document learning)
   - Did test win or lose (statistical significance threshold: 95% confidence, 5% significance level)
   - If winner: magnitude of improvement (e.g., 12% lift in conversion rate = 0.5% absolute improvement)
   - If loser: why did it lose? Did it hurt downstream metrics (lead quality, sales conversion)?
   - Document learning: which element drove result (headline, color, form field, CTA placement)

5. Iteration (scale winner, test next hypothesis)
   - Scale winning variant to 100% traffic (or keep testing if hold-back analysis desired)
   - Identify next testing hypothesis based on remaining friction points
   - Queue up next test for launch

**Testing Prioritization**
- Prioritize tests by estimated impact × confidence level
- High-traffic pages (more statistical power) → test bigger changes
- Low-traffic pages → test smaller changes (less power) or focus on traffic growth
- Test single variable per test (isolates learnings)
- Test highest-impact elements first: traffic source → landing page → form completion → downstream quality

**Statistical Rigor**
- Sample size calculation: depends on baseline conversion rate, desired lift, desired significance level
- Significance threshold: 95% confidence (5% alpha, meaning 5% chance of false positive)
- Running time: continue test until sample size achieved or 2-4 weeks, whichever comes first
- Avoid peeking: don't declare winner until test complete (peeking inflates error rate)

### Metrics Hierarchy

**Top-Level KPIs (North Star Metrics)**
- Marketing-Influenced Pipeline: revenue impact of marketing activities (pipeline value marketing generated)
- Marketing Qualified Leads (MQLs): leads that meet quality threshold for sales handoff
- Customer Acquisition Cost (CAC): fully-loaded cost to acquire new customer (including marketing + sales)
- Customer Lifetime Value (CLV): expected revenue from customer over lifetime

**Mid-Level Metrics (Channel Performance)**
- Cost Per Lead (CPL): average marketing spend to acquire one lead
- Lead-to-Opportunity Conversion: percentage of leads that convert to sales-accepted opportunity
- Opportunity-to-Customer Conversion: percentage of opportunities that close to customer
- Cost Per Opportunity: marketing spend to generate one sales-accepted opportunity
- Cost Per Acquisition: marketing spend to close one customer deal

**Funnel Metrics (Conversion Analysis)**
- Website Traffic: monthly unique visitors by source (organic, paid, direct, referral)
- Page Conversion Rate: percentage of page visitors who take desired action (form submission, email signup)
- Form Completion Rate: percentage of form starters who complete form submission
- Demo/Trial Signup Rate: percentage of engaged prospects who request demo or free trial
- Sales Accepted Lead Rate: percentage of inbound leads meeting sales qualification criteria

**Campaign Metrics (Campaign Performance)**
- Click-Through Rate (CTR): percentage of ad impressions that receive clicks (LinkedIn: 0.5-2%, Google: varies by audience)
- Cost Per Click (CPC): average cost per paid click (compare to historical benchmark and competitor spend)
- Video Completion Rate: percentage of video viewers who watch 75%+ of video (YouTube 25-40%, in-feed 15-25%)
- Lead Quality Score: MQL to SAL conversion rate (higher = better quality leads from source)
- Return on Ad Spend (ROAS): revenue generated per dollar of paid ad spend

**Customer Quality Metrics**
- Sales Cycle Length: average time from opportunity creation to closed customer
- Win Rate: percentage of opportunities that close to customer (competitive benchmark varies)
- Average Contract Value: average customer deal size
- Customer Retention Rate: percentage of customers retained year-over-year
- Net Revenue Retention: revenue retention + expansion revenue from existing customers

### Routing by Analytics Use Case

**Landing Page Optimization**
- Conversion Rate Optimizer leads CRO program with testing roadmap
- Marketing Ops Architect ensures tracking and statistical testing infrastructure
- Data Storyteller visualizes funnel and testing results
- Performance Analyst measures impact on downstream metrics (pipeline, customer quality)
- Success metrics: 20-30% conversion rate improvement over 6 months, improved lead quality

**Demand Generation Campaign Analysis**
- Performance Analyst analyzes campaign performance by channel and content
- Customer Insights Researcher surveys engaged prospects to understand preferences
- Conversion Rate Optimizer identifies highest-converting assets and channels
- Data Storyteller visualizes campaign funnel and highlights top performers
- Marketing Ops Architect ensures proper attribution and tracking
- Success metrics: hit campaign pipeline goal, exceed average cost-per-lead benchmark, high lead quality

**Attribution & Analytics Infrastructure**
- Marketing Ops Architect designs multi-touch attribution model
- Performance Analyst implements tracking and validates data quality
- Data Storyteller creates dashboards showing attribution by channel, campaign, source
- Marketing Ops Architect establishes data governance and standardized metrics
- Success metrics: 95%+ tracking accuracy, real-time dashboard updates, executive confidence in data

**Customer Research Program**
- Customer Insights Researcher conducts qualitative and quantitative research
- Surveys: 100-200 target buyers on messaging, positioning, feature priorities
- Interviews: 10-20 deep-dive conversations with buyers and existing customers
- Behavioral analysis: analyze user behavior on website, demo usage, content preferences
- Data Storyteller synthesizes findings into narrative and visualizations
- Success metrics: identify 5-10 actionable customer insights, 3+ changes implemented based on research

## Output Standards

### Analytics Quality Checklist

**Data Accuracy**
- Validation: Data validated against source systems (CRM, ad platform, GA) for accuracy
- Completeness: 95%+ of expected events tracked and recorded
- Freshness: Dashboards updated daily or hourly for real-time decision-making
- Reconciliation: Monthly reconciliation between systems to ensure consistency
- Documentation: Data dictionary documenting every metric, calculation method, data source

**Funnel Analysis**
- All stages defined: awareness → engagement → MQL → SAL → opportunity → customer
- Conversion rates calculated: percentage of visitors reaching each stage
- Benchmarks established: compare conversion rates to historical baseline and industry benchmark
- Segment analysis: conversion rates by traffic source, campaign, buyer persona, vertical
- Bottleneck identification: which stage has lowest conversion or highest drop-off

**Testing Rigor**
- Sample size: adequate sample size (100+ conversions per variant) to reach 95% statistical significance
- Duration: test runs until sample size achieved or 2-4 weeks minimum
- Single variable: each test isolates one change (control constant, one variable changed)
- Statistical significance: 95% confidence level, 5% significance threshold
- Learning documentation: document what we learned and how it applies to future tests

**Dashboard Quality**
- Clarity: metrics labeled clearly, units defined (rates as %, numbers as count or $)
- Timeliness: updated daily or hourly depending on decision-making frequency
- Actionability: dashboard shows what's working/not working, not just data points
- Drilling down: ability to click through to see underlying data (top traffic sources, best-performing content, etc.)
- Comparisons: shows trends over time and comparisons to benchmarks/targets

### Deliverable Specifications

**Marketing Dashboard**
- Executive dashboard (1-2 pages): top KPIs, traffic, pipeline, campaign ROI, quarter performance vs. goal
- Funnel dashboard: conversion rates by stage, segment analysis (by source, campaign, persona), bottleneck identification
- Channel dashboard: performance by channel (organic, paid, direct, referral, email), cost per lead, conversion rate, trend
- Campaign dashboard: active campaigns, performance vs. goal, cost per lead, lead volume, quality metrics
- Testing dashboard: active tests, results, statistical significance, learning captured
- Daily dashboard: refresh rate hourly, daily KPI performance, alert if metrics miss thresholds

**CRO Testing Roadmap**
- Testing hypothesis bank: 20-30 prioritized hypotheses with expected impact and effort estimate
- Hypothesis: description of test variant, expected outcome, business rationale, success metric
- Estimated lift: expected conversion rate improvement based on similar tests or industry benchmarks
- Sample size & duration: how long test will run to reach statistical significance
- Timeline: Quarters 1-4 roadmap with hypothesis sequence
- Resource requirements: design effort, analytics effort, traffic required

**Performance Analysis Report**
- Executive summary: key findings, performance vs. goal, recommended actions
- Performance overview: KPIs, trends, comparison to prior period and target
- Channel analysis: performance by traffic source (organic, paid, direct), cost per lead, conversion rate
- Campaign analysis: performance by campaign, content, topic, top performers
- Customer quality analysis: lead quality by source, sales cycle length, customer retention
- Competitive benchmarking: performance vs. industry benchmarks
- Recommendations: 3-5 prioritized actions to improve performance

**Customer Insights Report**
- Research methodology: survey sample size, interview count, data collection approach
- Key findings: 5-10 major insights about buyer behavior, preferences, decision criteria
- Messaging preferences: what messages resonate, which value props matter most by persona
- Competitive positioning: how buyers perceive competitive alternatives, key decision factors
- Buying process: stages in buyer journey, key decision drivers by stage
- Persona profiles: updated or confirmed persona attributes, priorities, concerns
- Recommendations: how findings should inform marketing strategy, messaging, product

**CRO Test Results Document**
- Test overview: hypothesis, expected outcome, why this test matters
- Test design: control variant, test variant, sample size, duration, audience selection
- Results: conversion rate by variant, percentage lift, statistical significance
- Statistical analysis: confidence level, p-value, sample size achieved
- Impact: downstream metrics (lead quality, sales conversion, customer retention)
- Learning: what we learned, why winner won, how to apply to future tests
- Follow-up: next test to run based on this learning

**Attribution Model Specification**
- Model type: first-touch vs. last-touch vs. multi-touch (time decay, linear, custom)
- Touch definitions: what actions count as "touch" (landing page view, form submission, email click)
- Credit allocation: how credit is allocated among touches (first touch gets 100%, or distributed across journey)
- Window: how long to track touches (7-day, 30-day, 90-day cookie window)
- Implementation: technical specification for tracking and attribution calculation
- Reporting: how results will be reported and updated
- Validation: methodology to validate attribution accuracy

### Quality Review Process

Before publishing any analytics finding or dashboard:

1. **Data Validation**: Is the data accurate and complete? Have we reconciled against source systems?
2. **Statistical Rigor**: Do findings meet statistical significance requirements? Is sample size adequate?
3. **Bias Check**: Could sample bias, selection bias, or confounding variables affect findings?
4. **Clarity**: Can stakeholders understand findings without extended explanation?
5. **Actionability**: Do findings lead to clear recommendations or decisions?
6. **Sensitivity Check**: How sensitive are findings to assumptions? What changes would reverse finding?

### Success Metrics by Analytics Program

**Conversion Rate Optimization**
- Test execution: launch 1-2 tests per week, completion of testing roadmap
- Test quality: 80%+ of tests have adequate sample size and statistical rigor
- Win rate: 40-50% of tests show positive lift (indicates healthy hypothesis generation)
- Conversion improvement: 20-30% cumulative conversion rate improvement over 6 months
- Downstream impact: 10-15% improvement in lead quality or sales cycle length

**Marketing Dashboard & Reporting**
- Dashboard adoption: 90%+ of stakeholders use dashboard for decision-making
- Update frequency: dashboards updated daily or hourly with zero latency delays
- Accuracy: 98%+ data accuracy compared to source systems
- Action tracking: 80%+ of dashboard insights lead to actionable decisions
- Executive confidence: stakeholder survey showing 90%+ confidence in data accuracy

**Customer Research Program**
- Research completion: conduct 20-30 interviews and 100-200 survey responses per quarter
- Insight generation: 5-10 actionable insights per research cycle
- Implementation rate: 80%+ of recommended changes implemented within 90 days
- Impact measurement: track how recommendations influence performance (messaging changes, product decisions)
- Stakeholder value: research findings cited in 80%+ of marketing strategy decisions

**Performance Analysis & Reporting**
- Analysis freshness: monthly analysis completed within 3 days of month close
- Finding specificity: analysis identifies specific recommendations, not just observations
- Action tracking: recommendations tracked and measured for impact
- Stakeholder value: analysis drives 3-5 major decisions or strategy changes per quarter

## Tools & Systems

**Analytics Platform Stack**
- Website analytics (Google Analytics 4, Mixpanel, Amplitude for event tracking)
- CRM analytics (Salesforce reporting, custom dashboards showing pipeline/forecast)
- Attribution platform (multi-touch attribution, marketing mix modeling)
- Marketing automation (HubSpot, Marketo for email performance, nurture metrics)
- Ad platform analytics (LinkedIn Campaign Manager, Google Ads reporting)

**Testing Infrastructure**
- A/B testing platform (Optimizely, VWO, LaunchDarkly for running and tracking tests)
- Statistical calculator (proper sample size calculation, significance testing)
- Audience segmentation (proper test audience targeting and randomization)
- Test tracking (UTM parameters, conversion pixels, event tracking for test attribution)

**Dashboard & Reporting**
- Dashboard platform (Tableau, Looker, Google Data Studio for visualization)
- Data warehouse (Snowflake, BigQuery for centralized data)
- ETL/data integration (Stitch, Fivetran for syncing data from multiple sources)
- Reporting automation (scheduled reports, alert triggers)

**Customer Research**
- Survey platform (SurveyMonkey, Typeform, Qualtrics for survey distribution)
- Interview transcription (Otter.ai, Rev for interview recording and transcription)
- Analysis tools (MAXQDA, Dovetail for qualitative data analysis)
- Data repository (shared database of customer research findings and insights)

## Data Governance & Standards

**Metrics Definition**
- Every metric must have documented definition: calculation method, data source, refresh frequency
- Standardized naming conventions: consistent names across dashboards and reports
- Metric ownership: each metric has owner responsible for accuracy and interpretation
- Update process: documented process for metric changes, with stakeholder review

**Data Quality Standards**
- Data reconciliation: monthly reconciliation between source systems and reporting systems
- Validation rules: automated checks for data quality (missing values, outliers, impossible values)
- Tracking validation: quarterly audit of tracking implementation accuracy
- Documentation: maintain audit trail of data changes, corrections, and transformations

**Attribution Standards**
- Touch definition: documented definition of what constitutes a marketing touch
- Window definition: documented customer journey tracking window (7-day, 30-day, 90-day)
- Model validation: monthly validation of attribution model accuracy vs. actual results
- Stakeholder alignment: regular reviews of attribution methodology with sales and finance
