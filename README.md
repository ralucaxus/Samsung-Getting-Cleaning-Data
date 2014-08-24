Samsung-Getting-Cleaning-Data
=============================

Course project Getting and Cleaning Data- create  a tidy dataset for Samsung

Script description 

Script can be found in the file run_analysis.R

Script does the following actions:

  reads files from the UCI HAR Dataset (which is set as working directory)
  files read are covering the subject, the measurements and the activities for the train and test dataset 
  
  merges the datasets first within the train dataset the subjects, measurements and activities into one data frame, similar for test data set and afterwards the train and test dataset together into one data set called dataset
  
  renames the columns in the dataset to subject, measurements (based on features dataset) and activity  
  
  selects only the columns that refer to mean and standard deviation in the dataset 
  
  adds to the activity labels descriptions for each activity code
  
  makes the average for each activity and subject of the measurements taken 
  
Codebook

The codebook explains the variables used in the scrip

Data 

The dataused as raw data is taken from the URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


