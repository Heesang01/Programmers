-- 코드를 입력하세요
SELECT 
date_format(os.sales_date, '%Y') as year,
date_format(os.sales_date, '%m') as month,
ui.gender,
count(distinct os.user_id) as users
from user_info ui
join online_sale os
on os.user_id = ui.user_id
where ui.gender is not null
group by year, month, ui.gender
order by year, month, ui.gender