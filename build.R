rmarkdown::render("presentation.Rmd",
                  output_file = rprojroot::find_rstudio_root_file("public/index.html"))
rmarkdown::render_supporting_files("static/figs", "public")
