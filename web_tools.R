# Web Tools
# Version 1.0
# By Xiaojing Tang
# Create On: 11/3/2014
# Last Update: 11/3/2014
#
# Input Arguments: 
#   See specific function.
# 
# Output Arguments: 
#   See specific function.
#
# Usage: 
#   See specific function.
#
# Version 1.0 - Unknown
#   Set of small tools for web related processes
#
#----------------------------------------------------------------

# libraries
library(RCurl)

# download binary file 
binDownload <- function(url,output){
  bin <- getBinaryURL(url)
  writeBin(bin,output)
  return(0)
}

# source a url (by Tony Breyal originally)
sourceURL <- function(url){
  script <- getURL(url,ssl.verifypeer=F)
  eval(parse(text=script),envir=.GlobalEnv)
  return(0)
}
