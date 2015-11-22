The resulting tidy dataset contains 180 observations of 68 variables, of which the first two variables are activity and subject.
* activity: a character string indicating the activities performed by the voluteers, "laying", "sitting", "standing", "walking", "walkingupstairs", "walkingdownstairs".
* subject: an integer variable ranging from 1 to 30, representing voluteers of ages 19-48, respectively.

The rest 66 variables are all averages of the corresponding variables from the original dataset.
* The 3-axial raw signals tAcc-XYZ and tGyro-XYZ come from the accelerometer and gyroscope. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
* Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
* Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
* Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
* Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

A set of variables that were estimated from these signals, from which only the mean and standard deviations were extracted: 
* mean(): Mean value
* std(): Standard deviation

Take average of each variable by activity and subject. The name of variables are converted to lower cases, and are summarized as follows for each type:
* avgtbodyacc: 6 variables of meanx, meany, meanz, stdx, stdy, stdz, with units meters/second^2
* avgtgravityacc: 6 variables of meanx, meany, meanz, stdx, stdy, stdz, with units meters/second^2
* avgtbodyaccjerk: 6 variables of meanx, meany, meanz, stdx, stdy, stdz, with units meters/second^2
* avgtbodygyro: 6 variables of meanx, meany, meanz, stdx, stdy, stdz, with units radian/second
* avgtbodygyrojerk: 6 variables of meanx, meany, meanz, stdx, stdy, stdz, with units radian/second
* avgtbodyaccmag: 2 variables of mean, std, with units meters/second^2
* avgtgravityaccmag: 2 variables of mean, std, with units meters/second^2
* avgtbodyaccjerkmag: 2 variables of mean, std, with units meters/second^2
* avgtbodygyromag: 2 variables of mean, std, with units radian/second
* avgtbodygyrojerkmag: 2 variables of mean, std, with units radian/second
* avgfbodyacc: 6 variables of meanx, meany, meanz, stdx, stdy, stdz, with units meters/Hz^2
* avgfbodyaccjerk: 6 variables of meanx, meany, meanz, stdx, stdy, stdz, with units meters/Hz^2
* avgfbodygyro: 6 variables of meanx, meany, meanz, stdx, stdy, stdz, with units radian/Hz
* avgfbodyaccmag: 2 variables of mean, std, with units meters/Hz^2
* avgfbodyaccjerkmag: 2 variables of mean, std, with units meters/Hz^2
* avgfbodygyromag: 2 variables of mean, std, with units radian/Hz
* avgfbodygyrojerkmag: 2 variables of mean, std, with units radian/Hz
