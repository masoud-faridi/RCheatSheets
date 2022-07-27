# The notification module -------------------------------------------------
notificationUI_dropdownMenu = function(id) {
  
  ns = NS(id)
  
  dropdownMenuOutput(ns('notifications'))
}
notificationServer_dropdownMenu = function(input, output, session) {
  notification_list = reactiveVal()
  output$notifications = renderMenu({
    validate(need(notification_list(), message = FALSE))
    dropdownMenu(type = 'notifications', badgeStatus = 'warning', .list = notification_list())
  })
  
  return(list(
    push_notification = function(message) {
      pf = parent.env(environment())
      pf$notification_list(c(pf$notification_list(), list(message)))
    },
    pop_notification = function() {
      pf = parent.env(environment())
      pf$notification_list(notification_list()[-length(pf$notification_list())])
    }
  ))
}


#observeEvent(input$send_message, {
#    notificationModule$push_notification(notificationItem(sprintf('Tab 1: Pushed a notification at %s', Sys.time())))
#  }) 
#  observeEvent(input$remove_message, {
#    notificationModule$pop_notification()
#  })
#notificationModule_dropdownMenu$push_notification(notificationItem(sprintf('Tab 1: Pushed a notification at %s', Sys.time())))

