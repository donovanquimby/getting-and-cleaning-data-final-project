# Code Book for JHU Coursera Getting and Cleaning Data Course Project

[![N|Solid](https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/6d/aac7c069b611e39de639278c4f9dba/ObtainingData.jpg)](https://www.coursera.org/learn/data-cleaning/)

The descriptions in this document apply to the "tidy_data.txt" file contained in this repository.

## Data Structure
"tidy_data.txt" is a space " " seperated data file with a single header row containing the descriptive name of 81 variables which are described below. It contains 180 rows of observations which represent the mean of each variable for each activity and each subject of a much larger data set

## General Description of Data
(taken from : http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

### Identifiers
* `subject` : (integer) Test subject ID number
* * range = 1 - 30
* `activities`: (Factor) Descriptive name of 6 possible activities
    1. LAYING
    2. SITTING
    3. STANDING
    4. WALKING
    5. WALKING_DOWNSTAIRS
    6. WALKING_UPSTAIRS

### Measured Variables
All measured variables were measured in either the "Time" or "Frequency" domain and were noralized and bounded within [-1:1] as a Double-precision floating-point. The postscripts 'XYZ' are used to denote the 3-axial singnals in the X, Y, and Z axis directions repectively.

#### Variables  
* subject
* activity
* FrequencyBodyAccJerkMagMean
* FrequencyBodyAccJerkMagMeanFreq
* FrequencyBodyAccJerkMagStd
* FrequencyBodyAccJerkMeanFreqX
* FrequencyBodyAccJerkMeanFreqY
* FrequencyBodyAccJerkMeanFreqZ
* FrequencyBodyAccJerkMeanX
* FrequencyBodyAccJerkMeanY
* FrequencyBodyAccJerkMeanZ
* FrequencyBodyAccJerkStdX
* FrequencyBodyAccJerkStdY
* FrequencyBodyAccJerkStdZ
* FrequencyBodyAccMagMean
* FrequencyBodyAccMagMeanFreq
* FrequencyBodyAccMagStd
* FrequencyBodyAccMeanFreqX
* FrequencyBodyAccMeanFreqY
* FrequencyBodyAccMeanFreqZ
* FrequencyBodyAccMeanX
* FrequencyBodyAccMeanY
* FrequencyBodyAccMeanZ
* FrequencyBodyAccStdX
* FrequencyBodyAccStdY
* FrequencyBodyAccStdZ
* FrequencyBodyGyroJerkMagMean
* FrequencyBodyGyroJerkMagMeanFreq
* FrequencyBodyGyroJerkMagStd
* FrequencyBodyGyroMagMean
* FrequencyBodyGyroMagMeanFreq
* FrequencyBodyGyroMagStd
* FrequencyBodyGyroMeanFreqX
* FrequencyBodyGyroMeanFreqY
* FrequencyBodyGyroMeanFreqZ
* FrequencyBodyGyroMeanX
* FrequencyBodyGyroMeanY
* FrequencyBodyGyroMeanZ
* FrequencyBodyGyroStdX
* FrequencyBodyGyroStdY
* FrequencyBodyGyroStdZ
* TimeBodyAccJerkMagMean
* TimeBodyAccJerkMagStd
* TimeBodyAccJerkMeanX
* TimeBodyAccJerkMeanY
* TimeBodyAccJerkMeanZ
* TimeBodyAccJerkStdX
* TimeBodyAccJerkStdY
* TimeBodyAccJerkStdZ
* TimeBodyAccMagMean
* TimeBodyAccMagStd
* TimeBodyAccMeanX
* TimeBodyAccMeanY
* TimeBodyAccMeanZ
* TimeBodyAccStdX
* TimeBodyAccStdY
* TimeBodyAccStdZ
* TimeBodyGyroJerkMagMean
* TimeBodyGyroJerkMagStd
* TimeBodyGyroJerkMeanX
* TimeBodyGyroJerkMeanY
* TimeBodyGyroJerkMeanZ
* TimeBodyGyroJerkStdX
* TimeBodyGyroJerkStdY
* TimeBodyGyroJerkStdZ
* TimeBodyGyroMagMean
* TimeBodyGyroMagStd
* TimeBodyGyroMeanX
* TimeBodyGyroMeanY
* TimeBodyGyroMeanZ
* TimeBodyGyroStdX
* TimeBodyGyroStdY
* TimeBodyGyroStdZ
* TimeGravityAccMagMean
* TimeGravityAccMagStd
* TimeGravityAccMeanX
* TimeGravityAccMeanY
* TimeGravityAccMeanZ
* TimeGravityAccStdX
* TimeGravityAccStdY
* TimeGravityAccStdZ


    




