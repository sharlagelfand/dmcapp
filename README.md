
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dmcapp

dmcapp is a Shiny app that can be used to see the closest DMC embroidery
floss colours for a given colour.

The heavy lifting is all done by
[dmc](https://github.com/sharlagelfand/dmc) - dmcapp only contains the
Shiny application, which is hosted
[here](https://sharlagelfand.shinyapps.io/dmcapp/).

If you would like to run the app locally:

    # install.packages("devtools")
    devtools::install_github("sharlagelfand/dmcapp")
    dmcapp::run_app()
