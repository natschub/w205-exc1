#!/bin/bash

#save my current directory
MY_CWD=$(pwd)

#empty and remove stating directories
rm ~/staging/exercise_1*
rmdir ~/staging/exercise_1
rmdir ~/staging

#remove files from hdfs
hdfs dfs -rm /user/w205/hospital_compare/hospitals/*
hdfs dfs -rm /user/w205/hospital_compare/effective_care/*
hdfs dfs -rm /user/w205/hospital_compare/readmissions/*
hdfs dfs -rm /user/w205/hospital_compare/measures/*
hdfs dfs -rm /user/w205/hospital_compare/surveys/*
hdfs dfs -rm /user/w205/hospital_compare/*

#remove hdfs directory
hdfs dfs -rmdir /user/w205/hospital_compare/hospitals
hdfs dfs -rmdir /user/w205/hospital_compare/effective_care
hdfs dfs -rmdir /user/w205/hospital_compare/readmissions
hdfs dfs -rmdir /user/w205/hospital_compare/measures
hdfs dfs -rmdir /user/w205/hospital_compare/surveys
hdfs dfs -rmdir /user/w205/hospital_compare/*






#change back to origianl direcotry
cd $MY_CWD

exit


