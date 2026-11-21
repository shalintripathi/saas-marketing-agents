# SaaS Marketing Agents

A B2B SaaS marketing team for Claude: 95 specialist agents in 17 disciplines, packaged as 19 skills, with one orchestrator (CATALYST) that turns a brief into assigned work across content, SEO and AI search, paid media, social, email, design, sales enablement, product marketing, ABM, growth, analytics, comms, partnerships, events, developer marketing, project management and client operations.

## How to use it

Ask for real work in plain words, for example "Plan a product launch for [feature] aimed at [ICP]" or "Audit our SEO and give me a 90-day plan". The right specialists pick it up. Every skill is also callable directly as `/saas-marketing:<skill>`, such as `/saas-marketing:seo-growth` or `/saas-marketing:catalyst-orchestrator`.

## Grounded output, no made-up proof

Copy `templates/brand-context.md` into your project as `brand-context.md` and fill it in: ICP, positioning, voice, banned words and the proof you can actually cite. Every agent reads it first. Customer names, metrics or certifications that aren't recorded there show up as `[NEEDS INPUT: ...]` markers instead of invented facts.

## Campaign Board (Claude Code)

The live pane that shows which specialists ran, each file they wrote, and every open `[NEEDS INPUT]` item now ships as its own plugin, `campaign-board`, in the same marketplace. Install it with `/plugin install campaign-board@saas-marketing-agents`, then type `/campaign-board`.

## What it runs and sends

This plugin ships Markdown and JSON only: skills, agent instructions and a brand-context template. It has no hooks, no scripts and no code of its own.

## Updates

New agent improvements ship as new versions. Run `claude plugin marketplace update saas-marketing-agents`, then `claude plugin update saas-marketing@saas-marketing-agents`, and restart Claude Code. Or turn on auto-update for this marketplace under `/plugin` > Marketplaces.

## Source and feedback

Source, issues and discussions: https://github.com/shalintripathi/saas-marketing-agents

License: MIT
