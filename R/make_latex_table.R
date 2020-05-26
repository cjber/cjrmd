#' Default latex table options
#'
#' Set nicer kable defaults, number of digits, customise table environment,
#' e.g. use *figure to make table go across two columns. Add custom styling
#' for bold headings.
#'
#' @param data.frame and various kable options
#' @return kable table
#' @export
make_latex_table <- function(df, cap = "", dig = 2, col_names = NA,
                             table_env = "table", ...) {
    options(knitr.kable.NA = "")
    knitr::kable(df,
        digits = dig, caption = cap,
        linesep = "", # remove 5 row spacing
        longtable = FALSE, booktabs = TRUE, # latex opts
        format = "latex",
        escape = F, # allow maths chars
        col.names = col_names,
        table.env = table_env # change to figure* if over two cols
    ) %>%
        kableExtra::kable_styling(font_size = 9, position = "center") %>%
        kableExtra::row_spec(0, bold = TRUE)
}
