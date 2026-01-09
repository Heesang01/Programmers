-- 코드를 입력하세요
SELECT
a.animal_id,
a.animal_type,
a.name
from (select *
      from animal_ins
      where sex_upon_intake in ('Intact Male', 'Intact Female')
      ) a
inner join (select *
           from animal_outs
           where sex_upon_outcome like '%Neutered%'
           or sex_upon_outcome like '%Spayed%'
           ) b
on a.animal_id = b.animal_id
order by a.animal_id