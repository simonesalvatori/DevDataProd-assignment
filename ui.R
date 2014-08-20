library(markdown)

shinyUI(navbarPage("Intergenerational Social Mobility - Occupational Status",
                   tabPanel("Predictor",
                            sidebarLayout(
                              
                              # Sidebar with a slider input
                              sidebarPanel(
                                sliderInput('father', 'Father\'s Occupational Status: ',
                                            min = 1,
                                            max = 8,
                                            value = 1),
                                sliderInput('son', 'Son\'s Occupational Status: ',
                                            min = 1,
                                            max = 8,
                                            value = 1)
                                #numericInput('father', 'Father\'s Occupational Status: ', 1, min = 1, max = 8, step = 1),
                                #numericInput('son', 'Son\'s Occupational Status: ', 1, min = 1, max = 8, step = 1)
                              ),
                              
                              # Show a plot of the generated distribution
                              mainPanel(
                                h4('Probability'),
                                verbatimTextOutput('mobProb')
                              )
                            )
                            ),
                   tabPanel("About",
                            includeMarkdown("README.md"))
))