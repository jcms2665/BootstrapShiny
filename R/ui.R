library(shiny)
library(shinythemes)
# Define UI for application that draws a histogram
shinyUI(fluidPage(theme = "bootstrap.css",
  h1("Simulacion para el calculo de la media via Bootstrap",align = "center"),
  h4("Julio Cesar",align = "center"),
  h6("jcms2665@gmail.com",align = "center"),
  br(),
  sidebarLayout(
    sidebarPanel(
      helpText("Selecciona el numero de replicas el promedio de horas ocupadas por semana segun la ENOE"),
      br(),
      sliderInput("bins","Numero de replicas:",min = 100,max = 1000,value = 300)),
    # Show a plot of the generated distribution
  mainPanel(plotOutput("distPlot"))
  )
))


