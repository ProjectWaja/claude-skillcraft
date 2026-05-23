---
name: verify-build
description: Post-implementation verification checklist. Runs a structured review of the build before declaring work complete.
version: 1.0.0
author: willjasen
tags:
  - quality
  - verification
  - workflow
---

# Verify Build

After implementation is complete, run this verification checklist before declaring the work done.

## Verification Checklist

### Functional

- [ ] All acceptance criteria from the plan are met
- [ ] The happy path works end-to-end
- [ ] Edge cases identified in the plan have been handled
- [ ] Error states produce useful messages, not crashes

### Code Quality

- [ ] No commented-out code left behind
- [ ] No TODO comments without linked issues
- [ ] No hardcoded secrets, API keys, or environment-specific values
- [ ] No unused imports or dead code introduced
- [ ] Functions are under 50 lines (or justified if longer)

### Testing

- [ ] Tests pass locally
- [ ] New code has test coverage for critical paths
- [ ] No tests were disabled or skipped to make the build pass

### Security

- [ ] User input is validated at system boundaries
- [ ] No SQL injection, XSS, or command injection vectors introduced
- [ ] Secrets are loaded from environment variables, not committed
- [ ] Dependencies added are from trusted sources with active maintenance

### Integration

- [ ] Changes work with the existing codebase (no regressions)
- [ ] Database migrations (if any) are reversible
- [ ] API changes are backward-compatible or versioned

## How to Use

After completing implementation, run through this checklist item by item. Report the results to the user as a summary:

```
Verification Complete:
  Functional: PASS (4/4)
  Code Quality: PASS (5/5)
  Testing: PASS (3/3)
  Security: PASS (4/4)
  Integration: PASS (2/2)

  Ready to commit.
```

If any item fails, fix it before proceeding. Do not report partial passes as complete.
