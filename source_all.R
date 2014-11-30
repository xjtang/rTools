# source_all.R
# Version 1.1
#
# Project: Fusion
# By Xiaojing Tang
# Created On: 11/13/2014
# Last Update: 11/30/2014
#
# Input Arguments: NA
#   
# Output Arguments: NA
#
# Usage: 
#   1.Install package RCurl and bitops.
#   2.Source this script
#
# Version 1.0 - 11/13/2014
#   This script sources all tools in this repo.
#   
# Updates of Version 1.1 - 11/30/2014
#   1.the script now removes unneeded variable.
#
# Created on Github on 11/13/2014, check Github Commits for updates afterwards.
#----------------------------------------------------------------

# library
library(RCurl)

# sourcing
script <- getURL('https://raw.githubusercontent.com/xjtang/rTools/master/web_tools.R',ssl.verifypeer=F)
eval(parse(text=script),envir=.GlobalEnv)
rm(script)
sourceURL('https://raw.githubusercontent.com/xjtang/rTools/master/text_tools.R')
sourceURL('https://raw.githubusercontent.com/xjtang/rTools/master/misc_tools.R')

cat('rTools(by xjtang) loaded.\n')

# done
