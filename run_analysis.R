rm(list=ls())
library(dplyr)

# You may edit the path where you put data and R files
path <- "E:\\Coursera\\Data Science Specialization\\Getting and Cleaning Data\\Project"
if(!file.exists(path))    dir.create(path)
setwd(path)

# Read in all relevant training and testing data sets
X_train <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt")
y_train <- read.table(".\\UCI HAR Dataset\\train\\y_train.txt")
subject_train <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt")
X_test <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt")
y_test <- read.table(".\\UCI HAR Dataset\\test\\y_test.txt")
subject_test <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt")

# Read in the table with 561 features names
features <- read.table(".\\UCI HAR Dataset\\features.txt", stringsAsFactors=FALSE)

# Combine the datasets with activities performed, subjects who performed the 
# activities, and the 561 features for training and testing, respectively.
X_train_full <- cbind(y_train, subject_train, X_train)
X_test_full <- cbind(y_test, subject_test, X_test)

# Create column names for both training and testing datasets
colnames(X_train_full) <- c("activity", "subject", features[,2])
colnames(X_test_full) <- c("activity", "subject", features[,2])

# Merge two datasets and sort them by activity and subject
mergedData <- rbind(X_train_full, X_test_full)

# Obtain the indices of mean and std.
# fixed=TRUE matches mean() and std() exactly, so meanFreq() will not be included
index_mean <- grep("mean()", names(mergedData), fixed=TRUE)
index_std <- grep("std()", names(mergedData), fixed=TRUE)
index <- c(1,2,sort(union(index_mean, index_std)))

# Subset the columns with only mean and std
subData <- mergedData[,index]
# Sort the dataset by activity, breaking ties by subject
subData <- arrange(subData, activity, subject)

# Use descriptive activity names
subData <- mutate(subData, activity=factor((activity), labels=c("walking",
"walkingupstairs","walkingdownstairs","sitting","standing","laying")))
subData$activity <- as.character(subData$activity)

# Remove all non-letter characters
names(subData) <- gsub("[^a-zA-Z]", "", names(subData))
# Remove duplicate "Body" in the last few variables
names(subData) <- gsub("BodyBody", "Body", names(subData))
# Convert variable names to lower case
names(subData) <- tolower(names(subData))

# Take the average of each measurement by activities and subjects
avgData <- aggregate(subData[,3:68], list(subData$activity, subData$subject), FUN=mean)
# Label the columns appropriately
names(avgData)[1:2] <- c("activity","subject") 
for(i in 3:68){
	names(avgData)[i] <- paste("avg",names(avgData)[i],sep="")
}

# Write avgData into a txt file
write.table(avgData, ".\\avgData.txt", row.name=FALSE)

