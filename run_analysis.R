library(reshape2) # Flexibly restructure and aggregate data using two functions melt and dcast 

fileName <- "getdata_dataset.zip" # Data for the project
if (!file.exists(fileName)) { # Download and unzip the dataset if it does not already exist
	fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
	download.file(fileURL, fileName)
}
if (!file.exists("UCI HAR Dataset")) { # Unzip the dataset if it does not already exist
	unzip(fileName)
}

# Load Activity Labels
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)

# Load Features
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)

# Extracts only the measurements on the mean and standard deviation for each measurement
featuresExtract      <- grep("*mean*|*std*", features$V2)

# Appropriately labels the data set with descriptive variable names
featuresExtractNames <- features[featuresExtract, "V2"]
featuresExtractNames <- gsub("-mean", "Mean", featuresExtractNames)
featuresExtractNames <- gsub("-std", "Std", featuresExtractNames)
featuresExtractNames <- gsub("[-()]", "", featuresExtractNames)
featuresExtractNames <- gsub("^(t)","time", featuresExtractNames)
featuresExtractNames <- gsub("^(f)","freq", featuresExtractNames)
featuresExtractNames <- gsub("([Gg]ravity)","Gravity", featuresExtractNames)
featuresExtractNames <- gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body", featuresExtractNames)
featuresExtractNames <- gsub("[Gg]yro","Gyro", featuresExtractNames)
featuresExtractNames <- gsub("AccMag","AccMagnitude", featuresExtractNames)
featuresExtractNames <- gsub("([Bb]odyaccjerkmag)","BodyAccJerkMagnitude", featuresExtractNames)
featuresExtractNames <- gsub("JerkMag","JerkMagnitude", featuresExtractNames)
featuresExtractNames <- gsub("GyroMag","GyroMagnitude", featuresExtractNames)

# Load the training datasets
trainDS         <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresExtract]
trainActivities <- read.table("UCI HAR Dataset/train/y_train.txt")
trainSubjects   <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Merge the training datasets to create one data set
trainDS <- cbind(trainSubjects, trainActivities, trainDS)

# Load the test datasets
testDS         <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresExtract]
testActivities <- read.table("UCI HAR Dataset/test/y_test.txt")
testSubjects   <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Merge the test datasets to create one data set
testDS <- cbind(testSubjects, testActivities, testDS)

# Merges the training and the test sets to create one data set
DS <- rbind(trainDS, testDS)

#Appropriately labels the data set with descriptive variable names
colnames(DS) <- c("subject", "activity", featuresExtractNames) # Add labels

# Transform subject variable into a factor
DS$subject <- as.factor(DS$subject)

# Transform activity variable into a factor
DS$activity <- factor(DS$activity, levels = activityLabels[, "V1"],
					  			   labels = activityLabels[, "V2"])

# Create another independent tidy data set with the average of each variable
# for each activity and each subject.
tidyDataSet <- melt(DS, id = c("subject", "activity"))
tidyDataSet <- dcast(tidyDataSet, subject + activity ~ variable, mean)

# Export the tidy Data Set in csv format
write.csv(tidyDataSet, "tidyDataSet.csv", row.names = FALSE)
