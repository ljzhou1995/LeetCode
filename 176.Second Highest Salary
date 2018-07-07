# Write your MySQL query statement below
SELECT MAX(Salary) AS SecondHighestSalary
FROM Employee
WHERE Salary< (SELECT Max(Salary) FROM Employee)
