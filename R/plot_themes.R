#' Default ggplot map theme
#'
#' Clean plot theme using serif font.
#'
#' @param No params
#' @return ggplot2 theme
#' @export
cj_map_theme <- ggthemes::theme_map() +
    ggplot2::theme(panel.border = ggplot2::element_rect(
        colour = "white",
        fill = NA, size = 2
    ), legend.position = "none")

#' Default ggplot plot theme
#'
#' Clean theme.
#'
#' @param No params
#' @return ggplot2 theme
#' @export
cj_plot_theme <- ggplot2::theme_classic() +
    ggplot2::theme(
        axis.ticks.y = ggplot2::element_blank(),
        axis.line = ggplot2::element_blank(),
        axis.text = ggplot2::element_text(size = 9, family = "serif"),
        axis.title = ggplot2::element_text(size = 10, family = "serif"),
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
