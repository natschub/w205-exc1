
select provider_id,  hospital_name, count(provider_id), state, avg(score) as score, sum(score), variance(score)
from eff_care_1
where score IS NOT NULL
group by provider_id, hospital_name, state
having count(provider_id)>10
order by score DESC
limit 10
;



select provider_id,  hospital_name,  count(provider_id), state, avg(score) as score, sum(score), variance(score)
from reads_table
where score IS NOT NULL
group by provider_id, hospital_name, state
having count(provider_id)>10
order by score DESC
limit 10
;
