-- 코드를 입력하세요
SELECT 
date_format(a.start_date, '%m') as month,
a.car_id,
count(car_id) as records
from (
    select car_id, start_date, end_date, count(*) over (partition by car_id) as sum_car 
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    where date(start_date) >= '2022-08-01'
    and date(start_date) < '2022-11-01') a
where sum_car >= 5
group by month, car_id
order by month, car_id desc