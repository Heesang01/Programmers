select user_id, product_id
from (
select user_id, product_id, count(*) as cnt_orders
from online_sale
group by user_id, product_id
) a
WHERE cnt_orders > 1
order by user_id asc, product_id desc