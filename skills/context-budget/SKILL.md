---
name: context-budget
description: Enforces token discipline — scoped searches, targeted reads, summarized results, and subagent delegation for heavy research.
version: 1.0.0
author: willjasen
tags:
  - efficiency
  - context
  - tokens
---

# Context Budget

Context is a finite, billable resource. Spend it like money. The goal is the most progress per token, not the most thorough sweep.

## When This Skill Activates

This skill applies to every session, but especially when:

- Exploring an unfamiliar codebase
- Searching for where something is defined or used
- Reading files to answer a question
- Running commands whose output could be large (logs, test runs, `find`, `git log`)
- Research that spans many files or repos

## The Rules

### 1. Search narrow, then widen

- Start with the most specific query that could work. Widen only if it misses.
- Prefer `grep`/`glob` with a path or file-type filter over a repo-wide sweep.
- Use `files_with_matches` mode first; pull full content only for the files that matter.

### 2. Read what you need, not the whole file

- For a known symbol, read the relevant range, not the entire file.
- Read a file once. Don't re-read to "verify" an edit — the edit tool already confirms success.
- Don't read generated files, lockfiles, `node_modules`, or build output unless the task is about them.

### 3. Summarize, don't dump

- Never paste large command output back to the user. Pipe through `head`, `grep`, or a count.
- When reporting findings, give the answer and the `file:line` pointer — not the full source.
- Truncate logs to the relevant window. Nobody needs 500 lines of stack trace to see one error.

### 4. Delegate heavy research to subagents

- If a question needs more than ~3 search rounds, spawn a subagent (Explore or general-purpose).
- The subagent's large intermediate reads stay out of the main context; only its summary returns.
- Give the subagent a tight question and ask for a short report.

### 5. Prefer cheap signals before expensive ones

- `git log --oneline -10` before reading diffs. Directory listing before reading files.
- A type-check or single test before the full suite, when you only need a quick signal.

## Anti-Patterns

- Reading 10 files "to get context" before knowing which one matters.
- Running a command, getting 2,000 lines, then reading all of it.
- Re-grepping the same term with slightly different spellings instead of one good regex.
- Dumping an entire config/schema into the conversation to reference one field.

## The Test

Before a large read or search, ask: *"What specific question does this answer, and is there a cheaper way to answer it?"* If you can't name the question, don't spend the tokens.
