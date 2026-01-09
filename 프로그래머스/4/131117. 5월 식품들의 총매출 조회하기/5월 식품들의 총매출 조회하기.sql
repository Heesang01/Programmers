-- 코드를 입력하세요
SELECT 
a.product_id, 
a.product_name, 
sum(a.price * b.amount) as total_sales
from food_product a
inner join (
    select 
        product_id, 
        amount
    from food_order
    where date_format(produce_date,'%Y-%m') = '2022-05') b
on a.product_id = b.product_id
group by product_id
order by total_sales desc, a.product_id