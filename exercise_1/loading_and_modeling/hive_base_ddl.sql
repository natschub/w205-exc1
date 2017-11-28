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

DROP TABLE surveys;

CREATE EXTERNAL TABLE surveys
(
provider_number string,
hospital_name string,
address string,
city string,
state string,
zip string,
county string, 
nurses_floor string,
nurses_ach_threshold string,
nurses_benchmark string,
nurses_baseline string,
nurses_perf_rate string,
nurses_ach_points string,
nurses_imp_points string,
nurses_dim_score string,
doctors_floor string,
doctors_ach_threshold string,
doctors_benchmark string,
doctors_baseline string,
doctors_perf_rate string,
doctors_ach_points string,
doctors_imp_points string,
doctors_dim_score string,
responsiveness_floor string,
responsiveness_ach_threshold string,
responsiveness_benchmark string,
responsiveness_baseline string,
responsiveness_perf_rate string,
responsiveness_ach_points string,
responsiveness_imp_points string,
responsiveness_dim_score string,
pain_floor string,
pain_ach_threshold string,
pain_benchmark string,
pain_baseline string,
pain_perf_rate string,
pain_ach_points string,
pain_imp_points string,
pain_dim_score string,
communication_floor string,
communication_ach_threshold string,
communciation_benchmark string,
communication_baseline string,
communication_perf_rate string,
communication_ach_points string,
communication_imp_points string,
communication_dim_score string,
environment_floor string,
environment_ach_threshold string,
environment_benchmark string,
environment_baseline string,
environment_perf_rate string,
environment_ach_points string,
environment_imp_points string,
environment_dim_score string,
discharge_floor string,
discharge_ach_threshold string,
discharge_benchmark string,
discharge_baseline string,
discharge_perf_rate string,
discharge_ach_points string,
discharge_imp_points string,
discharge_dim_score string,
overall_floor string,
overall_ach_threshold string,
overall_benchmark string,
overall_baseline string,
overall_perf_rate string,
overall_ach_points string,
overall_imp_points string,
overall_dim_score string,
HCAHPS_base_score string,
HCAHPS_consist_score string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar"=',',
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/surveys'
