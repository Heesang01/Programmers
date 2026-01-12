-- 코드를 입력하세요
with aa as (
SELECT *
from first_half
union 
select *
from july)
select 
flavor
from aa
group by flavor
order by sum(total_order) desc
limit 3


