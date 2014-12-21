library(shiny)
shinyServer(
            function(input, output) {
                    output$gauss <- renderPlot({
                        mean <- input$mean
                        sd <- input$sd
                        range <- input$range * sd
                        x <- seq(mean-range, mean+range, length=300)
                        plot(x,dnorm(x, mean, sd), type="l", lwd=3)

                        x1 <- seq(input$cutoff, mean+range, length=300)
                        polygon(c(input$cutoff, x1), c(0, dnorm(x1, mean, sd)), col="skyblue") 
                    })

            }
            )
