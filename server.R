## server.R

library(shiny)

facto <- function(x) factorial(x)

shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$number})
                output$prediction <- renderPrint({facto(input$number)})
        }
)