# SaaS Marketing Agents - Workflow Guide

This guide explains the workflow examples and automation scripts included in the SaaS Marketing Agents repository.

---

## Overview

The SaaS Marketing Agents framework includes:

1. **Workflow Examples** - Documented examples of multi-agent marketing campaigns
2. **Automation Scripts** - Tools for validating, converting, and installing agents

---

## Part 1: Workflow Examples

Located in `examples/` directory. These documents show how multiple agents collaborate on real B2B SaaS marketing campaigns.

### Available Workflows

#### 1. Product Launch Workflow (`workflow-product-launch.md`)

**Use this when**: Launching a new product feature or entire new product

**Duration**: 6-8 weeks from kickoff to launch

**Agents Involved**: 8-10 agents across positioning, messaging, content, design, and paid media

**Key Phases**:
- Week 1-2: Discovery & Positioning
  - Customer research
  - Competitive intelligence
  - Positioning development and validation

- Week 2-4: Content & Asset Strategy
  - Content planning (blog, SEO)
  - Landing page and design
  - Ad creative production

- Week 3-5: Campaign Setup
  - PPC campaign planning
  - Social ads strategy
  - Email sequences

- Week 5-6: Orchestration & Launch Readiness
  - Launch timeline and coordination
  - Sales enablement
  - Final testing and QA

- Week 7+: Launch Execution & Optimization

**Deliverables**:
- Customer research synthesis
- Positioning framework
- Messaging architecture
- Blog content calendar and posts
- Landing page designs and copy
- Ad creatives (6-8 variations)
- Email sequences
- Sales enablement materials
- Launch timeline and checklist

**Success Metrics**:
- 200-500 MQLs during launch week
- 30%+ SQLs within 2 weeks
- 3-5% landing page conversion rate
- 20%+ faster deal progression for marketing-influenced deals

---

#### 2. Content Engine Workflow (`workflow-content-engine.md`)

**Use this when**: Building and scaling a content production system

**Duration**: Ongoing monthly cycles with 4-week lead time

**Agents Involved**: 6-8 agents focused on content production and distribution

**Key Phases**:
- Week 1-2: Monthly Planning & Research
  - Keyword opportunity analysis
  - Content calendar planning
  - SEO specifications

- Week 3-4: Content Production
  - Article copywriting (8-12/month)
  - Graphics and visual design
  - Email content preparation

- Week 4: Optimization & Final Review
  - SEO verification
  - Editorial review

- Week 4-5: Distribution & Amplification
  - Newsletter curation
  - LinkedIn amplification

- Week 5+: Monitoring & Optimization
  - Performance tracking
  - Analytics and reporting

**Monthly Production Targets**:
- 8-12 blog articles (1,500-2,500 words)
- 2-4 pillar pieces (2,500-4,000 words)
- 6-8 cluster pieces
- 4-6 email pieces
- 70-106 total design assets

**Success Metrics**:
- 5,000-10,000 monthly organic sessions
- 50+ keywords ranking in top 10
- 2+ minutes average time on page
- 50-100 MQLs monthly from blog content
- $100K-$500K monthly pipeline influenced

---

#### 3. Demand Generation Campaign Workflow (`workflow-demand-gen-campaign.md`)

**Use this when**: Running a comprehensive demand gen campaign from strategy to results

**Duration**: 4-6 weeks from strategy to full execution

**Agents Involved**: 7-9 agents across research, strategy, creative, and analytics

**Key Phases**:
- Week 1-2: Strategy & Audience Definition
  - ICP analysis and customer research
  - Positioning validation
  - Budget allocation

- Week 2-4: Campaign Setup & Creative Development
  - PPC strategy and setup
  - Social ads strategy
  - Landing page design
  - Ad creative production

- Week 3: Analytics & Conversion Optimization Setup
  - Conversion tracking setup
  - CRO strategy
  - Dashboard design

- Week 4-6: Campaign Launch & Optimization
  - Campaign launches across channels
  - Daily monitoring and optimization
  - A/B testing

- Week 7+: Analysis & Reporting

**Budget**: $10K-$100K+ (flexible)

**Expected Results**:
- 200-1,000 MQLs
- $500K-$5M+ influenced pipeline
- 500K-2M impressions
- 5K-20K clicks
- 5-15% landing page conversion rate

**Success Metrics**:
- CPL (Cost Per Lead): $5-20
- CPM trending toward $0.50-2.00
- Email open rate: 25-35%
- Landing page conversion: 5-15%
- 2:1 to 5:1 ROAS

---

#### 4. Account-Based Marketing Workflow (`workflow-abm-campaign.md`)

**Use this when**: Running a targeted account-based marketing campaign

**Duration**: 3-4 weeks from target list to full execution

**Agents Involved**: 6-8 agents focused on account research and personalized engagement

**Key Phases**:
- Week 1-2: Target Account Identification & Research
  - Account list development (10-100 accounts)
  - Deep account research
  - Competitive positioning analysis

- Week 1-2: Account-Specific Strategy & Messaging
  - Account-specific positioning
  - Account-specific messaging
  - Sales conversation frameworks

- Week 1-2: Content & Asset Creation
  - Account-specific content
  - Sales enablement materials
  - Visual assets

- Week 2-3: Paid Campaign Setup
  - ABM ad campaigns
  - Account-specific targeting
  - Retargeting strategy

- Week 3+: Campaign Launch & Engagement
  - Email outreach
  - LinkedIn engagement
  - Sales conversations
  - Paid ad execution

- Week 3-4+: Monitoring & Optimization

**Target Accounts**: 10-100 high-value accounts

**Success Metrics**:
- 50-70% account engagement rate
- 2-4 qualified opportunities per account
- 15-25% opportunity win rate
- 30-60% shorter sales cycles
- $250K-$1M+ pipeline per account

---

### How to Use the Workflow Examples

1. **Read the Overview** - Understand the workflow's purpose and timeline
2. **Review the Phases** - See each step and what agents are involved
3. **Check Deliverables** - Know what output to expect from each phase
4. **Review Success Metrics** - Understand what successful execution looks like
5. **Adapt to Your Context** - Use as a template, customize for your business

---

## Part 2: Automation Scripts

Located in `scripts/` directory. These bash scripts help manage and deploy agents.

### Script 1: lint-agents.sh

**Purpose**: Validate agent markdown files for required structure and content

**What It Checks**:
- YAML frontmatter with required fields (name, description, color)
- Presence of required sections (Identity, Core Mission, Critical Rules)
- Minimum content length (50 words)
- File readability and validity

**Usage**:
```bash
# Lint a single file
./scripts/lint-agents.sh agent1.md

# Lint multiple files
./scripts/lint-agents.sh agent1.md agent2.md agent3.md

# Lint all agents in a directory
./scripts/lint-agents.sh ../../product-marketing/*.md
```

**Output**:
- Color-coded pass/fail indicators
- Detailed feedback on what passed or failed
- Summary statistics

**Exit Codes**:
- `0` - All files passed validation
- `1` - Some files failed validation

**Example**:
```bash
$ ./scripts/lint-agents.sh ./agents/*.md
✓ PASS - agent1.md
✗ FAIL - agent2.md (missing 'name' field)
✓ PASS - agent3.md

Summary:
Passed: 2
Failed: 1
```

---

### Script 2: convert.sh

**Purpose**: Convert agent markdown files into formats for different AI tools

**Supported Formats**:
- **Cursor** (.mdc format with glob patterns)
- **Aider** (single CONVENTIONS.md file)
- **Windsurf** (single .windsurfrules file)
- **Claude Code** (individual .md files)
- **GitHub Copilot** (individual .md files)

**Usage**:
```bash
# Convert all files to all formats
./scripts/convert.sh agent1.md agent2.md agent3.md

# Convert to specific format only
./scripts/convert.sh --format cursor agent1.md agent2.md

# Convert to custom output directory
./scripts/convert.sh --output ./my_rules agent1.md agent2.md

# Get help
./scripts/convert.sh --help
```

**Options**:
- `--format FORMAT` - Convert to specific format (cursor, aider, windsurf, claude, copilot, all)
- `--output DIR` - Output directory (default: ./converted)
- `--help` - Show help message

**Output Structure**:
```
converted/
├── cursor/           # Cursor .mdc files
├── aider/            # CONVENTIONS.md
├── windsurf/         # .windsurfrules
├── claude/           # Claude Code .md files
└── copilot/          # GitHub Copilot .md files
```

**Example**:
```bash
$ ./scripts/convert.sh --format cursor *.md
✓ Converted pmm-positioning-strategist.md to Cursor format
✓ Converted pmm-competitive-intelligence.md to Cursor format
✓ Converted pmm-launch-manager.md to Cursor format

Summary:
Successfully converted: 3
Output directory: ./converted/cursor/
```

---

### Script 3: install.sh

**Purpose**: Deploy agents to local AI coding tools

**Supported Tools**:
- **Claude Code** - ~/.claude/agents/
- **Cursor** - ~/.cursor/rules/
- **GitHub Copilot** - ~/.github/agents/ or ~/.copilot/agents/
- **Aider** - CONVENTIONS.md (in current directory)
- **Windsurf** - .windsurfrules (in current directory)

**Features**:
- Auto-detects installed AI tools
- Interactive selection mode
- Can install to specific tool or all detected tools
- Creates directories if they don't exist

**Usage**:
```bash
# Interactive mode (detects tools and asks which to use)
./scripts/install.sh *.md

# Install to specific tool
./scripts/install.sh --tool claude agent1.md agent2.md

# Install to all detected tools
./scripts/install.sh --tool all *.md

# Get help
./scripts/install.sh --help
```

**Options**:
- `--tool TOOL` - Install to specific tool (claude, cursor, copilot, aider, windsurf, all)
- `--parallel` - Install to all tools simultaneously (future feature)
- `--help` - Show help message

**Installation Locations**:
- Claude Code: `$HOME/.claude/agents/`
- Cursor: `$HOME/.cursor/rules/`
- GitHub Copilot: `$HOME/.github/agents/` or `$HOME/.copilot/agents/`
- Aider: `./CONVENTIONS.md`
- Windsurf: `./.windsurfrules`

**Example**:
```bash
$ ./scripts/install.sh *.md

Detecting installed AI tools...
✓ Claude Code detected at /Users/user/.claude
✓ Cursor detected at /Users/user/.cursor
✓ Windsurf detected

Select tool to install to (1-3): 1
✓ Selected: claude

Installing 5 agent(s) to claude...
✓ Installed to Claude Code: pmm-positioning-strategist.md
✓ Installed to Claude Code: pmm-competitive-intelligence.md
✓ Installed to Claude Code: pmm-launch-manager.md
✓ Installed to Claude Code: pmm-customer-advocacy.md
✓ Installed to Claude Code: pmm-messaging-architect.md

Installation Summary
Successfully installed: 5
Installed to: claude
```

---

## Workflow: Using Scripts Together

### Typical Usage Pattern

1. **Validate Your Agents**
   ```bash
   ./scripts/lint-agents.sh ../**/*.md
   ```

2. **Convert to Target Format**
   ```bash
   ./scripts/convert.sh --format cursor ../**/*.md
   ./scripts/convert.sh --format aider ../**/*.md
   ```

3. **Install to Tools**
   ```bash
   ./scripts/install.sh --tool all ../**/*.md
   ```

### Complete Setup From Scratch

```bash
# 1. Navigate to scripts directory
cd scripts/

# 2. Lint all agents to ensure they're valid
./lint-agents.sh ../**/*.md

# 3. Convert agents to all formats
./convert.sh --output ../agents-converted ../**/*.md

# 4. Install the converted agents
cd ../agents-converted
../scripts/install.sh --tool all **/*.md

# 5. Verify installation
echo "Agents installed to:"
echo "  - Claude Code: ~/.claude/agents/"
echo "  - Cursor: ~/.cursor/rules/"
echo "  - Copilot: ~/.github/agents/"
echo "  - Aider: CONVENTIONS.md (in current dir)"
echo "  - Windsurf: .windsurfrules (in current dir)"
```

---

## Quick Reference

### Finding Agents by Category

Agent files are organized in these directories:
- `product-marketing/` - Positioning, messaging, competitive intelligence
- `content/` - Blog, thought leadership, case studies, whitepapers
- `seo/` - Keyword research, content optimization
- `paid-media/` - PPC, social ads, budget optimization
- `social/` - LinkedIn strategy, community management
- `email/` - Lifecycle architecture, copywriting, automation
- `design/` - Visual design, landing pages, branding
- `sales/` - Outbound strategy, sales enablement
- `analytics/` - Data analysis, pipeline tracking, reporting
- `project-management/` - Workflow coordination, timeline planning
- `client-ops/` - Legal compliance, financial tracking, QA
- `strategy/` - Market research, customer insights, planning

### Script Cheat Sheet

```bash
# Lint agents
./scripts/lint-agents.sh [files...]

# Convert agents
./scripts/convert.sh [--format FORMAT] [--output DIR] [files...]

# Install agents
./scripts/install.sh [--tool TOOL] [files...]

# Find all agent files
find . -name "*-*.md" -not -path "./examples/*"

# Lint all agents
find . -name "*-*.md" -not -path "./examples/*" | xargs ./scripts/lint-agents.sh
```

---

## Troubleshooting

### Lint Script Issues

**Problem**: Script says "file not found"
**Solution**: Use absolute paths or ensure you're running from the correct directory

**Problem**: YAML validation fails
**Solution**: Ensure the file starts with `---`, has required fields (name, description, color), and ends with `---`

**Problem**: Section validation fails
**Solution**: Ensure the file has these exact section headers:
- `## Identity`
- `## Core Mission`
- `## Critical Rules`

### Convert Script Issues

**Problem**: "Unknown format" error
**Solution**: Use one of: cursor, aider, windsurf, claude, copilot, all

**Problem**: Files not found in current directory
**Solution**: Provide full file paths or use globbing like `../**/*.md`

### Install Script Issues

**Problem**: "No supported AI tools detected"
**Solution**: Make sure at least one supported tool is installed on your system

**Problem**: "Permission denied" error
**Solution**: Make scripts executable: `chmod +x scripts/*.sh`

**Problem**: Files not found
**Solution**: Provide full paths to agent files relative to where you run the script

---

## Next Steps

1. **Review Workflow Examples** - Start with the README.md in the examples/ directory
2. **Choose a Workflow** - Pick the workflow that matches your current marketing challenge
3. **Validate Your Agents** - Use lint-agents.sh to ensure all agents are properly formatted
4. **Install Agents to Your Tool** - Use install.sh to deploy agents to your preferred AI tool
5. **Execute the Workflow** - Follow the workflow steps and assign agents accordingly

---

## Additional Resources

- **AGENTS_INDEX.md** - Comprehensive index of all available agents
- **examples/README.md** - Overview of workflow examples
- **examples/workflow-*.md** - Detailed workflow documentation

---

## Contributing

To create new agents or modify existing ones:

1. Follow the standard agent format (YAML frontmatter + sections)
2. Ensure required fields: name, description, color
3. Include required sections: Identity, Core Mission, Critical Rules
4. Use descriptive names and meaningful content
5. Run `lint-agents.sh` to validate your agent

---

**Last Updated**: April 2026
**Version**: 1.0
