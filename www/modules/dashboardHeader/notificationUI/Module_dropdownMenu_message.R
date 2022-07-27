# The message module -------------------------------------------------
messageUI_dropdownMenu = function(id) {
  
  ns = NS(id)
  
  dropdownMenuOutput(ns('messages'))
}
messageServer_dropdownMenu = function(input, output, session) {
  message_list = reactiveVal()
  output$messages = renderMenu({
    validate(need(message_list(), message = FALSE))
    dropdownMenu(type = 'messages', badgeStatus = 'success', .list = message_list())
  })
  
  return(list(
    push_message = function(message) {
      pf = parent.env(environment())
      pf$message_list(c(pf$message_list(), list(message)))
    },
    pop_message = function() {
      pf = parent.env(environment())
      pf$message_list(message_list()[-length(pf$message_list())])
    }
  ))
}


#observeEvent(input$send_message, {
#    messageModule$push_message(messageItem(sprintf('Tab 1: Pushed a message at %s', Sys.time())))
#  }) 
#  observeEvent(input$remove_message, {
#    messageModule$pop_message()
#  })
