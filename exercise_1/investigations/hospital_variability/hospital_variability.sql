select measure_name, measure_id, stddev(score) as score_var
from eff_care_table
where score IS NOT NULL
group by measure_name, measure_id
order by score_var DESC
;
