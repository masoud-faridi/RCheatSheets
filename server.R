#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

keyring::key_set_with_value("R-shinymanager-key", username = "obiwankenobi", password = "12345678")
# Define server logic required to draw a histogram
shinyServer(function(input, output,session) {
  
  # call the server part
  # check_credentials returns a function to authenticate users
  res_auth <- secure_server(
    check_credentials = check_credentials(
      db="www\\user_manager\\manager.sqlite",
      passphrase = key_get("R-shinymanager-key", "obiwankenobi")
      # passphrase = "passphrase_wihtout_keyring"
    )
  )
  
  #reactiveValuesToList(res_auth)$user
  #reactiveValuesToList(res_auth)$admin
  #reactiveValuesToList(res_auth)$comment 
  #reactiveValuesToList(res_auth)$expire
  #reactiveValuesToList(res_auth)$start 
  ########################################################################
  notificationModule_dropdownMenu = callModule(notificationServer_dropdownMenu, 'notificationUI')
  messageModule_dropdownMenu = callModule(messageServer_dropdownMenu, 'messageUI')
  taskItemModule_dropdownMenu = callModule(taskItemServer_dropdownMenu, 'taskItemUI')
  
  
  
  ##########################################################
  output$welcome<-renderText({
    
    paste0("Welcome ", reactiveValuesToList(res_auth)$user,"!")
    
  })
  
  output$user_p <- renderUser({
    dashboardUser(
      name = "Masoud Faridi", 
      image = "https://i.ibb.co/47NGj4n/mf.jpg", 
      title = "shinydashboardPlus",
      subtitle = "Author", 
      footer = p("The footer", class = "text-center"),
      fluidRow(
        dashboardUserItem(
          width = 6,
          socialButton(
            href = "https://dropbox.com",
            icon = icon("dropbox")
          )
        ),
        dashboardUserItem(
          width = 6,
          socialButton(
            href = "https://github.com",
            icon = icon("github")
          )
        )
      )
    )
  })
  
  
  
 
  #output$mI_1_3_uiOutput<-renderUI({
    #notificationModule$push_notification(notificationItem(sprintf('Tab 1: Pushed a notification at %s', Sys.time())))
   # actionButton(inputId = "create_table21", label = "mI_1_2", class = "btn-info", style = "")
    
  #})
  #observeEvent(input$create_table21, {
  #  notificationModule_dropdownMenu$push_notification(notificationItem(sprintf('Tab 1: Pushed a notification at %s', Sys.time())))
    #  messageModule_dropdownMenu$push_message(messageItem("MF ",sprintf('Tab 1: Pushed a message at %s', Sys.time())))
    #taskItemModule_dropdownMenu$push_taskItem(
    #  taskItem(value = 90, color = "green", sprintf('Tab 1: Pushed a message at %s', Sys.time()))      ) 
   #   })
  
  
  # actionButton(inputId = "create_table", label = "Create table", class = "btn-info", style = "")
  #observeEvent(input$create_table, {
  #notificationModule_dropdownMenu$push_notification(notificationItem(sprintf('Tab 1: Pushed a notification at %s', Sys.time())))
  #  messageModule_dropdownMenu$push_message(messageItem("MF ",sprintf('Tab 1: Pushed a message at %s', Sys.time())))
  #taskItemModule_dropdownMenu$push_taskItem(
  #  taskItem(value = 90, color = "green", sprintf('Tab 1: Pushed a message at %s', Sys.time()))      ) 
  #  })
  
  
  ################### END UI #########################
  ################### END UI #########################
  ################### END UI #########################
  ################### END UI #########################
  
    
})







#cat(paste("\n function started:",match_call,"\n ",Sys.time(),"\n"))
#on.exit({  cat(paste("\n function finished:",match_call,"\n ",Sys.time(),"\n"))})
