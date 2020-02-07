#' @import shiny
app_ui <- function() {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here
    fluidPage(
      h1("DMC Color Finder"),
      fluidRow(
      column(width = 4,
      colourpicker::colourInput("color", label = "Colour")),
      column(width = 4,
      shiny::sliderInput("n", "Number of flosses", value = 1, min = 1, max = 5, step = 1))),
      h2("Closest DMC flosses"),
      shiny::imageOutput("dmc")
    )
  )
}

#' @import shiny
golem_add_external_resources <- function(){

  addResourcePath(
    'www', system.file('app/www', package = 'dmcapp')
  )

  tags$head(
    golem::activate_js(),
    golem::favicon()
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    #tags$link(rel="stylesheet", type="text/css", href="www/custom.css")
  )
}
