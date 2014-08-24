##assume Samsung data folder UCI HAR Dataset is in the working directory
setwd("C:/Users/poparal/Documents/UCI HAR Dataset")
#read data
	##read test dataset 
Subject_test<-read.table("C:/Users/poparal/Documents/UCI HAR Dataset/test/Subject_test.txt")
X_test<-read.table("C:/Users/poparal/Documents/UCI HAR Dataset/test/X_test.txt")
Y_test<-read.table("C:/Users/poparal/Documents/UCI HAR Dataset/test/Y_test.txt")

      ##read train dataset
Subject_train<-read.table("C:/Users/poparal/Documents/UCI HAR Dataset/train/Subject_train.txt")
X_train<-read.table("C:/Users/poparal/Documents/UCI HAR Dataset/train/X_train.txt")
Y_train<-read.table("C:/Users/poparal/Documents/UCI HAR Dataset/train/Y_train.txt")
   
#merge datasets into one dataframe( point 1 in the course project)
	
	##merge test dataset into one
dataset_test<-cbind(Subject_test, X_test,Y_test)
	
	##merge train dataset into one
dataset_train<-cbind(Subject_train, X_train, Y_train)
	
	##merge train and test dataset into one (test data first, occupying the first rows)
	##this is point 1 from peer review project 
dataset<-rbind(dataset_test, dataset_train)

#remove columns different than mean and std dev (point 2 in the course project)

	##read the file naming the columns for the different measurements - features
features<-read.table("C:/Users/poparal/Documents/UCI HAR Dataset/features.txt")

	##read the measurements  as a vector
	features<-features[2] #first column has numbers, second column has the names of measurements 
	poo<-c("subject mean()") #vector to keep the names of the colums for the dataset, rename first column
for (i in 1:nrow(features)) {poo<-c(poo, as.character(features[i,]))}
	poo<-c(poo, "Activity name mean()")

	##select only activities with mean()and std() in their naming 
mean_names<-grepl("mean()", poo)
std_names<-grepl("std()", poo)

	## combine the results mean OR standard dev in a TRUE, FALSE result vector
mean_std<-c(mean_names|std_names)
	##Rename dataset columns  with the names from the features file+subject column (first columns) and activity label(last column)
names(dataset)<-poo
      ## subset dataset to columns only by mean and std (point 2 in the course project
dataset_mean<-dataset[mean_std][TRUE]

#rename activities (point 3 in the course project)
	##read file with activity labels 
activity_label<-read.table("C:/Users/poparal/Documents/UCI HAR Dataset/activity_labels.txt")
	##merge dataset with the activity label 
merged_dataset<-merge(dataset_mean, activity_label, by.x="Activity name mean()", by.y="V1")

#renames variables
	##already renamed 

#average per subject per activity
 newtidyshinnydataset<-aggregate(merged_dataset, by=list(merged_dataset[,82], merged_dataset[,2]), mean)

#rename group 1 and group 2
names(newtidyshinnydataset)[1]<-c("Activity")
names(newtidyshinnydataset)[2]<-c("Subject")
#write out the output 
write.table(newtidyshinnydataset,"C:/Users/poparal/Documents/UCI HAR Dataset/output.txt",row.names=F)
