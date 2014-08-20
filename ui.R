shinyUI(pageWithSidebar(
headerPanel("Intergenerational Social Mobility - Occupational Status"),
sidebarPanel(
	h1('Mobility Table'),
	h4('Select the father\'s and the son\'s occupational status ranked on a scale from 1 to 8, where 1 is the highest status and 8 the lowest, and you will see the probability of the son\'s status given the father\'s'),
	h3('Enter the data'),
	numericInput('father', 'Father\'s Occupational Status: ', 1, min = 1, max = 8, step = 1),
	numericInput('son', 'Son\'s Occupational Status: ', 1, min = 1, max = 8, step = 1)
	
),
mainPanel(

h4('Probability'),
verbatimTextOutput('mobProb')

)
))