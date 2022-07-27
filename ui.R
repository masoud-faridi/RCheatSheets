#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)


########  sources




###########################
# (1) dashboardHeader start
########################
header <- dashboardHeader(
  title = ' Data Manipulation in R using packages',
  #tags$li(class = "dropdown",
  #        tags$a(href="https://www.cybersec.ir/", target="_blank", 
  #               tags$img(height = "20px", alt="cybersec", src="icons\\icon_1_fanavaran.png")          )
  #),
  #tags$li(class = "dropdown",
  #        tags$a(href="https://rahvar120.ir/", target="_blank", 
  #               tags$img(height = "20px", alt="cybersec", src="icons\\icon_2_police.png")          )
  #),
  notificationUI_dropdownMenu('notificationUI'),
  messageUI_dropdownMenu('messageUI'),
  taskItemUI_dropdownMenu('taskItemUI')
  
   )
  
 
 
###########################
# (1) dashboardHeader end
###########################
###########################




########################
# dashboardSidebar 1 start
########################
sidebar <- 
  dashboardSidebar(
    
    collapsed = FALSE, 
    div(htmlOutput("welcome"), style = "padding: 20px"),
    
    #####################    sidebarMenu    ##################### 
    sidebarMenu(
      
      menuItem("apply" ,icon = icon("database"),
               menuSubItem("menuItem_1_1", tabName ="menuItem_1_1_tabName" ,icon = icon("search")),
               menuSubItem("menuItem_1_2", tabName ="menuItem_1_2_tabName" ,icon = icon("plus-square")),
               menuSubItem("menuItem_1_3", tabName ="menuItem_1_3_tabName" ,icon = icon("exchange-alt")),
               menuSubItem("menuItem_1_4", tabName ="menuItem_1_4_tabName" ,icon = icon("edit")),
               menuSubItem("menuItem_1_5", tabName ="menuItem_1_5_tabName" ,icon = icon("trash-alt")),
               menuSubItem("menuItem_1_6", tabName ="menuItem_1_6_tabName" ,icon = icon("info-circle"))
      )
    )
    #################################################################################### 
    #################################################################################### 
    ,
    #####################    sidebarMenu    ##################### 
    sidebarMenu(
    
    menuItem("dplyr" ,icon = icon("database"),
             menuSubItem("menuItem_2_1", tabName ="menuItem_2_1_tabName", icon = icon("search")),
             menuSubItem("menuItem_2_2", tabName ="menuItem_2_2_tabName", icon = icon("plus-square"))
             
    )
    )
    #################################################################################### 
    #################################################################################### 
    ,
    #####################    sidebarMenu    ##################### 
    sidebarMenu(
      
      menuItem("tidyr" ,icon = icon("database"),
               menuSubItem("menuItem_3_1", tabName ="menuItem_3_1_tabName", icon = icon("search")),
               menuSubItem("menuItem_3_2", tabName ="menuItem_3_2_tabName", icon = icon("plus-square"))
               
      )
    )
    #################################################################################### 
    ,
    #####################    sidebarMenu    ##################### 
    sidebarMenu(
      
      menuItem("tibble" ,icon = icon("database"),
               menuSubItem("menuItem_4_1", tabName ="menuItem_4_1_tabName", icon = icon("search")),
               menuSubItem("menuItem_4_2", tabName ="menuItem_4_2_tabName", icon = icon("plus-square"))
               
      )
    )
    #################################################################################### 
    ,
    #####################    sidebarMenu    ##################### 
    sidebarMenu(
      
      menuItem("lubricate" ,icon = icon("database"),
               menuSubItem("menuItem_5_1", tabName ="menuItem_5_1_tabName", icon = icon("search")),
               menuSubItem("menuItem_5_2", tabName ="menuItem_5_2_tabName", icon = icon("plus-square"))
               
      )
    )
    #################################################################################### 
    ,
    #####################    sidebarMenu    ##################### 
    sidebarMenu(
      
      menuItem("stringer" ,icon = icon("database"),
               menuSubItem("menuItem_6_1", tabName ="menuItem_6_1_tabName", icon = icon("search")),
               menuSubItem("menuItem_6_2", tabName ="menuItem_6_2_tabName", icon = icon("plus-square"))
               
      )
    )
    #################################################################################### 
    ,
    #####################    sidebarMenu    ##################### 
    sidebarMenu(
      
      menuItem("tidyverse" ,icon = icon("database"),
               menuSubItem("menuItem_7_1", tabName ="menuItem_7_1_tabName", icon = icon("search")),
               menuSubItem("menuItem_7_2", tabName ="menuItem_7_2_tabName", icon = icon("plus-square"))
               
      )
    )
    #################################################################################### 
    ,
    #####################    sidebarMenu    ##################### 
    sidebarMenu(
      
      menuItem("reshape2" ,icon = icon("database"),
               menuSubItem("menuItem_8_1", tabName ="menuItem_8_1_tabName", icon = icon("search")),
               menuSubItem("menuItem_8_2", tabName ="menuItem_8_2_tabName", icon = icon("plus-square"))
               
      )
    )
    #################################################################################### 
    
  )

########################
# dashboardSidebar 1 end
########################
########################


########################
# dashboardBody start
########################
body <-dashboardBody( tabItems(
  
 
  #tabItem(tabName =  ui_global_variable$mI_1_1$ID, mf_modules_mI_1_1_uiOutput_db_searchDB_UI("mI_1_1_uiOutput_modules"))
  #uiOutput("mI_1_1_uiOutput"))
  
  
  
))
########################
# dashboardBody end
########################
########################




##########################################
##########################################
##########################################  
##########################################
##########################################
##########################################
#shinyUI(
#secure_app(
  ####################################
  ####################################
  ########## START shinyUI ###########
  ########## START shinyUI ###########
  ####################################
  
  
ui<-  dashboardPage(header, sidebar, body)
  
  
  ####################################
  ########## END shinyUI #############
  ########## END shinyUI #############
  ####################################
shinyUI(
#secure_app(
  ui
#  , enable_admin = TRUE
)  
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################