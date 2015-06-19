require(shiny)
shinyUI(pageWithSidebar(
    headerPanel("New Fake Name"),
    sidebarPanel(
        h3('Answer these questions to get your new unique fake name'),
        textInput('text1','Enter your First Pets Name'),
        textInput('text2','Enter the first Street Name you remember'),
        selectInput("text3", "Select Month of Birth", 
           c("January"="Spotty-Bottom","February"="Bruised-Bottom","March"="Long-Bottom","April"="Top-Bottom","May"="Orange-Bottom","June"="Smacked-Bottom","July"="Hot-Bottom","August"="Sticky-Bottom","September"="Blue-Bottom","October"="Big-Bottom","November"="Shiny-Bottom","December"="Rock-Bottom")),
        actionButton("goButton","Name Me!")
    ),
    mainPanel(
        h3('New Fake Name'),
        p('Sick of your name? Get a new unique fake name in 3 easy steps.  Just fill in the blanks, and your new fake name will be revealed!'),
        h4('Your new name is'),
        verbatimTextOutput("newname")
    )
))