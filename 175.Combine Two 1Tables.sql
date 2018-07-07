# Write your MySQL query statement below
SELECT a.FirstName, a.LastName, b.City, b.State
FROM
    (
    SELECT FirstName, LastName, PersonId
    FROM Person
    ) a
LEFT JOIN
    (
    SELECT City, State, PersonId
    FROM Address
    ) b
ON a.PersonId=b.PersonId
