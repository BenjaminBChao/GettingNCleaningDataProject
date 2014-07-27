GettingNCleaningDataProject
===========================
Brief Dataset Description:

We utilized the "Human Activity Recognition Using Smartphones"" Dataset from the UCI Machine Learning Repository, which is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 

The Human Acitivty Recognition (HAR) data includes 10299 instances and 561 attributes for a total of 30 volunteers. In a dataset, a training set is implemented to build up a model, while a test (or validation) set is to validate the model built. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

For more details about the data set, I've included the original README.txt from the HAR study. You can find it in Footnote 1. 


Data Manipulation Process:

The UAR dataset has been manipulated as part of the final project for Getting and Cleaning Data course. The goal of this project is to test student's ability to collect, work with and clean a data set. The completed project should be evaluated against the following requirements:

1) Merges the training and the test sets to create one data set.
2) Extract only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name the activities in the dataset.
4) Appropriately labels the data set with descriptive activity names.
5) Creates a secon, independent tidy data set with the average of each variable for each activity and 
   each subject. 
   
Output

Please run the attached R script: run_analysis.R in your R-Studio's text editor. The output should include a tidy dataset. For more information about data structures( i.e. key variables), see attached CodeBook.md. Enjoy!


Footnote 1: Original README.txt from UCI Machine Learning Repository:
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit? degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
=======
Course Project


This repository is hosting the R code for the assignment of the DataScience track's "Getting and Cleaning Data" course which will be peer assessed.

The purpose of this project is to demonstrate the collection, work with, and cleaning of this data set. Tidy data have been prepared so can be used for later analysis.

Data Set

The data set "Human Activity Recognition Using Smartphones" has been taken from UCI.

Execution and files

The Data Set has been stored in UCI HAR Dataset/ directory.

The CodeBook.md describes the variables, the data, and the work that has been performed to clean up the data.

The run_analysis.R is the script that has been used for this work. It can be loaded in R/Rstudio and executed without any parameters.

The result of the execution is that a tidy.csv file is being created, that stores the data (mean and standard deviation of each measurement per activity&subject) for later analysis.

