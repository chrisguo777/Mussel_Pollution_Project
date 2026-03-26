# Render the final report.
# Run with: Rscript code/05_render_report.R

rmarkdown::render(
  input = here::here("report", "final_report.Rmd"),
  output_format = "html_document",
  output_file = "final_report.html",
  output_dir = here::here("report")
)
