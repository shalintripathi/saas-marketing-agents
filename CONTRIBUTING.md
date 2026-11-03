# Contributing to SaaS Marketing Agents

Thank you for your interest in contributing to the SaaS Marketing Agents repository! We welcome new agent submissions and improvements to existing agents.

## How to Submit a New Agent

### 1. Choose a Discipline

Agents are organized into 17 disciplines. Each one has a folder, a file-name prefix, and a plugin skill that ships a copy of every agent in it:

| Discipline | Folder | File prefix | Plugin skill |
|---|---|---|---|
| Content Marketing | `content/` | `content-` | `content-marketing` |
| SEO & Organic Growth | `seo/` | `seo-` | `seo-growth` |
| Paid Media | `paid-media/` | `paid-media-` | `paid-media-ops` |
| Social Media | `social/` | `social-` | `social-media-ops` |
| Email Marketing | `email/` | `email-` | `email-marketing-ops` |
| Design | `design/` | `design-` | `design-ops` |
| Sales Enablement | `sales/` | `sales-` | `sales-enablement` |
| Product Marketing | `product-marketing/` | `pmm-` | `product-marketing-ops` |
| Account-Based Marketing | `abm/` | `abm-` | `abm-ops` |
| Growth | `growth/` | `growth-` | `growth-ops` |
| Analytics | `analytics/` | `analytics-` | `marketing-analytics` |
| Communications | `comms/` | `comms-` | `comms-ops` |
| Partnerships | `partnerships/` | `partner-` | `partnerships-ops` |
| Events & Field Marketing | `events/` | `events-` | `events-ops` |
| Developer Marketing | `developer-marketing/` | `devmkt-` | `developer-marketing-ops` |
| Project Management | `project-management/` | `pm-` | `marketing-project-mgmt` |
| Client Operations | `client-ops/` | `ops-` | `client-operations` |

`strategy/` holds the CATALYST framework docs, not agents. If no discipline fits, propose a new one in your [agent submission issue](https://github.com/shalintripathi/saas-marketing-agents/issues/new?template=agent-submission.md) before you write the file.

### 2. Required File Format

All agent files follow this structure, which is what the existing agents use and what the linter checks:

```markdown
---
name: "Agent Display Name"
description: "One sentence on what this agent owns and how its work is judged"
color: "#2563EB"
emoji: "✍️"
---

# Agent Display Name

## Identity
Who this agent is, written to it in the second person ("You are…"): the role,
the conviction it works from, and the mistake it exists to prevent.

## Core Mission
- **First thing it owns** — the decision or artifact, and the standard it is held to
- **Second thing it owns** — …

## Critical Rules
1. **A rule stated as a rule.** Why it holds, what breaking it looks like, and
   which agent owns the neighbouring work (named by file slug, e.g.
   `paid-media-attribution-analyst`).
2. **Another rule.** …

## Deliverables
**Deliverable Name** - What it contains and who uses it.

## Success Metrics
- **Metric name**: How it is measured, and what it is read against
```

You can add more `##` sections between these when a playbook needs room of its own (many agents do), but keep the five headings above exactly as written.

### 3. Frontmatter Requirements

Every agent **must** open with YAML frontmatter, and it must close within the first 20 lines:

- `name`: Display name of the agent (quoted string). Required.
- `description`: One sentence (quoted string). It becomes the agent's Role line in [AGENTS_INDEX.md](AGENTS_INDEX.md), so say what the agent owns, not just its title. Required.
- `color`: A hex color (quoted string, e.g. `"#2563EB"`). Required.
- `emoji`: One emoji (quoted string), used as the agent's icon in the index. Every agent has one, though the linter doesn't check it.

There are no `slug`, `category` or `expertise` fields: the file name is the slug, and the folder is the category.

### 4. Content Requirements

- **Sections**: Must include `## Identity`, `## Core Mission` and `## Critical Rules` (the linter checks these exact headings), plus `## Deliverables` and `## Success Metrics`, which every existing agent has
- **Length**: At least 50 words in the file — the linter's floor, not a target
- **Clarity**: Write for clarity; assume the reader is familiar with SaaS marketing but may not know this specific role
- **Accuracy**: Ensure all frameworks, tools, and terminology are accurate. When a rule rests on a platform limit or a published source, link it and give the date you read it, as existing agents do

### 5. Naming Conventions

- **File name**: The discipline's prefix from the table above, then the role in kebab-case (e.g., `content-blog-strategist.md`, `pmm-launch-manager.md`, `ops-financial-tracker.md`)
- **Directory**: Place it in the discipline's folder (e.g., `content/`)
- **Plugin copy**: Put an identical copy in `plugins/saas-marketing/skills/<plugin skill>/agents/` (e.g., `plugins/saas-marketing/skills/content-marketing/agents/content-blog-strategist.md`). The plugin installs from `plugins/saas-marketing/` only, so an agent without this copy never reaches plugin users
- **Index**: Add a row for the agent under its discipline in [AGENTS_INDEX.md](AGENTS_INDEX.md), and add it to its discipline's row in the README team table

---

## Pull Request Process

### Before You Submit

1. **Check for duplicates**: Search [AGENTS_INDEX.md](AGENTS_INDEX.md) to avoid overlap with an existing agent
2. **Validate format**: Run the linter (see below)
3. **Test readability**: Ensure the agent file reads clearly and is actionable
4. **Review deliverables**: Each one should say what it contains and who uses it

### Submitting a PR

1. **Fork** the repository
2. **Create a branch**: `git checkout -b add/category-agent-name`
3. **Add your agent file** in its discipline folder, and its copy in the plugin skill's `agents/` folder
4. **Run linting**: Ensure `scripts/lint-agents.sh` passes on both copies (see below)
5. **Write a clear commit message**: "Add [Agent Name] to [Category]"
6. **Push and open a PR** with the PR template filled out

Use the [PR template](.github/pull_request_template.md) – it will auto-populate when you open a PR.

---

## Linting Requirements

All agent files must pass `scripts/lint-agents.sh`.

### Run Local Linting

From the repository root:

```bash
bash scripts/lint-agents.sh content/content-blog-strategist.md
```

The script takes file paths, not folders. To lint a whole discipline:

```bash
bash scripts/lint-agents.sh content/*.md
```

### Checks Performed

- ✓ Frontmatter opens with `---` and closes with `---` within the first 20 lines
- ✓ Required frontmatter fields present (`name`, `description`, `color`)
- ✓ Required sections present (`## Identity`, `## Core Mission`, `## Critical Rules`)
- ✓ At least 50 words in the file

The linter doesn't check `emoji`, Deliverables, Success Metrics, links or the plugin copy, so check those yourself before opening the PR.

### GitHub Actions CI

Every PR that changes a Markdown file runs the `lint-agents.yml` workflow, which lints every agent file in the 17 discipline folders. All checks must pass before merging.

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
