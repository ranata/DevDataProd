# This function predicts credit rating of an individual based on age and income.
# The predictor uses a linear regression model that was fit on a data set taken from 
# "An Introduction to Statistical Learning, with applications in R"  (Springer, 2013) with permission from the authors: G. James, D. Witten,  T. Hastie and R. Tibshirani

creditScore <- function(age, income) {
  
  # download data set URL for training the model
  credit <- read.csv("http://www-bcf.usc.edu/~gareth/ISL/Credit.csv", header = TRUE)
  
  # for the purpose of this prediction, restrict attributes to age, income and rating
  credit <- subset(x = credit, select=c("Income", "Age", "Rating"))
  
  # create a dataframe to hold the test dat from the UI
  data <- data.frame(Income = c(income), Age = c(age), Rating = c(""))
  return(as.numeric(predict(lm(Rating ~ ., credit), data)))

}

shinyServer(
  function(input, output) {
    output$oage <- renderPrint({input$age})
    output$oincome <- renderPrint({input$income})
    output$ocscore <- renderPrint({creditScore(input$age, input$income)})
  }
)



