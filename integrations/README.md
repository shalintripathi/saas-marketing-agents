# Integrations Guide

This guide shows how to use SaaS Marketing Agents with your favorite AI coding tools. All 59 agents work seamlessly across these platforms.

---

## Claude Code

**Setup**: [Install Claude Code CLI](https://www.anthropic.com/claude/code)

**Usage**:

```bash
# Reference an agent file directly
claude content-marketing/content-blog-writer.md

# Or copy the agent content into your prompt
claude --context content-marketing/content-blog-writer.md "Write a blog post about..."
```

**Best for**: Full-featured agent orchestration, CATALYST framework workflows, complex multi-agent projects

**Integration tips**:
- Use `@` references to mention other agents in multi-agent workflows
- Leverage Claude's native understanding of agent personas
- Chain agents together for complex marketing campaigns

---

## Cursor

**Setup**: [Install Cursor](https://www.cursor.com)

**Usage**:

1. Open Cursor and navigate to your `saas-marketing-agents` folder
2. Open the agent file you need (e.g., `content-marketing/content-blog-writer.md`)
3. Use `@` mentions to reference the agent in your prompts
4. Type your request in the Cursor Chat window

Example:

```
@content-blog-writer Create a technical blog post about Kubernetes for DevOps SaaS companies
```

**Best for**: Single-agent workflows, quick content generation, interactive editing

**Integration tips**:
- Use `@filename` to reference specific agents
- Paste agent content into your context panel for persistent reference
- Leverage Cursor's IDE capabilities for seamless workflow integration

---

## GitHub Copilot

**Setup**: [Install GitHub Copilot](https://github.com/features/copilot) in your IDE

**Usage**:

1. Open your IDE with GitHub Copilot enabled
2. Reference the agent in a comment or prompt:

```
# Using the Content Blog Writer agent from saas-marketing-agents
# Agent prompt: [paste agent content]
# Task: Write a blog post about AI in SaaS marketing

function generateBlogPost() {
  // Write the blog post using the agent's expertise...
}
```

**Best for**: Code generation, integrated IDE workflows, rapid development

**Integration tips**:
- Reference agent files in comments for context
- Use agents in VS Code's Copilot Chat panel
- Combine multiple agents in complex workflows

---

## Aider

**Setup**: [Install Aider](https://aider.chat)

**Usage**:

```bash
# Start Aider with Claude Opus
aider --model claude-opus

# In the Aider session, reference agents:
/add content-marketing/content-blog-writer.md

# Or paste the agent directly:
# Here's my agent: [paste agent content]
# Now help me [task description]
```

**Best for**: Command-line workflows, AI-assisted code editing, batch operations

**Integration tips**:
- Add agent files to your working context with `/add`
- Use `/edit` to modify agent output iteratively
- Chain agents using Aider's multi-file support

---

## Windsurf

**Setup**: [Install Windsurf](https://codeium.com/windsurf)

**Usage**:

1. Open Windsurf and load your `saas-marketing-agents` folder
2. Enable Flow mode (Windsurf's agentic IDE feature)
3. Reference agents in your workflow:

```
In Flow mode: "Use the SEO Strategist agent to analyze our keyword strategy and recommend optimizations"
```

**Best for**: Agentic workflows, complex multi-agent campaigns, Flow mode orchestration

**Integration tips**:
- Use Flow mode for natural, conversational agent orchestration
- Reference agents by name in Flow conversations
- Leverage Windsurf's agentic IDE for sophisticated workflows

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
Using content-marketing/content-blog-writer.md to [your task]
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

Ensure the file path is correct relative to your project root:

```
✓ Correct: content-marketing/content-blog-writer.md
✗ Wrong: saas-marketing-agents/content-marketing/content-blog-writer.md
```

### YAML Parsing Error

Ensure the frontmatter in agent files is valid YAML:

```yaml
---
name: "Agent Name"
slug: "agent-slug"
category: "category"
description: "Description"
expertise: [tag1, tag2]
---
```

### Context Length Exceeded

If using multiple agents, ensure you're within token limits:
- **Claude Code**: Up to 200k tokens
- **Cursor**: IDE-dependent; manage context with tabs
- **GitHub Copilot**: Depends on model; manage with comments
- **Aider**: Use `/add` and `/remove` to control context
- **Windsurf**: Automatically manages context in Flow mode

---

## Support & Feedback

For integration questions:
- Check the main [README.md](../README.md)
- Review [CONTRIBUTING.md](../CONTRIBUTING.md) for guidelines
- Open an issue on [GitHub](https://github.com/shalintripathi/saas-marketing-agents/issues)

---

**Happy agent orchestration!**
