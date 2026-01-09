-- 코드를 입력하세요
SELECT 
p.animal_id,
p.name
from (
    select
    a.animal_id,
    a.name,
    a.datetime,
    (b.datetime - a.datetime) as prt_date
    from animal_ins a
    inner join animal_outs b
    on a.animal_id = b.animal_id
    order by prt_date desc) p
limit 2