# Ohio School District Property Tax Analysis

A demonstration project for AEDE 8895 at The Ohio State University, analyzing how Ohio's 20-mill property tax floor creates two distinct tax systems across school districts.

## Folder Structure

```
project/
├── code/
│   └── ohio_tax_analysis.R       # Main analysis and visualizations
├── data/
│   ├── raw/                      # Original, unmodified data
│   │   └── 2024-sd-rates.xlsx    # School district millage rates
│   └── clean/                    # Processed data (generated)
├── output/
│   ├── figures/                  # Generated plots (PNG, 300 dpi)
│   └── tables/                   # Generated tables
├── newsletter-data/              # Source data archive
├── ai-workflow-talk.qmd          # Presentation slides (Quarto)
└── CLAUDE.md                     # AI assistant configuration
```

## Data Sources

| Dataset | Source | Notes |
|---------|--------|-------|
| School district tax rates | [Ohio Dept. of Education](https://education.ohio.gov) | Tax Year 2024 millage rates (`data/raw/2024-sd-rates.xlsx`) |
| School district boundaries | U.S. Census TIGER/Line | Downloaded at runtime via the `tigris` R package (2023 vintage) |
| Greene County tax bills | Greene County Auditor | Manually collected for Bellbrook and Cedarville districts (2022--2024) |

## Reproducing the Analysis

### Prerequisites

Install R (>= 4.0) and the following packages:

```r
install.packages(c("tidyverse", "sf", "readxl", "scales", "tigris", "viridis"))
```

### Run

From the project root:

```bash
Rscript code/ohio_tax_analysis.R
```

The script downloads Census shapefiles on the first run (cached afterwards via `tigris`). An internet connection is required for this step.

## Outputs

The script generates three figures in `output/figures/`:

| File | Description |
|------|-------------|
| `ohio_school_districts_floor_map.png` | Choropleth map of all Ohio school districts colored by whether they are at the 20-mill floor (scarlet) or above it (gray) |
| `greene_county_tax_comparison.png` | Line chart comparing property tax trajectories for two Greene County homes after a 2023 reappraisal |
| `top_counties_floor_districts.png` | Horizontal bar chart of the top 10 counties by number of districts at the 20-mill floor |

## Contact

Gabriel Lade (lade.10@osu.edu) -- AEDE 8895, The Ohio State University
