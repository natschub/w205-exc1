create table eff_care_table as
select hospitals.provider_id, hospitals.hospital_name, hospitals.state, effective_care.measure_id, effective_care.measure_name, cast (effective_care.score as int) score
from hospitals right join effective_care on hospitals.provider_id  = effective_care.provider_id
;


create table eff_care_1 as
select * from eff_care_table
where score is not null
;


create table eff_care_2 as
select provider_id, hospital_name, state, count(provider_id), avg(score) as score, sum(score) as sum_score
from eff_care_1
group by provider_id, hospital_name, state
having count(provider_id)>10
;



create table eff_care_3 as
select measure_id, measure_name, score, avg(score) over(partition by measure_id) as avg_score_by_id
from eff_care_1
;
 
create table eff_care_4 as 
select measure_id, measure_name, score, avg_score_by_id, score/avg_score_by_id as norm_score
from eff_care_3
;


create table eff_care_for_survey as
select provider_id, hospital_name, avg(score) as av_score
from eff_care_1
group by provider_id, hospital_name
;
