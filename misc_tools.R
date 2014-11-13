# Misc Tools
# Version 1.0
# By Xiaojing Tang
# Create On: 11/13/2014
# Last Update: 11/13/2014
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
# Version 1.0 - 11/13/2014
#   Set of miscellaneous tools
#
#----------------------------------------------------------------

# print progress
showProgress <- function(i,n,step){
  percent <- floor(i/n*100)
  if((((i-1)/n*100)%/%step)<((i/n*100)%/%step)){
    cat(percent,'%\n')
  }
  return(percent)
}
