---
name: simplify-code
description: Reviews code for unnecessary complexity. Flags over-engineering, premature abstractions, dead code, and violations of YAGNI.
version: 1.0.0
author: willjasen
tags:
  - quality
  - simplicity
  - refactoring
---

# Simplify Code

Complexity is a cost. Every abstraction, indirection, and configuration point must earn its place.

## What Gets Flagged

### Over-Engineering

- Abstractions with only one implementation (interfaces no one else implements)
- Configuration for things that never change
- Generic solutions for specific problems
- "Future-proofing" for requirements that don't exist

### Premature Abstraction

- Helper functions called only once
- Utility modules with 1-2 functions
- Base classes with one subclass
- Wrapper functions that just pass through to another function

### Dead Code

- Commented-out code blocks (delete it — git remembers)
- Unused imports, variables, and functions
- Feature flags that are always on or always off
- Backward-compatibility shims for migrations that completed

### Unnecessary Indirection

- More than 3 levels of function nesting to follow a code path
- Event systems for synchronous, local communication
- Dependency injection where direct imports work fine
- Abstract factories when a constructor call suffices

## The Simplicity Test

For any piece of code, ask:

1. **Can I delete this?** If removing it doesn't break anything, delete it.
2. **Can I inline this?** If a function is called once, inline it.
3. **Can I replace this with a standard library call?** Don't reinvent what exists.
4. **Would a junior engineer understand this in 30 seconds?** If not, simplify.

## Rules

- Apply this review after implementation, not during. Don't slow down the creative flow.
- Three similar lines of code is better than a premature abstraction.
- "But we might need it later" is not a justification. Delete it. You can add it back in 30 seconds.
- When simplifying, preserve behavior. This is refactoring, not rewriting.
