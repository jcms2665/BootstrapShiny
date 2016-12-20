library(shiny)
library(foreign)
library(ggplot2)

load("data/sam.Rda")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    muestra1<-sample(sam$HRSOCUP,size=length(sam$HRSOCUP)*input$bins,replace=TRUE)
    muestra2 <- apply(matrix(muestra1,input$bins,length(sam$HRSOCUP)),1,mean)
    p = ggplot( data.frame(muestra2),aes(muestra2) ) +
      geom_histogram(aes(y=..density..),binwidth=(diff(range(muestra2))/30), col="White",fill="darkgreen",alpha = .5) +
      geom_density(color="blue")+ggtitle("Promedio de horas trabajadas")+
      xlab("Promedio")+ylab("Frecuencia")
    plot(p)
  })
})



