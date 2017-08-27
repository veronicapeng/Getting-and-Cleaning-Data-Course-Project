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
  
    + mean and standard deviation for each measurement

***
## Transformations

In Step 1, all data sets are loaded and some column names are modified for further convenience.Then all data sets are being merged into one big data set combing test, control and subject info.

In Step 2, only measurements with mean and standard deviation are extracted together with the identifiers columns (activity_id, subject_id).

In Step 3, merge the data set in Step 2 with activity_labels set to easily get the activity labels matched with activity ids. I then swapped the order of the columns to make sure the identifier columns are in the beginning so that it's easier for users to read the information. 

In Step 4, clean up the column names in the resulting data set from Step 3. 

In Step 5, extract the mean of each variable for each activity and subject group and then write the final data set into the tidy_data_set.txt.




