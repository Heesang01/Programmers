-- 코드를 입력하세요
set @hour := -1;

SELECT 
(@hour := @hour+1) as hour,
(   select count(*) as count
    from animal_outs
    where hour(datetime)= @hour
) as count
from animal_outs
where @hour < 23
order by hour
