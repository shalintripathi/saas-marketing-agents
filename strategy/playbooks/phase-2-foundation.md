# Phase 2: Foundation & Infrastructure

**Duration**: 1-2 weeks for CATALYST-Full | 1-2 days for CATALYST-Sprint | Not typically used for CATALYST-Micro
**Agents Involved**: 6 ops specialists (Marketing Ops Architect, CRM Configuration Specialist, Data Pipeline Engineer, Integration Specialist, Stack Optimization Analyst, Compliance & Privacy Officer)
**Output**: Operational systems, brand system, email infrastructure, and tracking/analytics foundation

## Overview

Phase 2 builds the operational infrastructure that enables everything that follows. You're creating:
1. **Technology foundation**: CRM configured, email platform ready, integrations working
2. **Brand system**: Visual identity, voice, guidelines for consistent customer experience
3. **Analytics foundation**: Tracking implemented, conversion events defined, dashboards created
4. **Operational processes**: Workflows, automation, handoff procedures

Phase 2 is largely invisible to customers but critical for Phase 3 (content production), Phase 4 (launch), and Phase 5 (optimization). Nothing in phases 3-5 can succeed without Phase 2 in place.

This phase is technical and operational, but the quality gate is simple: **Do all systems work?**

## Core Activities

### 1. Marketing Ops Architecture (Marketing Ops Architect)

**Objective**: Design the operational infrastructure for campaign execution and data flow.

**Execution**:

**Systems Assessment** (4-6 hours):
Review Phase 1 strategy and current systems:
- What CRM are we using? What's our current maturity level?
- What email platform do we have?
- What analytics platform do we have?
- What project management tools do we use?
- What gaps exist between what we have and what we need?

**Operational Architecture Design** (8-12 hours):
Design how systems integrate and how data flows:

**Core Systems**:
1. **CRM** (e.g., HubSpot, Salesforce)
   - Central source of truth for prospects and customers
   - Holds contact data, company data, interactions, stage/pipeline
   - Integrates with email, ads, content platforms

2. **Email Platform** (e.g., HubSpot, Marketo, Klaviyo)
   - Manages email campaigns and nurture automation
   - Tracks engagement (opens, clicks)
   - Integrates with CRM for contact data and event triggers

3. **Analytics** (Google Analytics 4, Mixpanel, Amplitude)
   - Tracks website visitors, pages, events
   - Measures conversion funnels
   - Reports on campaign performance and ROI

4. **Advertising Platforms** (Google Ads, LinkedIn, Facebook)
   - Manages paid campaigns
   - Tracks clicks, impressions, conversions
   - Integrates with CRM/analytics for lead attribution

5. **Project Management** (Asana, Monday, Linear)
   - Tracks campaign tasks, dependencies, timelines
   - Coordinates team execution
   - Documents decisions and outcomes

**Data Flow Design**:
- Website visitor → CRM contact (Google Analytics integration)
- Form submission → CRM lead + email list (form integration)
- Email click → CRM interaction history (email integration)
- Ad click → CRM attribution (UTM parameter tracking)
- CRM conversion → revenue analytics (deal closed event)

**Automation Framework**:
- Lead scoring rules (what makes a lead "qualified"?)
- Email trigger automation (what events trigger sends?)
- Lead routing (who gets assigned to which team?)
- Notification rules (who needs to know what happened when?)

**Compliance & Security**:
- GDPR compliance for EU contacts
- CCPA/CPRA compliance for California contacts
- CAN-SPAM compliance for email
- Data residency requirements
- Backup and recovery processes

**Deliverables**:
- Systems Architecture Diagram (1 page): Visual showing how systems connect
- Data Flow Documentation (2 pages): How data moves between systems
- Integration Specifications (2-3 pages): What data flows between which systems?
- Automation Framework (2 pages): Business logic for lead scoring, routing, automation
- Compliance & Security Plan (1-2 pages): GDPR, CCPA, CAN-SPAM approach

**Quality Criteria**:
- All systems documented with clear ownership
- Data flows diagrammed and documented
- Integration points specified (what data, what frequency)
- Automation logic clearly defined
- Compliance requirements identified and approach defined

---

### 2. CRM Configuration & Setup (CRM Configuration Specialist)

**Objective**: Configure CRM to support campaign execution, lead management, and reporting.

**Execution**:

**Data Model Setup** (6-8 hours):

**Contact Object**:
- Required fields: First name, last name, email, company, job title
- From Phase 1 audience segmentation:
  - Audience segment (dropdown: Segment A, Segment B, etc.)
  - Buying stage (Awareness, Consideration, Decision, Customer)
  - Company size, industry, geography (from audience segments)
- From Phase 0 research:
  - Product interest (what are they interested in?)
  - Budget authority (yes/no)
  - Timeline (interested when?)

**Company Object**:
- Required fields: Company name, website, size, industry, location
- Fields for: Number of employees, estimated revenue, tech stack
- Integration: Link to contacts to aggregate company-level insights

**Deal/Opportunity Object** (if tracking pipeline):
- Required fields: Deal name, company, contact, amount, close date, stage
- From strategy: Expected deal size by segment/use case
- From sales: Opportunity pipeline tracking

**Custom Fields for Campaign Tracking**:
- Lead source (which channel brought them?)
- Campaign (which campaign are they in?)
- Last touch channel (what was the most recent interaction?)
- Content downloaded (what have they engaged with?)
- MQL date (when did they become a marketing qualified lead?)

**Segmentation & Lists** (4-6 hours):

Create CRM segments aligned with Phase 1 audience strategy:

**Audience Segments**:
- Segment A: [characteristics] → Segment A Outreach List
- Segment B: [characteristics] → Segment B Outreach List
- Segment C: [characteristics] → Segment C Outreach List

**Engagement-Based Segments**:
- Unengaged: No activity in past 60 days
- Engaged: Opened email or visited site in past 14 days
- Hot leads: Visited pricing page or downloaded case study
- Customers: Converted to customer

**Lifecycle Segments**:
- Leads (not yet qualified)
- MQLs (marketing qualified leads)
- SQLs (sales qualified leads)
- Customers
- Churned customers

**Lead Scoring Setup** (6-8 hours):

Define rules for identifying "qualified" leads:

**Implicit scoring** (based on company characteristics):
- Company size: +2 points (if in target range)
- Industry: +2 points (if in target industries)
- Geography: +1 point (if in target region)
- Company revenue: +1 point (if in target range)

**Explicit scoring** (based on behavior):
- Email open: +1 point
- Email click: +2 points
- Form submission: +5 points
- Content download: +3 points
- Website visit to pricing: +5 points
- SQL meeting attended: +10 points

**Threshold**: Contact becomes MQL at 20+ points; remains MQL if score doesn't decay below 15

**Decay**: Score decreases by 1 point per week of inactivity

**Automation & Workflows** (4-6 hours):

Set up automation that reduces manual work:

**Lead Capture Automation**:
- New website form submission → Create contact in CRM
- New contact → Add to email nurture sequence based on segment
- New contact → Assign to sales (if MQL score > threshold)

**Email Trigger Automation**:
- Contact added to Segment A → Send welcome email
- Contact visits pricing page → Send ROI case study
- Contact opens email → Send follow-up email in 3 days
- Contact becomes MQL → Notify sales team

**Lead Routing**:
- MQL from Account Executives territory → Route to that AE
- MQL from new territory → Route to sales manager for assignment
- SQL → Assign to sales team immediately

**List & Report Setup** (3-4 hours):

Create dashboards and reports for ongoing management:

**Sales Dashboard**:
- New MQLs (this week, this month)
- Pipeline value by source/campaign
- Win rate by source
- Average sales cycle by source

**Marketing Dashboard**:
- Leads by source (traffic, email, ads, etc.)
- MQL conversion rate (leads → MQL)
- Cost per MQL by channel/campaign
- Pipeline attributed to marketing

**Hygiene & Compliance**:
- Duplicate contact process (how we handle duplicates)
- Unsubscribe process (how we honor opt-outs)
- Data validation (how we catch bad data)
- GDPR/CCPA deletion process (how we handle privacy requests)

**Deliverables**:
- CRM Configuration Document (4-5 pages):
  - Data model (objects, fields, relationships)
  - Segment definitions and list structures
  - Lead scoring logic and thresholds
  - Automation workflows and rules
- CRM Training Materials (2-3 pages): How to use CRM for campaign teams
- Dashboard/Report Specifications (2 pages): What reports exist and what they show

**Quality Criteria**:
- Data model matches Phase 1 audience and campaign strategy
- Lead scoring is realistic and validated (test with historical data)
- Automation rules are clearly documented
- Dashboards and reports are actionable (teams know what to do with the data)
- GDPR/CCPA/CAN-SPAM compliance documented

---

### 3. Email Platform & Deliverability Setup (Email Deliverability Specialist)

**Objective**: Configure email infrastructure to ensure high deliverability and campaign execution.

**Execution**:

**Email Infrastructure** (6-8 hours):

**Sender Authentication**:
- SPF (Sender Policy Framework): Authorize mail servers to send from your domain
  - Setup SPF record in DNS
  - Include all mail service providers (email platform, CRM, transactional email)
- DKIM (DomainKeys Identified Mail): Digitally sign emails
  - Setup DKIM keys in DNS
  - Enable in email platform
- DMARC (Domain-based Message Authentication, Reporting, and Conformance): Monitor compliance
  - Setup DMARC policy (quarantine/reject non-compliant mail)
  - Monitor DMARC reports for issues
  - Start with p=none (monitor), move to p=quarantine (strict)

**Email Deliverability Practices**:
- List hygiene: Remove invalid email addresses regularly
- Engagement-based list pruning: Remove non-engaged addresses quarterly
- CAN-SPAM compliance: Include physical address, unsubscribe link, honor opt-outs
- Frequency capping: Limit emails per recipient to avoid fatigue
- Warm-up: If new sender, gradually increase volume
- Reputation management: Monitor bounce rate, complaint rate

**Email Platform Configuration** (4-6 hours):

**Account Setup**:
- Create email campaign account
- Set up sender addresses (noreply@, marketing@, support@)
- Configure reply-to address (where do replies go?)
- Set up unsubscribe handling

**List & Segmentation**:
- Import contact list from CRM
- Create segments for campaigns (from Phase 1 strategy)
- Set up dynamic content blocks (personalization)
- Configure double opt-in for compliance

**Email Template Setup**:
- Create responsive email templates
- Template library for: newsletters, nurture sequences, campaign sends
- Personalization fields (first name, company, etc.)
- Footer with unsubscribe and physical address
- Mobile optimization

**Automation & Triggers** (4-6 hours):

From CRM setup, configure email automation:

**Automation Sequences**:
- Welcome series (3-4 emails over 2 weeks)
- Nurture sequences (8-12 emails over 90 days, based on segment)
- Abandoned cart/download follow-up (immediate + 3-day)
- Re-engagement (for inactive contacts)
- Win-back (for unsubscribed contacts)

**Trigger Setup**:
- Segment assignment → Send welcome email
- Form submission → Send thank you + add to nurture
- Email bounce → Alert for manual review
- Unsubscribe → Remove from all lists

**Performance Monitoring & QA** (2-3 hours):

**Email QA Checklist**:
- [ ] Test email rendering (desktop, mobile, outlook, Gmail)
- [ ] Test unsubscribe link (ensures CAN-SPAM compliance)
- [ ] Test personalization fields (ensures merge tags work)
- [ ] Test links (all links functional)
- [ ] Test images (load correctly)
- [ ] Test on multiple email clients (Outlook, Gmail, Apple Mail, etc.)
- [ ] Grammar and spelling review
- [ ] Brand compliance (colors, fonts, logo)

**Deliverability Monitoring**:
- Email open rate (target: 18-25% for B2B)
- Click-through rate (target: 2-5%)
- Bounce rate (target: <0.5%)
- Unsubscribe rate (target: <0.2%)
- Complaint rate (target: <0.1%)
- Spam score (test with Mail Tester or similar)

**Deliverables**:
- Email Deliverability Setup Guide (3-4 pages): SPF/DKIM/DMARC setup, CAN-SPAM compliance, best practices
- Email Platform Configuration Document (2-3 pages): Account setup, templates, automation
- Email QA Checklist (1 page): Pre-send QA process
- Deliverability Monitoring Dashboard (1 page): KPIs and targets

**Quality Criteria**:
- SPF/DKIM/DMARC fully configured and tested
- CAN-SPAM compliance documented
- Email templates responsive and brand-compliant
- Automation sequences set up for all Phase 1 campaigns
- Baseline deliverability established (test send successful)

---

### 4. Analytics & Tracking Implementation (Data Pipeline Engineer + Integration Specialist)

**Objective**: Implement tracking to measure campaign performance and customer journey.

**Execution**:

**Google Analytics 4 Setup** (6-8 hours):

**Basic Configuration**:
- Create GA4 property for website
- Install GA4 tracking code (via GTM or directly)
- Enable Google Signals (cross-device tracking)
- Set up data streams (web, app if applicable)
- Link to Google Ads and CRM (if possible)

**Event Tracking** (define what you measure):
- Page views (automatic)
- Scroll depth (how far did user scroll?)
- Form submissions (when do users fill out forms?)
- Video engagement (did they watch video?)
- CTA clicks (did they click call-to-action?)
- Content downloads (did they download gated content?)
- Pricing page views (interest in pricing)
- Demo request (high-intent event)

**Conversion Definition**:
- Primary conversion: What is your most important goal? (e.g., demo request, SQL)
- Secondary conversions: Supporting goals (e.g., content download, email signup)
- Revenue tracking: If you have customer data, track revenue events

**Audience Definition**:
- High-intent audience (visited pricing + form submitted)
- Engaged audience (visited 3+ pages or spent 2+ minutes)
- Content downloaders (downloaded gated content)
- Video viewers (watched 50%+ of video)

**Reporting Setup** (4-6 hours):

Create dashboards for ongoing performance monitoring:

**Marketing Performance Dashboard**:
- New users (by source/campaign)
- User engagement (pages per session, time on site)
- Conversion rate (form submissions / visits)
- Cost per conversion (if running paid campaigns)

**Campaign Performance Dashboard**:
- Campaign A: Impressions, clicks, form submissions, cost per conversion
- Campaign B: [same metrics]
- Campaign C: [same metrics]
- Comparison: Which campaign performs best?

**Source/Medium Dashboard**:
- Organic search: Users, conversions, conversion rate
- Paid search: Clicks, cost, conversion rate, ROI
- Email: Clicks, conversions, revenue attributed
- Direct: Users, conversion rate
- Referral: Sources, engagement, conversions

**CRM Integration** (4-6 hours):

Connect analytics to CRM for full customer journey:

**Integration Options**:
1. **API Integration** (if GA4 and CRM support): Automatically sync conversion data
2. **UTM Parameter Tracking**: Tag all campaign URLs with UTM parameters
3. **Manual Import**: Periodic export/import of key metrics
4. **Google Analytics 4 ↔ CRM plugin**: Connect GA4 data to CRM contact records

**UTM Strategy**:
Standard format: ?utm_source=[source]&utm_medium=[medium]&utm_campaign=[campaign]
- Source: Where did traffic come from? (google, linkedin, email, etc.)
- Medium: What type of link? (cpc, organic, email, social, etc.)
- Campaign: Which campaign? (Q1_launch, product_awareness, etc.)

Example: ?utm_source=linkedin&utm_medium=cpc&utm_campaign=Q1_launch

**Attribution Modeling** (2-3 hours):

Decide how to credit channels for conversions:

**Attribution Models**:
- First-touch: Credit first channel user came through
- Last-touch: Credit channel where conversion happened
- Linear: Equal credit to all channels in journey
- Time-decay: Heavier credit to channels closer to conversion
- Custom: Define your own model based on your business

Choose one to start; refine over time as you gather data.

**Deliverables**:
- Google Analytics Setup Document (2-3 pages): Property setup, events, conversions
- Event Tracking Specification (2 pages): All trackable events and what they mean
- UTM Parameter Strategy (1 page): How to tag all campaign URLs
- Dashboard Specifications (2-3 pages): What dashboards exist and what they show
- Attribution Model Definition (1 page): How you credit channels for conversions

**Quality Criteria**:
- GA4 installed and basic events firing
- All conversion events defined and trackable
- UTM strategy documented for all campaigns
- Dashboards created and tested (data showing correctly)
- CRM/Analytics integration planned with clear approach
- Attribution model chosen and documented

---

### 5. Brand System & Visual Identity (Brand Identity Strategist + Design Systems Manager)

**Objective**: Create consistent brand system for all customer touchpoints.

**Execution**:

**Brand Asset Development** (8-12 hours):

From Phase 1 positioning and messaging, create visual identity:

**Logo & Wordmark**:
- Primary logo (full version)
- Secondary logo (simplified version for small spaces)
- Wordmark (text-only version)
- Clear space and minimum size rules
- Color variations (full color, black, white)

**Color Palette**:
- Primary color (main brand color)
- Secondary color (supporting color)
- Neutral palette (grays for text, backgrounds)
- Alert colors (for errors, warnings, success messages)
- Accessibility: Ensure sufficient contrast ratios

**Typography**:
- Heading font (typically bold, distinctive)
- Body font (typically clean, readable)
- Font sizes and line heights (for hierarchy)
- Font weights (regular, medium, bold)

**Imagery & Photography Style**:
- Photography style guide (what types of photos are "on brand"?)
- Icon system (simple, consistent icons)
- Illustration style (if using illustrations)
- Color grading (how should photos be post-processed?)

**Visual Patterns & Components**:
- Buttons (primary, secondary, disabled states)
- Form elements (inputs, checkboxes, radio buttons)
- Cards and modules (how content is organized)
- Spacing and layout rules (margin, padding)
- Shadows and depth (how to create visual hierarchy)

**Brand Voice & Messaging Tone** (4-6 hours):

From Phase 1 messaging, document brand voice:

**Voice Attributes**:
- Professional yet approachable?
- Authoritative yet friendly?
- Technical yet accessible?
- Define 3-5 key voice attributes

**Tone Examples** (by context):
- Marketing messaging: [tone example]
- Customer support: [tone example]
- Error messages: [tone example]
- Educational content: [tone example]

**Messaging Guidelines**:
- How we refer to our product (name, shorthand)
- How we address customers (you, your company, etc.)
- Preferred terminology (always use X, never use Y)
- Brand-specific phrases (how do we describe unique features?)

**Visual Consistency** (4-6 hours):

Create living brand guidelines document:

**Brand Guidelines Document**:
- Logo usage (approved formats, do's and don'ts)
- Color palette (RGB, CMYK, hex values)
- Typography (font families, sizes, usage)
- Photography and imagery (style and examples)
- Tone and voice (attributes, examples, do's and don'ts)
- Icon library (all approved icons with usage)
- Visual patterns (button styles, card styles, etc.)
- Email signature standards
- Social media profile standards

**Design Asset Library**:
- Figma or Adobe library with all components
- Up-to-date logo files (all variations)
- Photo assets (approved photography)
- Icon libraries (SVG or similar)
- Color swatches
- Typography files

**Brand Templates** (2-3 hours):

Create templates for common assets:

**Template Collection**:
- Email template (with brand colors, fonts, spacing)
- Landing page template (consistent design)
- One-pager template (for product, case studies, whitepapers)
- Social media templates (for LinkedIn, Twitter, Facebook)
- Presentation template (for investor pitches, customer presentations)

**Deliverables**:
- Brand Guidelines Document (8-10 pages): Logo, colors, typography, imagery, voice
- Visual Asset Library (Figma/Adobe): All approved designs, components
- Brand Templates (email, landing page, one-pager, presentations)
- Brand Voice & Messaging Guide (3-4 pages): Tone, language, examples
- Implementation Checklist (1 page): How to apply brand across touchpoints

**Quality Criteria**:
- All brand elements have clear usage guidelines
- Color palette has hex/RGB/CMYK values
- Typography is specified with font names and sizes
- Voice/tone examples are specific and actionable
- Templates are production-ready
- Asset library is organized and easy to access

---

### 6. Compliance & Privacy Program (Compliance & Privacy Officer)

**Objective**: Ensure all marketing activities comply with data privacy and marketing regulations.

**Execution**:

**Privacy Compliance Review** (6-8 hours):

**GDPR Compliance** (if serving EU customers):
- Privacy policy: Updated and compliant
- Consent management: How do we collect and store consent?
- Data processing agreement: If using third-party tools
- Right to access/delete: Process for honoring GDPR requests
- Data retention: How long do we keep data?

**CCPA/CPRA Compliance** (if serving California customers):
- Privacy policy: Updated and CCPA-compliant
- Opt-out mechanism: How do customers opt out of sale of personal information?
- Data access: Process for responding to data access requests
- "Do Not Sell" link on website

**CAN-SPAM Compliance** (for email):
- Clear identification: Who is sending the email?
- Opt-out mechanism: How do recipients unsubscribe?
- Physical address: Included in footer
- Timely opt-out: Honor unsubscribes within 10 business days

**Marketing Consent Process** (4-6 hours):

Define how consent is collected and stored:

**Consent Types**:
1. **Explicit opt-in**: User checks a box or takes an action to consent
2. **Implicit consent**: User receives email after filling out form (inferred consent)
3. **Pre-checked**: User sees pre-checked box (not recommended; often not compliant)

**Consent Collection Points**:
- Website form: "Yes, email me about new products"
- Event signup: Contact opts into email list
- Customer signup: Auto-enrolled in customer communications
- Third-party data: If buying lists, ensure compliant data

**Consent Management System**:
- Where is consent stored? (email platform, CRM)
- How do we track opt-in date and source?
- How do we honor opt-outs? (immediate removal)
- How do we handle bounces? (remove from list)

**Website Privacy & Security** (2-3 hours):

**Privacy Policy**:
- Describes what data we collect
- Explains how we use data
- Describes third-party tools (analytics, email, ads)
- Explains data rights (access, delete, opt-out)
- Updated for GDPR/CCPA requirements

**Cookie Policy**:
- What cookies does your site use?
- Are they essential (required) or non-essential (tracking)?
- How do users consent to non-essential cookies?
- Cookie banner: Compliant implementation

**Website Security**:
- SSL certificate (https://)
- Privacy shield/adequacy decision (if relevant)
- Regular security audits
- Data handling best practices

**Marketing Tool Compliance** (2-3 hours):

**Third-Party Tools Assessment**:
- Email platform: GDPR/CCPA compliant? DPA signed?
- Analytics: How is data processed? GDPR compliant?
- Ads platform: How do they handle consent? GDPR compliant?
- CRM: Data processing agreement in place?

**Data Processing Agreements**:
- Ensure DPA is in place with all data processors
- Data residency: Where is data stored?
- Sub-processors: What other vendors process data?

**Vendor Documentation** (2-3 hours):

**Deliverables**:
- Privacy Compliance Checklist (2-3 pages): GDPR, CCPA, CAN-SPAM requirements
- Privacy Policy Template (updated for review by legal counsel)
- Cookie Policy (if using non-essential cookies)
- Consent Management Process Document (1-2 pages): How consent is collected and managed
- Data Processing Inventory (1 page): What data? Where stored? Who has access?
- Third-Party Vendor Assessment (1 page per major vendor): Compliance, DPA status, risks
- Incident Response Plan (1 page): What to do if there's a data breach

**Quality Criteria**:
- Privacy policy updated and legally reviewed
- Consent collection process documented
- All third-party vendors assessed for compliance
- Data processing agreements in place with vendors
- Opt-out/unsubscribe process defined and tested
- GDPR/CCPA requirements understood and implemented

---

## Phase 2 Deliverables Checklist

By end of Phase 2, you should have:

- [ ] **Systems Architecture** (3-4 pages)
  - All systems documented
  - Data flows defined
  - Integration points specified
  - Automation logic defined

- [ ] **CRM Configuration** (4-5 pages)
  - Contact and company objects configured
  - Audience segments created
  - Lead scoring rules defined
  - Automation workflows set up
  - Dashboards created

- [ ] **Email Infrastructure** (3-4 pages)
  - SPF/DKIM/DMARC configured
  - CAN-SPAM compliance implemented
  - Email templates created
  - Automation sequences configured
  - Deliverability tested

- [ ] **Analytics & Tracking** (4-5 pages)
  - Google Analytics 4 configured
  - Events and conversions defined
  - UTM strategy documented
  - Dashboards created
  - CRM/Analytics integration planned

- [ ] **Brand System** (10-12 pages + asset library)
  - Logo and wordmark
  - Color palette
  - Typography guidelines
  - Photography/imagery style
  - Voice and tone guide
  - Templates (email, landing page, one-pager)
  - Asset library (Figma/Adobe)

- [ ] **Compliance Documentation** (3-4 pages)
  - Privacy policy updated
  - Cookie policy (if needed)
  - GDPR/CCPA compliance documented
  - CAN-SPAM compliance documented
  - Data processing inventory
  - Vendor assessments

## Phase 2 Quality Gate

**Approval Required From**: VP Marketing + Chief Operations Officer (or equivalent)

**Review Criteria**:
- [ ] Systems architecture documented; all systems have clear ownership
- [ ] CRM configured with: Contact/company objects, audience segments, lead scoring, automation
- [ ] Email platform configured with: SPF/DKIM/DMARC, templates, CAN-SPAM compliance, automation
- [ ] Google Analytics 4 installed and basic events firing correctly
- [ ] UTM strategy documented and tagging implemented
- [ ] Dashboards created and showing data correctly
- [ ] Brand system complete: Logo, colors, typography, voice/tone, templates
- [ ] Privacy policy updated and legally reviewed
- [ ] GDPR/CCPA/CAN-SPAM compliance documented
- [ ] All third-party vendors assessed for compliance
- [ ] Test send of email successful with proper deliverability
- [ ] Test of CRM form submission → lead creation → automation trigger successful
- [ ] Test of GA4 conversion event tracking successful

**Remediation Process** (if gate not passed):
- System not working: Technical troubleshooting and fixes (2-5 days)
- Configuration incomplete: Finish setup and testing (1-3 days)
- Compliance gaps: Legal review and updates (2-5 days)

**Gate Sign-Off**:
Once approved, you have operational infrastructure ready for Phase 3 (Build).

## Handoff to Phase 3

See `coordination/handoff-protocols.md` for detailed handoff specification template.

**Key Deliverables Passed to Phase 3**:
- Brand system and templates (for all asset creation)
- Email platform setup and automation sequences (for email content creation)
- Campaign structure in CRM (for proper tagging and tracking)
- Email templates (for campaign sends)
- Analytics/UTM strategy (for proper campaign measurement)
- Lead scoring and automation rules (so created assets integrate properly)

**Phase 3 Lead** (Content Production Lead) will use Phase 2 infrastructure to:
- Create content using brand templates and guidelines
- Set up email sequences in the email platform
- Create landing pages with proper conversion tracking
- Create ads with proper UTM parameters
- Ensure all created assets integrate with CRM/email/analytics

---

## Common Phase 2 Pitfalls & Solutions

| Pitfall | Prevention | Solution |
|---------|-----------|----------|
| Systems don't integrate | Plan integrations upfront during architecture | Troubleshoot API/sync issues; use manual processes as interim |
| Email deliverability poor | Set up SPF/DKIM/DMARC correctly | Get domain reputation assessment; warm up sending gradually |
| Analytics not tracking correctly | Test tracking before declaring complete | Debug using GA4 real-time; check UTM implementation |
| CRM data quality issues | Define data requirements upfront | Clean data; implement validation rules |
| Compliance gaps | Legal review early | Get legal counsel review; update policies |
| Too many templates created | Focus on core templates (email, LP, one-pager) | Reduce to minimum viable; expand later |

## Tools & Resources

**Systems & Integration**:
- Zapier or Make (automation/integration platform)
- API documentation for each system
- Integration guides (HubSpot, Salesforce, etc.)

**Email Deliverability**:
- Mail Tester (test spam score)
- MXToolbox (test SPF/DKIM/DMARC)
- Return Path monitoring (email reputation)

**Analytics**:
- Google Analytics 4 setup guides
- UTM builder tools
- Google Tag Manager (for advanced tracking)

**Brand & Design**:
- Figma (design and component library)
- Adobe Creative Suite (if using)
- Brand guidelines templates

**Compliance**:
- GDPR.eu (official EU resource)
- iApp.org (CCPA resources)
- Legal counsel (for privacy policy review)

## Next Steps

Once Phase 2 is complete and approved:
1. → Proceed to Phase 3 (Build & Content Production)
2. → Phase 3 Lead organizes content production using templates and guidelines
3. → Content is created with confidence in proper tracking and integration

---

**Version**: 1.0 | **Last Updated**: 2026-04-03
