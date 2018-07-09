# Write your MySQL query statement below
SELECT Department.Name AS Department, e1.Name AS Employee, e1.Salary AS Salary
FROM Employee e1
JOIN Department
ON e1.DepartmentId = Department.Id
WHERE 3 >   (
            SELECT COUNT(DISTINCT e2.Salary) 
            FROM Employee e2
            WHERE e2.Salary > e1.Salary AND e1.DepartmentId = e2.DepartmentId
            )
ORDER BY Department.Name, e1.Salary DESC
