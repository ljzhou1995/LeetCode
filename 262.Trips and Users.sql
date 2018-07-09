# Write your MySQL query statement below
SELECT  sums.Day AS Day, 
        convert(IFNULL(Num_Cancelled_NoBanned/Num_Completed_NoBanned,0),decimal(10,2)) AS 'Cancellation Rate'
FROM
    (
    SELECT Request_at AS Day, COUNT(Id) AS Num_Cancelled_NoBanned
    FROM Trips
    WHERE Status != 'completed'
          AND Client_Id NOT IN (SELECT Users_id FROM Users WHERE Banned IN ('Yes'))
          AND Driver_Id NOT IN (SELECT Users_id FROM Users WHERE Banned IN ('Yes'))
          AND Request_at BETWEEN '2013-10-01' and '2013-10-03'
    GROUP BY Request_at
    ) cancelled
RIGHT JOIN
    (
    SELECT Request_at AS Day, COUNT(1) AS Num_Completed_NoBanned
    FROM Trips
    WHERE Request_at BETWEEN '2013-10-01' and '2013-10-03'
          AND Client_Id NOT IN (SELECT Users_id FROM Users WHERE Banned IN ('Yes'))
          AND Driver_Id NOT IN (SELECT Users_id FROM Users WHERE Banned IN ('Yes'))
    GROUP BY Request_at
    ) sums
ON cancelled.Day=sums.Day
ORDER BY sums.Day
