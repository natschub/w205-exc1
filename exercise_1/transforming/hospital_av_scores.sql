create table hospitals_av_score as
select provider_id, hospital_name, state, cast(hospital_overall_rating as decimal (1,0)) rating
from hospitals
where hospital_overall_rating not like Not%
;
