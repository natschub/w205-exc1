select state, avg(score) as score
from hospitals_av_score
where score IS NOT NULL
group by state
order by score DESC
limit 10
;

select state, avg(score) as score
where score IS NOT NULL
from eff_care_table
group by state
order by score DESC
;

