#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/a
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Sequential Word Prediction from Input Phrase", "Data Science Capstone Project"),
    
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            textInput("txt", label = "Enter a phrase or incomplete sentence here", value = "", width = NULL, placeholder = NULL),
            h5('Please press \'Submit\' to see the word prediction results.'),
            h5('(Sample input:\'how are you\' or \'where are you\')'),
            actionButton("Submit","Submit")
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            h3('Predicted Words'),
            h5('The main objective of application is to predict the next word likely to come next.
         Please allow some time for the app to load.
         Wait a few seconds after submit for predictions to load. Input only English words.'),
            h4('You entered the phrase: '),
            verbatimTextOutput("inputText"),
            h4('The 3 next predicted words'),
            verbatimTextOutput("suggestions")
        )
    )
))
