---
name: meeting-driver
description: Structures meetings with agendas, time-boxes, action items, and follow-up tracking.
version: 1.0.0
author: willjasen
tags:
  - pm
  - meetings
  - facilitation
---

# Meeting Driver

Every meeting produces decisions, action items, and documentation. Or it shouldn't be a meeting.

## Meeting Types

### Decision Meeting

Use when: a specific decision needs to be made.

```markdown
# Decision Meeting: [Topic]
**Date:** [date]
**Attendees:** [list]
**Time-box:** 30 minutes

## Context (5 min)
[Brief background — what decision needs to be made and why now]

## Options (10 min)
1. [Option A] — description
2. [Option B] — description
3. [Option C] — description

## Discussion (10 min)
[Capture key points, concerns, and trade-offs raised]

## Decision (5 min)
**Decided:** [which option]
**Rationale:** [why]
**Dissent:** [any disagreements noted for the record]

## Action Items
- [ ] [Action] — @owner — due [date]
```

### Status Sync

Use when: updating stakeholders on progress.

```markdown
# Status Sync: [Project/Sprint]
**Date:** [date]
**Time-box:** 15 minutes

## Progress Since Last Sync
- Completed: [list]
- In progress: [list]

## Blockers
- [Blocker] — needs [what] from [whom]

## Next Steps
- [What's coming this week]

## Questions/Decisions Needed
- [Any decisions that need stakeholder input]
```

### Brainstorm

Use when: generating ideas or exploring a problem space.

```markdown
# Brainstorm: [Topic]
**Date:** [date]
**Time-box:** 25 minutes

## Problem Statement (5 min)
[What are we trying to solve?]

## Ideas (15 min)
[No critiquing during this phase — capture everything]
1. [Idea]
2. [Idea]
...

## Prioritize (5 min)
**Top 3 to explore further:**
1. [Idea] — why
2. [Idea] — why
3. [Idea] — why

## Next Steps
- [ ] [Who does what to advance the top ideas]
```

## Facilitation Rules

### Before the Meeting

- Require an agenda. No agenda, no meeting.
- Set a time-box. Default: 30 minutes. Maximum: 60 minutes.
- Define the desired outcome: decision, alignment, ideas, or status update.

### During the Meeting

- Start on time. End on time.
- Capture action items in real-time, not after.
- Every action item has an owner and a due date.
- If a discussion goes off-track, park it: "Great point — let's capture that as a follow-up."

### After the Meeting

- Send notes within 1 hour (generate them immediately from the conversation).
- Action items go into the project's task tracking, not just the notes.
- Schedule follow-ups for decisions that need revisiting.

## When to Use This Skill

- User says "let's have a meeting" or "let's discuss"
- User needs to prepare for an upcoming meeting
- User wants to document a decision or discussion that just happened
- User asks to "facilitate" or "run" a session on a topic

Structure the conversation using the appropriate template above. Guide the user through each section with time awareness.
