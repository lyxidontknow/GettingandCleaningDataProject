# GettingandCleaningDataProject
### Please follow the procedures below to regenerate the tidy dataset
* Set up the working directory and put all relevant raw data under it.
* Read in the tables X_train, y_train, subject_train, X_test, y_test, subject_test, and features.
* Column bind y_train, subject_train, X_train, and y_test, subject_test, X_test, respectively, to get two datasets.
* Rename the variables by activity, subject, and all those 561 features provided in the file features.txt.
* Merge the above two datasets by row binding.
* Use grep() to get the indices of means and standard deviations of measurements, along with the first two columns.
* Subset the dataset with indices obtained above, and order the dataset by activity and subject. 
* Appropriately name the activities with their names obtained from the file activity_labels.txt, by using mutate().
* Rename the variables by removing "-" and "()" with gsub(), and convert the resulting names to lower cases.
* Create another tidy dataset with the means of all measurements by activity and subject, with aggregate().
* Rename the new tidy dataset by adding "avg" to each variable name.
* Write the above dataset to a txt file with row.name=FALSE.