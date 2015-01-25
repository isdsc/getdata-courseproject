# This file contains R code to accomplish the tasks assigned in
#           Getting and Cleaning Data Course Project
# 
# 1. Merge the training and the test sets to create one data set.
# 2. Extract only the measurements on the mean and standard deviation for each measurement.
# 3. Use descriptive activity names to name the activities in the data set
# 4. Appropriately label the data set with descriptive variable names. 
# 5. From the data set in step 4, create a second, independent tidy data set with the average of
#    each variable for each activity and each subject.
#
# The code assumes that the project repository is cloned to a course-specific subirectory in your
# HOME directory: Adjust the line that sets the "course_path" variable accordingly. Also, the
# repository ignores the data subdirectory. Before running the code in this file, copy the data
# files into the data subdirectory of the repo. Here is the expected directory structure:
# 
# data
# |-- activity_labels.txt
# |-- features.txt
# |-- features_info.txt
# |-- test
# |   |-- X_test.txt
# |   |-- subject_test.txt
# |   `-- y_test.txt
# `-- train
#     |-- X_train.txt
#     |-- subject_train.txt
#     `-- y_train.txt
#
# For this assignment, I am mostly sticking to the base functions since there is no specific
# requirement to use specific packages nor there is a specific requirement to write fastest/most
# efficient code.


# Specify the path to the working directory, and set it
course_path  <- "~/Coursera/Data Science Specialization/3. Getting and Cleaning Data"
project_path <- file.path(course_path, "getdata-courseproject")
data_path    <- file.path(project_path, "data")
setwd(data_path)


# Read the training and test sets. This is will be a bit slow because read.table() is not very fast.

# The conceptual "datasets" are provided in three separate files each: 1. subjects, 2. activity
# labels, and 3. actual data (these are actually derived data elements from the raw sensor data
# which is not utilized by this exercise). Since the order of rows (observations) is crucial in
# matching the three files. The code below will be read them back to back and immediatly merge them.
# Also add a factor variable to each group so that we can identify whether an observation is from
# the "test"or the "training" set after we stack up the two datasets.

# First, handle the training dataset
subjects   <- read.table("./train/subject_train.txt", col.names = "subject")
activities <- read.table("./train/y_train.txt", col.names = "activity_code")
data       <- read.table("./train/X_train.txt")

# Put them together. Add a factor variable to tell whether this is the test or the training set.
# Also add a  blank column to be filled in later with activity descriptions.
df_training <- cbind(subjects, "type" = as.factor("training"), activities, "description" = "", data)
