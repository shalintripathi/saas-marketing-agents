# Marketing Loops

**Workflows are one-shot. Loops repeat.**

A *loop* is a marketing workflow designed to run on a **recurring cadence** — weekly, monthly, quarterly — where each run produces output *and* feeds the next run. Loops are where an AI marketing team earns its keep: the compounding value comes from doing the same high-leverage motion every week without the coordination tax.

Each loop template below specifies:

- **Cadence** — how often it runs
- **Trigger** — what kicks it off (a calendar, a threshold, a manual command)
- **Agents** — which of the [74 agents](../AGENTS_INDEX.md) participate, in order
- **Inputs / Outputs** — what goes in, what comes out
- **Handoffs** — how each agent's output becomes the next agent's input
- **How to run it** — manually in Claude Code, or on a schedule

## Loop library

| Loop | Cadence | What it produces |
|------|---------|------------------|
| [Weekly Content Engine](weekly-content-engine-loop.md) | Weekly | One publish-ready, AEO/GEO-optimized asset + its distribution plan |
| [Weekly Competitive Intel](weekly-competitive-intel-loop.md) | Weekly | A digest of what competitors actually changed, triaged by severity, plus battle-card diffs for the changes that matter |
| [Monthly ABM](monthly-abm-loop.md) | Monthly | An updated account ledger, a tiered multi-channel touch plan, and a read-out of what moved |
| _Quarterly launch loop_ | Quarterly | _(planned)_ |

## How loops run

**Manually** — open the loop file in Claude Code and run it with the CATALYST orchestrator:

```
/plugin install saas-marketing@saas-marketing-agents
# then, in a session:
"Run the weekly content engine loop for this week. Topic focus: [your topic]."
```

**On a schedule** — point any scheduler (cron, a scheduled Claude Code agent, a CI job) at the loop file and pass this week's inputs. The loop is written to be idempotent: give it the same week and it won't duplicate work.

> Loops are meant to be forked. Copy a template, wire in your ICP and channels, and make it yours. PRs that add new loops are especially welcome.
