library(shiny)
#library(shinyapps)
shinyUI(
  navbarPage("Shiny Application",
             tabPanel(" Interactive Analysis",
                      fluidPage(
                        titlePanel("Exploring the relationship between MPG and other available variables"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Variable:",
                                        c("Number of cylinders" = "cyl",
                                          "Displacement (cu.in.)" = "disp",
                                          "Horsepower" = "hp",
                                          "Rear axle ratio" = "drat",
                                          "Weight" = "wt",
                                          "Quarter Mile Time" = "qsec",
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
             tabPanel("Check out the Data",
                      h2("Please read below for more information on the MTCARS dataset"),
                      hr(),
                      h3("MTCARS Dataset"),
                      helpText("The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models)",
                               "A data frame with 32 observations on 11 variables"),
                      h3("Important"),
                      p("Features Include: Miles per Gallon, Number of Cylinders, Displacement, Horsepower, Rear Axel Ratio, Weight, Quarter Mile Time, Transmission, Number of Gears, Number of Carburetors"),
                      
                      a("https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html")
             ),
             tabPanel("More Data Detail",
                      h2("Motor Trend Car Road Tests"),
                      hr(),
                      h3("Description"),
                      helpText("The data was extracted from the 1974 Motor Trend US magazine,",
                               " and comprises fuel consumption and 10 aspects of automobile design and performance",
                               " for 32 automobiles (1973–74 models)."),
                      h3("Format"),
                      p("A data frame with 32 observations on 11 variables."),
                      
                      p("  [, 1]   mpg         Miles/(US) gallon"),
                      p("  [, 2]	 cyl	 Number of cylinders"),
                      p("  [, 3]	 disp	 Displacement (cu.in.)"),
                      p("  [, 4]	 hp	 Gross horsepower"),
                      p("  [, 5]	 drat	 Rear axle ratio"),
                      p("  [, 6]	 wt	 Weight (lb/1000)"),
                      p("  [, 7]	 qsec	 1/4 mile time"),
                      p("  [, 8]	 vs	 V/S"),
                      p("  [, 9]	 am	 Transmission (0 = automatic, 1 = manual)"),
                      p("  [,10]	 gear	 Number of forward gears"),
                      p("  [,11]	 carb	 Number of carburetors"),
                      
                      h3("Source"),
                      
                      p("Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391–411.")
             ),
             tabPanel("Go back to my Github repository",
                      a("https://github.com/JoseRodriguezDiaz/developing_data_products"),
                      hr(),
                      h2("Thank you for viewing"),
                      h2("Github Repository: developing_data_products")
             )
  )
)