#' @import shiny
app_ui <- function() {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here
    fluidPage(
      h1("DMC Colour Finder"),
      fluidRow(
        column(
          width = 3,
          colourpicker::colourInput("color", label = "Colour", value = "ff3860")
        ),
        column(
          width = 3,
          shiny::sliderInput("n", "Number of flosses", value = 3, min = 1, max = 5, step = 1)
        ),
        column(
          width = 3,
          shiny::selectInput("method", "Nearest colour method",
            choices = c("euclidean", "cie1976", "cie94", "cie2000", "cmc"),
            selected = "euclidean",
            multiple = FALSE
          )
        )
      ),
      h2("Closest DMC flosses"),
      shiny::imageOutput("dmc"),
      HTML("Build with <a href = 'https://github.com/sharlagelfand/dmc'>dmc</a>, <a href = 'https://github.com/sharlagelfand/dmcapp'>dmcapp</a>, #rstats, and love by <a href = 'https://twitter.com/sharlagelfand'>Sharla Gelfand</a>")
    )
  )
}

#' @import shiny
golem_add_external_resources <- function() {
  addResourcePath(
    "www", system.file("app/www", package = "dmcapp")
  )

  tags$head(
    golem::activate_js(),
    golem::favicon(ext = "png"),
    golem::bundle_resources(
      path = app_sys("app/www"),
      app_title = "DMC Colour Finder"
    )
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    # tags$link(rel="stylesheet", type="text/css", href="www/custom.css")
  )
}
