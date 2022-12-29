#------------------Load packages--------------
#install.packages("tidyverse")
#install.packages("ggplot2")
#install.packages("hablar")

#library(ggplot2)
#library(dplyr)
#library(hablar)
#library(magrittr)
#library(tidyverse)
#library(knitr)
#library(lubridate)

#------------------read in data--------------
# read in 
iran <- read.csv("iran_data.csv")
# convert to local data frame
iran <- tibble::as_tibble(iran)

str(iran)
iran$Date <- mdy(iran$Date)

ggplot(data=iran, aes(x=Date, y=Death.Toll.of.Protestors)) +
         geom_col()

