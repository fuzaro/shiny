# server.R

shinyServer(function(input, output) {

     output$text1 <- renderText({ 
	paste("You have selected", input$var)
     })
	output$text2 <- renderText({ 
      paste("Range Selected starts :", input$range[1],
	"Range Selected ends :", input$range[2])
    })

  }
)
