# Getting and Cleaning Data - Coursera Course Project


# Description

This code book summarizes the data fields in file *tidyDataSet.txt*, created by the R script *run_analysis.R*, for the proposed Coursera course project for the Johns Hopkins Getting and Cleaning Data course.    

A full description of the data can be found at the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), and the data for the project can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).  


# Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  


# Attribute Information

For each record in the dataset it is provided:  

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


# Identifiers

- subject - The ID of the test subject.
- activity - The type of activity performed when the corresponding measurements were taken.


# Measurements

- timeBodyAccMeanX
- timeBodyAccMeanY
- timeBodyAccMeanZ
- timeBodyAccStdX
- timeBodyAccStdY
- timeBodyAccStdZ
- timeGravityAccMeanX
- timeGravityAccMeanY
- timeGravityAccMeanZ
- timeGravityAccStdX
- timeGravityAccStdY
- timeGravityAccStdZ
- timeBodyAccJerkMeanX
- timeBodyAccJerkMeanY
- timeBodyAccJerkMeanZ
- timeBodyAccJerkStdX
- timeBodyAccJerkStdY
- timeBodyAccJerkStdZ
- timeBodyGyroMeanX
- timeBodyGyroMeanY
- timeBodyGyroMeanZ
- timeBodyGyroStdX
- timeBodyGyroStdY
- timeBodyGyroStdZ
- timeBodyGyroJerkMeanX
- timeBodyGyroJerkMeanY
- timeBodyGyroJerkMeanZ
- timeBodyGyroJerkStdX
- timeBodyGyroJerkStdY
- timeBodyGyroJerkStdZ
- timeBodyAccMagnitudeMean
- timeBodyAccMagnitudeStd
- timeGravityAccMagnitudeMean
- timeGravityAccMagnitudeStd
- timeBodyAccJerkMagnitudeMean
- timeBodyAccJerkMagnitudeStd
- timeBodyGyroMagnitudeMean
- timeBodyGyroMagnitudeStd
- timeBodyGyroJerkMagnitudeMean
- timeBodyGyroJerkMagnitudeStd
- freqBodyAccMeanX
- freqBodyAccMeanY
- freqBodyAccMeanZ
- freqBodyAccStdX
- freqBodyAccStdY
- freqBodyAccStdZ
- freqBodyAccMeanFreqX
- freqBodyAccMeanFreqY
- freqBodyAccMeanFreqZ
- freqBodyAccJerkMeanX
- freqBodyAccJerkMeanY
- freqBodyAccJerkMeanZ
- freqBodyAccJerkStdX
- freqBodyAccJerkStdY
- freqBodyAccJerkStdZ
- freqBodyAccJerkMeanFreqX
- freqBodyAccJerkMeanFreqY
- freqBodyAccJerkMeanFreqZ
- freqBodyGyroMeanX
- freqBodyGyroMeanY
- freqBodyGyroMeanZ
- freqBodyGyroStdX
- freqBodyGyroStdY
- freqBodyGyroStdZ
- freqBodyGyroMeanFreqX
- freqBodyGyroMeanFreqY
- freqBodyGyroMeanFreqZ
- freqBodyAccMagnitudeMean
- freqBodyAccMagnitudeStd
- freqBodyAccMagnitudeMeanFreq
- freqBodyAccJerkMagnitudeMean
- freqBodyAccJerkMagnitudeStd
- freqBodyAccJerkMagnitudeMeanFreq
- freqBodyGyroMagnitudeMean
- freqBodyGyroMagnitudeStd
- freqBodyGyroMagnitudeMeanFreq
- freqBodyGyroJerkMagnitudeMean
- freqBodyGyroJerkMagnitudeStd
- freqBodyGyroJerkMagnitudeMeanFreq


#Activity Labels

- (value 1) WALKING            : subject was walking during the test
- (value 2) WALKING_UPSTAIRS   : subject was walking up a staircase during the test
- (value 3) WALKING_DOWNSTAIRS : subject was walking down a staircase during the test
- (value 4) SITTING            : subject was sitting during the test
- (value 5) STANDING           : subject was standing during the test
- (value 6) LAYING             : subject was laying down during the test
