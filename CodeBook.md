### Variables in this dataset

### Data
The data is downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

For more information on the data inside the Zip file, please refer to:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

A new data file is created with the following columns:
Activity - a descriptive name for the activity done     
Subjects - a number identifying the subject performing the activity
TimeBodyAcc-mean()-X-mean-per-subject-activity  - mean of time series for Body accelerometer on X axis for the row's activity and subject
TimeBodyAcc-mean()-Y-mean-per-subject-activity - mean of time series for Body accelerometer on Y axis for the row's activity and subject
TimeBodyAcc-mean()-Z-mean-per-subject-activity - mean of time series for Body accelerometer on Z axis for the row's activity and subject
TimeBodyAcc-std()-X-mean-per-subject-activity - std dev. of time series for Body accelerometer on X axis for the row's activity and subject
TimeBodyAcc-std()-Y-mean-per-subject-activity - std dev. of time series for Body accelerometer on Y axis for the row's activity and subject
TimeBodyAcc-std()-Z-mean-per-subject-activity - std dev. of time series for Body accelerometer on Z axis for the row's activity and subject
TimeGravityAcc-mean()-X-mean-per-subject-activity
TimeGravityAcc-mean()-Y-mean-per-subject-activity
TimeGravityAcc-mean()-Z-mean-per-subject-activity
TimeGravityAcc-std()-X-mean-per-subject-activity
TimeGravityAcc-std()-Y-mean-per-subject-activity
TimeGravityAcc-std()-Z-mean-per-subject-activity
TimeBodyAccJerk-mean()-X-mean-per-subject-activity
TimeBodyAccJerk-mean()-Y-mean-per-subject-activity
TimeBodyAccJerk-mean()-Z-mean-per-subject-activity
TimeBodyAccJerk-std()-X-mean-per-subject-activity
TimeBodyAccJerk-std()-Y-mean-per-subject-activity
TimeBodyAccJerk-std()-Z-mean-per-subject-activity
TimeBodyGyro-mean()-X-mean-per-subject-activity
TimeBodyGyro-mean()-Y-mean-per-subject-activity
TimeBodyGyro-mean()-Z-mean-per-subject-activity
TimeBodyGyro-std()-X-mean-per-subject-activity
TimeBodyGyro-std()-Y-mean-per-subject-activity
TimeBodyGyro-std()-Z-mean-per-subject-activity
TimeBodyGyroJerk-mean()-X-mean-per-subject-activity
TimeBodyGyroJerk-mean()-Y-mean-per-subject-activity
TimeBodyGyroJerk-mean()-Z-mean-per-subject-activity
TimeBodyGyroJerk-std()-X-mean-per-subject-activity
TimeBodyGyroJerk-std()-Y-mean-per-subject-activity
TimeBodyGyroJerk-std()-Z-mean-per-subject-activity
TimeBodyAccMag-mean()-mean-per-subject-activity
TimeBodyAccMag-std()-mean-per-subject-activity
TimeGravityAccMag-mean()-mean-per-subject-activity
TimeGravityAccMag-std()-mean-per-subject-activity             
TimeBodyAccJerkMag-mean()-mean-per-subject-activity           
TimeBodyAccJerkMag-std()-mean-per-subject-activity            
TimeBodyGyroMag-mean()-mean-per-subject-activity              
TimeBodyGyroMag-std()-mean-per-subject-activity               
TimeBodyGyroJerkMag-mean()-mean-per-subject-activity          
TimeBodyGyroJerkMag-std()-mean-per-subject-activity           
FrequencyBodyAcc-mean()-X-mean-per-subject-activity           
FrequencyBodyAcc-mean()-Y-mean-per-subject-activity           
FrequencyBodyAcc-mean()-Z-mean-per-subject-activity           
FrequencyBodyAcc-std()-X-mean-per-subject-activity            
FrequencyBodyAcc-std()-Y-mean-per-subject-activity            
FrequencyBodyAcc-std()-Z-mean-per-subject-activity            
FrequencyBodyAcc-meanFreq()-X-mean-per-subject-activity       
FrequencyBodyAcc-meanFreq()-Y-mean-per-subject-activity       
FrequencyBodyAcc-meanFreq()-Z-mean-per-subject-activity       
FrequencyBodyAccJerk-mean()-X-mean-per-subject-activity       
FrequencyBodyAccJerk-mean()-Y-mean-per-subject-activity       
FrequencyBodyAccJerk-mean()-Z-mean-per-subject-activity       
FrequencyBodyAccJerk-std()-X-mean-per-subject-activity        
FrequencyBodyAccJerk-std()-Y-mean-per-subject-activity        
FrequencyBodyAccJerk-std()-Z-mean-per-subject-activity        
FrequencyBodyAccJerk-meanFreq()-X-mean-per-subject-activity   
FrequencyBodyAccJerk-meanFreq()-Y-mean-per-subject-activity   
FrequencyBodyAccJerk-meanFreq()-Z-mean-per-subject-activity   
FrequencyBodyGyro-mean()-X-mean-per-subject-activity          
FrequencyBodyGyro-mean()-Y-mean-per-subject-activity          
FrequencyBodyGyro-mean()-Z-mean-per-subject-activity          
FrequencyBodyGyro-std()-X-mean-per-subject-activity           
FrequencyBodyGyro-std()-Y-mean-per-subject-activity           
FrequencyBodyGyro-std()-Z-mean-per-subject-activity           
FrequencyBodyGyro-meanFreq()-X-mean-per-subject-activity      
FrequencyBodyGyro-meanFreq()-Y-mean-per-subject-activity      
FrequencyBodyGyro-meanFreq()-Z-mean-per-subject-activity      
FrequencyBodyAccMag-mean()-mean-per-subject-activity          
FrequencyBodyAccMag-std()-mean-per-subject-activity           
FrequencyBodyAccMag-meanFreq()-mean-per-subject-activity      
FrequencyBodyAccJerkMag-mean()-mean-per-subject-activity      
FrequencyBodyAccJerkMag-std()-mean-per-subject-activity       
FrequencyBodyAccJerkMag-meanFreq()-mean-per-subject-activity  
FrequencyBodyGyroMag-mean()-mean-per-subject-activity         
FrequencyBodyGyroMag-std()-mean-per-subject-activity          
FrequencyBodyGyroMag-meanFreq()-mean-per-subject-activity     
FrequencyBodyGyroJerkMag-mean()-mean-per-subject-activity     
FrequencyBodyGyroJerkMag-std()-mean-per-subject-activity      
FrequencyBodyGyroJerkMag-meanFreq()-mean-per-subject-activity 

### Transformations and study design
After the raw data is downloaded, and extracted into the data folder, the following transformations are done:
1. Train and data sets are merged
2. Descriptive ativitity names from both training and data datasets are added
3. Subject information from both training and data datasets are added
4. The column names are made prettier by prepending any column that starts with "t" with "Time", and every column that starts with "f" with "Frequency". Also, when "BodyBody" is found, it is replaced with just a single "Body"
5. Since all measurements are the mean value for a specific subject doing a specific activity, "-mean-per-subject-activity" is added to all column names describing measurements.
6. Only measurements of mean and standard deviation are maintained.
7. The mean value for each measurement for all activities done by a specific subject are calculated and saved to a text file. 

The transformations mentioned above are done using the run_analysis.R file, which creates the NewData.txt file.


### License
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.