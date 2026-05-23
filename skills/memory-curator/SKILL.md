---
name: memory-curator
description: Disciplined curation of persistent memory — what to save, dedupe, and prune. Use when saving or pruning memory, or when asked to remember or forget something.
version: 1.0.0
author: willjasen
tags:
  - memory
  - continuity
  - efficiency
---

# Memory Curator

Persistent memory is only valuable if it stays accurate and lean. A memory store full of stale, duplicated, or low-signal entries is worse than none — it wastes context and misleads future sessions. Curate it like a garden, not an attic.

## When This Skill Activates

- The user shares durable context: their role, preferences, how they like to work
- The user corrects an approach ("don't do X") or confirms one ("yes, exactly that")
- A project fact emerges that isn't derivable from code or git (a deadline, a why, an owner)
- You learn where external info lives (a Linear project, a Slack channel, a dashboard)
- The user asks you to remember, recall, or forget something
- Memory feels cluttered, contradictory, or out of date

## What Belongs in Memory

Save only what a future session genuinely needs and **cannot re-derive**:

- **User** — role, expertise, goals, communication preferences
- **Feedback** — corrections AND validated approaches, each with *why*
- **Project** — decisions, motivations, deadlines (store absolute dates, never "Thursday")
- **Reference** — pointers to where current info lives in external systems

## What Does NOT Belong

Even if asked, push back on saving these — they belong elsewhere or rot fast:

- Code patterns, file paths, architecture → re-read the code
- Git history or who-changed-what → `git log` / `git blame`
- Fix recipes → the fix is in the code; context is in the commit
- Anything already in CLAUDE.md
- Ephemeral task state → use tasks or a handoff note, not memory

If asked to save a list or summary, ask what was *surprising* about it — that's the keepable part.

## The Curation Loop

### 1. Before saving — check for a home

Search existing memory first. If a related entry exists, **update it** rather than adding a duplicate. One accurate entry beats three overlapping ones.

### 2. When saving — make it self-explaining

- Lead with the rule or fact.
- For feedback/project entries, add a **Why:** line (the reason, often an incident or constraint) and a **How to apply:** line (when this kicks in).
- Link related entries so the store stays navigable.
- Keep any index file to one line per entry — it loads every session.

### 3. After learning something changed — reconcile

- A memory naming a file, function, or flag is a claim it existed *when written*. Before acting on it, verify it still exists.
- If current reality contradicts a memory, trust what you observe now and **fix or delete the memory** — don't act on the stale version.

### 4. Periodically — prune

When memory is touched, scan for entries that are: superseded, contradicted, expired (past a stored date), or never load-bearing. Remove them. A smaller, true store is the goal.

## Rules

- Never write memory content directly into the index file — the index points, the entries hold.
- Convert every relative date to an absolute one at save time.
- Don't save negative judgments about the user. Save what makes collaboration better.
- If the user says to ignore memory for a task, don't read, cite, or apply it.
- Quality over volume. When in doubt, don't save — re-derivable beats wrong.
