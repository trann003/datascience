# Data Import and Cleaning
library(rstudioapi)
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

raw_df <- read.csv("week3.csv")
raw_df$timeStart <- as.POSIXlt(raw_df$timeStart) 
raw_df$timeEnd <- as.POSIXlt(raw_df$timeEnd)
clean_df <- raw_df[which(raw_df$timeStart > as.POSIXlt("2017-06-30") ),]
clean_df <- clean_df[which(clean_df$q6 == 1),]

# Analysis
clean_df$timeSpent <- difftime(time1 = clean_df$timeEnd, time2 = clean_df$timeStart)
hist(as.numeric(clean_df$timeSpent))
frequency_tables_list <- lapply(clean_df[,5:14], table)
lapply(frequency_tables_list, barplot)
length(clean_df[which(clean_df$q1 >= clean_df$q2 & clean_df$q2 != clean_df$q3),])
for (i in frequency_tables_list) {
  barplot(i)
}
