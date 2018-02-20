# common utility functions
# created February 18, 2018
# written by Steve Simon

library(tidyverse)
mnsd <- function(x, digits=2) {

  # This function takes a vector and produces
  # a string of the form mn +/- sd. By default
  # it rounds to two significant digits.
  
  x                                    %>%
    mean(na.rm=TRUE)                   %>%
    signif(digits)                     -> mn_x
  
  x                                    %>%
    sd(na.rm=TRUE)                     %>%
    signif(digits)                     -> sd_x
  
  paste(mn_x, "+/-", sd_x)
}
