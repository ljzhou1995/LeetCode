# Write your MySQL query statement below
SELECT a.id, a.student
FROM
    (
        SELECT id-1 as id,student
        FROM seat
        WHERE id%2=0
    UNION
        SELECT id+1 as id,student
        FROM seat
        WHERE id%2=1 AND id != (SELECT MAX(id) FROM seat)
    UNION
        SELECT id,student
        FROM seat
        WHERE id%2=1 AND id = (SELECT MAX(id) FROM seat)
    )a
ORDER BY a.id
