#' Set default knitr chunk options
#'
#' Set more sensible chunk options for LaTex:
#'    fig.align = "center", fig.pos = "tb",
#'    fig.showtext = TRUE,
#'    cache = cache, autodep = FALSE, echo = FALSE,
#'    cache.path = "data/cache/",
#'    message = FALSE, size = "footnotesize",
#'    background = rgb(0.97, 0.97, 0.97),
#'    warning = FALSE,
#'    comment = NA, out.width = ".75\\linewidth"
#'
#' @param cache option
#' @return nothing
#' @export
default_latex_chunk_opts <- function(cache = FALSE, ...) {
    knitr::opts_knit$set(self.contained = TRUE)
    knitr::opts_chunk$set(
        fig.align = "center", fig.pos = "tb", # only top or bottom
        fig.showtext = TRUE,
        cache = cache, autodep = FALSE, echo = FALSE,
        cache.path = "data/cache/",
        message = FALSE, size = "footnotesize",
        background = rgb(0.97, 0.97, 0.97),
        warning = FALSE,
        comment = NA, out.width = ".75\\linewidth",
        ...
    )
}

#' Set default knitr chunk options for html
#'
#' Set more sensible chunk options for HTML
#'
#' @param cache option
#' @return nothing
#' @export
default_html_chunk_opts <- function(cache = FALSE, ...) {
    knitr::opts_knit$set(self.contained = TRUE)
    knitr::opts_chunk$set(
        fig.align = "center",
        fig.showtext = TRUE,
        cache = cache, autodep = FALSE, echo = FALSE,
        cache.path = "data/cache/",
        message = FALSE,
        background = rgb(0.97, 0.97, 0.97),
        warning = FALSE,
        comment = NA,
        ...
    )
}
