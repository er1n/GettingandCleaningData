##Read the data
The data which must be read is the 
* training measurement data (X_train.txt), 
* the test measurement data (X_test.txt), 
* the features data (features.txt), 
* the activity labels (activity_labels.txt), 
* the test subject id’s (subject_test.txt), 
* the training data subject id’s (subject_train.txt), 
* the activities of the test data (y_test.txt),
* the activities of the training data (y_training.txt).

##Part 1: Merge the Training and Test Sets to Create a Single Data Set
* Assign test and training measurement data column names equal to the values of features.txt.
* Merge the training measurement data, training subject id’s and the activities of the training set.
* Merge the test measurement data, test subject id’s and the activities of the test set.
* Merge the merged test and training data from the steps above (called merged.data).

##Part 2: Extracts only the measurements on the mean and standard deviation for each measurement
* Load the stringr package
* Create an index variable that stores the column numbers the subjectid and activity columns as well the column numbers of all column names as  and of all column names that have mean and std preceded and followed immediately by a period symbol 
* merged.data is assigned to only those columns of merged.data which appear in index

##Part 3: Uses descriptive activity names to name the activities in the data set
* The number-activity description combinations stored in the first (and only column) of activities label data area used to create factor a factor variable out of the activity column in the merged.data.


##Part 4: Appropriately labels the data set with descriptive variable names
* str_replace is used to remove the pattern  -  X followed by at least one number and then a period symbol
* str_replace_all is used to remove all of the periods from the column names (as per Week 1 Lecture 3 video lecture guidelines on tidy data)
* The letters X, Y and Z at the end of the strings (which denote direction) are replaced by xdirection, ydirection and zdirection respectively
* All of the letters are converted to lower case (as per Week 1 Lecture 3 video lecture guidelines on tidy data)
* Repeated occurances of body within the same column name are replaced by a single occurance of body
* The abbreviations acc, gyro, mag and std are expanded to their full versions (accelerometer, gyroscope, magnitude and standarddeviation respectively) (as per Week 1 Lecture 3 video lecture guidelines on tidy data)

##Part 5: Create a dataset with the average of each variable for each activity and each subject
* Load the dplyr package
* The group_by() and summarise_each() functions are used to get the mean of all the measurements for each combination of subject and activity
* Rename the columns by adding a mean in front of the existing column names to reflect that the columns are now filled with mean values

##Write the tidy data to a text file

##Reading instructions
*To read the tidy data the following code may be used (https://class.coursera.org/getdata-008/forum/thread?thread_id=24)
*data <- read.table(file.choose(), header = TRUE) #Select the filepath of the tidy data
*View(data)
