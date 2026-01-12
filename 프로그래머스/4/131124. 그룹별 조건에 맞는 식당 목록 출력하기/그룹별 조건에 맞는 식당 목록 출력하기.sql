select
mp.member_name,
rr.review_text,
date_format(rr.review_date, '%Y-%m-%d') as review_date
from MEMBER_PROFILE mp
join REST_REVIEW rr
on mp.member_id = rr.member_id
where mp.member_id = (select member_id
                     from REST_REVIEW
                     group by member_id
                     order by count(*) desc
                     limit 1)
order by rr.review_date asc, rr.review_text
