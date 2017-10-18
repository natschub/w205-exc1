#!/bin/bash

# save my current directory
MY_CWD=$(pwd)

# create staging directories
mkdir  ~/staging 
mkdir ~/staging/exercise_1

# change to staging directory
cd  ~/staging/exercise_1

#get file from data.medicare.gov
HEALTHCARE_URL="https://data.medicare.gov/views/bg9k-emty/files/4a66c672-a92a-4ced-82a2-033c28581a90?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zipâ"

wget "$HEALTHCARE_URL" -O medicare_data.zip

# unzip medicare data
unzip medicare_data.zip

# remove first line of files and rename
HOSPITALS="Hospital General Information.csv"
TIMELY="Timely and Effective Care - Hospital.csv"
READM="Complications and Deaths - Hospital.csv"
MEASURE="Measure Dates.csv"
SURVEY="hvbp_hcahps_11_10_2016.csv"

tail -n +2 "$HOSPITALS" >hospitals.csv
tail -n +2 "$TIMELY" >effective_care.csv
tail -n +2 "$READM" >readmissions.csv
tail -n +2 "$MEASURE" >Measures.csv
tail -n +2 "$SURVEY" >surveys_responses.csv



#create our hdfs directory

hdfs dfs -mkdir /user/w205/hospital_compare

# copy files to hdfs
hdfs dfs -put hospitals.csv /user/w205/hospital_compare
hdfs dfs -put effective_care.csv /user/w205/hospital_compare
hdfs dfs -put readmissions.csv /user/w205/hospital_compare
hdfs dfs -put Measures.csv /user/w205/hospital_compare
hdfs dfs -put surveys_responses.csv /user/w205/hospital_compare


#change directory back to the original
cd $MY_CWD

#clean exit
exit

