-- 코드를 입력하세요
SELECT count(distinct user_id) as users
from user_info
where age is null;