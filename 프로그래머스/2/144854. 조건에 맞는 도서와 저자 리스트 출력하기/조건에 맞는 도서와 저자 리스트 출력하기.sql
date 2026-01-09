-- 코드를 입력하세요
SELECT a.book_id, b.author_name, date_format(a.published_date, '%Y-%m-%d') as published_date
from (select *
      from book
     where category = '경제') a
inner join author b
on a.author_id = b.author_id
order by a.published_date