all: report/final_report.html

data/clean/mussel_data_clean.csv: code/02_clean_data.R data/raw/mussel_data.csv
	Rscript code/02_clean_data.R

output/tables/summary_table.csv: code/03_table_summary.R data/clean/mussel_data_clean.csv
	Rscript code/03_table_summary.R

output/figures/pollution_figure.png: code/04_figure_pollution.R data/clean/mussel_data_clean.csv
	Rscript code/04_figure_pollution.R

report/final_report.html: report/final_report.Rmd code/05_render_report.R output/tables/summary_table.csv output/figures/pollution_figure.png
	Rscript code/05_render_report.R

clean:
	rm -f output/tables/summary_table.csv output/figures/pollution_figure.png report/final_report.html

.PHONY: all clean
