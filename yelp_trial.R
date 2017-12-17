
#Set's working directory
setwd("/Users/Kruti/Dropbox/Yelp")

#Loads library to read JSON file
library(rjson)

#Loads
business.data <- fromJSON(file = "/Users/Kruti/Dropbox/DataSets/Yelp/business.json")
data.path <- "/Users/Kruti/Dropbox/DataSets/Yelp"
user.path <- paste(data.path, "/user.json", sep="")


