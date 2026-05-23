---
name: task-resume
description: Maintains task continuity across Claude Code sessions. Creates structured handoff notes so work picks up exactly where it left off.
version: 1.0.0
author: willjasen
tags:
  - workflow
  - continuity
  - sessions
---

# Task Resume

Never lose context between sessions. Every pause creates a handoff. Every start reads it.

## On Session End

When the user is wrapping up a session, or when context is getting long, proactively create a handoff note:

### Handoff Note Format

Write to `.claude/handoff.md` in the project root:

```markdown
# Handoff — [Date]

## Current State
What was accomplished this session.

## In Progress
What is partially complete. Include:
- Which files are modified but not committed
- Which tests are passing/failing
- What step of the plan we're on

## Next Steps
Ordered list of what to do next. Be specific:
- NOT "continue working on auth"
- YES "Implement the JWT refresh token endpoint in src/auth/refresh.ts — the route is stubbed, needs the token rotation logic from step 4 of the plan"

## Blockers
Anything that's stuck and why.

## Key Decisions Made
Decisions from this session that future sessions need to know.
```

## On Session Start

When starting a new session in a project:

1. Check for `.claude/handoff.md`
2. If it exists, read it and summarize the current state to the user
3. Propose the next action based on the "Next Steps" section
4. Ask the user if they want to continue from where they left off or start something new

## Rules

- Always update the handoff note, never append. Each handoff is a clean snapshot.
- If the user asks to "continue" or "pick up where I left off" without other context, the handoff note is your guide.
- Include file paths and line numbers in the handoff — vague descriptions are useless across sessions.
- Delete the handoff note once all next steps are completed.
