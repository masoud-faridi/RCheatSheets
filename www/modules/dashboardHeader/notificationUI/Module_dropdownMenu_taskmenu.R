# The taskItem module -------------------------------------------------
taskItemUI_dropdownMenu = function(id) {
  
  ns = NS(id)
  
  dropdownMenuOutput(ns('taskItems'))
}
taskItemServer_dropdownMenu = function(input, output, session) {
  taskItem_list = reactiveVal()
  output$taskItems = renderMenu({
    validate(need(taskItem_list(), message = FALSE))
    dropdownMenu(type = 'tasks', badgeStatus = 'success', .list = taskItem_list())
  })
  
  return(list(
    push_taskItem = function(message) {
      pf = parent.env(environment())
      pf$taskItem_list(c(pf$taskItem_list(), list(message)))
    },
    pop_taskItem = function() {
      pf = parent.env(environment())
      pf$taskItem_list(taskItem_list()[-length(pf$taskItem_list())])
    }
  ))
}


#observeEvent(input$send_message, {
#    taskItemModule_dropdownMenu$push_taskItem(
#taskItem(value = 90, color = "green", sprintf('Tab 1: Pushed a message at %s', Sys.time()))
#) 
#  }) 
#  observeEvent(input$remove_message, {
#    taskItemModule$pop_taskItem()
#  })
