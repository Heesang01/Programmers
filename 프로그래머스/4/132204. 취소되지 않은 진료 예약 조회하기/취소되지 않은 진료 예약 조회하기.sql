-- 코드를 입력하세요
SELECT 
ap.apnt_no,
pt.pt_name,
pt.pt_no,
dr.mcdp_cd,
dr.dr_name,
ap.apnt_ymd
from patient pt
join appointment ap
on pt.pt_no = ap.pt_no
join doctor dr
on dr.dr_id = ap.mddr_id
where date_format(ap.apnt_ymd, '%Y-%m-%d') = '2022-04-13'
and ap.apnt_cncl_yn = 'N'
and ap.mcdp_cd = 'CS'
order by ap.apnt_ymd asc