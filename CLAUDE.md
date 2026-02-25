# CLAUDE.md - Project Configuration

## Project Overview

This is a demonstration repository for AEDE 8895 showing how to use Claude Code for reproducible economics research. The project analyzes Ohio school district property tax data.

## Folder Structure

```
project/
├── data/
│   ├── raw/           # Original, unmodified data files
│   └── clean/         # Processed data ready for analysis
├── code/
│   ├── 01-clean.R     # Data cleaning scripts
│   ├── 02-analysis.R  # Main analysis
│   └── 03-figures.R   # Visualization scripts
├── output/
│   ├── figures/       # Generated plots
│   └── tables/        # Generated tables
├── paper/             # Manuscript files (if applicable)
└── quality_reports/   # Plans, session logs, review reports
```

## R Code Conventions

1. **Packages**: Load all packages at the top of the script using `library()`
2. **Paths**: Use relative paths from the project root (e.g., `"data/raw/file.csv"`)
3. **Style**: Follow tidyverse style guide
4. **Comments**: Explain *why*, not just *what*
5. **Reproducibility**: Set seeds for any random processes; use `here::here()` for paths if needed
6. **Output**: Save figures to `output/figures/`, tables to `output/tables/`

## Workflow Conventions

### Plan-First Protocol

For non-trivial tasks:
1. **Plan**: Draft approach before writing code
2. **Review**: Present plan for approval
3. **Implement**: Execute after approval
4. **Verify**: Run code, check outputs
5. **Commit**: Only after verification passes

### Quality Standards

Before committing:
- [ ] Code runs without errors
- [ ] All outputs are generated
- [ ] Code follows conventions above
- [ ] Commit message is descriptive

## Data Sources

| Dataset | Source | Location |
|---------|--------|----------|
| School district tax rates | Ohio Dept. of Education | `data/raw/2024-sd-rates.xlsx` |
| Geographic boundaries | Census TIGER/Line | Downloaded via `tigris` package |

## Build Commands

```bash
# Run all analysis
Rscript code/ohio_tax_analysis.R

# Or with make (if Makefile exists)
make all
```

## Key Contacts

- **Researcher**: Gabriel Lade (lade.10@osu.edu)
- **Course**: AEDE 8895, The Ohio State University
