# ui.R

shinyUI(fluidPage(
  titlePanel("Nascimentos no DF - 2014"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Visualize os nascimentos do Ano de 2014 do Distrito Federal com informações do DATASUS"),
      
      selectInput("var", 
        label = "Escolha a dimensão para visualizar",
        choices = c("RACACOR", "SEXO",
          "PARTO", "ESTCIVMAE", "CONSULTAS"),
        selected = "SEXO")
    ),
    mainPanel(
      plotOutput("grafico"))
  )
))
