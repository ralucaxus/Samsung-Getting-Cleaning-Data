Subjects 


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.


Activities 

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

Activities has been given a number 1 to 6 in the dataset

Measurements- a vector of 562 measurements described in the features.txt file in the dataset

Variables used in the script run_analysis.R

Subject_test: dataframe with the subjects that felt in the test pool (1 column) 1 to 30 subjects
X_test: dataframe with the measurements taken for the test (list of measurements and details described in features.txt file)-562 columns
Y_test: dataframe with activity labels (1 column) 1 to 6 activites

Subject_train: dataframe with the subjects that felt in the train pool (1 column) 1 to 30 subjects
X_train: dataframe with the measurements taken for the train (list of measurements and details described in features.txt file)-562 columns
Y_train: dataframe with activity labels (1 column) 1 to 6 activites

dataset_test: dataframe with the merged variables for the test
dataset_train: dataframe with the merged variables for the train

dataset dataframe with merged test and train datasets

features: dataframe contains the measurements each sujbect has been measured for 

poo: vector that keeps the names of dataset

mean_names: logical vector that keeps true for column names with mean() and false for different
std_names: logical vector that keeps true for column names with std() and false for different
mean_std: logical vector that keeps true for column names with meand() OR std () and false for different 

dataset_mean: subset of dataset that contains only columns refering to mean and std and subject and activity 

activity_label: dataframe with the description of activity label

merged_dataset: dataframe containing the dataset subset only with columns refeirnt to mean and std and added activity label description


newtidyshinnydataset: new dataframe containing the dataset with average measurements for each subject activity 


