select hospital_name, avg(score) as score
from hospitals_av_score
where score IS NOT NULL
group by hospital_name
order by score DESC
limit 10
;


select provider_id, avg(score) as score
where score IS NOT NULL
from eff_care_table
group by provider_id
order by score DESC
;

