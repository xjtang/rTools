rTools
======

A Set of Small Tools in R

About
------

This repo. includes a set of small but useful tools written in R. These tools were created during specific project, but seems to be commonly used among multiple projects. Therefore I created this repo. for the convenience of future projects.

Content
------

- text_tools: A set of tools for text editing and manipulating.
- web_tools: A set of tools for web related processes.
- misc_tools: A set of miscellaneous tools for various purposes.  
- source_all: A script to source all files inthis repo.  

How to Use
-------

    library(RCurl)  
    script <- getURL('https://raw.githubusercontent.com/xjtang/rTools/master/source_all.R',ssl.verifypeer=F)  
    eval(parse(text=script),envir=.GlobalEnv)  

Requirement
------

R (2.15.2 or higher)  
RCurl Package (1.95-4.3 or higher)
