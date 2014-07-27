#R Studio Preparation: Data importing and R package loading
library(data.table)
library(reshape2)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "Data.zip", method = "curl")
unzip("Data.zip")
testData <- data.table(read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE))
ActivityTest <- data.table(read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE))
SubjectTest<- data.table(read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE))
trainData <- data.table(read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE))
ActivityTrain <- data.table(read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE))
SubjectTrain <- data.table(read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE))

#Merge the training and the test data sets
#First, we combine rows 
dtSubject <- rbind(SubjectTrain, SubjectTest)
setnames(dtSubject, "V1", "subject")
dtActivity <- rbind(ActivityTrain, ActivityTest)
setnames(dtActivity, "V1", "activityNum")
ConsolidatedData <- rbind(testData, trainData)
#Now, we combine columns
dtSubject <- cbind(dtSubject, dtActivity)
ConsolidatedData <- cbind(dtSubject, ConsolidatedData)
ConsolidatedData <- data.table(ConsolidatedData)

#Set key
setkey(ConsolidatedData, subject, activityNum)


#Extract only the mean and standard deviation from measurements/attributes/features
#First, we read/load the features.txt into R

features <- data.table(read.table("./UCI HAR Dataset/features.txt", header=FALSE))
setnames(features, names(features), c("featureNum", "featureName"))

#Now, we use subset() to extarct mean & sd
features <- features[grep("mean\\(\\)|std\\(\\)", featureName)]

#Convert the colum numbers to a vector of variable names matching columns in ConsolidatedData
features$featureCode <- features[, paste0("V",featureNum)]

#Subset these variables by variable names

select <- c(key(ConsolidatedData), features$featureCode)
ConsolidatedData <- ConsolidatedData[, select, with = FALSE]

#Use Descriptive activity names

#Read activity_labels.txt file. This file will help us add descriptiove names to the activities
ActivityNames <- data.table(read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE))
setnames(ActivityNames, names(ActivityNames), c("activityNum", "activityName"))
#Merge activity labels
ConsolidatedData <- data.table(merge(ConsolidatedData, ActivityNames, by = "activityNum", all.x=TRUE))
#Add activityName as a key
setkey(ConsolidatedData, subject, activityNum, activityName)

#Melt the time-series data table and reshape it from a short & wide format to a tall & narrow format.
ConsolidatedData <- data.table(melt(ConsolidatedData, key(ConsolidatedData), variable.name = "featureCode"))

#Merge activity name
ConsolidatedData <- merge(ConsolidatedData, features[, list(featureNum, featureCode, featureName)], by = "featureCode", all.x = TRUE)
ConsolidatedData <- data.table(ConsolidatedData)
#Create Tidy Data set
tidy <- with(ConsolidatedData, tapply(value, list(subject, activityName), mean))
write.table(tidy, "tidy.txt", sep="\t")
