Getting and Cleaning Data Assignment
====================================

This repository includes the script for processing and producing a tidy data set for coursera *Getting and Cleaning Data* course.

1. Using a "readData" function (run_functions.R), reads training and test data sets. Data is assumed to be in "UCI HAR Dataset" folder.
2. Merge both data sets.
3. Extract all the variables which contains the word "mean()" or "std()" in the descriptives names included in the "features.txt" file.
4. Add a activityName variable using the "activity_labels.txt" file.
5. Aggregate the results by activity and suject.
6. Save outputs as "final_dataset.txt".
