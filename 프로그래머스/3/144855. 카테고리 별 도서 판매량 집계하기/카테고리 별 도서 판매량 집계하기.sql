-- 코드를 입력하세요
SELECT a.category, sum(b.sales) total_sales
from book a
left join book_sales b
on a.book_id = b.book_id
where date_format(b.sales_date, '%Y') = '2022'
and date_format(b.sales_date, '%m') = '01'
group by a.category
order by a.category