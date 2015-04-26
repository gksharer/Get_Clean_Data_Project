#Codebook for run_analysis.R <br>
 <br>
The run_analysis.R script extracts the measurements from the "UCI Human Activity Recognition Using Smartphones dataset" that are the mean or standard deviation of other measurements in the dataset, for 30 subjects performing 6 activities while wearing Samsung Galaxy S II smartphones. It outputs a tidy data set taking the average for each combination of subject, activity, and measurement type. <br>

The script does this by combining the UCI HAR dataset files X_test.txt, subject_test.txt, y_test.txt, X_train.txt, subject_train.txt, and y_train.txt into a single data frame. As in the original dataset, measurement units are normalized and bounded within [-1,1]. Then it selects a subset of measurements whose names contain the strings "mean()" or "std()". The activity numbers are transformed into factors with labels from the activity_labels.txt file. The measurement names are modified to remove the "()" characters, transform the inital "t" into "time-" and "f" into "frequency-", and expand "Acc" and "Gyro" to "Accelerometer"" and "Gyroscope". Finally, a new tidy dataset is created by combining the multiple measurement columns into a single column with the name "measurement" and calculating the mean of these values by using the dplyr gather and summarize functions.<br>

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
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals time-Accelerometer-XYZ and time-Gyroscope-XYZ. These time domain signals (prefix 'time') were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (time-BodyAccelerometer-XYZ and time-GravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  <br>
 <br>
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (time-BodyAccelerometerJerk-XYZ and time-BodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (time-BodyAccelerometerMag, time-GravityAccelerometerMag, time-BodyAccelerometerJerkMag, time-BodyGyroscopeMag, time-BodyGyroscopeJerkMag).  <br>
 <br>
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency-BodyAccelerometer-XYZ, frequency-BodyAccelerometerJerk-XYZ, frequency-BodyGyroscope-XYZ, frequency-BodyAccelerometerJerkMag, frequency-BodyGyroscopeMag, frequency-BodyGyroscopeJerkMag. (Note the 'frequency-' to indicate frequency domain signals).  <br>
   <br>
 <br>
These signals were used to estimate variables of the feature vector for each pattern:   <br>
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. <br>
 <br>
time-BodyAccelerometer-XYZ <br>
time-GravityAccelerometer-XYZ <br>
time-BodyAccelerometerJerk-XYZ <br>
time-BodyGyroscope-XYZ <br>
time-BodyGyroscopeJerk-XYZ <br>
time-BodyAccelerometerMag <br>
time-GravityAccelerometerMag <br>
time-BodyAccelerometerJerkMag <br>
time-BodyGyroscopeMag <br>
time-BodyGyroscopeJerkMag <br>
frequency-BodyAccelerometer-XYZ <br>
frequency-BodyAccelerometerJerk-XYZ <br>
frequency-BodyGyroscope-XYZ <br>
frequency-BodyAccelerometerMag <br>
frequency-BodyAccelerometerJerkMag <br>
frequency-BodyGyroscopeMag <br>
frequency-BodyGyroscopeJerkMag <br>
 <br>
The set of variables that were estimated from these signals are:  <br>
 <br>
mean: Mean value <br>
std: Standard deviation <br>
 <br>
Full list of measurement variables: <br>
frequency-BodyAccelerometer-mean-X <br>
frequency-BodyAccelerometer-mean-Y <br>
frequency-BodyAccelerometer-mean-Z <br>
frequency-BodyAccelerometer-std-X <br>
frequency-BodyAccelerometer-std-Y <br>
frequency-BodyAccelerometer-std-Z <br>
frequency-BodyAccelerometerJerk-mean-X <br>
frequency-BodyAccelerometerJerk-mean-Y <br>
frequency-BodyAccelerometerJerk-mean-Z <br>
frequency-BodyAccelerometerJerk-std-X <br>
frequency-BodyAccelerometerJerk-std-Y <br>
frequency-BodyAccelerometerJerk-std-Z <br>
frequency-BodyAccelerometerMag-mean <br>
frequency-BodyAccelerometerMag-std <br>
frequency-BodyBodyAccelerometerJerkMag-mean <br>
frequency-BodyBodyAccelerometerJerkMag-std <br>
frequency-BodyBodyGyroscopeJerkMag-mean <br>
frequency-BodyBodyGyroscopeJerkMag-std <br>
frequency-BodyBodyGyroscopeMag-mean <br>
frequency-BodyBodyGyroscopeMag-std <br>
frequency-BodyGyroscope-mean-X <br>
frequency-BodyGyroscope-mean-Y <br>
frequency-BodyGyroscope-mean-Z <br>
frequency-BodyGyroscope-std-X <br>
frequency-BodyGyroscope-std-Y <br>
frequency-BodyGyroscope-std-Z <br>
time-BodyAccelerometer-mean-X <br>
time-BodyAccelerometer-mean-Y <br>
time-BodyAccelerometer-mean-Z <br>
time-BodyAccelerometer-std-X <br>
time-BodyAccelerometer-std-Y <br>
time-BodyAccelerometer-std-Z <br>
time-BodyAccelerometerJerk-mean-X <br>
time-BodyAccelerometerJerk-mean-Y <br>
time-BodyAccelerometerJerk-mean-Z <br>
time-BodyAccelerometerJerk-std-X <br>
time-BodyAccelerometerJerk-std-Y <br>
time-BodyAccelerometerJerk-std-Z <br>
time-BodyAccelerometerJerkMag-mean <br>
time-BodyAccelerometerJerkMag-std <br>
time-BodyAccelerometerMag-mean <br>
time-BodyAccelerometerMag-std <br>
time-BodyGyroscope-mean-X <br>
time-BodyGyroscope-mean-Y <br>
time-BodyGyroscope-mean-Z <br>
time-BodyGyroscope-std-X <br>
time-BodyGyroscope-std-Y <br>
time-BodyGyroscope-std-Z <br>
time-BodyGyroscopeJerk-mean-X <br>
time-BodyGyroscopeJerk-mean-Y <br>
time-BodyGyroscopeJerk-mean-Z <br>
time-BodyGyroscopeJerk-std-X <br>
time-BodyGyroscopeJerk-std-Y <br>
time-BodyGyroscopeJerk-std-Z <br>
time-BodyGyroscopeJerkMag-mean <br>
time-BodyGyroscopeJerkMag-std <br>
time-BodyGyroscopeMag-mean <br>
time-BodyGyroscopeMag-std <br>
time-GravityAccelerometer-mean-X <br>
time-GravityAccelerometer-mean-Y <br>
time-GravityAccelerometer-mean-Z <br>
time-GravityAccelerometer-std-X <br>
time-GravityAccelerometer-std-Y <br>
time-GravityAccelerometer-std-Z <br>
time-GravityAccelerometerMag-mean <br>
time-GravityAccelerometerMag-std <br>
<br>
Full list of activity variables: <br>
WALKING <br>
WALKING_UPSTAIRS <br>
WALKING_DOWNSTAIRS <br>
SITTING <br>
STANDING <br>
LAYING <br>

Full list of subject variables: <br>
integer values 1-30 <br>
