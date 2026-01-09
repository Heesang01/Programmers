-- 코드를 입력하세요
SELECT mcdp_cd as '진료과 코드', count(apnt_no) as '5월 예약건수'
from appointment
where date_format(apnt_ymd, '%Y') = '2022'
and date_format(apnt_ymd, '%m') = '05'
group by mcdp_cd
order by count(apnt_no), mcdp_cd