rmarkdown::render("presentation.Rmd", output_file = "public/index.html")
rmarkdown::render_supporting_files("static/figs", "public")
