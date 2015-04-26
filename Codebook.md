#Codebook for run_analysis.R <br>
 <br>
The run_analysis.R script extracts the measurements from the "UCI Human Activity Recognition Using Smartphones dataset" that are the mean or standard deviation of other measurements in the dataset, for 30 subjects performing 6 activities while wearing Samsung Galaxy S II smartphones. It outputs a tidy data set taking the average for each combination of subject, activity, and measurement type. <br>

The script does this by combining the UCI HAR dataset files X_test.txt, subject_test.txt, y_test.txt, X_train.txt, subject_train.txt, and y_train.txt into a single data frame. As in the original dataset, measurement units are normalized and bounded within [-1,1]. Then it selects a subset of measurements whose names contain the strings "mean()" or "std()". The activity numbers are transformed into factors with labels from the activity_labels.txt file. The measurement names are modified to remove the "()" characters and to transform the inital "t" into "time-" and "f" into "freq-". Finally, a new tidy dataset is created by combining the multiple measurement columns into a single column with the name "measurement" and calculating the mean of these values by using the dplyr gather and summarize functions.<br>

The rest of this codebook is modified and updated from the codebook files in the UCI HAR Dataset: <br>
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones <br>
 <br>
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  <br>
 <br>
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. <br>
 <br>
The acceleration signal from the smartphone accelerometer X axis is in standard gravity units 'g'. The angular velocity vector measured by the gyroscope units are radians/second. Measurements described in the Feature Selection section are normalized and bounded within [-1,1].  <br>
 <br>
Feature Selection  <br>
================= <br>
 <br>
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals time-Acc-XYZ and time-Gyro-XYZ. These time domain signals (prefix 'time') were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (time-BodyAcc-XYZ and time-GravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  <br>
 <br>
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (time-BodyAccJerk-XYZ and time-BodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (time-BodyAccMag, time-GravityAccMag, time-BodyAccJerkMag, time-BodyGyroMag, time-BodyGyroJerkMag).  <br>
 <br>
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freq-BodyAcc-XYZ, freq-BodyAccJerk-XYZ, freq-BodyGyro-XYZ, freq-BodyAccJerkMag, freq-BodyGyroMag, freq-BodyGyroJerkMag. (Note the 'freq-' to indicate frequency domain signals).  <br>
   <br>
 <br>
These signals were used to estimate variables of the feature vector for each pattern:   <br>
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. <br>
 <br>
time-BodyAcc-XYZ <br>
time-GravityAcc-XYZ <br>
time-BodyAccJerk-XYZ <br>
time-BodyGyro-XYZ <br>
time-BodyGyroJerk-XYZ <br>
time-BodyAccMag <br>
time-GravityAccMag <br>
time-BodyAccJerkMag <br>
time-BodyGyroMag <br>
time-BodyGyroJerkMag <br>
freq-BodyAcc-XYZ <br>
freq-BodyAccJerk-XYZ <br>
freq-BodyGyro-XYZ <br>
freq-BodyAccMag <br>
freq-BodyAccJerkMag <br>
freq-BodyGyroMag <br>
freq-BodyGyroJerkMag <br>
 <br>
The set of variables that were estimated from these signals are:  <br>
 <br>
mean: Mean value <br>
std: Standard deviation <br>
 <br>
Full list of variables: <br>
freq-BodyAcc-mean-X <br>
freq-BodyAcc-mean-Y <br>
freq-BodyAcc-mean-Z <br>
freq-BodyAcc-std-X <br>
freq-BodyAcc-std-Y <br>
freq-BodyAcc-std-Z <br>
freq-BodyAccJerk-mean-X <br>
freq-BodyAccJerk-mean-Y <br>
freq-BodyAccJerk-mean-Z <br>
freq-BodyAccJerk-std-X <br>
freq-BodyAccJerk-std-Y <br>
freq-BodyAccJerk-std-Z <br>
freq-BodyAccMag-mean <br>
freq-BodyAccMag-std <br>
freq-BodyBodyAccJerkMag-mean <br>
freq-BodyBodyAccJerkMag-std <br>
freq-BodyBodyGyroJerkMag-mean <br>
freq-BodyBodyGyroJerkMag-std <br>
freq-BodyBodyGyroMag-mean <br>
freq-BodyBodyGyroMag-std <br>
freq-BodyGyro-mean-X <br>
freq-BodyGyro-mean-Y <br>
freq-BodyGyro-mean-Z <br>
freq-BodyGyro-std-X <br>
freq-BodyGyro-std-Y <br>
freq-BodyGyro-std-Z <br>
time-BodyAcc-mean-X <br>
time-BodyAcc-mean-Y <br>
time-BodyAcc-mean-Z <br>
time-BodyAcc-std-X <br>
time-BodyAcc-std-Y <br>
time-BodyAcc-std-Z <br>
time-BodyAccJerk-mean-X <br>
time-BodyAccJerk-mean-Y <br>
time-BodyAccJerk-mean-Z <br>
time-BodyAccJerk-std-X <br>
time-BodyAccJerk-std-Y <br>
time-BodyAccJerk-std-Z <br>
time-BodyAccJerkMag-mean <br>
time-BodyAccJerkMag-std <br>
time-BodyAccMag-mean <br>
time-BodyAccMag-std <br>
time-BodyGyro-mean-X <br>
time-BodyGyro-mean-Y <br>
time-BodyGyro-mean-Z <br>
time-BodyGyro-std-X <br>
time-BodyGyro-std-Y <br>
time-BodyGyro-std-Z <br>
time-BodyGyroJerk-mean-X <br>
time-BodyGyroJerk-mean-Y <br>
time-BodyGyroJerk-mean-Z <br>
time-BodyGyroJerk-std-X <br>
time-BodyGyroJerk-std-Y <br>
time-BodyGyroJerk-std-Z <br>
time-BodyGyroJerkMag-mean <br>
time-BodyGyroJerkMag-std <br>
time-BodyGyroMag-mean <br>
time-BodyGyroMag-std <br>
time-GravityAcc-mean-X <br>
time-GravityAcc-mean-Y <br>
time-GravityAcc-mean-Z <br>
time-GravityAcc-std-X <br>
time-GravityAcc-std-Y <br>
time-GravityAcc-std-Z <br>
time-GravityAccMag-mean <br>
time-GravityAccMag-std <br>
subject
activity
