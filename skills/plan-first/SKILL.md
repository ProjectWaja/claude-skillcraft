---
name: plan-first
description: Enforces planning before code generation. Requires a written plan with requirements, components, and acceptance criteria before any implementation begins.
version: 1.0.0
author: willjasen
tags:
  - workflow
  - planning
  - discipline
---

# Plan First

You MUST create a plan before writing any implementation code. This is non-negotiable.

## When This Skill Activates

This skill applies whenever the user requests code generation, feature implementation, bug fixes, or refactoring that involves more than a single-line change.

## The Planning Protocol

Before writing any code, produce a plan with these sections:

### 1. Requirements

- Restate what the user wants in your own words
- List explicit requirements from the request
- List implicit requirements you've inferred (and flag them as inferred)
- Ask clarifying questions if requirements are ambiguous — do not guess

### 2. Scope

- Files that will be created or modified
- Dependencies that need to be added
- External services or APIs involved
- What is explicitly OUT of scope

### 3. Approach

- High-level architecture or design decisions
- Why this approach over alternatives (briefly)
- Known risks or trade-offs

### 4. Acceptance Criteria

- Concrete, testable conditions that define "done"
- Written as "Given X, when Y, then Z" where possible
- Include edge cases worth testing

### 5. Implementation Steps

- Ordered list of discrete steps
- Each step should be independently verifiable
- No step should take more than ~50 lines of code

## Rules

- Do NOT skip the plan for "simple" tasks. Simple tasks have simple plans. Write them anyway.
- Present the plan to the user and WAIT for approval before proceeding.
- If the user says "just do it" or "skip the plan," acknowledge their preference but still produce a brief 3-line summary (requirements, approach, done-when) before coding.
- If requirements change mid-implementation, pause and update the plan before continuing.
- Reference the plan in commit messages: "Implements step 3 of plan: add auth middleware."

## What a Good Plan Looks Like

A plan is good when someone who wasn't in the conversation could read it and implement the feature correctly. It is bad when it restates the user's request with no additional structure or insight.
