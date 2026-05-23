---
name: clean-commit
description: Enforces atomic commits, conventional commit messages, and clean PR and git history.
version: 1.0.0
author: willjasen
tags:
  - git
  - workflow
  - commits
---

# Clean Commit

Every commit tells a story. Every PR has context. No exceptions.

## Commit Rules

### Message Format

Follow Conventional Commits:

```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

**Types:** `feat`, `fix`, `refactor`, `test`, `docs`, `chore`, `perf`, `ci`

**Rules:**
- Subject line under 72 characters
- Imperative mood ("add feature" not "added feature")
- Body explains **why**, not what (the diff shows what)
- Reference issue numbers in the footer when applicable

### Atomic Commits

- One logical change per commit
- If you can't describe the commit in one sentence, it's too big — split it
- Tests and implementation go in the same commit (they're one logical change)
- Config changes, dependency updates, and code changes are separate commits

### What Not to Commit

- `.env` files or any secrets
- Build artifacts, `node_modules`, `__pycache__`
- IDE-specific config (`.vscode/`, `.idea/`) unless project-shared
- Large binaries without LFS

## PR Rules

### Title

- Under 70 characters
- Same format as commit subject: `type(scope): description`

### Description

Every PR includes:

1. **Summary** — 1-3 bullet points on what and why
2. **Test plan** — How to verify this works
3. **Screenshots** — If UI changed, before and after

### Before Opening

- Rebase on latest target branch
- All tests pass
- Self-review the full diff one more time
- Remove debug logging, console.logs, and commented experiments
