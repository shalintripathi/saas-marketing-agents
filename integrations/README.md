# Integrations Guide

This guide shows how to use SaaS Marketing Agents with your favorite AI coding tools. All 75 agents are plain Markdown with YAML frontmatter, so they port across these platforms — but each tool has its own rules/agents convention, and the sections below give the current one for each.

> **Two ways in.** Claude Code can install the whole thing as a plugin (19 skills including the CATALYST orchestrator). Every other tool consumes the raw agent files, either by reference or by copying them into that tool's rules directory. `scripts/install.sh` automates the copying — see [Using the install script](#using-the-install-script).

---

## Claude Code

**Setup**: [Install Claude Code](https://www.anthropic.com/claude/code)

**Recommended — install as a plugin:**

```
/plugin marketplace add shalintripathi/saas-marketing-agents
/plugin install saas-marketing@saas-marketing-agents
```

The 19 skills then load as `/saas-marketing:<skill>` (e.g. `/saas-marketing:seo-growth`, `/saas-marketing:catalyst-orchestrator`). Describe what you need and the orchestrator routes it to the right specialists.

**Or reference the raw files** — start a session in your clone of this repo and `@`-mention an agent:

```
claude
```

```
@content/content-blog-strategist.md Write a technical blog post about Kubernetes cost control for a DevOps SaaS.
```

Agents also work as native subagent files: `scripts/install.sh --tool claude` copies them to `~/.claude/agents/`.

**Best for**: Full-featured agent orchestration, CATALYST framework workflows, complex multi-agent projects

**Integration tips**:
- Add `brand-context.md` to your project root (copy [`templates/brand-context.md`](../templates/brand-context.md)) — every skill reads it first
- `@`-mention several agent files in one prompt to chain specialists
- Skills compose: run the orchestrator, then invoke a category skill directly to go deeper

---

## Cursor

**Setup**: [Install Cursor](https://www.cursor.com)

**Usage** — install the agents as project rules:

```bash
scripts/install.sh --tool cursor content/content-blog-strategist.md
```

Cursor project rules live in `.cursor/rules` as `.mdc` files; **plain `.md` files in that folder are ignored**, which is why the script rewrites the extension. Because each agent's frontmatter carries a `description` but no `alwaysApply` or `globs`, the rules install as *Apply Intelligently* — Cursor pulls one in when the request matches its description. You can also `@`-mention a rule to apply it manually.

For a one-off, skip the install and `@`-reference the file directly in Cursor Chat:

```
@content-blog-strategist.md Create a technical blog post about Kubernetes for DevOps SaaS companies
```

**Best for**: Single-agent workflows, quick content generation, interactive editing

**Integration tips**:
- Set `alwaysApply: true` in a rule's frontmatter to pin an agent to every request
- Add a `globs` pattern to auto-attach an agent when you open matching files (e.g. content drafts)
- `AGENTS.md` at the repo root is the simpler alternative if you only need one persistent persona

---

## GitHub Copilot

**Setup**: [Install GitHub Copilot](https://github.com/features/copilot) in your IDE

**Usage** — install the agents as Copilot custom agents:

```bash
scripts/install.sh --tool copilot content/content-blog-strategist.md
```

Copilot custom agents are Markdown files with YAML frontmatter. Two locations apply:

| Scope | Location | Extension |
|---|---|---|
| Repository (shared with your team) | `.github/agents/` in the repo | `NAME.agent.md` |
| Personal (all your projects) | `~/.copilot/agents/` | `NAME.agent.md` |

The script installs to the personal location by default. To share a persona with your team, copy it into your own repo's `.github/agents/` instead and commit it. VS Code also detects `.claude/agents/` with plain `.md` files, so a Claude Code install is picked up too.

`description` is the only required frontmatter field, which every agent here already has.

For repo-wide guidance rather than a selectable persona, paste an agent's content into `.github/copilot-instructions.md`.

**Best for**: Code generation, integrated IDE workflows, rapid development

**Integration tips**:
- Pick the agent from the agent selector in Copilot Chat once installed
- Keep team-shared personas in the repo so reviewers get the same behavior
- Add a `tools` frontmatter field to restrict what an agent may call

---

## Aider

**Setup**: [Install Aider](https://aider.chat)

**Usage**:

```bash
# `opus` and `sonnet` are built-in aider aliases; `aider --list-models anthropic/` lists the rest
aider --model opus

# Load an agent as reference material aider must not edit:
/read-only content/content-blog-strategist.md
```

Use `/read-only`, not `/add`, for agent personas — `/add` puts a file in the editable set, and you don't want aider rewriting the persona while it works. Reserve `/add` for the files you actually want changed.

`scripts/install.sh --tool aider` takes the other approach and concatenates the agents into a `CONVENTIONS.md` you load once per session.

**Best for**: Command-line workflows, AI-assisted code editing, batch operations

**Integration tips**:
- `/read-only` for personas, `/add` for working files, `/drop` to reclaim context
- `/ask` to consult an agent without it touching files; `/code` to switch back
- `/architect` pairs a planning model with an editing model for multi-step campaigns

---

## Windsurf

**Setup**: [Install Windsurf](https://windsurf.com)

**Usage** — install the agents as workspace rules:

```bash
scripts/install.sh --tool windsurf content/content-blog-strategist.md
```

Windsurf reads rules from `.devin/rules/*.md` (preferred) or `.windsurf/rules/*.md` (fallback) in your workspace, searching subdirectories and parents up to the git root. The legacy single-file `.windsurfrules` at the workspace root is still read — that's what the install script writes, so it works today, but a rule file per agent under `.devin/rules/` is the current convention and keeps personas separately selectable:

```bash
mkdir -p .devin/rules
cp content/content-blog-strategist.md .devin/rules/
```

Global rules that apply across every workspace go in `~/.codeium/windsurf/memories/global_rules.md`.

**Best for**: Agentic workflows, complex multi-agent campaigns, Cascade orchestration

**Integration tips**:
- One file per agent under `.devin/rules/` beats one giant `.windsurfrules`
- Reference agents by name in Cascade conversations
- Reserve `global_rules.md` for your brand context, not for individual personas

---

## Using the install script

From the repo root:

```bash
# Interactive: detect installed tools and pick one
bash scripts/install.sh seo/*.md

# Or target a tool explicitly
bash scripts/install.sh --tool cursor seo/seo-ai-search-optimizer.md
bash scripts/install.sh --tool claude content/*.md
bash scripts/install.sh --help
```

Where each `--tool` writes:

| `--tool` | Destination | Format |
|---|---|---|
| `cowork` | `~/.claude/skills/` | 19 skill folders (`SKILL.md` + `agents/`) |
| `claude` | `~/.claude/agents/` | one `.md` per agent |
| `cursor` | `~/.cursor/rules/` | one `.mdc` per agent |
| `copilot` | `~/.copilot/agents/` | one `.agent.md` per agent |
| `aider` | `./CONVENTIONS.md` | all agents concatenated |
| `windsurf` | `./.windsurfrules` | all agents concatenated |

`aider` and `windsurf` write into the **current directory**, so run those from the project you want the agents scoped to — not from this repo.

---

## Quick Reference Table

| Tool | Best Use Case | Learning Curve | Multi-Agent Support |
|------|---------------|-----------------|-------------------|
| **Claude Code** | Comprehensive campaigns | Low | Excellent |
| **Cursor** | Quick tasks | Very Low | Good |
| **GitHub Copilot** | IDE-integrated workflows | Low | Good |
| **Aider** | CLI/batch operations | Medium | Good |
| **Windsurf** | Agentic orchestration | Medium | Excellent |

---

## General Integration Tips

### 1. Copy Agent Content Into Your Tool

For all tools, you can simply copy an agent's markdown content into your prompt:

```
[Paste agent content here]

Now help me with: [your task]
```

### 2. Reference Agents by File Path

Most tools understand file references:

```
Using content/content-blog-strategist.md to [your task]
```

### 3. Chain Multiple Agents

For complex workflows, combine agents:

```
First, use the SEO Strategist agent to [task 1]
Then, use the Content Blog Writer agent to [task 2]
Finally, use the Design Landing Page Specialist to [task 3]
```

### 4. Leverage Agent Expertise Tags

Each agent includes expertise tags. Search agents by specialty:

- `seo` – SEO-related agents
- `content` – Content creation agents
- `design` – Design agents
- `analytics` – Analytics agents

---

## Troubleshooting

### Agent File Not Found

Paths are relative to the folder your tool has open. If you opened the `saas-marketing-agents` folder itself, use `content/content-blog-strategist.md`; if you opened its parent, you need the `saas-marketing-agents/` prefix. `ls content/` from your tool's terminal settles it.

### Rule or Agent Not Loading

Most often the extension is wrong for the tool:

- **Cursor** ignores plain `.md` in `.cursor/rules` — it must be `.mdc`
- **Copilot** expects `NAME.agent.md` in `.github/agents/` or `~/.copilot/agents/`
- **Windsurf** reads `.md` under `.devin/rules/` or `.windsurf/rules/`

Restart the IDE after a first install; several of these directories are scanned at startup.

### YAML Parsing Error

Ensure the frontmatter in agent files is valid YAML:

```yaml
---
name: "Agent Name"
description: "One-line role and specialty"
color: "#7C3AED"
emoji: "🤖"
---
```

Cursor and Copilot read `description` to decide when a persona is relevant, so keep it specific if you edit it.

### Context Length Exceeded

Agent files in this repo run ~680–2,900 words each (median ~1,270), so loading many at once is the usual cause. Limits move with the model and plan rather than the tool, so check your provider's current context window instead of assuming a number. Practical controls:

- **Claude Code**: load the plugin skills instead of every raw file; skills are pulled in on demand
- **Cursor**: prefer `description`-scoped rules over `alwaysApply: true`
- **GitHub Copilot**: select one custom agent rather than pasting several into instructions
- **Aider**: `/drop` files you're done with; `/read-only` costs context too
- **Windsurf**: one rule file per agent so Cascade loads only what it needs

---

## Sources

_Last reviewed: 2026-07-23._ Tool conventions change often; these are the vendor docs each section was checked against. If something here stops matching your tool, the doc below is the authority — please open an issue.

- Cursor — [Rules](https://cursor.com/docs/context/rules) (`.cursor/rules`, `.mdc` required, rule-type frontmatter)
- GitHub Copilot — [Creating custom agents](https://docs.github.com/en/copilot/how-tos/copilot-on-github/customize-copilot/customize-cloud-agent/create-custom-agents) (`.github/agents/NAME.agent.md`), [Custom agents configuration](https://docs.github.com/en/copilot/reference/custom-agents-configuration) (`description` required), [VS Code custom agents](https://code.visualstudio.com/docs/copilot/customization/custom-agents) (`~/.copilot/agents`, `.claude/agents` detection)
- Aider — [In-chat commands](https://aider.chat/docs/usage/commands.html) (`/read-only`, `/add`, `/drop`, `/ask`, `/architect`), [model aliases](https://aider.chat/docs/config/model-aliases.html) (`opus`, `sonnet`)
- Windsurf — [Cascade memories & rules](https://docs.windsurf.com/windsurf/cascade/memories) (`.devin/rules` preferred, `.windsurf/rules` fallback, legacy `.windsurfrules` still read, `~/.codeium/windsurf/memories/global_rules.md`)

---

## Support & Feedback

For integration questions:
- Check the main [README.md](../README.md)
- Review [CONTRIBUTING.md](../CONTRIBUTING.md) for guidelines
- Open an issue on [GitHub](https://github.com/shalintripathi/saas-marketing-agents/issues)

---

**Happy agent orchestration!**
