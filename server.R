library(shiny)

shinyServer(function(input, output){
  model <- lm(len ~ factor(supp)+ dose -1, data = ToothGrowth)
  
  modelpred <- reactive({
    doseInput <- input$sliderDose
    suppInput <- input$radioButtons
    predict(model, newdata = data.frame(supp = suppInput, dose=doseInput))
  })
  
  output$pred1 <- renderText({
    modelpred()
  })
  
})