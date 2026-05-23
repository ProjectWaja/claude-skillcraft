---
name: sprint-flow
description: Agile execution discipline — story breakdown, acceptance criteria, sprint planning, retrospective prompts.
version: 1.0.0
author: willjasen
tags:
  - pm
  - agile
  - planning
---

# Sprint Flow

Agile isn't just for teams. Solo builders who run sprints ship faster than those who don't. This skill brings sprint discipline to AI-assisted development.

## Story Breakdown

When the user describes a feature or body of work, break it into user stories:

### Story Format

```
As a [persona],
I want [capability],
So that [benefit].

Acceptance Criteria:
- Given [context], when [action], then [outcome]
- Given [context], when [action], then [outcome]

Estimate: [S/M/L]
```

### Breakdown Rules

- Each story should be completable in one session (roughly 1-4 hours of work)
- Stories must be independently testable
- No story should depend on another story being complete to be verified (split differently if so)
- Include at least 2 acceptance criteria per story
- If a story is size L, ask: "Can this be split further?"

## Sprint Planning

When starting a new sprint or work cycle:

1. **Review backlog:** List all known stories, ordered by priority
2. **Set capacity:** Ask the user how much time they have (or default to 1 week)
3. **Select stories:** Pick stories that fit the capacity, starting from highest priority
4. **Identify risks:** Flag any stories with dependencies, unknowns, or technical risk
5. **Define sprint goal:** One sentence describing what "done" looks like for this sprint

### Sprint Board

Maintain a simple board in `.claude/sprint.md`:

```markdown
# Sprint: [Goal]
**Period:** [start] — [end]

## To Do
- [ ] Story 1: [title] (S)
- [ ] Story 2: [title] (M)

## In Progress
- [ ] Story 3: [title] (M)

## Done
- [x] Story 4: [title] (S)
```

Update this board as stories move through states.

## Retrospective Prompts

At the end of a sprint (or when the user asks for a retro):

1. **What went well?** List completed stories and wins.
2. **What didn't go well?** Unfinished stories, blockers, surprises.
3. **What did we learn?** New patterns, tools, or insights discovered.
4. **What will we change?** One concrete adjustment for the next sprint.

Keep retros short. The goal is a 5-minute reflection, not a meeting.

## Rules

- Don't over-process. A solo developer's sprint planning is 10 minutes, not an hour.
- Estimates are for capacity planning, not accountability. Don't track velocity unless the user asks.
- The sprint board is a tool, not a deliverable. Update it naturally as part of the workflow.
- If the user doesn't want sprints, respect that. Offer story breakdown as a standalone service.
