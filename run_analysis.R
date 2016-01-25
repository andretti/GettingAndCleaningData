### Coursera
### Getting and Cleaning Data
### Andretti
### 2016-01-23 - 18:06 EST
### 
### Set working directory
setwd("F:/Coursera/Getting-and-cleaing-data/project")

### Load libraries
library(plyr)
library(dplyr)

## 1. Merge training and test sets into a single data set

### Training Data
activity.train = read.table("./data/train/y_train.txt", header = FALSE, col.names = "activity")

subject.train = read.table("./data/train/subject_train.txt", header = FALSE, col.names = "subject" )

features.train = read.table("./data/train/X_train.txt", header = FALSE)

### Test data
activity.test = read.table("./data/test/y_test.txt", header = FALSE, col.names = "activity")

subject.test = read.table("./data/test/subject_test.txt", header = FALSE, col.names = "subject")

features.test = read.table("./data/test/X_test.txt", header = FALSE)

### Join tables by rows
data.subject = rbind(subject.train, subject.test)
data.activity = rbind(activity.train, activity.test)
data.features = rbind(features.train, features.test)

### Get the Features vector table
data.features.names = read.table("./data/features.txt", header = FALSE)

### Add names to 'data.features' table columns
names(data.features) = data.features.names$V2

### Merge ALL data sets into one
data.subject_activity = cbind(data.subject, data.activity)
data.all = cbind(data.features, data.subject_activity)
#head(data.all,1)

## 2.  Extract a subset of colunms with the 'mean' and 'standard deviation' column names
data.names.mean_stddev = data.features.names$V2[grep("(mean|std)\\(\\)", data.features.names$V2)]

### Subset the data frame based on column names from the previous step
data.names.subset = c(as.character(data.names.mean_stddev), "subject", "activity")
data.all <- subset(data.all, select=data.names.subset)

## 3.  Get the Activity labels from the file and apply labels to the 'activity' column
activity.labels = read.table("./data/activity_labels.txt", header = FALSE)

data.all$activity = activity.labels[data.all$activity,"V2"]

## 4. Appropriately assign descriptive variable (column) names to the tidy data set
### spell out variable/column names
### t : time, f : frequency, Acc : Accelerometer, Gyro : Gyroscope, Mag : Magnitude, BodyBody : Body
names(data.all) = gsub("^t", "time", names(data.all))

names(data.all) = gsub("^f", "frequency", names(data.all))

names(data.all) = gsub("Acc", "Accelerometer", names(data.all))

names(data.all) = gsub("Gyro", "Gyroscope", names(data.all))

names(data.all) = gsub("Mag", "Magnitude", names(data.all))

names(data.all) = gsub("BodyBody", "Body", names(data.all))

## 5. Create second tidy data set and write output to a file
data.all.final = aggregate(. ~subject + activity, data.all, mean)
#View(data.all.2)

# Remove parenthesis from the mean() and std() variable names
names(data.all.final) = gsub("\\(|\\)", "", names(data.all.final))

write.table(data.all.final, file = "./data/tidydata.txt", row.names = FALSE)
