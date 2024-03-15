#' FRANCE UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_FRANCE_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' FRANCE Server Functions
#'
#' @noRd 
mod_FRANCE_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_FRANCE_ui("FRANCE_1")
    
## To be copied in the server
# mod_FRANCE_server("FRANCE_1")
