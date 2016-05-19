shinyUI(pageWithSidebar(
  headerPanel('Logistic Function'),
  sidebarPanel(
    sliderInput('b0', 'Select intercept parameter', value = 0, min = -10, max = 10, step = 0.25),
    sliderInput('b1', 'Select slope parameter', value = 1, min = -10, max = 10, step = 0.25)
  ),
  mainPanel(
    plotOutput('plot1', width = "600px", height = "600px")
  )
))
