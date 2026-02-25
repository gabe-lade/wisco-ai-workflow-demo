# Quality Gates

## Scoring Thresholds

| Score | Action | Meaning |
|-------|--------|---------|
| 80+ | Commit allowed | Meets minimum standards |
| 90+ | PR ready | Ready for review/sharing |
| 95+ | Excellence | Publication/teaching quality |

## R Script Scoring Rubric (100 points)

### Structure (25 points)
- [ ] Header with purpose, author, date (5 pts)
- [ ] Packages loaded at top (5 pts)
- [ ] Logical section organization (5 pts)
- [ ] No hardcoded paths (5 pts)
- [ ] Self-contained (runs from fresh session) (5 pts)

### Code Quality (25 points)
- [ ] Follows tidyverse style guide (5 pts)
- [ ] Descriptive variable names (5 pts)
- [ ] No redundant code (5 pts)
- [ ] Appropriate use of functions (5 pts)
- [ ] No warnings or errors when run (5 pts)

### Documentation (25 points)
- [ ] Comments explain *why*, not just *what* (10 pts)
- [ ] Complex operations are explained (5 pts)
- [ ] Data sources documented (5 pts)
- [ ] Output files documented (5 pts)

### Reproducibility (25 points)
- [ ] Seeds set for random processes (5 pts)
- [ ] All dependencies explicit (5 pts)
- [ ] Outputs saved to correct locations (5 pts)
- [ ] No manual steps required (5 pts)
- [ ] Works on clean clone of repo (5 pts)

### Deductions
- -10: Script doesn't run without errors
- -5: Missing package loads
- -5: Uses `setwd()` or absolute paths
- -5: Outputs to wrong directory
- -3: Inconsistent style
- -3: Unclear variable names
- -2: Unused code left in script

## Figure Scoring Rubric (100 points)

### Visual Clarity (30 points)
- [ ] Clear, readable labels (10 pts)
- [ ] Appropriate font sizes (5 pts)
- [ ] No overlapping elements (5 pts)
- [ ] Colorblind-friendly palette (5 pts)
- [ ] Sufficient resolution (300 dpi) (5 pts)

### Information Design (30 points)
- [ ] Title conveys main message (10 pts)
- [ ] Axes properly labeled with units (10 pts)
- [ ] Legend clear and positioned well (5 pts)
- [ ] Data-ink ratio appropriate (5 pts)

### Consistency (20 points)
- [ ] Matches project style guide (10 pts)
- [ ] Consistent with other figures (10 pts)

### Technical (20 points)
- [ ] Correct file format (5 pts)
- [ ] Appropriate dimensions (5 pts)
- [ ] Saved to correct location (5 pts)
- [ ] Reproducible from code (5 pts)

## Commit Message Standards

Good commit messages:
```
Add Ohio school district analysis with three visualizations

- Choropleth map of districts at vs above 20-mill floor
- Property tax comparison for two Greene County homes
- Bar chart of top counties by floor district count
```

Bad commit messages:
```
update
fixed stuff
asdf
```

## Pre-Commit Checklist

Before running `git commit`:

1. [ ] All scripts run without errors
2. [ ] `make` (or `make -n`) shows no errors
3. [ ] Outputs are generated and saved
4. [ ] Code quality score ≥ 80
5. [ ] Commit message is descriptive
