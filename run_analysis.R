###########################################
## Getting and Cleaning Data Course Project
###########################################

## Step 1: Merges the training and the test sets to create one data set.

# load all files and data sets

x_train_data <- read.table("train/X_train.txt")
x_test_data <- read.table("test/X_test.txt")
y_train_data <- read.table("train/y_train.txt")
y_test_data <- read.table("test/y_test.txt")

subject_train <- read.table("train/subject_train.txt")
subject_test <- read.table("test/subject_test.txt")

features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")

# rename the column names when necessary

colnames (x_train_data) <- features[,2]
colnames (x_test_data) <- features[,2]
colnames (y_train_data) <- "activity_id"
colnames (y_test_data) <- "activity_id"
colnames(subject_train) <- "subject_id"
colnames(subject_test) <- "subject_id"
colnames(activity_labels) <- c("activity_id", "activity_name")

# combine train and test data sets and creat subject data set
all_train <- cbind(y_train_data, subject_train, x_train_data)
all_test <- cbind(y_test_data, subject_test, x_test_data)
all_data <- rbind(all_train, all_test)

## Step 2: Extracts only the measurements on the mean and standard 
## deviation for each measurement.
col <- colnames(all_data)
mean_sd_position <- (grepl("activity_id", col) | grepl("subject_id", col) |
                     grepl("mean\\(\\)", col) | grepl("std\\(\\)", col))
mean_sd_data <- all_data[, mean_sd_position==TRUE]

## Step 3: Uses descriptive activity names to name the activities in the data set.

# match the mean_sd_data with existing activity label set to get the activity label

mean_sd_data_names <- merge(mean_sd_data, activity_labels, by.x ='activity_id', 
                      by.y = 'activity_id', all=TRUE)

# swap the order of the columns to show the activity names next to the ids
mean_sd_data_names <- subset(mean_sd_data_names, select=c("activity_name", colnames(mean_sd_data_names)[1:68]))

## Step 4: Appropriately labels the data set with descriptive variable names.

colnames(mean_sd_data_names) <- gsub("^t", "time_", colnames(mean_sd_data_names))
colnames(mean_sd_data_names) <- gsub("^f", "frequency_", colnames(mean_sd_data_names))
colnames(mean_sd_data_names) <- gsub("BodyBody", "Body",colnames(mean_sd_data_names))
colnames(mean_sd_data_names) <- gsub("Acc", "Acceleration",colnames(mean_sd_data_names))

## Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of
## each variable for each activity and each subject.

tidy_data_set <- aggregate(. ~subject_id + activity_id,mean_sd_data_names, mean)
tidy_data_set <- tidy_data_set[order(tidy_data_set$activity_id, 
                                     tidy_data_set$subject_id), ]
# write the table
write.table(tidy_data_set, "tidy_data_set.txt", row.names=FALSE, quote = FALSE)

