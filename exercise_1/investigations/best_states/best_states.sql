tate, count(provider_id), avg(score) as score, sum(score) as sum_score, variance(score)
from eff_care_2
group by state
order by score DESC
;


select state, count(provider_id), avg(score) as score, sum(score) as sum_score, variance(score)
from reads_2
group by state
order by score DESC
;

