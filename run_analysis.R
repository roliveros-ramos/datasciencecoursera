
source("run_functions.R")

train = getData("train")
test  = getData("test")
full = merge(train, test, all=TRUE)

variables = read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)[,2]
activities = read.table("UCI HAR Dataset/activity_labels.txt")
names(activities) = c("activity", "activityName")
ind1 = grep("mean()", x = variables)
ind2 = grep("std()", x = variables)
indn = sort(c(ind1, ind2))
ind = paste0("var", indn)

newData = full[, c("subject", "activity", ind)]

names(newData) = c("subject", "activity", variables[indn])
newData = merge(newData, activities, all=TRUE)

last = aggregate(newData, by=list(newData$activityName, newData$subject), FUN=mean)
last = last[, -c(3,4, ncol(last))]
names(last)[1:2] = c("activity", "subject")

write.table(last, file="final_dataset.txt", row.names=FALSE)
