create table  survey_table as
select hospitals.provider_id, hospitals.hospital_name, cast(hospitals.hospital_overall_rating as int) avg_score, cast(surveys.hcahps_base_score as int) survey_score
from hospitals right join surveys on hospitals.provider_id=surveys.provider_number
;


create table survey_analysis as
select survey_table.provider_id, survey_table.hospital_name, survey_table.avg_score, survey_table.survey_score, eff_care_for_survey.av_score as eff_care_score
from survey_table 
left join eff_care_for_survey on survey_table.provider_id=eff_care_for_survey.provider_id
;

