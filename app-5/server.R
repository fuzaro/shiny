# server.R
library(read.dbc)
library(lubridate)
library(ggplot2)
nasc <- read.dbc("DNDF2014.dbc")
nasc$DTNASC <- as.POSIXct(as.Date(nasc$DTNASC,format="%d%m%Y"))

shinyServer(function(input, output) {
output$grafico <- renderPlot({

	ggplot(nasc, aes_string(factor(month(nasc$DTNASC)),fill = input$var))+geom_bar(stat="count",position="dodge")

    })
  }
)
