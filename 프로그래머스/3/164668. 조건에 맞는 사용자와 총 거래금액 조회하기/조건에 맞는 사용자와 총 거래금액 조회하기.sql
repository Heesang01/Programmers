-- 코드를 입력하세요
SELECT 
b.user_id,
b.nickname, 
a.total_sales
from (
    select 
    writer_id, 
    status,
    sum(price) as total_sales
    from used_goods_board
    where status = 'DONE'
    group by writer_id
) a
left join used_goods_user b
on a.writer_id = b.user_id
where a.total_sales >= 700000
order by total_sales