##The Raw Data
- The raw data consisted of measurements (using an accelerometer and gyroscope) of 30 subjects.
- The subjects were randomly divided into training and test sets.
- The accelerometer measurements (measured in standard gravity units, g) were broken down into body and gravity acceleration in each of the directions X,Y and Z
- The gyroscope reading, body acceleration and gravity acceleration were used to calculate 'jerk' readings (also in each of the directions X,Y and Z)
- The magnitude of the measures was also obtained using the Euclidean norm
- The Fast Fourier Transform was applied to some of these measures - the originals were denoted by time and f for frequency was used to denote the FFT
- A number of statistics were estimated from these measures (including the mean and the standard deviation)



##Transformations to get to tidy data
- Only those columns which correspond to the measurements of mean() and standard deviation std() were selected for the tidy data.
- All columns contain data for both the training and test sets.


 
##TIDY DATA
###subjectid
Contains an integer (range 1 to 30) to denote the identity of the subject for which the measurements were obtained
###activity
Factor variable denoting the activity for which the measurment was obtained
Factor levels 1-WALKING 2-WALKING_UPSTAIRS 3-WALKING_DOWNSTAIRS 4-SITTING 5-STANDING 6-LAYING
##timebodyaccelerometermeanxdirection
Numeric variable of the mean of the body acceleration (time domain) in the x direction, measured in standard gravity units (g)
##timebodyaccelerometermeanydirection
Numeric variable of the mean of the body acceleration (time domain) in the y direction, measured in standard gravity units (g)
##timebodyaccelerometermeanzdirection
Numeric variable of the mean of the body acceleration (time domain) in the z direction, measured in standard gravity units (g)
##timebodyaccelerometerstandarddeviationxdirection
Numeric variable of the standard deviation of the body acceleration (time domain) in the x direction, measured in standard gravity units (g)
##timebodyaccelerometerstandarddeviationydirection
Numeric variable of the standard deviation of the body acceleration (time domain) in the y direction, measured in standard gravity units (g)
##timebodyaccelerometerstandarddeviationzdirection
Numeric variable of the standard deviation of the body acceleration (time domain) in the z direction, measured in standard gravity units (g)
##timegravityaccelerometermeanxdirection
Numeric variable of the mean of the gravity acceleration (time domain) in the x direction, measured in standard gravity units (g)
##timegravityaccelerometermeanydirection
Numeric variable of the mean of the gravity acceleration (time domain) in the y direction, measured in standard gravity units (g)
##timegravityaccelerometermeanzdirection
Numeric variable of the mean of the gravity acceleration (time domain) in the z direction, measured in standard gravity units (g)
##timegravityaccelerometerstandarddeviationxdirection
Numeric variable of the standard deviaiton of the gravity acceleration (time domain) in the x direction, measured in standard gravity units (g)
##timegravityaccelerometerstandarddeviationydirection
Numeric variable of the standard deviaiton of the gravity acceleration (time domain) in the y direction, measured in standard gravity units (g)
##timegravityaccelerometerstandarddeviationzdirection
Numeric variable of the standard deviaiton of the gravity acceleration (time domain) in the z direction, measured in standard gravity units (g)
##timebodyaccelerometerjerkmeanxdirection
Numeric variable of the mean of the body acceleration jerk (time domain) in the x direction
##timebodyaccelerometerjerkmeanydirection
Numeric variable of the mean of the body acceleration jerk (time domain) in the y direction
##timebodyaccelerometerjerkmeanzdirection
Numeric variable of the mean of the body acceleration jerk (time domain) in the z direction
##timebodyaccelerometerjerkstandarddeviationxdirection
Numeric variable of the standard deevation of the body acceleration jerk (time domain) in the x direction
##timebodyaccelerometerjerkstandarddeviationydirection
Numeric variable of the standard deevation of the body acceleration jerk (time domain) in the y direction
##timebodyaccelerometerjerkstandarddeviationzdirection
Numeric variable of the standard deevation of the body acceleration jerk (time domain) in the z direction
##timebodygyroscopemeanxdirection
Numeric variable of the mean of the body gyroscope (time domain) in the x direction, measured in radians/second  
##timebodygyroscopemeanydirection
Numeric variable of the mean of the body gyroscope (time domain) in the y direction, measured in radians/second
##timebodygyroscopemeanzdirection
Numeric variable of the mean of the body gyroscope (time domain) in the z direction, measured in radians/second
##timebodygyroscopestandarddeviationxdirection
Numeric variable of the standard deviation of the body gyroscope (time domain) in the x direction, measured in radians/second
##timebodygyroscopestandarddeviationydirection
Numeric variable of the standard deviation of the body gyroscope (time domain) in the y direction, measured in radians/second
##timebodygyroscopestandarddeviationzdirection
Numeric variable of the standard deviation of the body gyroscope (time domain) in the z direction, measured in radians/second
##timebodygyroscopejerkmeanxdirection
Numeric variable of the mean of the body gyroscope jerk (time domain) in the x direction
##timebodygyroscopejerkmeanydirection
Numeric variable of the mean of the body gyroscope jerk (time domain) in the y direction
##timebodygyroscopejerkmeanzdirection
Numeric variable of the mean of the body gyroscope jerk (time domain) in the z direction
##timebodygyroscopejerkstandarddeviationxdirection
Numeric variable of the standard deviation of the body gyroscope jerk (time domain) in the x direction
##timebodygyroscopejerkstandarddeviationydirection
Numeric variable of the standard deviation of the body gyroscope jerk (time domain) in the y direction
##timebodygyroscopejerkstandarddeviationzdirection
Numeric variable of the standard deviation of the body gyroscope jerk (time domain) in the z direction
##timebodyaccelerometermagnitudemean
Numeric variable of the mean of the magnitude of the body acceleration (time domain)
##timebodyaccelerometermagnitudestandarddeviation
Numeric variable of the standard deviation of the magnitude of the body acceleration (time domain)
##timegravityaccelerometermagnitudemean
Numeric variable of the mean of the magnitude of the gravity acceleration (time domain)
##timegravityaccelerometermagnitudestandarddeviation
Numeric variable of the standard deviation of the magnitude of the gravity acceleration (time domain)
##timebodyaccelerometerjerkmagnitudemean
Numeric variable of the mean of the magnitude of the jerk body acceleration (time domain)
##timebodyaccelerometerjerkmagnitudestandarddeviation
Numeric variable of the standard deviation of the magnitude of the jerk body acceleration (time domain)
##timebodygyroscopemagnitudemean
Numeric variable of the mean of the magnitude of the body gyroscope (time domain)
##timebodygyroscopemagnitudestandarddeviation
Numeric variable of the standard deviation of the magnitude of the body gyroscope (time domain)
##timebodygyroscopejerkmagnitudemean
Numeric variable of the mean of the magnitude of the body gyroscope jerk (time domain)
##timebodygyroscopejerkmagnitudestandarddeviation
Numeric variable of the standard deviation of the magnitude of the body gyroscope jerk (time domain)
##frequencybodyaccelerometermeanxdirection
Numeric variable of the mean of the Fast Fourier Transform (FFT) of the body acceleration in the x direction
##frequencybodyaccelerometermeanydirection
Numeric variable of the mean of the Fast Fourier Transform (FFT) of the body acceleration in the y direction
##frequencybodyaccelerometermeanzdirection
Numeric variable of the mean of the Fast Fourier Transform (FFT) of the body acceleration in the z direction
##frequencybodyaccelerometerstandarddeviationxdirection
Numeric variable of the standard deviation of the Fast Fourier Transform (FFT) of the body acceleration in the x direction
##frequencybodyaccelerometerstandarddeviationydirection
Numeric variable of the standard deviation of the Fast Fourier Transform (FFT) of the body acceleration in the y direction
##frequencybodyaccelerometerstandarddeviationzdirection
Numeric variable of the standard deviation of the Fast Fourier Transform (FFT) of the body acceleration in the z direction
##frequencybodyaccelerometerjerkmeanxdirection
Numeric variable of the mean of the Fast Fourier Transform (FFT) of the body acceleration jerk in the x direction
##frequencybodyaccelerometerjerkmeanydirection
Numeric variable of the mean of the Fast Fourier Transform (FFT) of the body acceleration jerk in the y direction
##frequencybodyaccelerometerjerkmeanzdirection
Numeric variable of the mean of the Fast Fourier Transform (FFT) of the body acceleration jerk in the z direction
##frequencybodyaccelerometerjerkstandarddeviationxdirection
Numeric variable of the standard deviation of the Fast Fourier Transform (FFT) of the body acceleration jerk in the x direction
##frequencybodyaccelerometerjerkstandarddeviationydirection
Numeric variable of the standard deviation of the Fast Fourier Transform (FFT) of the body acceleration jerk in the y direction
##frequencybodyaccelerometerjerkstandarddeviationzdirection
Numeric variable of the standard deviation of the Fast Fourier Transform (FFT) of the body acceleration jerk in the z direction
##frequencybodygyroscopemeanxdirection
Numeric variable of the mean of the Fast Fourier Transform (FFT) of the body gyroscope in the x direction
##frequencybodygyroscopemeanydirection
Numeric variable of the mean of the Fast Fourier Transform (FFT) of the body gyroscope in the y direction
##frequencybodygyroscopemeanzdirection
Numeric variable of the mean of the Fast Fourier Transform (FFT) of the body gyroscope in the z direction
##frequencybodygyroscopestandarddeviationxdirection
Numeric variable of the standard deviation of the Fast Fourier Transform (FFT) of the body gyroscope in the x direction
##frequencybodygyroscopestandarddeviationydirection
Numeric variable of the standard deviation of the Fast Fourier Transform (FFT) of the body gyroscope in the y direction
##frequencybodygyroscopestandarddeviationzdirection
Numeric variable of the standard deviation of the Fast Fourier Transform (FFT) of the body gyroscope in the z direction
##frequencybodyaccelerometermagnitudemean
Numeric variable of the mean of the Fast Fourier Transform of magnitude of the body acceleration
##frequencybodyaccelerometermagnitudestandarddeviation
Numeric variable of the standard deviation of the Fast Fourier Transform of magnitude of the body acceleration
##frequencybodyaccelerometerjerkmagnitudemean
Numeric variable of the mean of the Fast Fourier Transform of magnitude of the body acceleration jerk
##frequencybodyaccelerometerjerkmagnitudestandarddeviation
Numeric variable of the standarad deviation of the Fast Fourier Transform of magnitude of the body acceleration jerk
##frequencybodygyroscopemagnitudemean
Numeric variable of the mean of the Fast Fourier Transform of magnitude of the body gyroscope
##frequencybodygyroscopemagnitudestandarddeviation
Numeric variable of the standard deviation of the Fast Fourier Transform of magnitude of the body gyroscope
##frequencybodygyroscopejerkmagnitudemean
Numeric variable of the mean of the Fast Fourier Transform of magnitude of the body gyroscope jerk
##frequencybodygyroscopejerkmagnitudestandarddeviation
Numeric variable of the standard deviation of the Fast Fourier Transform of magnitude of the body gyroscope jerk