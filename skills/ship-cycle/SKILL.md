---
name: ship-cycle
description: Enforces the full dev cycle — branch, plan, implement, test, review, commit — with no skipped steps.
version: 1.0.0
author: willjasen
tags:
  - workflow
  - shipping
  - discipline
---

# Ship Cycle

Every feature, fix, or refactor follows the complete shipping cycle. No shortcuts.

## The Cycle

### 1. Branch

- Create a feature branch from the latest main/develop
- Use conventional naming: `feat/`, `fix/`, `refactor/`, `docs/`
- Never work directly on main

### 2. Plan

- Follow the plan-first protocol (see `plan-first` skill)
- If plan-first is not installed, produce at minimum: requirements, approach, acceptance criteria

### 3. Implement

- Write code in small, reviewable increments
- Each increment should compile/run without errors
- Follow existing project conventions (indentation, naming, file structure)
- Do not introduce new patterns without flagging them

### 4. Test

- Write or update tests for every behavioral change
- Run the existing test suite before considering implementation complete
- If no test framework exists, at minimum verify the change manually and document how

### 5. Review

- Self-review the diff before committing
- Check for: security issues, unnecessary complexity, missing error handling at boundaries, hardcoded values
- Flag anything you're uncertain about to the user

### 6. Commit & PR

- Atomic commits with conventional commit messages
- PR description includes: what changed, why, how to test, screenshots if UI
- Link to related issues if they exist

## Rules

- If a step fails, do not skip to the next step. Fix the failure first.
- If tests fail, do not commit. Fix the tests or the code.
- If you realize mid-implementation that the plan was wrong, go back to step 2.
- Document any deviations from the plan in the commit message.

## Escape Hatches

- **Hotfix mode:** User says "hotfix" — compress to: implement, test, commit. Still no skipping test.
- **Prototype mode:** User says "prototype" or "spike" — compress to: branch, implement, commit. Mark the branch as experimental.

These modes must be explicitly requested. Default is always the full cycle.
