library(shiny)

# function that calculates the mobility as probability given father's and son's status
cMob <- function(fSt,sSt) {

data <- occupationalStatus

# adjust dimnames according to the reference
names(dimnames(data)) <- c("son's occupation", "father's occupation")

# total number of observations given a father's status
totN <- rowSums(data)

# probability of the outcome for the selected pair
result <- data[fSt, sSt]/totN[fSt]

return (result)
}


shinyServer(
 function(input, output) {
	output$mobProb <- renderPrint(paste0(round(cMob(input$father, input$son),2)*100,'%'))
 }
)