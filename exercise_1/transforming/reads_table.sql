create table  reads_table as
select hospitals.provider_id, hospitals.hospital_name, hospitals.state, readmissions.measure_id, cast (readmissions.score as int) as score
from hospitals right join readmissions on hospitals.provider_id  = readmissions.provider_id
where score is not null
;

create table reads_table_1 as
select *
from reads_table
where score is not null
;

create table reads_2 as
select provider_id, hospital_name, state, count(provider_id), avg(score) as score, sum(score) as sum_score
from eff_care_1
group by provider_id, hospital_name, state
having count(provider_id)>10
;
