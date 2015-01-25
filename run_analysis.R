##############1.MERGES THE TRAINING AND THE TEST SETS TO CREATE ONE DATA SET################
#READ THE DATA
#Test and training measurement values
    training.data.dir<-"/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_test.txt"
    training.data=read.table(training.data.dir,header=F,stringsAsFactors=F,as.is=T,sep="")
    test.data.dir<-"/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_train.txt"
    test.data=read.table(test.data.dir,header=F,stringsAsFactors=F,as.is=T,sep="")
#Features
    features.dir<-"/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt"
    features.data<-read.delim(features.dir,header=F,stringsAsFactors=F,as.is=T)
#Activites
    activities.dir<-"/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt"
    activities.data<-read.delim(activities.dir,header=F,stringsAsFactors=F,as.is=T)
#Subject
    subject.test.dir<-"/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt"
    subject.training.dir<-"/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt"
    subject.test<-read.delim(subject.test.dir,header=F,stringsAsFactors=F,as.is=T)
    subject.training<-read.delim(subject.training.dir,header=F,stringsAsFactors=F,as.is=T)
#Y (Subject ID's)
    y.training.dir<- "/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt"
    y.test.dir<-"/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_train.txt"
    y.test<-read.delim(y.test.dir,header=F,stringsAsFactors=F,as.is=T)
    y.training<-read.delim(y.training.dir,header=F,stringsAsFactors=F,as.is=T)

#Clear the workspace
rm(activities.dir,features.dir,subject.test.dir,subject.training.dir,y.test.dir,training.data.dir,test.data.dir,y.training.dir)

#Set the names of the test and training measurement data equal to the values of the features data set
    names(test.data)<-features.data$V1
    names(training.data)<-features.data$V1

##Merge the data into a single data frame
    merged.training.data<-data.frame(SubjectID=subject.training[,1],Activity=y.training[,1],training.data,stringsAsFactors=f)
    merged.test.data<-data.frame(SubjectID=subject.test[,1],Activity=y.test[,1],test.data,stringsAsFactors=F)
    merged.data<-rbind(merged.training.data,merged.test.data)




##############2. EXTRACTS ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT##############
    library(stringr)
    index=c(which(names(merged.data)%in%c("SubjectID","Activity")),which(  str_detect(names(merged.data),"\\.[Mm][Ee][Aa][Nn]\\.|\\.[Ss][Tt][Dd]\\."  )))
    merged.data<-merged.data[,index] 



#############3. Uses descriptive activity names to name the activites in the data set###############
    merged.data$Activity<-factor(merged.data$Activity,1:6,labels=sapply(strsplit(activities.data[,1],split=" "),"[[",2))


############4.Appropriately labels the data set with descriptive variable names. #######################
    names(merged.data)<-str_replace(names(merged.data),"X[0-9]+\\.","")
    names(merged.data)<-str_replace_all(names(merged.data),"\\.","")
    names(merged.data)<-str_replace(names(merged.data),"Y$","ydirection")
    names(merged.data)<-str_replace(names(merged.data),"X$","xdirection")
    names(merged.data)<-str_replace(names(merged.data),"Z$","zdirection")
    names(merged.data)<-tolower(names(merged.data))
    names(merged.data)<-str_replace(names(merged.data),"bodybody","body")
    names(merged.data)<-str_replace(names(merged.data),"^t","time")
    names(merged.data)<-str_replace(names(merged.data),"^f","frequency")
    names(merged.data)<-str_replace(names(merged.data),"acc","accelerometer")
    names(merged.data)<-str_replace(names(merged.data),"gyro","gyroscope")
    names(merged.data)<-str_replace(names(merged.data),"mag","magnitude")
    names(merged.data)<-str_replace(names(merged.data),"std","standarddeviation")


#############5. Create a dataset with the average of each variable for each activity and each subject.##############
    library(dplyr)
    merged.data.dplyr<-tbl_df(merged.data)
    grouped.data=group_by(merged.data.dplyr,subjectid,activity)
    MeanPerSubjectActivity<-summarise_each(grouped.data,funs(mean))
    names(MeanPerSubjectActivity)<-paste("mean",names(MeanPerSubjectActivity),sep="")


##Write the data
    write.directory<-file.choose()
    write.table(MeanPerSubjectActivity,write.directory,row.names=F)



