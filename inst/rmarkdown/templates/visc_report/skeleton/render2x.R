  rmarkdown::render(file.path(mypath, myRmd.Rmd), output_format = 'word_document', output_options=list(fig_caption = TRUE, fig_height = 5, fig_width = 5))
  rmarkdown::render(file.path(mypath, myRmd.Rmd))
