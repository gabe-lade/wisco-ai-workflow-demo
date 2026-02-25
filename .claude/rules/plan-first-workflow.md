# Plan-First Workflow

## When to Use Plan Mode

Use plan mode for any task that:
- Creates or modifies multiple files
- Involves non-trivial analysis decisions
- Could have multiple valid approaches
- Takes more than 5 minutes to implement

Skip plan mode for:
- Simple fixes (typos, small edits)
- Single-file changes with obvious implementation
- Direct questions that don't require code

## The Plan-First Protocol

### Step 1: Enter Plan Mode

When asked to do something non-trivial, first propose a plan:

```
## Plan: [Task Name]

### Objective
[One sentence describing what we're trying to accomplish]

### Approach
1. [Step 1]
2. [Step 2]
3. [Step 3]

### Files to Create/Modify
- `path/to/file1.R` — [what it will do]
- `path/to/file2.R` — [what it will do]

### Dependencies
- Packages: [list R packages needed]
- Data: [list data files needed]

### Risks/Considerations
- [Any potential issues or decisions to flag]

### Estimated Scope
- [Small / Medium / Large]
- [~X lines of code]
```

### Step 2: Wait for Approval

Do not implement until the user explicitly approves:
- "Looks good, proceed"
- "Go ahead"
- "Implement it"

If the user has questions or changes, revise the plan.

### Step 3: Implement

After approval:
1. Create/modify files as specified in the plan
2. Follow all project conventions (see r-code-conventions.md)
3. Run the code to verify it works
4. Report completion and any issues

### Step 4: Verify

Before declaring done:
- [ ] Code runs without errors
- [ ] Outputs are generated
- [ ] Files are in correct locations
- [ ] Quality standards are met

### Step 5: Offer to Commit

After verification:
```
Implementation complete. Ready to commit?

Files changed:
- code/analysis.R (new)
- output/figures/plot.png (new)

Suggested commit message:
"Add [description of what was done]"
```

## Contractor Mode

After plan approval, work autonomously:
- Implement the full plan without asking for permission at each step
- Only pause if you encounter ambiguity or need a decision
- Report back when complete with a summary

Think of it like hiring a contractor:
- You discuss the plan together
- You approve the approach
- They do the work
- They show you the finished result

## Context Preservation

### Save Plans to Disk

For complex multi-session tasks, save the plan:

```
quality_reports/plans/YYYY-MM-DD-task-name.md
```

This survives context compression and can be referenced later.

### Session Logs

At the end of substantive sessions, save a session log:

```
quality_reports/session_logs/YYYY-MM-DD-session.md
```

Contents:
- What was accomplished
- Key decisions and rationale
- Open questions for next time

### Never Use /clear

Avoid `/clear` — it destroys all context. Let auto-compression handle context management; it preserves important information gracefully.
