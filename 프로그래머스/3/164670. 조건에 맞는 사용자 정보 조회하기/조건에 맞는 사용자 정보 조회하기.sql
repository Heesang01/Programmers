-- 코드를 입력하세요
SELECT 
b.user_id,
b.nickname,
concat(city,' ', street_address1, ' ' ,street_address2) as '전체주소',
concat(left(tlno,3), '-', left(right(tlno,8),4), '-', right(tlno,4)) as '전화번호'
from used_goods_board a
inner join used_goods_user b
on a.writer_id = b.user_id
group by b.user_id
having count(user_id) >= 3
order by b.user_id desc