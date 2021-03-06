---
title       : Credit Rating Presentation
subtitle    : A Shiny application that predicts Credit Rating Score
author      : Ramesh Natarajan
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Summary

The project involves creating a Shiny Application for a user to predict Credit Rating score of a person based on age and income.

The user can input age and income to make a real time prediction of credit rating score.

--- .class #id 

## Algorithm and Training Dataset

The Prediction Alogorithm user a linear regression model to predict the score based on age and income. 
 
The model has been trained on dataset obtained from "An Introduction to Statistical Learning, with applications in R"  (Springer, 2013) with permission from the authors: G. James, D. Witten,  T. Hastie and R. Tibshirani. 


The application only uses age, credit and income from the data set for the model.

---
## Prediction code and sample result

Here'a code for the algorithm along with the results for a sample data.



```r
  credit <- read.csv("http://www-bcf.usc.edu/~gareth/ISL/Credit.csv", header = TRUE)
  
  credit <- subset(x = credit, select=c("Income", "Age", "Rating"))
  
  sample.age <- 34
  sample.income <- 52
  data <- data.frame(Income = c(sample.income), Age = c(sample.age), Rating = c(""))

print(as.numeric(predict(lm(Rating ~ ., credit), data)))
```

```
## [1] 385.8276
```


---

## Shiny Application

Following is a screen of the application

<img class=center src=./assets/img/appss.png height=400>

... and the link to the application can be found [here](https://ranata.shinyapps.io/Assign/)
