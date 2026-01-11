SELECT T1.rest_id, rest_name, food_type, favorites, address, score
FROM rest_info T1
JOIN (
    SELECT rest_id, ROUND(AVG(review_score),2) AS score 
    FROM rest_review 
    GROUP BY rest_id) T2
ON T1.rest_id = T2.rest_id
WHERE address LIKE '서울%'
ORDER BY score DESC, favorites DESC