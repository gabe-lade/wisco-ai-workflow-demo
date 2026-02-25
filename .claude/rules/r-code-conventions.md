# R Code Conventions

## File Structure

Every R script should follow this structure:

```r
# ============================================================================
# Script: [filename].R
# Purpose: [One-line description]
# Author: [Name]
# Date: [YYYY-MM-DD]
# ============================================================================

# --- Setup ---
library(tidyverse)
library(sf)
# ... other packages

# --- Load Data ---
# Load raw data with clear variable names

# --- Clean/Process ---
# Data transformations, merges, calculations

# --- Analysis ---
# Main analytical work

# --- Output ---
# Save figures, tables, or processed data
```

## Naming Conventions

- **Scripts**: Use numbered prefixes for execution order: `01-clean.R`, `02-analysis.R`
- **Variables**: Use `snake_case` for variable names
- **Functions**: Use `snake_case` for function names
- **Files**: Use descriptive names with underscores: `ohio_school_districts.csv`

## Path Management

- Always use relative paths from the project root
- Never use `setwd()` — it breaks reproducibility
- Preferred: Use `here::here()` for robust path handling

```r
# Good
data <- read_csv("data/raw/mydata.csv")
data <- read_csv(here::here("data", "raw", "mydata.csv"))

# Bad
setwd("C:/Users/myname/projects/...")
data <- read_csv("mydata.csv")
```

## Reproducibility Requirements

1. **Set seeds**: For any random process, set a seed at the top of the script
   ```r
   set.seed(8895)  # Course number makes a good seed
   ```

2. **Package versions**: Consider using `renv` for dependency management

3. **No hardcoded paths**: Everything relative to project root

4. **Self-contained scripts**: Each script should run independently from a fresh R session

## Figure Conventions

```r
# Standard figure dimensions
ggsave("output/figures/my_plot.png", 
       width = 10, 
       height = 6, 
       dpi = 300)

# Use consistent themes
theme_set(theme_minimal(base_size = 12))

# OSU colors (if applicable)
osu_scarlet <- "#ba0c2f"
osu_gray <- "#a7b1b7"
```

## Common Pitfalls to Avoid

1. **Don't use `attach()`** — it pollutes the namespace
2. **Don't use `T` and `F`** — use `TRUE` and `FALSE`
3. **Don't leave `print()` statements** in production code (use for debugging only)
4. **Don't hardcode data transformations** — use functions for repeatability
5. **Don't ignore warnings** — investigate and resolve or explicitly suppress with comment

## Quality Checklist

Before committing R code:

- [ ] Script runs from start to finish without errors
- [ ] All packages loaded at the top
- [ ] No absolute paths
- [ ] Outputs saved to correct folders
- [ ] Code is commented explaining *why*, not just *what*
- [ ] Variable names are descriptive
- [ ] No unused code or commented-out experiments
