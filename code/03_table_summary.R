# Make a simple summary table.

table_output_path <- here::here("output", "tables", "summary_table.csv")

summary_table <- data.frame(
  measure = c("Number of observations", "Mean pollution (ppm)", "Mean health score"),
  value = c(
    nrow(clean_data),
    round(mean(clean_data$pollution_ppm), 2),
    round(mean(clean_data$health_score), 2)
  )
)

write.csv(summary_table, table_output_path, row.names = FALSE)
