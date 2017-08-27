## Introduction

The run_analysis.R code takes the raw data sets and matches, combines and extracts data of interest and organizes it into a clean new data set called tidy_data_set.txt.

***
## Variables

The variables in the tidy_data_set include:

* Identifiers:
  
    + subject_id
  
    + activity_id
  
    + activity_name

* Measurements:
  
    + time_BodyAcceleration-mean()-X
    + time_BodyAcceleration-mean()-Y 
    + time_BodyAcceleration-mean()-Z
    + time_BodyAcceleration-std()-X 
    + time_BodyAcceleration-std()-Y
    + time_BodyAcceleration-std()-Z 
    + time_GravityAcceleration-mean()-X
    + time_GravityAcceleration-mean()-Y
    + time_GravityAcceleration-mean()-Z
    + time_GravityAcceleration-std()-X
    + time_GravityAcceleration-std()-Y
    + time_GravityAcceleration-std()-Z
    + time_BodyAccelerationJerk-mean()-X
    + time_BodyAccelerationJerk-mean()-Y
    + time_BodyAccelerationJerk-mean()-Z
    + time_BodyAccelerationJerk-std()-X
    + time_BodyAccelerationJerk-std()-Y
    + time_BodyAccelerationJerk-std()-Z
    + time_BodyGyro-mean()-X
    + time_BodyGyro-mean()-Y
    + time_BodyGyro-mean()-Z
    + time_BodyGyro-std()-X
    + time_BodyGyro-std()-Y
    + time_BodyGyro-std()-Z
    + time_BodyGyroJerk-mean()-X
    + time_BodyGyroJerk-mean()-Y
    + time_BodyGyroJerk-mean()-Z
    + time_BodyGyroJerk-std()-X
    + time_BodyGyroJerk-std()-Y
    + time_BodyGyroJerk-std()-Z
    + time_BodyAccelerationMag-mean()
    + time_BodyAccelerationMag-std()
    + time_GravityAccelerationMag-mean()
    + time_GravityAccelerationMag-std()
    + time_BodyAccelerationJerkMag-mean()
    + time_BodyAccelerationJerkMag-std()
    + time_BodyGyroMag-mean()
    + time_BodyGyroMag-std()
    + time_BodyGyroJerkMag-mean()
    + time_BodyGyroJerkMag-std()
    + frequency_BodyAcceleration-mean()-X
    + frequency_BodyAcceleration-mean()-Y
    + frequency_BodyAcceleration-mean()-Z
    + frequency_BodyAcceleration-std()-X
    + frequency_BodyAcceleration-std()-Y
    + frequency_BodyAcceleration-std()-Z
    + frequency_BodyAccelerationJerk-mean()-X
    + frequency_BodyAccelerationJerk-mean()-Y
    + frequency_BodyAccelerationJerk-mean()-Z
    + frequency_BodyAccelerationJerk-std()-X
    + frequency_BodyAccelerationJerk-std()-Y
    + frequency_BodyAccelerationJerk-std()-Z
    + frequency_BodyGyro-mean()-X
    + frequency_BodyGyro-mean()-Y
    + frequency_BodyGyro-mean()-Z
    + frequency_BodyGyro-std()-X
    + frequency_BodyGyro-std()-Y
    + frequency_BodyGyro-std()-Z
    + frequency_BodyAccelerationMag-mean()
    + frequency_BodyAccelerationMag-std()
    + frequency_BodyAccelerationJerkMag-mean()
    + frequency_BodyAccelerationJerkMag-std()
    + frequency_BodyGyroMag-mean()
    + frequency_BodyGyroMag-std()
    + frequency_BodyGyroJerkMag-mean()
    + frequency_BodyGyroJerkMag-std()

***
## Transformations

In Step 1, all data sets are loaded and some column names are modified for further convenience.Then all data sets are being merged into one big data set combing test, control and subject info.

In Step 2, only measurements with mean and standard deviation are extracted together with the identifiers columns (activity_id, subject_id).

In Step 3, merge the data set in Step 2 with activity_labels set to easily get the activity labels matched with activity ids. I then swapped the order of the columns to make sure the identifier columns are in the beginning so that it's easier for users to read the information. 

In Step 4, clean up the column names in the resulting data set from Step 3. 

In Step 5, extract the mean of each variable for each activity and subject group and then write the final data set into the tidy_data_set.txt.




