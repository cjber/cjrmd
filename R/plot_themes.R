#' Default ggplot themes
#'
#' Clean map theme and plot theme using serif font.
#'
#' @param No params
#' @return ggplot2 themes
#' @export

# map (blank with border)
cj_map_theme <- ggthemes::theme_map() +
    ggplot2::theme(panel.border = ggplot2::element_rect(
        colour = "white",
        fill = NA, size = 2
    ), legend.position = "none")

# plot, minimal publishable
showtext::showtext_auto()
sysfonts::font_add_google("Roboto", "Roboto")
sysfonts::font_add_google("Roboto Slab", "Roboto Slab")
cj_plot_theme <- ggplot2::theme_classic() +
    ggplot2::theme(
        axis.ticks.y = ggplot2::element_blank(),
        axis.line = ggplot2::element_blank(),
        axis.text = ggplot2::element_text(size = 9, family = "Roboto"),
        axis.title = ggplot2::element_text(size = 10, family = "Roboto Slab"),
        axis.text.y = ggplot2::element_blank(),
        legend.title = ggplot2::element_blank(),
        legend.position = "bottom",
        strip.background = ggplot2::element_blank(),
        panel.border = ggplot2::element_rect(
            colour = "black",
            fill = NA,
            size = 1
        )
    )
