# Text Tools
# Version 1.1
# By Xiaojing Tang
# Create On: Unknown
# Last Update: 10/30/2014
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
#   Set of small tools for text editing and manioulating
#
# Update of Version 1.1 - 9/12/2014
#   1.Updated comments
#
# Released on Github on 10/30/2014, check Github Commits for updates afterwards.
#----------------------------------------------------------------

# Return the right i letters of a string
strRight <- function(x,i){
  return(substr(x,nchar(x)-(i-1),nchar(x)))
}

#--------------------------------------

# Return the left i letters of a string
strLeft <- function(x,i){
  return(substr(x,0,i))
}

#--------------------------------------

# Trim the right i letters of a string
trimRight <- function(x,i){
  return(substr(x,1,nchar(x)-i))
}

#--------------------------------------

# Trim the right i letters of a string
trimLeft <- function(x,i){
  return(substr(x,i+1,nchar(x)))
}

#--------------------------------------

# Trim leading and trailing spaces
trimSpace <- function(x){
  gsub("^\\s+|\\s+$","",x)
}
