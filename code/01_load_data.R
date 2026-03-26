# Load the raw data.
# Replace this later if you switch to a different dataset.

raw_data_path <- here::here("data", "raw", "mussel_data.csv")

raw_data <- read.csv(raw_data_path, stringsAsFactors = FALSE)
