library(shiny)
shinyUI(fluidPage(
  titlePanel("Predict The Effect of Vitamin C on Tooth Growth in Guinea Pigs."),
  sidebarLayout(
    sidebarPanel(
      sliderInput("sliderDose", "What was the amount of dose supplied?", 0.5, 2,step=0.5, value=0.5),
      radioButtons("radioButtons", "Select Suppliment Type:", c("OJ", "VC"))
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Prediction",
                 mainPanel(h3("Predicted Tooth Growth in Guinea Pigs: "), textOutput("pred1"))),
        tabPanel("Documentation",
                 mainPanel(
                   includeMarkdown("about.Rmd")))
      )
    ))
))