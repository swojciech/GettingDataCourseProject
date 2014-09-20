Data Dictionary -- Transformation of Human Activity Recognition Using Smartphones Study Dataset
===============================================================================================

Please refer to features_info.txt document for further background information on study and its variables (downloadable [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)).  An extract of that document is as follows:

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals)."

Specified below are the variables arrived at (and represented in the final data set (TidyDataSet.txt)) by:

1. extracting just the variables featuring mean and standard deviation (std) from the variables specified in features.txt (downloadable along with features_info.txt);
2. replacing codes used to designate activities performed by study subjects with descriptive names for them (see "activity" variable below);
3. transforming variable names, post extract, including converting all to lower case, removing "(", ")", "-", and "," characters, and expanding "acc" to "acceleration";
4. calculating the average of the mean and standard deviation (std) variables in intermediate data set by variables "subject" and "activity".


*subject (Subject under observation; identified via numbers 1 through 30)                            
*activity (Activity performed; values are "Walking", "WalkingUpstairs", "WalkingDownstairs", "Sitting", "Standing", and "Laying")                        
*tbodyaccelerationmeanx                 
*tbodyaccelerationmeany                 
*tbodyaccelerationmeanz                 
*tbodyaccelerationstdx                  
*tbodyaccelerationstdy              
*tbodyaccelerationstdz               
*tgravityaccelerationmeanx            
*tgravityaccelerationmeany               
*tgravityaccelerationmeanz               
*tgravityaccelerationstdx               
*tgravityaccelerationstdy               
*tgravityaccelerationstdz              
*tbodyaccelerationjerkmeanx          
*tbodyaccelerationjerkmeany          
*tbodyaccelerationjerkmeanz      
*tbodyaccelerationjerkstdx      
*tbodyaccelerationjerkstdy      
*tbodyaccelerationjerkstdz     
*tbodygyromeanx                
*tbodygyromeany               
*tbodygyromeanz               
*tbodygyrostdx               
*tbodygyrostdy                
*tbodygyrostdz                
*tbodygyrojerkmeanx
*tbodygyrojerkmeany
*tbodygyrojerkmeanz                      
*tbodygyrojerkstdx                        
*tbodygyrojerkstdy                        
*tbodygyrojerkstdz                        
*tbodyaccelerationmagmean               
*tbodyaccelerationmagstd                
*tgravityaccelerationmagmean            
*tgravityaccelerationmagstd            
*tbodyaccelerationjerkmagmean             
*tbodyaccelerationjerkmagstd              
*tbodygyromagmean                        
*tbodygyromagstd                        
*tbodygyrojerkmagmean                    
*tbodygyrojerkmagstd                    
*fbodyaccelerationmeanx                   
*fbodyaccelerationmeany                  
*fbodyaccelerationmeanz                  
*fbodyaccelerationstdx                  
*fbodyaccelerationstdy                   
*fbodyaccelerationstdz                    
*fbodyaccelerationmeanfreqx               
*fbodyaccelerationmeanfreqy               
*fbodyaccelerationmeanfreqz               
*fbodyaccelerationjerkmeanx               
*fbodyaccelerationjerkmeany               
*fbodyaccelerationjerkmeanz               
*fbodyaccelerationjerkstdx                
*fbodyaccelerationjerkstdy                
*fbodyaccelerationjerkstdz                
*fbodyaccelerationjerkmeanfreqx           
*fbodyaccelerationjerkmeanfreqy           
*fbodyaccelerationjerkmeanfreqz           
*fbodygyromeanx                           
*fbodygyromeany                           
*fbodygyromeanz                           
*fbodygyrostdx                            
*fbodygyrostdy                            
*fbodygyrostdz                            
*fbodygyromeanfreqx                       
*fbodygyromeanfreqy                       
*fbodygyromeanfreqz                       
*fbodyaccelerationmagmean                 
*fbodyaccelerationmagstd                 
*fbodyaccelerationmagmeanfreq             
*fbodybodyaccelerationjerkmagmean         
*fbodybodyaccelerationjerkmagstd          
*fbodybodyaccelerationjerkmagmeanfreq     
*fbodybodygyromagmean                     
*fbodybodygyromagstd                     
*fbodybodygyromagmeanfreq                 
*fbodybodygyrojerkmagmean                 
*fbodybodygyrojerkmagstd                  
*fbodybodygyrojerkmagmeanfreq             
*angletbodyaccelerationmeangravity        
*angletbodyaccelerationjerkmeangravitymean
*angletbodygyromeangravitymean            
*angletbodygyrojerkmeangravitymean        
*anglexgravitymean                        
*angleygravitymean                        
*anglezgravitymean          


###Notes:

'-xyz' is used to denote 3-axial signals in the X, Y and Z directions.

angle: Angle between two vectors.

In original study data set, features are normalized and bounded within [-1,1].
