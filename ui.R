# packages

library(scholar)

library(shiny)
library(shinydashboard)
library(shinyWidgets)
library(shinycssloaders)
library(shinyjs)
library(tidyverse)

# Define UI
ui <- fluidPage(
  
  # Application title
  titlePanel(title = div(icon("graduation-cap"), 
                         strong("Researcher Footprint"), 
                         style = "font-family: Cursive; font-size:24.5px")),
  
  sidebarLayout(
    
    # Sidebar with a slider input
    sidebarPanel = sidebarPanel(
      width = 3,
      style = "background-color:#B4CCDE",
      
      h4(style = "text-align:center", strong("WELCOME!")),
      
      p(style = "text-align:center",
        "Are you a researcher, and would you like to catch a glimpse of your growth over the years?", 
        strong("Researcher Footprint"), "does exacty that! Enter the details below and click", 
        strong("Crunch!")),
      
      hr(style = "border-top: 1px solid #000000;"),
      
      textInput(inputId = "first_name", 
                label = "First Name", 
                value = "", 
                width = NULL, 
                placeholder = "Enter first name"),
      
      
      textInput(inputId = "last_name", 
                label = "Last Name", 
                value = "", 
                width = NULL, 
                placeholder = "Enter last name"),
      
      
      textInput(inputId = "affiliation", 
                label = "Affiliation", 
                value = "", 
                width = NULL, 
                placeholder = "Leave blank if none"),

    ),
    
    # main page
    mainPanel = mainPanel(
      width = 9,
      
      tabsetPanel(
        tabPanel(strong("Citations"),
                 
                 fluidPage(
                   column(width = 6,
                          
                          "table"),
                   
                   column(width = 6,
                          
                          "graph")
                 )
                 
                 ),
        
        
        tabPanel(strong("Data")))
      
    )
  )
)