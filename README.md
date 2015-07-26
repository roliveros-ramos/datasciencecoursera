Getting and Cleaning Data Assignment
====================================

This repository includes the script for processing and producing a tidy data set for coursera *Getting and Cleaning Data* course.

1. Using a "readData" function, reads training and test data sets.
2. Merge both data sets.
3. Extract all the variables which contains the word "mean()" or "std()" in the descriptives names included in the "features.txt" file
4. add a activityName variable using the "activity_labels.txt" file.
5. Aggregate the results by activity and suject.