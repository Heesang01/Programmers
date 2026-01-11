
select
b.file_path
from
(select 
board_id,
views
from used_goods_board
order by views desc
limit 1) a
join (
select
board_id,
concat('/home/grep/src/', board_id, '/', file_id, file_name, file_ext) as file_path,
file_id
from used_goods_file) b
on a.board_id = b.board_id
order by file_id desc