## ui.R

library(shiny)
shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Factorial Calculator"),
                
                sidebarPanel(p("This is a calculator that calculates a factorial of a number that has been entered. Please enter a number and the calculator will output the factorial of that number."),
                        numericInput('number', 'Enter a number greater than zero', 0, min = 1, max = 200, step = 1),
                        submitButton('Submit')
                ),
                mainPanel(
                        h3('Factorial Calculation'),
                        h4('You entered'),
                        verbatimTextOutput("inputValue"),
                        h4('Which resulted in a factorial result of'),
                        verbatimTextOutput("prediction")
                )
        )
)