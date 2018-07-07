# Write your MySQL query statement below
SELECT Score, CAST(Rank AS UNSIGNED) AS Rank
FROM 
    (
    SELECT Score, CASE
    WHEN @preScore = Score
    THEN @countRank
    ELSE @countRank := @countRank + 1
    END AS Rank, @preScore := Score AS preScore
    FROM Scores AS a, (SELECT @countRank := 0, @preScore := NULL) AS b
    ORDER BY Score DESC
    ) c
