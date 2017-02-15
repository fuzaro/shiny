# server.R
library(read.dbc)
library(lubridate)
library(ggplot2)
nasc <- read.dbc("/home/luiz/Documents/My/AA_UnB/Dataset/DNDF2014.dbc")
nasc$DTNASC <- as.POSIXct(as.Date(nasc$DTNASC,format="%d%m%Y"))

shinyServer(function(input, output) {
output$grafico <- renderPlot({

	ggplot(nasc, aes_string(factor(month(nasc$DTNASC)),fill = input$var))+geom_bar(stat="count",position="dodge")

    })
  }
)
