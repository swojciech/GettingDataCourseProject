## Set working directory to main data directory and read in feature / variable file
setwd("C:/Users/swojciechowski/Desktop/Coursera Getting Data/UCI HAR Dataset")
feat <- read.table("features.txt")

## Set working directory to test group data directory and read in test data files
setwd("C:/Users/swojciechowski/Desktop/Coursera Getting Data/UCI HAR Dataset/test")
subTest <- read.table("subject_test.txt") ## test group subject data
yTest <- read.table("y_test.txt") ## test group activity data
xTest <- read.table("x_test.txt") ## test group equipment readings data

## Set working directory to train group data directory and read in train data files
setwd("C:/Users/swojciechowski/Desktop/Coursera Getting Data/UCI HAR Dataset/train")
subTrain <- read.table("subject_train.txt") ## train group subject data
yTrain <- read.table("y_train.txt") ## train group activity data
xTrain <- read.table("x_train.txt") ## train group equipment readings data

## Combine test group columns
cbTest <- cbind(subTest, yTest, xTest)

## Combine train group columns
cbTrain <- cbind(subTrain, yTrain, xTrain)

## Combine test and train group rows
rbTestTrain <- rbind(cbTest, cbTrain)

## Label columns of combined test and train group data frame
colnames(rbTestTrain) <- c("subject", "activity", as.character(feat$V2))

## Set pattern for column name searching to later extract subject, activity, mean, and
## standard deviation variables and data
pattern <- "subject|activity|mean|std"

## Extract subject, activity, mean, and standard deviation variables and data
meanStdrbTestTrain <- rbTestTrain[ ,grepl(pattern, names(rbTestTrain), ignore.case = TRUE)]

## Replace activity codes with named descriptors
meanStdrbTestTrain$activity <- sub("1", "Walking", meanStdrbTestTrain$activity)
meanStdrbTestTrain$activity <- sub("2", "WalkingUpstairs", meanStdrbTestTrain$activity)
meanStdrbTestTrain$activity <- sub("3", "WalkingDownstairs", meanStdrbTestTrain$activity)
meanStdrbTestTrain$activity <- sub("4", "Sitting", meanStdrbTestTrain$activity)
meanStdrbTestTrain$activity <- sub("5", "Standing", meanStdrbTestTrain$activity)
meanStdrbTestTrain$activity <- sub("6", "Laying", meanStdrbTestTrain$activity)

## Search for and replace string portions in variable names to create tidier names,
## and make names lower case
names(meanStdrbTestTrain) <- gsub("Acc", "acceleration", names(meanStdrbTestTrain),)
names(meanStdrbTestTrain) <- gsub("\\(","", names(meanStdrbTestTrain),)
names(meanStdrbTestTrain) <- gsub("\\)","", names(meanStdrbTestTrain),)
names(meanStdrbTestTrain) <- gsub("\\-", "", names(meanStdrbTestTrain),)
names(meanStdrbTestTrain) <- gsub("\\,", "", names(meanStdrbTestTrain),)
names(meanStdrbTestTrain) <- tolower(names(meanStdrbTestTrain))

## Create aggregated data frame of mean values of variables by subject and activity
aggMeanStdrbTestTrain <- aggregate(. ~ subject + activity, data = meanStdrbTestTrain, FUN = mean)