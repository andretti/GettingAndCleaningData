# Getting And Cleaning Data
## Course Final Project

### Introduction

The purpose of this project is to demonstrate the ability of generating a tidy data set from raw data.  Data were evaluated from an experiment conducted by SmartLab and the Studies of Genova University(1) on human activity recognition using a smart phone's embedded accelerometer and gyroscope.  

The experiment was conducted on 30 individuals who volunteered to perform six different activities while wearing a Samsun S II on the waist, such as sitting and walking.  Two sets of data were collected:  Training data from 21 subjects (70%), whereas test data were collected from the remaining 9 individuals (30%).

"... The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. ..."


Each Training and Test data record contains the total tri-axial acceleration, while the tabulated body acceleration value was estimated. A tri-axial angular velocity was read from the phone's gyroscope.  Data also included are the activity labels, time and frequency vectors variables (561). The volunteer subjects are only identified by a numerical ID.

The data set included for this project are:

1.	The original study data files.
	a.	README.txt 					Project introduction
	b.	features_info.txt 			Description about each feature vector variable
	c.	features.txt 				List of all experimental features
	d.	activity_labels.txt 		Labels with activity IDs and names
	e.	train/X_train.txt 			Training data set
	f.	train/y_train.txt 			Training labels
	g.	test/X_test.txt 			Test data set
	h.	test/y_test.txt 			Test labels
	i.	train/subject_train.txt 	Row identifying the train subject performing an activity for each sample.
	j.	test/subject_test.txt 		Row identifying the test subject performing an activity for each sample.

2.	ReadMe.md 						This file describing the project process for generating tidy data.
3.	run_analysis.R 					R-language script used for generating the final tidy data set.
4.	CodeBook.md 					A list of feture vector variables used in the final tidy data set output.

## Process

A.	Load into memory the subject, activity, training and test data.

B.	Combine the loaded data sets into one sigle data frame

C.	Replace the activity IDs with the activity description, such as activity "1" for  "WALKING"

D.	Use the features vector to replace the default variable names with their corresponding character label, such as replacing V1 for "timeBodyAccelerometer-mean()-X" and spelling out the full names.

E.	From merged data set, create a data subset by extracting the subject, activity variables and all variables containing the mean() and std() feature values.

F.	As a final step, create a second data set from the extracted subset from Step E and calculate the average of every feature for each activity category and each subject.  The tidy data set was written to the "tidydata.txt:" file.



=======================
(1) Human Activity Recognition Using Smartphones Dataset, Version 1.0, Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory, DITEN - Università degli Studi di Genova. Via Opera Pia 11A, I-16145, Genoa, Italy. activityrecognition@smartlab.ws, www.smartlab.ws
