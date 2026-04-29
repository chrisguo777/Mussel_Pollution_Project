# Clean the data.

clean_data_path <- here::here("data", "clean", "mussel_data_clean.csv")

clean_data <- raw_data[complete.cases(raw_data), ]

write.csv(clean_data, clean_data_path, row.names = FALSE)
