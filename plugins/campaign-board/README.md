# Campaign Board

A live pane for Claude Code that shows a [saas-marketing](../saas-marketing/) campaign as it runs: which specialists ran, each file they wrote, and every open `[NEEDS INPUT]` item in one checklist. It also shows whether `brand-context.md` was found in your project.

## Install

It lives in the same marketplace as the saas-marketing plugin:

```
/plugin marketplace add shalintripathi/saas-marketing-agents
/plugin install saas-marketing@saas-marketing-agents
/plugin install campaign-board@saas-marketing-agents
```

Type `/campaign-board`, or run any saas-marketing skill, and the pane opens.

## Why it's a separate plugin

The Campaign Board is a mod: TypeScript code that Claude Code loads and runs. The saas-marketing plugin is instructions only (Markdown and JSON), so it can be listed in Claude's plugin directory, which accepts mods only from Verified organizations. Installing the board is your choice.

## What it runs and sends

The mod (`hooks/register.tsx`) makes no network calls, reads no credentials, and never blocks or changes a call. Its hooks:

- `session.start`: registers the `/campaign-board` command and checks whether `brand-context.md` exists in your project folder. The session then continues as normal.
- `command.run`: only for its own `/campaign-board` command, which opens the pane. It doesn't see or change any other command.
- `tool.call` for `Skill`: only for the saas-marketing plugin's skills (`saas-marketing:*`). It records the skill name, opens the pane and updates the status line, then runs the call unchanged and returns its result.
- `tool.call` for `Write` and `Edit`: runs the call first, unchanged. Afterwards, if a saas-marketing skill ran in the session, it reads the written text for `[NEEDS INPUT]` markers to show in the pane. For a newly written Markdown file it also adds the file to the pane's deliverables list and shows a short on-screen notice.
- `ui.render`: draws the pane.

## Source and feedback

Source, issues and discussions: https://github.com/shalintripathi/saas-marketing-agents

License: MIT
