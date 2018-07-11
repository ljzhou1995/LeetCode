# Write your MySQL query statement below
SELECT DISTINCT s.id, s.date, s.people
FROM stadium s, 
        (
        SELECT a.id FROM_ID, a.id+2 TO_ID
        FROM stadium a, stadium b, stadium c
        WHERE a.id+1 = b.id
        AND b.id+1 = c.id
        AND a.people >= 100
        AND b.people >= 100
        AND c.people >= 100) b
WHERE s.id BETWEEN b.FROM_ID AND b.TO_ID
