#' Set default knitr chunk options
#'
#' Center figures with default latex positioning, allow custom text
#' Allow choosing whether to use cache, set custom code block size
#' and colour. Dont show warnings, code chunk size width set.
#'
#' @param cache option
#' @return nothing
#' @export
default_chunk_opts <- function(cache = FALSE) {
    knitr::opts_knit$set(self.contained = TRUE)
    knitr::opts_chunk$set(
        fig.align = "center", fig.pos = "htbp",
        fig.showtext = TRUE,
        cache = cache, autodep = FALSE, echo = FALSE,
        cache.path = "data/cache/",
        message = FALSE, size = "footnotesize",
        background = rgb(0.97, 0.97, 0.97),
        warning = FALSE,
        comment = NA, out.width = ".75\\linewidth"
    )
}
