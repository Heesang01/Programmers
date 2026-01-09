-- 코드를 입력하세요
SELECT 
a.category,
a.price,
a.product_name
from food_product a
inner join (
select 
    category,
    max(price) as max_price
from food_product
group by category) b
on a.price = b.max_price
where a.category in ('과자', '국', '김치', '식용유')
group by a.category
order by a.price desc