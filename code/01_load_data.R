# Load the raw data.

raw_data_path <- here::here("data", "raw", "mussel_data_sample.csv")

raw_data <- read.csv(raw_data_path, stringsAsFactors = FALSE)
