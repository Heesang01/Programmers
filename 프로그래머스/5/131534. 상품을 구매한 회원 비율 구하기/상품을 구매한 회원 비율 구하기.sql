-- 코드를 입력하세요
SELECT
year(o.sales_date) as year,
month(o.sales_date) as month,
count(distinct o.user_id) as purchased_users,
round(count(distinct o.user_id)/(select count(*) from user_info where joined > '2021-01-01' and joined <'2022-01-01'),1) as puchased_ratio
from online_sale o
join user_info u
on o.user_id = u.user_id
where u.joined > '2021-01-01' and u.joined <'2022-01-01'
group by year(o.sales_date), month(o.sales_date)
order by year, month