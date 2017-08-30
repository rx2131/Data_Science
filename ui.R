library(shiny);
##https://rx2131.shinyapps.io/Assignment4/

shinyUI(navbarPage("Dynamic data plotting between 2 selected variables",
  tabPanel("Dynamic Plots",
  sidebarLayout(
    sidebarPanel(      
      selectInput("var1",
                  label = "Choose First X Variable",
                  choices = c("mpg", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"),
                  selected = "mpg"
      ),
      selectInput("var2",
                  label = "Choose Second Y variable",
                  choices = c("mpg", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"),
                  selected = "cyl"
      )
    ),
      mainPanel(
      plotOutput("Plot1")
    )
  )
)
,tabPanel("ReadMe", 
             mainPanel( 
              h4("The site is providing a tool to dynamically plot data between two selected variables. ")))
                                                 

))