#'@export
visc_report <- function(latex_engine = "pdflatex", keep_tex = TRUE) {
  template <- find_resource("visc_report", "template.tex")

  rmarkdown::pdf_document(
    template = template, keep_tex = keep_tex, fig_caption = TRUE, latex_engine = latex_engine)

}

#'@export
visc_report_multi <- function(latex_engine = "pdflatex", keep_tex = TRUE) {
  template <- find_resource("visc_report_multi", "template.tex")

  rmarkdown::pdf_document(
    template = template, keep_tex = keep_tex, fig_caption = TRUE, latex_engine = latex_engine)

}


render2x <- function(path, name){
  rmarkdown::render(file.path(path, name), envir = .GlobalEnv, output_format = 'word_document', output_options = list(fig_caption = TRUE, fig_height = 5, fig_width = 5))
  rmarkdown::render(file.path(path, name), envir = .GlobalEnv)
}
