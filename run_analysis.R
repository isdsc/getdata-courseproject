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


# Specify the path to the working directory, and set it
course_path  <- "~/Coursera/Data Science Specialization/3. Getting and Cleaning Data"
project_path <- file.path(course_path, "getdata-courseproject")
data_path    <- file.path(project_path, "data")
setwd(data_path)

