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
communication_with_nurses_floor string,
communication_with_nurses_achievement_threshold string,
communication_with_nurses_benchmark string,
communication_with_nurses_baseline_rate string,
communication_with_nurses_performance_rate string,
communication_with_nurses_achievement_points string,
communication_with_nurses_improvement_points string,
communication_with_nurses_dimension_score string,
communication_with_doctors_floor string,
communication_with_doctors_achievement_threshold string,
communication_with_doctors_benchmark string,
communication_with_doctors_baseline_rate string,
communication_with_doctors_performance_rate string,
communication_with_doctors_achievement_points string,
communication_with_doctors_improvement_points string,
communication_with_doctors_dimenstion_score string,
responsiveness_of_staff_floor string,
responsiveness_of_staff_achievement_threshold string,
responsiveness_of_staff_benchmark string,
responsiveness_of_staff_baseline_rate string,
responsiveness_of_staff_performance_rate string,
responsiveness_of_staff_achievement_points string,
responsiveness_of_staff_improvement points string,
responsiveness_of_staff_dimension_score string,
pain_management_floor string,
pain_management_achievement_threshold string,
pain_management_benchmark string,
pain_management_baseline_rate string,
pain_management_performance_rate string,
pain_management_achievement_points string,
pain_management_improvement points string,
pain_management_dimension_score string,
communication_floor string,
communication_achievement_threshold string,
communication_benchmark string,
communication_baseline_rate string,
communication_performance_rate string,
communication_achievement_points string,
communication_improvement points string,
communication_dimension_score string,
hospital_environment_floor string,
hospital_environment_achievement_threshold string,
hospital_environment_benchmark string,
hospital_environment_baseline_rate string,
hospital_environment_performance_rate string,
hospital_environment_achievement_points string,
hospital_environment_improvement points string,
hospital_environment_dimension_score string,
discharge_floor string,
discharge_achievement_threshold string,
discharge_benchmark string,
discharge_baseline_rate string,
discharge_performance_rate string,
discharge_achievement_points string,
discharge_improvement points string,
discharge_dimension_score string,
overall_floor string,
overall_achievement_threshold string,
overall_benchmark string,
overall_baseline_rate string,
overall_performance_rate string,
overall_achievement_points string,
overall_improvement points string,
overall_dimension_score string,
HCAHPS_base_score string,
HCAHPS_consistency_score string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar"=',',
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/surveys'
;

