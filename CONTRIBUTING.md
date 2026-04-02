# Contributing to SaaS Marketing Agents

Thank you for your interest in contributing to the SaaS Marketing Agents repository! We welcome new agent submissions and improvements to existing agents.

## How to Submit a New Agent

### 1. Choose or Create a Category

Agents are organized by specialty. Choose an existing category or propose a new one:

- `content-marketing/`
- `seo-organic-growth/`
- `paid-media/`
- `social-media/`
- `email/`
- `design/`
- `sales-enablement/`
- `product-marketing/`
- `analytics/`
- `project-management/`
- `client-ops/`
- `strategy/`

### 2. Required File Format

All agent files must follow this structure:

```markdown
---
name: Agent Display Name
slug: agent-slug-name
category: category-name
description: One-line description of the agent's purpose
expertise: [tag1, tag2, tag3]
---

# Agent Display Name

## Overview
2-3 sentence overview of the agent's role and value.

## Core Expertise
- Specific skill or domain knowledge
- Another key competency
- Related expertise area

## Responsibilities
Detailed list of what this agent handles:
- Primary responsibility 1
- Primary responsibility 2
- Primary responsibility 3

## Key Personality Traits
- Decisive
- Detail-oriented
- Collaborative
[etc.]

## Example Workflows

### Workflow 1: [Title]
Description of a typical workflow this agent would lead or participate in.

### Workflow 2: [Title]
Another example workflow.

## Tools & Frameworks
- Framework or tool name: Brief description
- Another framework: Brief description

## Success Metrics
- Metric 1: How success is measured
- Metric 2: Another success indicator

## Communication Style
Description of how this agent communicates with stakeholders, teams, and other agents.

## Integration Points
- [Other agent category]
- [Tool or system]
```

### 3. Frontmatter Requirements

Every agent **must** include valid YAML frontmatter with these fields:

```yaml
---
name: "Full Agent Name"
slug: "agent-slug-name"
category: "category-name"
description: "One-line description"
expertise: [tag1, tag2, tag3]
---
```

- `name`: Display name of the agent (string)
- `slug`: URL-friendly identifier (kebab-case, no spaces)
- `category`: One of the 12 categories listed above
- `description`: Single-line summary (50 characters max recommended)
- `expertise`: Array of 3-5 relevant tags or skills

### 4. Content Requirements

- **Minimum body length**: 50 words per section
- **Sections**: Must include Overview, Core Expertise, Responsibilities, Key Personality Traits, and at least one Example Workflow
- **Clarity**: Write for clarity; assume the reader is familiar with SaaS marketing but may not know this specific role
- **Accuracy**: Ensure all frameworks, tools, and terminology are accurate

### 5. Naming Conventions

- **File name**: `category-agent-slug-name.md` (e.g., `content-marketing-blog-writer.md`)
- **Directory**: Place in appropriate category folder (e.g., `content-marketing/`)
- **Slug**: Use kebab-case, no special characters

---

## Pull Request Process

### Before You Submit

1. **Check for duplicates**: Search existing agents to avoid overlap
2. **Validate format**: Run the linting script (see below)
3. **Test readability**: Ensure the agent file reads clearly and is actionable
4. **Review examples**: Include realistic, helpful example workflows

### Submitting a PR

1. **Fork** the repository
2. **Create a branch**: `git checkout -b add/category-agent-name`
3. **Add your agent file** in the appropriate category directory
4. **Run linting**: Ensure lint-agents.sh passes (see below)
5. **Write a clear commit message**: "Add [Agent Name] to [Category]"
6. **Push and open a PR** with the PR template filled out

Use the [PR template](.github/pull_request_template.md) – it will auto-populate when you open a PR.

---

## Linting Requirements

All agent files must pass our linting checks.

### Run Local Linting

```bash
./lint-agents.sh content-marketing/content-blog-writer.md
```

Or lint all agents in a category:

```bash
./lint-agents.sh content-marketing/
```

### Checks Performed

- ✓ Valid YAML frontmatter
- ✓ Required fields present (name, slug, category, description, expertise)
- ✓ Minimum body length (50 words per section)
- ✓ Markdown formatting validity
- ✓ No broken links
- ✓ Slug matches file name

### GitHub Actions CI

Every PR automatically runs linting via the `lint-agents.yml` workflow. All checks must pass before merging.

---

## Code of Conduct

### Be Respectful
- Treat all contributors with respect and professionalism
- Assume good intent in discussions

### Be Constructive
- Provide actionable feedback on submissions
- Help new contributors succeed

### Be Inclusive
- Welcome diverse perspectives and expertise
- Support contributors at all skill levels

### Be Honest
- Provide accurate information in agent descriptions
- Acknowledge limitations or gaps in knowledge

---

## Questions or Suggestions?

- **Issues**: [Open an issue](https://github.com/shalintripathi/saas-marketing-agents/issues) for questions or feature requests
- **Discussions**: Use GitHub Discussions for broader conversations about the project
- **Email**: Reach out with specific questions (contact info in main README)

---

## Recognition

Contributors will be recognized in:
- The commit history
- A contributors list (coming soon)
- Individual agent attribution if desired

Thank you for helping build a comprehensive AI agent library for SaaS marketing!
