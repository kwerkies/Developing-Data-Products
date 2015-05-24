library(shiny)
shinyUI(pageWithSidebar(
        headerPanel('Simply Shiny application: Prediction of job happiness'),
        sidebarPanel(
                radioButtons("hrs",
                        "Please indicate how many hours you work every week:",
                        c("Less than 45"=1,
                        "Between 45 and 55"=2,
                        "More than 55"=3)),
                numericInput('meaning',
                             'How meaningful do you think your job is, on a scale of 1 to 10 (with 10 being the most meaningful)?',
                             5,
                             min=0,
                             max=10,
                             step=1),
                radioButtons("pay",
                        "How much is your monthly pay?",
                        c("Less than $1500"=1,
                        "Between $1500 and $2500"=2,
                        "Between $2500 and $4000"=3,
                        "More than $4000"=4)),
                submitButton("GO!")
        ),
        mainPanel(
                h3('Prediction of your job happiness'),
                h5('This simple shiny application will allow you (the user) to predict how happy you are at your job.
                   Three inputs are requested on the left side panel: how long you work every week, 
                   how much meaning you derive from your job,
                   and how much you earn.'),
                h5('Our prediction function will indicate 1 if you are happy at your job and 0 if you are completely unhappy. Your result is:'),
                verbatimTextOutput("prediction")
        )
))