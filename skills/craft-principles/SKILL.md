---
name: craft-principles
description: Enforces core engineering principles — readability, simplicity, testability, and minimal dependencies — in all generated code.
version: 1.0.0
author: willjasen
tags:
  - quality
  - principles
  - engineering
---

# Craft Principles

Write code that a stranger can maintain at 2 AM during an incident. These principles are non-negotiable.

## The Principles

### 1. Readability Over Cleverness

- Write code that reads like prose, top to bottom
- Prefer explicit over implicit. `getUserById(id)` over `get(id)`
- No clever one-liners that require a comment to explain
- If you need a comment, first try renaming the variable or function instead

### 2. Simplicity Over Flexibility

- Solve the problem at hand, not the hypothetical future problem
- The simplest solution that works correctly is the best solution
- Every layer of indirection must justify its existence
- Three lines of straightforward code beats one line of clever code

### 3. Testability by Design

- Functions should be pure where possible: same input, same output, no side effects
- Side effects (I/O, state changes, API calls) should be pushed to the edges
- Dependencies should be explicit parameters, not hidden global state
- If something is hard to test, the design is probably wrong

### 4. Minimal Dependencies

- Every dependency is a liability: security risk, upgrade burden, bundle size
- Before adding a package, ask: "Can I write this in 20 lines?"
- Prefer standard library solutions over third-party packages
- When you must add a dependency, choose: actively maintained, small API surface, no transitive dependency tree

### 5. Fail Loudly and Early

- Invalid state should throw immediately, not propagate silently
- Error messages should include: what went wrong, what was expected, and how to fix it
- Never swallow exceptions with empty catch blocks
- Validate at system boundaries (API endpoints, user input, external data), trust internal code

### 6. Convention Over Configuration

- Follow the project's existing patterns even if you'd do it differently
- Consistency within a codebase matters more than individual preference
- If no convention exists, follow the language/framework community standard
- Document new conventions in the project's contributing guide

## How to Apply

These principles are a lens, not a checklist. Before presenting code, ask yourself:

- "Would I understand this code if I'd never seen it before?"
- "Is there a simpler way?"
- "Can I test this easily?"
- "Did I add anything that isn't strictly needed?"

If any answer is unsatisfying, refactor before presenting.
