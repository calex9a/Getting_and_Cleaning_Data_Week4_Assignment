# Input Text Files

There are 8 .txt files that can be obtained from the following link below.  The files should be unzipped into the working directory of the current R environment.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

* X_Train.txt
* Y_Train.txt
* subject_train.txt
* X_test.txt
* Y_test.txt
* subject_test.txt
* activity_labels.txt
* features.txt

# Output Text File

The code found in the file run_analysis.R will produce a .txt file in the working directory called FinalData.txt.  This file has 180 rows and 68 cloumns that are grouped Activity_Label and Subject.  There are 30 participants with 6 activities (180 rows).  The data contains the mean of 66 measurements

* Walking
* Walking_Upstairs
* Walking_Downstairs
* Sitting
* Standing
* Laying

The following is a list of the columns

