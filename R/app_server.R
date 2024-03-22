#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd

app_server <- function(input, output, session) {
  r <- shiny::reactiveValues()
  r$my_dataset <- oily.golem::my_dataset
  mod_SNP_server("SNP_1", r = r)
  # Your application server logic
}


