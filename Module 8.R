library(plyr)
library(data.table)
library(dplyr)

data <- read.table("Assignment 6 Dataset.txt", header = TRUE, sep = ",")

StudentAverage = ddply(data,"Sex",transform,Grade.Average=mean(Grade))

sex = data$Sex
data %>% count(Sex, sort = TRUE)

i_students <- subset(data, grepl("i", data$Name, ignore.case=T))

write.csv(i_students, "/Users/matthewdavis/Desktop/Data/LIS 4370/i_students.csv")


