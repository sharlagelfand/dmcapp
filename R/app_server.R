#' @import shiny
app_server <- function(input, output, session) {
  # List the first level callModules here
  output$dmc <- shiny::renderImage({
    tmpfile <- dmc::dmc(input$color, n = input$n, method = input$method) %>%
      attr("visualization") %>%
      magick::image_write(tempfile(fileext = "jpg"), format = "jpg")
    list(src = tmpfile, contentType = "image/jpeg")
  })
}
