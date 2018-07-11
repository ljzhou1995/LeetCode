# Write your MySQL query statement below
SELECT class
FROM
    (
    SELECT COUNT(DISTINCT student) AS num, class 
    FROM courses 
    GROUP BY class
    ) a
WHERE num >= 5
