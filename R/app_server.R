#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd

app_server <- function(input, output, session) {
  # plot stock data with plotly
  output$stock_plotly <- plotly::renderPlotly({
    plotly::plot_ly(my_dataset, x = ~date, y = ~close, type = 'scatter', mode = 'lines', line = list(color = 'blue'))
  })

  # Your application server logic
}
