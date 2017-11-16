library(shiny)
library(shinythemes)
shinyUI(
  fluidPage(theme = shinytheme("readable"),
  titlePanel("Scatter Plot from File"),
  sidebarLayout(
    sidebarPanel(
      fileInput('file0', 'Choose file to upload',
                accept = c(
                  '.csv')
      ),
      radioButtons('sep', 'Separator',
                   c(Comma=',',
                     Semicolon=';'
                     ),
                   ',')
      ),
    mainPanel(
      plotOutput('scatterplot')
    )
  )
))