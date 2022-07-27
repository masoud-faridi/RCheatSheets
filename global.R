library(config)
library(DBI)
library(dbplyr)
library(dbplot)
library(dplyr)
library(ggplot2)
library(keyring)
library(modeldb)
library(openxlsx)
library(plotly)
library(shiny)
library(shinydashboard)
library(shinymanager)
library(shinyjs)
library(shinythemes)
library(shinydashboardPlus)





############
# call modules
source("www\\modules\\dashboardHeader\\notificationUI\\Module_dropdownMenu_notification.R")
source("www\\modules\\dashboardHeader\\notificationUI\\Module_dropdownMenu_message.R")
source("www\\modules\\dashboardHeader\\notificationUI\\Module_dropdownMenu_taskmenu.R")


#cat(paste("\n function started:",match_call,"\n ",Sys.time(),"\n"))
#on.exit({  cat(paste("\n function finished:",match_call,"\n ",Sys.time(),"\n"))})


