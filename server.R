library(shiny)
jobHappiness <- function(hrs,meaning,pay) (1/as.numeric(hrs)*as.numeric(meaning)*(as.numeric(pay)^1.2))/52.781
shinyServer(
        function(input,output){
                output$prediction <- renderPrint({jobHappiness(input$hrs,input$meaning,input$pay)})
        }
)
