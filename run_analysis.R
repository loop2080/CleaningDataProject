library(reshape2) # used to reshape data at the end of the process

## load the test data and train data
testData <- read.table("data\\test\\X_test.txt", sep = "" , header = F, na.strings ="", stringsAsFactors= F)
trainData <- read.table("data\\train\\X_train.txt", sep = "" , header = F, na.strings ="", stringsAsFactors= F)

## merge train data and test data
data <- rbind(testData, trainData)

## read features, make them pretty, and set names in data accordingly
features <- read.table("data\\features.txt", sep = "" , header = F, na.strings ="", stringsAsFactors= F)
features <- features[,2]
features <- gsub("^t", "Time", features)
features <- gsub("^f", "Frequency", features)
features <- gsub("BodyBody", "Body", features)
names(data) <- features

## find the columns that contain mean and std dev. values
stdAndMean <- unlist(lapply(features, 
                     function(x) {
                       isTRUE(grep("mean", x)!=0) | 
                         isTRUE(grep("std", x)!=0)
                       }))

## select only the columns that contain mean and std dev. values
data <- data[,stdAndMean]

# create activity column by binding test and train activity data and setting a name for the column
testActivity <- read.table("data\\test\\y_test.txt", sep = "" , header = F, na.strings ="", stringsAsFactors= F)
trainActivity <- read.table("data\\train\\y_train.txt", sep = "" , header = F, na.strings ="", stringsAsFactors= F)
activity <- rbind(testActivity, trainActivity)
names(activity) <- c("Activity")

# read activity labels, and convert activity names table to descriptive names
labelActivity <- read.table("data\\activity_labels.txt", sep = "" , header = F, na.strings ="", stringsAsFactors= F)
activity[1] <- lapply(activity, function(x) {labelActivity[x, 2]})

# bind the activity name to the data table
data <- cbind(data, activity)

# add subjects to the dataset
testSubjects <- read.table("data\\test\\subject_test.txt", sep = "" , header = F, na.strings ="", stringsAsFactors= F)
trainSubjects <- read.table("data\\train\\subject_train.txt", sep = "" , header = F, na.strings ="", stringsAsFactors= F)
subjects <- rbind(testSubjects, trainSubjects)
names(subjects) <- c("Subjects")
data <- cbind(data, subjects)

# reshape data for the average of each variable for each activity and each subject.
ids = c("Activity", "Subjects")
vars <- names(data)[!(names(data) %in% ids)]
m <- melt(data, ids , measure.vars=vars)
newData <- dcast(m, Activity + Subjects ~ variable, mean)

#fix column names
newNames <- unlist(lapply(colNames, function(x) {paste0(x, "-mean-per-subject-activity")}))
names(newData) <- c(ids, newNames)

# write the new data into a table
write.table(newData, file="newData.txt", row.name=FALSE)

#end of script







