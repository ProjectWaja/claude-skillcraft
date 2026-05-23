---
name: pm-docs
description: Generates PM docs — PRDs, one-pagers, decision logs, launch checklists — from conversation and codebase context.
version: 1.0.0
author: willjasen
tags:
  - pm
  - documentation
  - product
---

# PM Docs

Turn conversations and code into structured product documents. Bridge the gap between what's being built and why.

## Document Types

### PRD (Product Requirements Document)

Generate when: user is defining a new feature or product.

```markdown
# PRD: [Feature Name]

## Problem Statement
What user problem does this solve? Who has this problem? How painful is it?

## Proposed Solution
High-level description of the solution. Not implementation details — user-facing behavior.

## User Stories
- As a [persona], I want [capability], so that [benefit]

## Requirements
### Must Have (P0)
### Should Have (P1)
### Nice to Have (P2)

## Success Metrics
How will we know this worked? Specific, measurable criteria.

## Scope
### In Scope
### Out of Scope

## Dependencies
External teams, services, or decisions this depends on.

## Timeline
Milestones and target dates (if provided).

## Open Questions
Unresolved decisions that need answers before or during implementation.
```

### One-Pager

Generate when: user needs to communicate an idea quickly to stakeholders.

```markdown
# [Title]

**Status:** Draft | In Review | Approved
**Author:** [name]
**Date:** [date]

## TL;DR
2-3 sentences. What are we doing and why.

## Context
What's happening that makes this relevant now?

## Proposal
What specifically are we proposing?

## Impact
Who does this affect? What changes for them?

## Effort
T-shirt size estimate (S/M/L/XL) with brief justification.

## Risks
What could go wrong?

## Next Steps
Concrete actions with owners.
```

### Decision Log

Generate when: a significant technical or product decision is made during a session.

```markdown
## Decision: [Title]
**Date:** [date]
**Status:** Decided | Revisit by [date]

**Context:** Why did this decision come up?
**Options Considered:**
1. [Option A] — pros, cons
2. [Option B] — pros, cons
3. [Option C] — pros, cons

**Decision:** [Which option and why]
**Consequences:** What this means going forward.
```

### Launch Checklist

Generate when: user is preparing to ship or deploy.

```markdown
# Launch Checklist: [Feature/Release]

## Pre-Launch
- [ ] All acceptance criteria verified
- [ ] Security review complete
- [ ] Performance testing done
- [ ] Documentation updated
- [ ] Rollback plan documented
- [ ] Monitoring and alerts configured
- [ ] Stakeholders notified of launch timeline

## Launch Day
- [ ] Deploy to staging, verify
- [ ] Deploy to production
- [ ] Smoke test critical paths
- [ ] Monitor error rates for 30 minutes
- [ ] Announce launch internally

## Post-Launch
- [ ] Monitor metrics for 24 hours
- [ ] Collect initial user feedback
- [ ] Address any P0 issues immediately
- [ ] Schedule retro for day 3-5
```

## Rules

- Generate documents from context — don't ask 20 questions first. Fill in what you know, mark unknowns as `[TBD]`.
- Match the formality level to the user's context. Solo founders need lightweight docs. Enterprise teams need thorough ones.
- Store generated documents in a `/docs` or `/decisions` folder in the project if one exists.
- Update existing documents rather than creating new versions. Documents are living artifacts.
