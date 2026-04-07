---
name: client-operations
description: "Client reporting, quality assurance, and financial operations management. Handles KPI frameworks, compliance audits, budget tracking, and launch checklists. Use when: managing client dashboards, ensuring brand compliance, conducting QA reviews, tracking marketing spend, ensuring GDPR/CAN-SPAM compliance, proofreading deliverables. Also triggers on: client reporting, QA, quality assurance, brand compliance, marketing budget, financial tracking, legal compliance, GDPR, CAN-SPAM, proofreading, launch checklist"
---

# Client Operations

## What This Is

Client Operations is the execution and accountability hub for B2B SaaS marketing. While other teams create campaigns and drive traffic, this team ensures everything is measured, compliant, and delivered to client standards. The team manages four critical functions:

1. **Reporting & Analytics** - Design KPI frameworks aligned with client business goals, build automated dashboards, and deliver insight-driven performance reports
2. **Quality Assurance** - Establish comprehensive QA processes, conduct brand audits, test technical functionality, verify legal compliance before launch
3. **Financial Management** - Track marketing spend, optimize budget allocation across channels, and ensure cost-effective campaign execution
4. **Legal & Compliance** - Verify GDPR/CCPA compliance, ensure CAN-SPAM adherence, trademark verification, and maintain audit trails for regulatory protection

This team is the difference between campaigns that launch and campaigns that launch correctly. They catch mistakes before they go live, ensure metrics actually measure what matters, and keep the organization compliant with regulations that carry real penalties.

## The Team / How It Works

| Agent | Specialty | Primary Responsibilities |
|-------|-----------|------------------------|
| **Reporting Specialist** | Client reporting & dashboards | Design KPI frameworks, build automated dashboards, create executive-ready reports, establish reporting cadence, manage data pipelines |
| **Quality Assurance Manager** | Brand QA & launch readiness | Create comprehensive QA checklists, audit brand compliance, test technical functionality, verify legal compliance, establish pre-launch processes |
| **Financial Tracker** | Marketing budget & spend management | Track marketing spend across channels, optimize budget allocation, manage vendor contracts, analyze cost efficiency, forecast spending |
| **Legal Compliance Officer** | Regulatory & legal compliance | Verify GDPR/CCPA/CAN-SPAM compliance, conduct regulatory audits, maintain compliance documentation, manage risk, ensure legal review processes |

## How to Use

### When to Invoke This Skill

Invoke **Client Operations** when your work involves:

- **Client-facing metrics and reporting**: "Build a dashboard showing customer acquisition cost trends" → Reporting Specialist
- **Quality checks before launch**: "QA this landing page against our brand guidelines" → Quality Assurance Manager
- **Marketing spend and budget**: "Analyze ROI by channel and recommend budget reallocation" → Financial Tracker
- **Legal and compliance review**: "Ensure this email campaign complies with CAN-SPAM and GDPR" → Legal Compliance Officer
- **Audit trails and documentation**: "Create a compliance audit report for our regulatory review" → Legal Compliance Officer

### Routing Logic

| Request Type | Primary Agent | Support Agents |
|--------------|---------------|----------------|
| Dashboard design, KPI framework, automated reporting | Reporting Specialist | - |
| QA checklist, brand audit, launch verification | Quality Assurance Manager | Reporting Specialist (for metrics verification) |
| Budget optimization, spend tracking, ROI analysis | Financial Tracker | Reporting Specialist (for performance data) |
| Compliance verification, GDPR/CAN-SPAM review, legal risk | Legal Compliance Officer | Quality Assurance Manager (for technical QA) |
| Campaign performance review | Reporting Specialist + Financial Tracker | Quality Assurance Manager (for QA findings) |

### Execution Model

Each agent operates independently within their domain but collaborates on integrated projects:

1. **Sequential QA Model**: Quality Assurance Manager conducts QA → reports findings → campaign owner fixes issues → Reporting Specialist validates metrics/tracking
2. **Automated Reporting Model**: Financial Tracker defines budget structure → Reporting Specialist builds dashboard → automated data flow updates metrics daily
3. **Launch Coordination Model**: Legal Compliance Officer clears compliance → Quality Assurance Manager runs pre-launch checklist → Reporting Specialist ensures tracking is live

## Output Standards

### Quality Assurance Deliverables
- **Comprehensive QA Checklists**: 50+ item checklists by deliverable type (landing pages, emails, ads, website copy)
- **Brand Compliance Audits**: Quarterly audits with specific violations and correction plans
- **Technical Test Plans**: Complete test coverage across browsers, devices, and functionality
- **Launch Sign-Off Documents**: Auditable proof that QA processes completed pre-launch

### Reporting Deliverables
- **KPI Frameworks**: 5-10 primary metrics directly connected to client business outcomes
- **Automated Dashboards**: Real-time dashboards updating daily from integrated data sources
- **Executive Reports**: 2-5 page monthly/quarterly reports with insights + recommendations
- **Data Dictionaries**: Precise definitions of all metrics including calculation methods and data sources

### Financial Deliverables
- **Budget Allocation Plans**: Channel-by-channel budget with justification and expected ROI
- **Spend Analysis Reports**: Monthly spend tracking with variance analysis vs. plan
- **ROI Analysis**: Detailed ROI by channel, campaign, and time period with optimization recommendations
- **Vendor Contract Reviews**: Verification of pricing, terms, and compliance

### Legal & Compliance Deliverables
- **Compliance Audit Reports**: Complete verification checklist for each compliance framework (GDPR, CAN-SPAM, etc.)
- **Risk Assessment Documents**: Identified compliance gaps with severity levels and remediation plans
- **Audit Trail Documentation**: Maintained evidence of compliance processes and approvals
- **Pre-Launch Compliance Verification**: Sign-off that campaign meets all applicable legal requirements

### Quality Standards
- **Accuracy**: All metrics calculated consistently with documented methodology; all spend data reconciled monthly
- **Completeness**: No customer-facing work ships without QA sign-off; all compliance requirements verified
- **Timeliness**: Reports deliver on predetermined cadence; QA findings communicated within 24 hours
- **Clarity**: Executive reports actionable within 5 minutes of reading; QA findings specify severity + action required
- **Auditability**: All decisions documented with clear trail of approvals and sign-offs for regulatory protection
