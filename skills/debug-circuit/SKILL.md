---
name: debug-circuit
description: Circuit breaker for debug loops — after 3 failed fixes, forces a strategic pause and new approach. Use when a fix keeps failing or you are retrying the same thing.
version: 1.0.0
author: willjasen
tags:
  - debugging
  - quality
  - discipline
---

# Debug Circuit

Stop brute-forcing. If the same approach fails three times, the approach is wrong.

## The Circuit Breaker

### Track Attempts

Mentally track each debug attempt for a given issue:

- **Attempt 1:** Try the most likely fix. If it fails, note what you learned.
- **Attempt 2:** Try a different fix informed by attempt 1. If it fails, note what you learned.
- **Attempt 3:** Try one more variation. If it fails — **STOP.**

### When the Circuit Breaks (3 failures)

Do NOT try a 4th variation of the same approach. Instead:

1. **Summarize what you know.** List every attempt, what happened, and what it ruled out.
2. **Reframe the problem.** The bug might not be where you think it is. Common reframes:
   - "Maybe it's not a code bug — check config, environment, or data"
   - "Maybe the error message is misleading — trace the actual execution path"
   - "Maybe the test is wrong, not the code"
   - "Maybe the dependency version changed behavior"
3. **Propose a different approach.** At least two alternatives. Present them to the user.
4. **Ask for help if stuck.** "I've tried X, Y, and Z. None worked. Here's what I've ruled out. What am I missing?"

### Reset Conditions

The circuit resets when:
- The user provides new information
- You identify a genuinely different root cause
- You switch to a fundamentally different approach (not a variation of the same one)

## Why This Matters

Debug loops are the #1 cost sink in AI-assisted coding. A 30-second pause to rethink saves 30 minutes of circular debugging. The discipline of stopping is more valuable than the cleverness of the next attempt.

## Rules

- Count failed attempts honestly. A "fix" that creates a new error counts as a failure.
- Do not reset the counter by making trivial changes. Adding a console.log is not a new approach.
- When reporting to the user, be transparent: "This is attempt 3 and I'm not making progress. Let me step back."
- If the user says "keep trying," acknowledge their preference, but still present the reframe before continuing.
