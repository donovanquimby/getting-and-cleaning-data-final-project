# JHU Coursera Getting and Cleaning Data Course Project

[![N|Solid](https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/6d/aac7c069b611e39de639278c4f9dba/ObtainingData.jpg)](https://www.coursera.org/learn/data-cleaning/)

## Getting and Cleaning Data Week 4 Course Project
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

One of the most exciting areas in all of data science right now is wearable computing - see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip     

A R script named "run_analysis.R" completes the following:

* Download the required data if it does not exist in the current working directory
* Loads the "training" and "test" data sets, merges them together, and selects only the variables that represent the mean and standard deviation of each measurement
* replaces the "activity code" with the descriptive "activity name"
* Cleans and creates descriptive variable names
* Creates a second, final tidy data set with the average of each variable for each activity and each subject 



### Prerequisits
The "run_analysis.R" script was developed using **R version 3.5.1 (2018-07-02)**

The following packages are required:
```R
library(downloader)
library(dplyr)
library(data.table)
library(stringr)
library(readbulk)
```







