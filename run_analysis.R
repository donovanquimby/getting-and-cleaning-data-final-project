# jhds getting data week4 programing assignment 
# Written By: Donovan Quimby
# Date: 27SEP2018

# Load Rrequired libraries

library(downloader)
library(dplyr)
library(data.table)
library(stringr)
library(readbulk)

#   -----------------------------------------------------------------------
# set wd path
#   -----------------------------------------------------------------------

wd <- getwd()

#   -----------------------------------------------------------------------
# Download required files and data if not already in directory
#   ---------------------------------------------------------------------

urlData = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
URlCode = "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"


if(!file.exists("./dataset.zip")){download(urlData, dest="dataset.zip", mode = "wb")
        unzip("dataset.zip")}

if(!file.exists("codebook.html")){download(URlCode, dest="codebook.html")}

#   -----------------------------------------------------------------------
#  Create data table containing names of all files in UCI Data set of intrest
#   -----------------------------------------------------------------------

filepath <- file.path(wd, "UCI HAR Dataset") 
filenames <- data.table(list.files(filepath, recursive = TRUE)) %>%
        filter(str_detect(V1, "test")|str_detect(V1, "train") | str_detect(V1, "features.txt") |               str_detect(V1, "activity")) %>% filter(!str_detect(V1,"Inertial"))

#   -----------------------------------------------------------------------
# load and create data tables for all files in "filenames" from above
#   -----------------------------------------------------------------------

for(f in seq_along(filenames[,"V1"])){
        tempPath <- file.path(filepath, filenames[f,])
        tempName <- read.table(tempPath)
        assignname <- str_match(filenames[f,], "^[^.]*")
        assign(assignname, tempName)
        rm(tempName)}

#   -----------------------------------------------------------------------
# rename variables in "activity_labels" and "features"
#   -----------------------------------------------------------------------

colnames(activity_labels) <- c("activitycode", "activityname")
colnames(features) <- c("featurescode","featuresname")

#   -----------------------------------------------------------------------
# Merges training and test sets and extracts mean and standard deviation
# measurements.
#   -----------------------------------------------------------------------
   
x <- bind_rows(`test/X_test`,`train/X_train`)
colnames(x) <- features[,"featuresname"]

y <- bind_rows(`test/y_test`, `train/y_train`)
colnames(y) <- c('activity') #activitylabels

subject <- bind_rows(`test/subject_test`, `train/subject_train`)
colnames(subject) <- c("subject")


comb_mean <- data.table(bind_cols(subject,y,x)) %>%
        select(contains("mean"))

comb_std <- data.table(bind_cols(subject,y,x)) %>%
        select(contains("std"))

comb <- bind_cols(subject,y,comb_mean,comb_std)
rm(comb_std,comb_mean)

#   -----------------------------------------------------------------------
# Use "activity_labels" as a lookup table and replaces the
# activity code in the combined data with it equivlent activity name
#   -----------------------------------------------------------------------

comb[,2] <- activity_labels$activityname[match(unlist(comb[,2]), activity_labels$activitycode)]

#   -----------------------------------------------------------------------
# Clean and transform variable names into descriptive values 
#   -----------------------------------------------------------------------

        #names(comb)  <- tolower(names(comb))
        names(comb)  <- gsub("^[f]", "Frequency_", names(comb))
        names(comb)  <- gsub("^[t]", "Time_", names(comb))
        names(comb)  <- gsub("^(angle\\()", "angle_", names(comb))
        names(comb)  <- gsub("-|\\(|\\)|,", "_", names(comb))
        names(comb)  <- gsub("(mean)", "Mean", names(comb))
        names(comb)  <- gsub("(std)", "Std", names(comb))
        names(comb)  <- gsub("[_]$", "", names(comb))
        names(comb)  <- gsub("[_]", "", names(comb))
        names(comb)  <- gsub("(BodyBody)", "Body", names(comb))
        comb <- select(comb, -starts_with("angle"))
        comb_names <- data.frame(names(comb))

#   -----------------------------------------------------------------------
# Groups combined "Tidy" Data set from above by "subject" and "activity" and 
# then sumamrises each variable's mean by each group
#   -----------------------------------------------------------------------

        
summarisedMeans <- comb %>% group_by(subject,activity) %>% summarise_all(mean) %>% arrange(subject,activity)
        


#   -----------------------------------------------------------------------
# Write Final tidy data set "summarisedMeans" to .txt file "tidy_data.txt"
#   -----------------------------------------------------------------------

write.table(summarisedMeans, "tidy_data.txt", row.names = FALSE, 
        quote = FALSE, sep=",")
