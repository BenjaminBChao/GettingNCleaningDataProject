
#R Studio Preparation: Data importing and R package loading
library(data.table)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "Data.zip", method = "curl")
unzip("Data.zip")
testData <- read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE)
testData_act <- read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE)
testData_sub <- read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)
trainData <- read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE)
trainData_act <- read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE)
trainData_sub <- read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE)

#Requirement3: Uses descriptive activity names to name the activities in the data set
activities <- read.table("./UCI HAR Dataset/activity_labels.txt",header=FALSE,colClasses="character")
testData_act$V1 <- factor(testData_act$V1,levels=activities$V1,labels=activities$V2)
trainData_act$V1 <- factor(trainData_act$V1,levels=activities$V1,labels=activities$V2)

#Requirement4: Appropriately label the data set with descriptive activity names
features <- read.table("./UCI HAR Dataset/features.txt",header=FALSE,colClasses="character")
colnames(testData) <- features$V2
colnames(trainData) <- features$V2
colnames(testData_act) <- c("Activity")
colnames(trainData_act) <- c("Activity")
colnames(testData_sub) <- c("Subject")
colnames(trainData_sub) <- c("Subject")

#Requirement1: Merges the taining and the test sets to create one data set.
testData <- cbind(testData,testData_act)
testData <- cbind(testData,testData_sub)
trainData <- cbind(trainData,trainData_act)
trainData <- cbind(trainData,trainData_sub)
ConsolidatedData <- rbind(testData,trainData)

#Requirement2: Extract only the measurements on the mean and standard deviation for each measurement
ConsolidatedData_mean <- sapply(ConsolidatedData,mean,na.rm=TRUE)
ConsolidatedData_sd <- sapply(ConsolidatedData,sd,na.rm=TRUE)

#Requirement5: Create/write a second, independent tidy data set with the average of each variable for each activity and each subject.
dt <- data.table(ConsolidatedData)
TidyData <- dt[, lapply(.SD,mean), by ="Activity,Subject"]
write.table(TidyData, file="TidyData.csv", sep=",", row.names = FALSE)


