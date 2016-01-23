# Tidy Data Set Code Book

## Data Source
The features selected for tidy data set output come from the accelerometer and gyroscope 3-axial raw signals timeAccelerometer-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). (Refer to the original data files included with this repository.)

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). The tidy data set for this course project excludes all the FFT calculations from the final data set.

The signals used to estimate variables of the feature vector for each averaged mean() and std() data pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- timeBodyAccelerometer-XYZ
- timeGravityAccelerometer-XYZ
- timeBodyAccelerometerJerk-XYZ
- timeBodyGyroscope-XYZ
- timeBodyGyroscopeJerk-XYZ
- timeBodyAccelerometerMagnitude
- timeGravityAccelerometerMagnitude
- timeBodyAccelerometerJerkMagnitude
- timeBodyGyroscopeMagnitude
- timeBodyGyroscopeJerkMagnitude
- frequencyBodyAccelerometer-XYZ
- frequencyBodyAccelerometerJerk-XYZ
- frequencyBodyGyroscope-XYZ
- frequencyBodyAccelerometerMagnitude
- frequencyBodyAccelerometerJerkMagnitude
- frequencyBodyGyroscopeMagnitude
- frequencyBodyGyroscopeJerkMagnitude

## Mean and Standard Deviation Values

The set of variables that were estimated from these signals and used in the final tidy data set are: 

- mean(): Mean value
- std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- timeBodyAccelerometerMean
- timeBodyAccelerometerJerkMean
- timeBodyGyroscopeMean
- timeBodyGyroscopeJerkMean

## Subject and  Activities

- Subject:  Each subject is identified by a numeric ID.
- Activity: String activity name.
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING

The complete list of variables of each feature vector is available in 'data_original/features.txt'

