# Get_Clean_Data_Project
Class project for the Coursera Getting and Cleaning Data course.<br>
This repository contains an R script "run_analysis.R" that creates a smaller tidy dataset from the "ICU Human Activity Recognition Using Smartphones Dataset"<br>
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip <br>
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.
<br>
Steps in script:<br>
  1. loads the UCI HAR dataset into data frames. <br>
  2. merges the training and test data frames into one data frame. <br>
  3. extracts measurements that are the mean or standard deviation of other measurements. <br>
  4. gives descriptive names to the activity labels. <br>
  5. gives descriptive names to the measurement variables. <br>
  6. creates a second, independent tidy data set with the average of each measurement type for each activity and each subject. <br>
