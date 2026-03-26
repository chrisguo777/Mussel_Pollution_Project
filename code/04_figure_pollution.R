# Make a simple figure.
# This is a starter example using the sample data.

figure_output_path <- here::here("output", "figures", "pollution_figure.png")

pollution_figure <- ggplot2::ggplot(
  clean_data,
  ggplot2::aes(x = pollution_ppm, y = health_score)
) +
  ggplot2::geom_point(color = "steelblue", size = 2) +
  ggplot2::labs(
    title = "Pollution and mussel health",
    x = "Pollution (ppm)",
    y = "Health score"
  ) +
  ggplot2::theme_minimal()

ggplot2::ggsave(
  filename = figure_output_path,
  plot = pollution_figure,
  width = 7,
  height = 5,
  dpi = 300
)
