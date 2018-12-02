library(shiny) #downloads package

ui <- fluidPage(
  titlePanel("z to p"), #title
  sidebarLayout(
    sidebarPanel(
      numericInput("z", "z test statistic", 0, -4, 4, step = 0.1) #place to put z stat
    ),
    mainPanel(
      plotOutput("plot"), #plot
      br(), br(),
      textOutput("p") #p value
    )
  )
)

server <- function(input, output) {
  output$plot <- renderPlot({
    test_stat = input$z 
    curve(dnorm(x), from=-4, to=4)
    abline(v=test_stat, lty=2, col = "red", lwd = 2)
    coord.x = c(test_stat,seq(test_stat, abs(test_stat)+4, 0.01), abs(test_stat)+4)
    coord.y = c(0, dnorm(seq(test_stat, abs(test_stat)+4, 0.01)), 0)
    polygon(coord.x, coord.y, col="skyblue")
  })
  output$p <- renderText({
    p_value = pnorm(input$z, lower.tail = FALSE)
    c("The p-value to the right of the red line is", as.character(p_value))
  })
}

shinyApp(ui = ui, server = server)