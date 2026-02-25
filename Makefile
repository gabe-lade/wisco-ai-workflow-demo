# Makefile for Ohio Property Tax Analysis
# Run `make` to rebuild all outputs
# Run `make clean` to remove generated files

.PHONY: all clean help

# Default target
all: output/figures/ohio_school_districts_floor_map.png \
     output/figures/greene_county_tax_comparison.png \
     output/figures/top_counties_at_floor.png

# Main analysis script generates all three figures
output/figures/ohio_school_districts_floor_map.png \
output/figures/greene_county_tax_comparison.png \
output/figures/top_counties_at_floor.png: code/ohio_tax_analysis.R data/raw/2024-sd-rates.xlsx | output/figures
	Rscript code/ohio_tax_analysis.R

# Create output directories (order-only prerequisite)
output/figures:
	mkdir -p output/figures

output/tables:
	mkdir -p output/tables

# Clean generated files
clean:
	rm -f output/figures/*.png
	rm -f output/tables/*.tex

# Help
help:
	@echo "Available targets:"
	@echo "  all    - Build all outputs (default)"
	@echo "  clean  - Remove generated files"
	@echo "  help   - Show this message"
