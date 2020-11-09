
library(shiny)

shinyUI(
    navbarPage("Shiny App Coursera DDP",
               tabPanel("Analysis",
                        fluidPage(
                            titlePanel("The relationship between variables and MPG"),
                            sidebarLayout(
                                sidebarPanel(
                                    selectInput("variable", "Variable:",
                                                c("Number of cylinders" = "cyl",
                                                  "Displacement (cu.in.)" = "disp",
                                                  "Gross horsepower" = "hp",
                                                  "Rear axle ratio" = "drat",
                                                  "Weight (lb/1000)" = "wt",
                                                  "1/4 mile time" = "qsec",
                                                  "V/S" = "vs",
                                                  "Transmission" = "am",
                                                  "Number of forward gears" = "gear",
                                                  "Number of carburetors" = "carb"
                                                )),
                                    
                                    checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
                                ),
                                
                                mainPanel(
                                    h3(textOutput("caption")),
                                    
                                    tabsetPanel(type = "tabs", 
                                                tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                                tabPanel("Regression model", 
                                                         plotOutput("mpgPlot"),
                                                         verbatimTextOutput("fit")
                                                )
                                    )
                                )
                            )
                        )
               ),
               tabPanel(" Data Set details",
                        
                        h3("Developing Data products Course Project"),
                        helpText("Motor Trend is a magazine about the automobile industry Looking at a data set of a collection of cars. The magazine is interested in exploring the relationship",
                                 "between a set of variables and miles per gallon. They are keenly interested in the following two questions: Is an automatic or manual transmission better for MPG? Quantify the MPG difference between automatic and manual transmissions"),
                        h3("Note:"),
                        p("A data frame with 32 observations on 11 variables."),
                        
                        a("https://class.coursera.org/regmods-008")
               ),
               tabPanel("More Data Detail",
                        h2("Motor Trend Car Road Tests"),
                        hr(),
                        h3("Description"),
                        helpText("The data has been extracted from the 1974 Motor Trend US magazine,",
                                 " It comprises of fuel consumption and 10 aspects of design and performance",
                                 " for 32 automobiles."),
                        h3("Format"),
                        p("It is a data frame with 32 observations on 11 variables."),
                        
                        p("  1.  mpg   =     Miles/(US) gallon"),
                        p("  2.	 cyl   =	 Number of cylinders"),
                        p("  3.	 disp  =	 Displacement (cu.in.)"),
                        p("  4.	 hp    =     Gross horsepower"),
                        p("  5.	 drat  =	 Rear axle ratio"),
                        p("  6.	 wt    =     Weight (lb/1000)"),
                        p("  7.	 qsec  =	 1/4 mile time"),
                        p("  8.	 vs    =     V/S"),
                        p("  9.	 am    =     Transmission (0 = automatic, 1 = manual)"),
                        p("  10. gear  =	 Number of forward gears"),
                        p("  11. carb  =	 Number of carburetors"),
                        
                        h3("Source"),
                        
                        p("Building multiple regression models interactively.")
               ),
               tabPanel(h4("This was my Shiny App")
                          )
    )
)