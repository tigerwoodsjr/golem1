#' SNP UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_SNP_ui <- function(id){
  ns <- NS(id)
  tagList(
    shiny::selectInput(ns("typeInput"), "Choose Energy Source:", choices = c("All", unique(oily.golem::my_dataset$GenSource))),
    actionButton(ns("action_button"), "click"),
    plotly::plotlyOutput(ns("stock_plotly")))

}

#' SNP Server Functions
#'
#' @noRd
mod_SNP_server <- function(id, r){
  moduleServer(id,
               function(input, output, session){
    ns <- session$ns
    GenSource <- NULL
    # plot stock data with plotly
    output$stock_plotly <- plotly::renderPlotly({

      if(input$typeInput != "All") {
        filter_data <- r$my_dataset %>%
          dplyr::filter(GenSource == input$typeInput)
        } else {
          filter_data <- r$my_dataset
        }

      plotly::plot_ly(filter_data, x = ~date, y = ~GWh, name = ~GenSource, type = 'scatter', mode = 'lines', line = list(color = 'blue')) %>%
        plotly::layout(title = "Prod by Gen", xaxis = list(title = ''), yaxis = list(title = 'GWh'))
    })

  })
}

