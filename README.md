# Getting and Cleaning Data - Coursera Course Project
Repo for the submission of the Corsera course project for **Getting and Cleaning Data course** administer by the Johns Hopkins University.  

## Overview

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set, that can be used for subsequent analysis.  
This project used data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description of the data can be found at the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), and the data for the project can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).  

## Summary

The goal is to prepare tidy data that can be used for later analysis, and the end result is shown in the file *tidy.txt*.  
I had created a R script called *run_analysis.R* that does the following:  

1. Download the dataset if it does not already exist in the working directory  
2. Load the activity and feature info  
3. Loads both the training and test datasets
4. Extracts only the measurements on the mean and standard deviation for each measurement  
5. Loads the activity and subject data for each dataset, and merges those columns with the dataset
6. Merges the two datasets  
7. Converts the activity and subject columns into factors  
8. Creates a independent tidy data set with the average of each variable for each activity and each subject
9. Export the tidy data set in a csv format file

## Code Book

The *CodeBook.md* file has information about the data fields existing in the file *tidyDataSet.txt*, which contains the tidy data set.  

