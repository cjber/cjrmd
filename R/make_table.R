#' Default latex table options
#'
#' Set nicer kable defaults, number of digits, customise table environment,
#' e.g. use *figure to make table go across two columns. Add custom styling
#' for bold headings.
#'
#' @param data.frame and various kable options
#' @return kable table
#' @export
make_latex_table <- function(df, cap = "", dig = 2,
                             col_names = NA, row_names = NA,
                             align = c("l", rep("c", ncol(df) - 1)),
                             table_env = "table", ...) {
    options(knitr.kable.NA = "")
    knitr::kable(df,
        digits = dig,
        caption = cap,
        linesep = "", # remove 5 row spacing
        align = align,
        longtable = FALSE, booktabs = TRUE, # latex opts
        format = "latex",
        escape = F, # allow maths chars
        col.names = col_names,
        row.names = row_names,
        table.env = table_env # change to figure* if over two cols
    ) %>%
        kableExtra::kable_styling(
            font_size = 9,
            position = "center",
            full_width = F
        ) %>%
        kableExtra::row_spec(0, bold = TRUE)
}

#' Default html table options
#'
#' HTML version of latex table
#'
#' @param data.frame and various kable options
#' @return kable table
#' @export
make_html_table <- function(df, caption = "", digits = 2,
                            col_names = NA, row_names = NA,
                            align = c("l", rep("c", ncol(df) - 1)), ...) {
    options(knitr.kable.NA = "")
    knitr::kable(df,
        digits = digits,
        caption = caption,
        format = "html",
        align = align,
        row.names = row_names,
        col.names = col_names
    ) %>%
        kableExtra::kable_styling(position = "center") %>%
        kableExtra::row_spec(0, bold = TRUE)
}
