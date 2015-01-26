### Getting and Cleaning Data: Course Project

The materials in this repository will reproduce the tasks to collect, work with, and clean a data
set as defined in the course project for "Getting and Cleaning Data" which is the third course in
the Johns Hopkins Data Science Specialization series on Coursera.

The specific tasks for creating a tidy dataset are:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
5. From the data set in step 4, create a second, independent tidy data set with the average of each
   variable for each activity and each subject.

The second part of the assignment states that the code should have a file named "run_analysis.R" in
the main directory of the repository that can be run as long as the Samsung data is in the "working
directory". The output should be the tidy data set submitted for part 1 (from step 5).

### Instructions to Run the R Code

To keep the project files organized, the data files are put in their own subdirectory called "data":


```
.
|-- README.md
-- run_analysis.R
`-- data
    |-- activity_labels.txt
    |-- features.txt
    |-- features_info.txt
    |-- test
    |   |-- X_test.txt
    |   |-- subject_test.txt
    |   `-- y_test.txt
    `-- train
        |-- X_train.txt
        |-- subject_train.txt
        `-- y_train.txt
```

Before running the script, make sure that the directory structure is set up as shown above and that
the directory paths at the beginning of the script file is properly adjusted to match your working
environment.

### Notes

For this assignment, the code sticks mostly to the base R functions, since there is no specific
requirement to use specific packages nor there is a specific requirement to write the fastest/most
efficient code. Specifically, the part of the code that reads the input files into an R data frame
takes considerably long (about 30sec on my computer).

Also note that the specific steps provided in the instructions are not necessarily the most logical
sequence of actions to accomplish the ultimate goal. The code is laid out in a way that was most
logical to me, but comments are included tying the specific statements to the steps required in the
instructions.
