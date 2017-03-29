#'@export
visc_report <- function(latex_engine = "pdflatex") {
  template <- find_resource("visc_report", "template.tex")

  rmarkdown::pdf_document(
    template = template, keep_tex=TRUE, fig_caption = TRUE, latex_engine=latex_engine)

}
