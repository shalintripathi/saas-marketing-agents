# 🚀 SaaS Marketing Agents

**Your complete B2B SaaS marketing agency, powered by AI agents.**

A collection of 59 specialized AI agent personas for B2B SaaS marketing agencies. Each agent combines deep domain expertise with distinctive personality, ready to use as **clickable skills in Claude Cowork** or integrate with your favorite AI coding tools.

---

## ⚡ Claude Cowork (Recommended)

The fastest way to use these agents — install as clickable skills in Claude Cowork:

```bash
git clone https://github.com/shalintripathi/saas-marketing-agents.git
cd saas-marketing-agents
./scripts/install.sh --tool cowork
```

This installs **13 interactive skills** into your `~/.claude/skills/` directory:

| Skill | Agents | Triggers On |
|-------|--------|-------------|
| **SaaS Marketing Suite** | Router | "help with marketing", "what can you do" |
| **CATALYST Orchestrator** | 59 | "GTM launch", "campaign plan", "marketing strategy" |
| **Content Marketing** | 7 | "blog", "case study", "whitepaper", "newsletter" |
| **SEO Growth** | 6 | "SEO audit", "keyword research", "link building" |
| **Paid Media Ops** | 6 | "Google Ads", "LinkedIn Ads", "ROAS", "attribution" |
| **Social Media Ops** | 6 | "LinkedIn strategy", "YouTube", "community" |
| **Email Marketing Ops** | 5 | "email sequence", "nurture", "deliverability" |
| **Design Ops** | 5 | "landing page", "brand identity", "ad creative" |
| **Sales Enablement** | 6 | "outbound", "battle card", "proposal", "MEDDPICC" |
| **Product Marketing Ops** | 5 | "positioning", "product launch", "competitive intel" |
| **Marketing Analytics** | 5 | "CRO", "A/B testing", "dashboards", "attribution" |
| **Marketing Project Mgmt** | 4 | "sprint planning", "resource allocation", "QBR" |
| **Client Operations** | 4 | "client reporting", "QA", "compliance", "budget" |

After installation, restart Cowork. Skills appear automatically and respond to natural language requests.

---

## 📋 Agent Categories

| Category | Count | Description |
|----------|-------|-------------|
| **Content Marketing** | 7 | Blog writing, technical content, copywriting, editing, SEO content |
| **SEO & Organic Growth** | 6 | Keyword strategy, technical SEO, link building, competitive analysis |
| **Paid Media** | 6 | PPC strategy, creative strategy, budget optimization, programmatic buying, attribution |
| **Social Media** | 6 | Platform-specific strategies, community management, content calendar, influencer outreach |
| **Email Marketing** | 5 | Newsletter growth, copywriting, automation, deliverability, lifecycle design |
| **Design** | 5 | Landing pages, brand identity, presentations, visual content, ad creative |
| **Sales Enablement** | 6 | Sales collateral, competitive battle cards, demo scripts, case studies |
| **Product Marketing** | 5 | Positioning, messaging, launch strategy, market research, win analysis |
| **Analytics** | 5 | GA4 implementation, dashboard building, UTM strategy, data analysis, attribution |
| **Project Management** | 4 | Timeline management, resource planning, workflow optimization, stakeholder communication |
| **Client Operations** | 4 | Legal/compliance, financial tracking, QA, reporting |
| **Strategy/CATALYST Framework** | 1 | Multi-agent orchestration and campaign coordination |

**Total: 59 agents**

---

## 🚀 Quick Start

### 1. Clone the Repository

```bash
git clone https://github.com/shalintripathi/saas-marketing-agents.git
cd saas-marketing-agents
```

### 2. Choose Your Integration Tool

The agents work seamlessly with:
- **Claude Cowork** – Clickable skills with auto-routing (recommended)
- **Claude Code** – Native support for agent personas and workflows
- **Cursor** – IntelliSense and seamless integration
- **GitHub Copilot** – Direct code and agent context
- **Aider** – Command-line AI coding assistant
- **Windsurf** – Agentic IDE with built-in support

See [Integrations Guide](#integrations) for setup details.

### 3. Start Using Agents

Select any agent file from the repository and use it with your preferred tool. Each agent includes:
- Detailed persona and expertise
- Specific responsibilities
- Example workflows
- Key terminology and frameworks

Example:

```bash
# Using Claude Code
claude content-marketing/content-blog-writer.md

# Using Cursor or GitHub Copilot
# Open agent file → Prompt with context → Start working
```

---

## 🛠️ Supported AI Tools

| Tool | Support | Setup |
|------|---------|-------|
| **Claude Cowork** | Full | `./scripts/install.sh --tool cowork` — clickable skills |
| **Claude Code** | Full | Install Claude Code CLI and reference agent files |
| **Cursor** | Full | Open `.md` files; use `@` mentions for agent context |
| **GitHub Copilot** | Full | Reference agent files in comments; use Copilot Chat |
| **Aider** | Full | Run `aider --model claude-opus` and reference agents |
| **Windsurf** | Full | Open agents in Flow mode; leverage agentic IDE features |

See [integrations/README.md](integrations/README.md) for detailed setup instructions.

---

## 🧠 CATALYST Framework

The **CATALYST** framework is the orchestration layer that coordinates multiple agents across a B2B SaaS marketing campaign:

- **C**oordination: Manage agent workflows and dependencies
- **A**nalysis: Aggregate insights from specialized agents
- **T**argeting: Focus agent output on specific goals
- **A**daptation: Adjust strategies based on performance data
- **L**everaging: Maximize knowledge sharing across agents
- **Y**ield: Optimize campaign performance with multi-agent synergy
- **S**trategy: Develop cohesive, data-driven marketing strategies
- **T**eamwork: Ensure seamless collaboration between agent personas

The CATALYST framework enables sophisticated, multi-layered marketing campaigns by orchestrating agents across different specialties.

---

## 📚 Example Workflows

### Launch a New Product
1. **Product Marketing Agent** – Define positioning and key messages
2. **Content Marketing Agent** – Create launch blog post and assets
3. **Design Agent** – Design landing page and promotional graphics
4. **Social Media Agent** – Build awareness campaign across channels
5. **Paid Media Agent** – Set up launch ad campaigns
6. **Sales Enablement Agent** – Prepare sales collateral

### Optimize Paid Advertising
1. **Paid Media Budget Optimizer** – Analyze spend and performance
2. **Paid Media PPC Strategist** – Refine keyword and bid strategy
3. **Paid Media Creative Strategist** – Test new ad creatives
4. **Analytics Agent** – Track performance against goals
5. **Paid Media Attribution Analyst** – Measure true ROI

### Build Organic Presence
1. **SEO Strategist** – Develop keyword and link strategy
2. **Content Marketing Agent** – Create optimized blog content
3. **Technical SEO Agent** – Ensure site crawlability and indexing
4. **Social Media Agent** – Amplify content across channels
5. **Analytics Agent** – Monitor organic growth metrics

---

## 🤝 Contributing

We welcome contributions! To add a new agent:

1. **Review** [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines
2. **Create** your agent file in the appropriate category directory
3. **Follow** the required frontmatter and section format
4. **Submit** a pull request with a description

For detailed instructions, see [CONTRIBUTING.md](CONTRIBUTING.md).

---

## 📄 License

This project is licensed under the MIT License – see [LICENSE](LICENSE) for details.

---

## 🎯 Get Started Today

Pick any agent that fits your needs and start building. With 59 specialized personas at your fingertips, you have a complete AI-powered marketing agency ready to go.

**Questions or feedback?** [Open an issue](https://github.com/shalintripathi/saas-marketing-agents/issues) on GitHub.

---

**Created by Shalin Tripathi** | [GitHub](https://github.com/shalintripathi)
