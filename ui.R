library(shiny)

shinyUI(
        pageWithSidebar(
                        headerPanel("Normal distribution"),
                        sidebarPanel(
                                     h3('Enter the parameters'),
                                     numericInput('mean', 'Mean:', 75),
                                     numericInput('sd', 'Standard deviation:', 10),
                                     numericInput('range', 'How many sd to show:', 4),
                                     numericInput('cutoff', 'Cutoff value', 80)
                                     ),
                        mainPanel(
                                  plotOutput('gauss')
                        )))
                                     
