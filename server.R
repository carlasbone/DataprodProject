require(shiny)
shinyServer(
    function(input,output){
        
        output$newname <- renderText({
            input$goButton
            isolate(paste(input$text1,input$text2,input$text3)) 
            
        })
    }
)