
#Set's working directory
setwd("/Users/Kruti/Dropbox/Yelp")

#Loads library to read JSON file
library(jsonlite)
library(tibble)
library(stringr)
library(dplyr)

#Loads
business.data <- stream_in(file("/Users/Kruti/Dropbox/DataSets/Yelp/business.json"))
data.path <- "/Users/Kruti/Dropbox/DataSets/Yelp"
user.path <- paste0(data.path, "/user.json")

#Flattening makes the data structure easier to grasp
business.data.flat <- flatten(business.data)

#Convert to tbl 
business.data.tbl <- as_data_frame(business.data.flat)

#Filters data by Coffee & Tea category
business.data.tbl %>% filter(str_detect(categories, "Coffee & Tea"))

