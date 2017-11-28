create table eff_care_table as
select hospitals.provider_id, hospitals.hospital_name, hospitals.state, effective_care.measure_id, cast (effective_care.score as int) score
from hospitals right join effective_care on hospitals.provider_id  = effective_care.provider_id
;
