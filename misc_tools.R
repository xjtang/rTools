# Misc Tools
# Version 1.1
# By Xiaojing Tang
# Create On: 11/13/2014
# Last Update: 11/29/2014
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
# Updates of Version 1.1 - 11/29/2014
#   1.Added day only option for dateYoDOY.
#
# Created on Github on 11/13/2014, check Github Commits for updates afterwards.
#----------------------------------------------------------------

# print progress
showProgress <- function(i,n,step){
  percent <- floor(i/n*100)
  if((((i-1)/n*100)%/%step)<((i/n*100)%/%step)){
    cat(percent,'%\n')
  }
  return(percent)
}

#--------------------------------------

# calculate day of year from date
dateToDOY <- function(year,month,day,dayOnly=F){

  # check year
  if(year<0){
    cat('check the year\n')
    return(0)
  }
  
  # 365 days or 366 days in that year
  if((year%%4==0&year%%100!=0)|year%%400==0){
    feb <- 29
  }else{
    feb <- 28
  }
  dom <- c(31,feb,31,30,31,30,31,31,30,31,30,31)
  
  # check month
  if(month>12|month<1){
    cat('check the month\n')
    return(0)
  }
  
  # check day
  if(day<1|day>dom[month]){
    cat('check the day\n')
    return(0)
  }
  
  # calculate doy
  if(dayOnly){year=0}
  if(month==1){
    doy <- year*1000 + day
  }else{
    doy <- year*1000 + sum(dom[1:(month-1)]) + day
  }
  
  # done
  return(doy)
}

#--------------------------------------

# calculate the date from day of year
doyToDate <- function(doy){
  
  # get year
  year <- floor(doy/1000)
  
  # check the doy
  if(year<0){
    cat('invalid doy\n')
    return(0)
  }
  
  # 365 days or 366 days in that year
  if((year%%4==0&year%%100!=0)|year%%400==0){
    feb <- 29
  }else{
    feb <- 28
  }
  dom <- c(31,feb,31,30,31,30,31,31,30,31,30,31)
  
  # get total days
  tday <- doy-year*1000
  
  # check total days
  if(tday<=0|tday>sum(dom)){
    cat('invalid doy\n')
    return(0)
  }
  
  # calculate month and day
  for(i in 1:12){
    tday <- tday-dom[i]
    if(tday<=0){
      month <- i
      day <- tday+dom[i]
      break
    }
  }
  
  # done
  date <- c(year,month,day)
  return(date)
}
