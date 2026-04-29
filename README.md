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
├── Dockerfile
├── .dockerignore
├── .gitignore
├── code/
│   ├── 01_load_data.R
│   ├── 02_clean_data.R
│   ├── 03_table_summary.R
│   ├── 04_figure_pollution.R
│   └── 05_render_report.R
├── data/
│   ├── raw/
│   │   └── mussel_data_sample.csv
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

## Docker Image (DockerHub)

The pre-built Docker image is available at:

**https://hub.docker.com/r/paaaaaxton/mussel_pollution_project**

## How to Build the Docker Image

Clone the repository and build the image from the project root:

```bash
docker build -t paaaaaxton/mussel_pollution_project .
```

## How to Generate the Report Using Docker

The Docker container runs the full analysis pipeline and writes the compiled HTML report to a local folder called `report/`.

**Mac / Linux:**

```bash
make docker_run
```

This runs:

```bash
docker run --rm -v $(PWD)/report:/project/report paaaaaxton/mussel_pollution_project
```

**Windows (git bash):**

```bash
make docker_run_windows
```

This runs:

```bash
docker run --rm -v /$(PWD)/report:/project/report paaaaaxton/mussel_pollution_project
```

> Note: Windows git bash requires an extra `/` at the start of the mount path.

After the container finishes, `report/final_report.html` will appear in your local project directory.

## How to Build the Report Locally (without Docker)

This project uses `renv` to pin the R package environment. Before building locally, restore the project library:

```bash
make install
```

Then build the report:

```bash
make
```

This creates `report/final_report.html`.

If you add, remove, or update R package dependencies, update the lockfile before committing:

```r
renv::snapshot()
```

## Scripts

- `code/01_load_data.R` loads the raw data from `data/raw/`.
- `code/02_clean_data.R` cleans the data and writes to `data/clean/`.
- `code/03_table_summary.R` creates the summary table and saves it to `output/tables/`.
- `code/04_figure_pollution.R` creates the figure and saves it to `output/figures/`.
- `code/05_render_report.R` renders the report.

## Data

The raw data file is stored in `data/raw/mussel_data_sample.csv`.