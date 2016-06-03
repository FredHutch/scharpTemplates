#'@export
visc_sap_bama <- function(latex_engine = "pdflatex") {
  template <- find_resource("visc_sap_bama", "template.tex")

  rmarkdown::pdf_document(
    template = template, keep_tex=TRUE, fig_caption = TRUE, latex_engine=latex_engine)

}

