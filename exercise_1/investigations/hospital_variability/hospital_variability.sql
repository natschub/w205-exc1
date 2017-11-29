select measure_id, measure_name, count(measure_id), variance(score) as var, avg(score)
from eff_care_1
group by measure_id, measure_name
having count(measure_id)>400
sort by var desc
;


select measure_id, measure_name, count(measure_id) as counts, variance(norm_score) as varnorm, avg_score_by_id
from eff_care_4
group by measure_id, measure_name, avg_score_by_id
having count(measure_id)>400
sort by varnorm desc
;


