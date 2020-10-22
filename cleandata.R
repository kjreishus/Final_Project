#load and clean data
#! /usr/bin/env Rscript

library('dplyr')
library('ggplot2')
library('tidyverse')
projectdata<-read.csv(file ='RawData.csv',na.strings=c("", "NA"))
hw3<- projectdata %>%
  mutate(DATESTAMP=as.Date(DATESTAMP))
hw3<-subset(hw3, COUNTY=="ALL GEORGIA")
write.csv(x=hw3, file="data.csv")