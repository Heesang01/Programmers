-- 코드를 입력하세요
SELECT warehouse_id, warehouse_name, address, ifnull(freezer_yn,'N')
from food_warehouse
where substr(address,1,3) like '%경기도%'
order by warehouse_id asc