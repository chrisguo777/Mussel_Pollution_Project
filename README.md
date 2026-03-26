# Freshwater Mussel Pollution Exposure Project
The dataset is from Kaggle, 
https://www.kaggle.com/code/rtatman/manipulating-data-with-the-tidyverse-workbook

This repository is a simple final project for a reproducible data analysis assignment in R. The topic is pollution exposure and biological health outcomes in freshwater mussels.

The project is split into separate scripts for loading data, cleaning data, making a table, making a figure, and rendering the report.

## Files

```text
project-root/
├── README.md
├── Makefile
├── .gitignore
├── code/
│   ├── 01_load_data.R
│   ├── 02_clean_data.R
│   ├── 03_table_summary.R
│   ├── 04_figure_pollution.R
│   └── 05_render_report.R
├── data/
│   ├── raw/
│   │   ├── mussel_data.csv
│   │   ├── histopaths.csv
│   │   ├── pollutants.csv
│   │   └── sites.csv
│   └── clean/
│       └── .gitkeep
├── output/
│   ├── tables/
│   │   └── .gitkeep
│   └── figures/
│       └── .gitkeep
└── report/
    └── final_report.Rmd
```

## How to build the final report

To build the final HTML report from the project root, run:

```bash
make
```

This creates `report/final_report.html`.
```

## Scripts

- `code/01_load_data.R` loads the raw data from `data/raw/`.
- `code/02_clean_data.R` does a few basic cleaning steps and writes a cleaned file to `data/clean/`.
- `code/03_table_summary.R` creates the summary table and saves it to `output/tables/`.
- `code/04_figure_pollution.R` creates the figure and saves it to `output/figures/`.
- `code/05_render_report.R` renders the report.

The required table code is in `code/03_table_summary.R`.

The required figure code is in `code/04_figure_pollution.R`.

## Data

The raw data files are stored in `data/raw/`.