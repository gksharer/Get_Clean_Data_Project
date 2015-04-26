# run_analysis.R
# Merges the training and the test sets. Extracts mean and standard deviation columns.
# Labels dataset with descriptive activity and variable names. Creates second, independent data set. 

library(dplyr)
library(tidyr)

# Uncomment the following 2 lines if dataset is not already downloaded to local machine and unzipped
# download.file("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "UCI_Har_Dataset.zip")
# unzip("UCI_Har_Dataset.zip")

# Load the text files into data frames and set column names.
Measurements_test <- read.table("UCI HAR Dataset/test/X_test.txt")
Subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt",col.names="subject")
Activities_test <- read.table("UCI HAR Dataset/test/y_test.txt",col.names="activity")
Measurements_train <- read.table("UCI HAR Dataset/train/X_train.txt")
Subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt",col.names="subject")
Activities_train <- read.table("UCI HAR Dataset/train/y_train.txt",col.names="activity")
features <- read.table("UCI HAR Dataset/features.txt")
colnames(Measurements_test) <- features[,2]
colnames(Measurements_train) <- features[,2]

# Merge the training and the test sets to create one data set.
train <- cbind(Subject_train,Activities_train, Measurements_train)
test <- cbind(Subject_test,Activities_test, Measurements_test)
all <- rbind(test,train)

# Extract measurements that explicitly take the mean or standard deviation of other measurements
# by matching column names containing mean() or std().
all <- all[,!duplicated(colnames(all))]   # select won't work with duplicate column names present
all_sm <- select(all,subject,activity,matches("mean\\("),matches("std\\("))

# Use descriptive activity names to name the activities in the data set.
# Applies the activity labels as factors to the data set.
fact1 <- read.table("UCI HAR Dataset/activity_labels.txt")
all_sm[,2] <- factor(all_sm[,2],labels=fact1[,2])

# Appropriately label the data set with descriptive variable names. 
# this step renames the columns by removing special characters and expanding t,f,Acc,Gyro,std strings.
# for readability, I decided to use capital letters and the character "-" even though that may not fully 
# comply with best practices for descriptive names. 
colnames(all_sm) <- gsub("\\(|\\)","",colnames(all_sm))
colnames(all_sm) <- gsub("^t","time-",colnames(all_sm))
colnames(all_sm) <- gsub("^f","frequency-",colnames(all_sm))
colnames(all_sm) <- gsub("Acc","Accelerometer",colnames(all_sm))
colnames(all_sm) <- gsub("Gyro","Gyroscope",colnames(all_sm))
colnames(all_sm) <- gsub("std","stddev",colnames(all_sm))

# Create a second, independent tidy data set with the average of each measurement type for 
# each activity and each subject.
# Tidy data set : each variable forms a column (variables=subject,activity,measurement type,mean)
#                 each observation forms a row (true)
#                 each table stores data about one kind of observation (true, normalized)
all_gather <- gather(all_sm,measurement,value, -subject,-activity)
tidy_data <- summarize(group_by(all_gather,subject,activity,measurement),mean=mean(value))
print(tidy_data)




