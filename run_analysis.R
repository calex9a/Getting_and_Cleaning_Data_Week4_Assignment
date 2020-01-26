#load librarys
library(dplyr)
#create data frames
x_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./UCI HAR Dataset/train/Y_train.txt")
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
x_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("./UCI HAR Dataset/test/Y_test.txt")
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
features<-read.table("./UCI HAR Dataset/features.txt")
#merge the datasets
x<-rbind(x_test,x_train)
y<-rbind(y_test,y_train)
subject<-rbind(subject_train,subject_test)
#naming the columns and finding mean and std
x_stats<-features[grep("mean\\(\\)|std\\(\\)",features[,2]),]
x<-x[,x_stats[,1]]
colnames(x)<-features[x_stats[,1],2]
colnames(y)<-"Activity"
colnames(subject)<-"Subject"
#factor for y
y$Activity_label<-factor(y$Activity,labels=as.character(activity_labels[,2]))
Activity_label<-y[,-1]
#final dataframe
final<-cbind(x,Activity_label,subject)
#final mean
final_mean<-final %>% group_by(Activity_label,Subject) %>% summarise_all(funs(mean))
write.table(final_mean,"FinalData.txt",row.names=FALSE,col.names=TRUE)
