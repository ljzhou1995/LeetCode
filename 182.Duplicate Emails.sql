# Write your MySQL query statement below
SELECT t1.Email AS Email
FROM Person AS t1, Person AS t2
WHERE t1.Email = t2.Email AND t1.Id != t2.Id
GROUP BY t1.Email
