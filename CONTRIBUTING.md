# Contributing to claude-skillcraft

Thanks for your interest. Here's how to contribute effectively.

## What We're Looking For

- **New skills** that fit the PM-eng bridge thesis (product thinking + engineering discipline)
- **Cross-platform testing** — verify skills work on Codex CLI, Gemini CLI, Cursor
- **Security review** of existing skills
- **Bug fixes** and improvements to existing skills
- **Examples** showing skills in real workflows

## Skill Standards

Every skill must:

1. **Use the SKILL.md format** — YAML frontmatter with `name`, `description`, `version`, `author`, `tags`
2. **Be opinionated** — Skills enforce a specific discipline. "Do whatever you want" is not a skill.
3. **Work standalone** — No skill should require another skill to function
4. **Be tested** — Describe how you tested the skill in your PR

## How to Submit

1. Fork the repo
2. Create a branch: `feat/skill-name`
3. Add your skill in `skills/<skill-name>/SKILL.md`
4. Update the skill table in `README.md`
5. Open a PR with:
   - What the skill does
   - Why it belongs in this collection
   - How you tested it (which tools, what prompts)

## Style Guide

- Write in second person imperative ("Do this", "Check that")
- Be specific. "Write good code" is not actionable. "Functions under 50 lines" is.
- Include examples of good and bad behavior where helpful
- Keep skills under 200 lines of markdown

## Code of Conduct

Be respectful, constructive, and focused on shipping. We don't have a formal CoC document — just don't be a jerk.
