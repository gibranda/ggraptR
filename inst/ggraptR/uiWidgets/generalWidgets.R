# dataset drop-down options 
output$datasetCtrl <- renderUI({
  initDf <- getInitialArg('initialDf')
  selectInput("dataset", "Dataset", choices=rawDatasetNames(), initDf)
})

# reactive  option
output$reactiveCtrl <- renderUI({
  checkboxInput("reactive", label="Enable reactivity", value=TRUE)
})

# upon-manual-submit button
output$submitCtrl <- renderUI({
  bsButton("submit", label="Submit", icon=icon("refresh"), type="action", block=TRUE)
})

output$plotLog <- renderText({
  paste(reactVals$log, collapse='<hr>')
})
