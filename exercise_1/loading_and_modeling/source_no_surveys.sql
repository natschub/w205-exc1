DROP TABLE hospitals;

CREATE EXTERNAL TABLE hospitals
(
provider_id string,
hospital_name string,
address string,
city string,
state string,
zip_code string,
county string,
phone_number string,
hospital_type string,
hospital_ownership string,
emergency_services string,
ehrs string,
hospital_overall_rating string,
hospital_overall_rating_footnote string,
mortality_national_comparison string,
mortality_national_comparison_footnote string,
safety_of_care_comparison string,
safety_of_care_comparison_footnote string,
readmission_comparison string,
readmission_comparision_footnote string,
patient_experience_comparision string,
patient_experience_comparison_footnote string,
effectiveness_of_care_comparision string,
effectiveness_of_care_footnote string,
timeliness_of_care_comparison string,
timeliness_of_care_footnote string,
efficient_use_of_imaging_comparision string,
efficient_use_of_imaging_footnote string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar"=',',
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/hospitals'
;

DROP TABLE effective_care;

CREATE EXTERNAL TABLE effective_care
(
provider_id string,
hospital_name string,
address string,
city string,
state string,
zip string,
county string,
phone string,
condition string,
measure_id string,
measure_name string,
score string,
sample string,
footnote string,
measure_start_date string,
measure_end_date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar"=',',
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/effective_care'
;

DROP TABLE readmissions;

CREATE EXTERNAL TABLE readmissions
(
provider_id string,
hospital_name string,
address string,
city string,
state string,
zip string,
county string,
phone string,
measure_name string,
measure_id string,
compared_to_national string,
denominator string,
score string,
lower_estimate string,
higher_estimate string,
footnote string,
measure_start_date string,
measure_end_date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar"=',',
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/readmissions'
;

DROP TABLE measures;

CREATE EXTERNAL TABLE measures
(
measure_name string,
measure_id string,
mesaure_start_quarter string,
measure_start_date string,
measure_end_quarter string,
measure_end_date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar"=',',
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/measures'
;

