library(shiny)

shinyUI(
  pageWithSidebar(

    headerPanel(h3("Credit Rating Prediction")),
    
    sidebarPanel(
      sliderInput('age', 'Age (Years)', 30, min = 20, max = 70, step = 1),
      sliderInput('income', 'Income (Thousand Dollars)', 40, min = 10, max = 200, step = 5),
      submitButton('Predict')
    ),
    mainPanel(
      h3('Credit Rating'),
      hr(),
      p("This application predicts credit rating of a person based on age and income."),
      p("Use the sliders on the left panel to set age and income and click predict button to display predicted credit rating displayed below."),
      h4('Age (Years)'),
      verbatimTextOutput("oage"),
      h4('Income (Thousand Dollars)'),
      verbatimTextOutput("oincome"),
      h4('Predicted Credit Score'),
      verbatimTextOutput("ocscore")
    )
  )
)
