# claude-skillcraft

**Production-grade Claude Code skills for builders who ship.**

Workflow discipline meets product thinking — a curated, opinionated skill pack that bridges PM rigor with AI engineering.

---

## The Problem

The Claude Code skill ecosystem has 15,000+ repos. Most are either sprawling catalogs (300+ skills, pick your own adventure) or rigid methodologies (do it my way or not at all).

Neither helps you **ship better products faster**.

## What This Is

Skillcraft is **12 skills in 3 tiers** that work as a cohesive system. Each skill enforces a specific discipline. Together, they form a workflow that moves from planning through execution to delivery — the same loop a good PM/eng hybrid runs daily, automated through Claude Code.

This is not a framework. There's no lock-in. Install one skill or all twelve. They compose, they don't depend.

## Skills

### Tier 1 — Workflow Discipline

*Plan before you build. Verify before you ship.*

| Skill | What it enforces |
|-------|-----------------|
| [`plan-first`](skills/plan-first/) | Requires a written plan before any code generation. Kills the "just start coding" impulse. |
| [`ship-cycle`](skills/ship-cycle/) | Full development workflow: branch, implement, test, review, merge. No skipping steps. |
| [`verify-build`](skills/verify-build/) | Post-implementation verification checklist. Catches what tests miss. |
| [`clean-commit`](skills/clean-commit/) | Enforces atomic commits, conventional messages, and PR discipline. |
| [`task-resume`](skills/task-resume/) | Session continuity — picks up exactly where you left off across Claude Code sessions. |

### Tier 2 — Quality Gates

*Catch problems before they become incidents.*

| Skill | What it enforces |
|-------|-----------------|
| [`output-guard`](skills/output-guard/) | Validates generated code against correctness, security, and style rules before accepting it. |
| [`simplify-code`](skills/simplify-code/) | Reviews code for unnecessary complexity. Flags over-engineering, premature abstractions, dead code. |
| [`debug-circuit`](skills/debug-circuit/) | Circuit breaker for debug loops. Forces a step back after 3 failed attempts instead of brute-forcing. |
| [`craft-principles`](skills/craft-principles/) | Enforces core engineering principles: readability, simplicity, testability, minimal dependencies. |

### Tier 3 — PM Bridge

*This is the differentiator. Product thinking as executable skills.*

| Skill | What it enforces |
|-------|-----------------|
| [`pm-docs`](skills/pm-docs/) | Generates PRDs, one-pagers, decision logs, and launch checklists from conversation context. |
| [`sprint-flow`](skills/sprint-flow/) | Agile execution discipline: story breakdown, acceptance criteria, sprint planning, retro prompts. |
| [`meeting-driver`](skills/meeting-driver/) | Structures meetings with agendas, time-boxes, action items, and follow-up tracking. |

## Quick Start

**Install all skills:**

```bash
curl -sSL https://raw.githubusercontent.com/ProjectWaja/claude-skillcraft/main/scripts/install.sh | bash
```

**Install a single skill:**

```bash
# Copy any skill folder into your Claude Code skills directory
mkdir -p ~/.claude/skills
cp -r skills/plan-first ~/.claude/skills/
```

**Verify installation:**

```
/skills
```

## Before & After

### Without Skillcraft

```
You: "Build me a user dashboard"
Claude: *immediately generates 400 lines of code*
You: *spends 2 hours debugging, realizes it doesn't match requirements*
```

### With Skillcraft

```
You: "Build me a user dashboard"
Claude (plan-first): "Before I write code, let me draft a plan:
  1. Requirements: What data should the dashboard show?
  2. Components: Auth check, data fetching, layout, charts
  3. Acceptance criteria: What does 'done' look like?
  Let's align before I write a line."

You: *approves plan, gets working code on first pass*
```

## Who This Is For

- **AI engineers** who want workflow discipline, not just code generation
- **PM-turned-engineers** who think in systems, not just syntax
- **Solo founders** who need to be both the PM and the engineer
- **Teams** adopting Claude Code who want guardrails without bureaucracy

## Design Principles

1. **Composable, not coupled.** Each skill works alone. No hidden dependencies.
2. **Opinionated, not rigid.** Strong defaults, easy overrides.
3. **Product-grade, not demo-grade.** Every skill tested in real shipping workflows.
4. **Open standard.** All skills use the [SKILL.md format](https://agentskills.io) — works on Claude Code, Codex CLI, Gemini CLI, and 30+ other tools.

## Compatibility

Built on the Agent Skills open standard. Tested on:

- Claude Code (primary)
- Codex CLI
- Gemini CLI

## Roadmap

See [ROADMAP.md](ROADMAP.md) for the versioned, prioritized roadmap.

**Next up:**
- Cross-domain skill showcase (construction estimation, supply chain)
- Eval/test harness for skill quality scoring
- `npx claude-skillcraft install` CLI

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). PRs welcome — especially for:
- New skills that fit the PM-eng bridge thesis
- Cross-platform compatibility testing
- Security audits of existing skills

## License

MIT. See [LICENSE](LICENSE).

---

*Built by [ProjectWaja](https://github.com/ProjectWaja) — PM thinking, engineer execution.*
