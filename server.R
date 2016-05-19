pts <- seq(from = -2.5, to = 2.5, length = 200)

shinyServer(function(input, output, session) {

  output$plot1 <- renderPlot({
    
    ## Evaluate probabilities and plot
    b0 <- input$b0
    b1 <- input$b1
    vals <- exp(b0 + b1 * pts) / (1 + exp(b0 + b1 * pts))
    plot(pts, vals, xlim = c(-2.5, 2.5), ylim = c(0, 1), lwd = 2, col = "darkgoldenrod3", type = "l",
         xlab = "X", ylab = "Prob(Y = 1|X = x)")
  })
  
})
