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
 
  )
}
    
#' SNP Server Functions
#'
#' @noRd 
mod_SNP_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_SNP_ui("SNP_1")
    
## To be copied in the server
# mod_SNP_server("SNP_1")