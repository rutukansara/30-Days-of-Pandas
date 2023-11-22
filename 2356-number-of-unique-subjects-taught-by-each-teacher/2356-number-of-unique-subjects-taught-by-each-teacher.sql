# Write your MySQL query statement below
# SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt FROM (SELECT t1.teacher_id, t1.subject_id FROM Teacher t1, Teacher t2 WHERE t1.teacher_id = t2.teacher_id) a
# GROUP BY teacher_id

SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt FROM Teacher
GROUP BY teacher_id