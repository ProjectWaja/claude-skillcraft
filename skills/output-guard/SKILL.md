---
name: output-guard
description: Validates generated code against correctness, security, and style rules before presenting it to the user. Acts as a self-review gate.
version: 1.0.0
author: willjasen
tags:
  - quality
  - validation
  - security
---

# Output Guard

Every piece of generated code passes through a validation gate before being presented or written to disk.

## Validation Checks

Before presenting code to the user or writing it to a file, run these checks:

### Correctness

- **Syntax valid:** Would this code parse without errors?
- **Imports present:** Are all referenced modules imported?
- **Types consistent:** Do function signatures match their usage?
- **No undefined references:** Are all variables and functions defined before use?
- **Return paths complete:** Do all code paths return the expected type?

### Security

- **No hardcoded secrets:** No API keys, passwords, tokens, or connection strings in code
- **Input validation:** User input is sanitized before use in queries, commands, or HTML
- **No dangerous functions:** Flag use of `eval()`, `exec()`, `dangerouslySetInnerHTML`, raw SQL string concatenation
- **Dependency trust:** New dependencies should be well-maintained and from known publishers

### Style

- **Consistent with project:** Match existing indentation, naming conventions, and file structure
- **No unnecessary complexity:** If a simpler approach exists, flag it
- **Reasonable function length:** Functions over 50 lines get flagged for splitting
- **Meaningful names:** No single-letter variables outside of loop counters and lambdas

## How to Report

When a check fails, do not silently fix it. Report it:

```
Output Guard:
  [WARN] Function `processOrder` is 73 lines — consider splitting
  [FAIL] Hardcoded database URL on line 12 — move to environment variable
  [PASS] All imports present
  [PASS] No security issues detected

Fixing FAIL items before writing...
```

Fix FAIL items automatically. WARN items are reported to the user for their judgment.

## When to Skip

- Pseudocode or explanatory snippets (not meant to run)
- Single-line examples in conversation
- Code the user explicitly asked not to validate ("just give me the raw output")
